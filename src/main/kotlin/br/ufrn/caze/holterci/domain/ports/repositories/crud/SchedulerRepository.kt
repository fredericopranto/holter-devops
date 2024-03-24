/*
 * Federal University of Rio Grande do Norte
 * Department of Informatics and Applied Mathematics
 * Collaborative & Automated Software Engineering (CASE) Research Group
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *
 * publicano
 * br.ufrn.caze.publicano
 * SchedulerRepository
 * 24/05/21
 */
package br.ufrn.caze.holterci.domain.ports.repositories.crud

import br.ufrn.caze.holterci.domain.models.metric.Scheduler

/**
 * Define the queries of the domain class
 *
 * @author bruno batista - brunokaike@ufrn.edu.br
 */
interface SchedulerRepository {

    fun save(toEntity: Scheduler): Scheduler

    fun delete(id: Long)

    fun updateLastExecution(schedulerEntity: Scheduler) : Int

    fun findSchedulerById(id: Long): Scheduler

    fun findSchedulerByProject(id: Long) : Scheduler?

    fun countSchedulesOfProject(schedulerEntity: Scheduler) : Long


}