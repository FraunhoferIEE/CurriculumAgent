.. currentmodule:: curriculumagent.teacher

Teacher
=======

The *Teacher* agent is the first in the pipeline of the project.

One major problem of tackling automatic control of large power networks is the vast amount of actions the agent can take.
The following picture shows the layout or graph of the power network that is to be controlled by the final agent:

.. figure:: /_static/l2rpn_neurips_2020_track1_layout.png
    :alt: The network layout of the neurips 2020 challenge.

In total there are about 70,000 actions the agent can take to change the topology of the network.
Since it is infeasible to simulate the impact of each of those actions at runtime of the final agent we need to create
a set of reduced actions that are most valuable for the later agents.

Teacher Implementations
-----------------------

There are multiple implementations of this action space reduction in this project summarized in
:py:mod:`~curriculumagent.teacher.teacher`, which will be presented below.

All these implementations generate experience or collections of actions that are deemed useful by their reduction
of network overload(max rho). In the end the experience is used by the :py:mod:`~curriculumagent.teacher.collect_teacher_experience` module
to generate an action space for the :doc:`tutor`.

Attacking Lines
^^^^^^^^^^^^^^^

The first teacher is contained in the :py:mod:`~curriculumagent.teacher.teachers.teacher1` module.

It seeks to a random timestep in the environment, disconnects a line and tries to resolve the overflow by doing
a greedy search over all unitary actions. It is similar to the N-1 search described below.
When it finds an action that could lower the total load of the network it gets saved to a experience file.

.. _SimpleGreedyTeacher:

Simple greedy search
^^^^^^^^^^^^^^^^^^^^

The second teacher from :mod:`~curriculumagent.teacher.teachers.teacher2` is much simpler than the first one.

It executes through the given environment and waits until an overload occurs. When that happens it does the same
greedy search the upper does, saving any actions that could resolve the overflow and reducing the load of the network.


Usage Example
-------------

All teachers can be run as a script or as a python function. The python function for the attacking teacher is called
:py:func:`~teachers.teacher1.run_attacking_teacher` for example produces an experience file, given an environment and further preferences.
The function can also be called as a script/cli, which is provided by `defopt <https://github.com/anntzer/defopt>`_.

The following is a sample invocation of the teacher generating a file called exp_teacher1.csv::

    python -m curriculumagent.teacher.teachers.teacher1  exp_teacher1.csv /home/paspartout/data_grid2op/l2rpn_neurips_2020_track1_small -j1

It equates to calling the python function similarly::

    attacking_teacher(save_path=Path("exp_teacher1.csv"),
                      env_name_path="l2rpn_neurips_2020_track1_small", jobs=1)

The teacher processes will usually run indefinitely or when the number of specified episodes is reached.

After you have generated experience files with one or more teachers, you can use the functions
:py:func:`collect_teacher_experience.make_unitary_actionspace`
to convert those files to a reduced action space which can then be used by the :doc:`tutor`.

