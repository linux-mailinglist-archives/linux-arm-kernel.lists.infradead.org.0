Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1721A7AF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a36Nag0IHmv+gi6AvWxjkYd9N49aSljwTloySo52MLU=; b=evyssl8OhcYon1edKDzyoI96dq
	BNuTW15AFJsg+6DLTkkDknZV2hjYpSOnVDnnxL464XS0xEgl7IZYXNywBI5OdaJx+r9la7Q4GuR8a
	Hk5caINrqwJaWgS2hoACbUw++PjuKDy2DVEqnS08GHHD3aRDeD9dpTBv9Nf3OFF8U4qaVoE1vfz9n
	IEZIGdALWUZbv+hVd86AdrYtOfNXSr55Nxot5CpBiQnM4gwJj2+D77CaPl8mW/Ff0toT2kqG15tOs
	h8gbJ1YpxMnO1n2bFPIuYKmQLNM5o3kqCnaxT80+L26FYTeGhUpn7cXha3JOW+v0T0s5Yh2PtZvkj
	fehH6Nuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOKp2-0004Dm-47; Tue, 14 Apr 2020 12:37:48 +0000
Received: from m17617.mail.qiye.163.com ([59.111.176.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOKoA-0003aH-Rr
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:36:56 +0000
Received: from wangqing-virtual-machine.localdomain (unknown [157.0.31.122])
 by m17617.mail.qiye.163.com (Hmail) with ESMTPA id 572BB261975;
 Tue, 14 Apr 2020 20:36:51 +0800 (CST)
From: Wang Qing <wangqing@vivo.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Steven Rostedt <rostedt@goodmis.org>, Ben Segall <bsegall@google.com>,
 Mel Gorman <mgorman@suse.de>, James Morse <james.morse@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Thomas Gleixner <tglx@linutronix.de>, jinho lim <jordan.lim@samsung.com>,
 Wang Qing <wangqing@vivo.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [V3 3/3] sched:rename task_running() and to task_running_on_rq
Date: Tue, 14 Apr 2020 20:36:32 +0800
Message-Id: <1586867796-5768-4-git-send-email-wangqing@vivo.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586867796-5768-1-git-send-email-wangqing@vivo.com>
References: <1586867796-5768-1-git-send-email-wangqing@vivo.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZSFVKTExLS0tLT05MTE1ITFlXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pz46Kjo6DDgxAgpMHRkRMC9L
 FQMaFD1VSlVKTkNNQ01MQ0pKQ0tJVTMWGhIXVQwaFRwKEhUcOw0SDRRVGBQWRVlXWRILWUFZSk5M
 VUtVSEpVSklJWVdZCAFZQUxCSEM3Bg++
X-HM-Tid: 0a7178b135589375kuws572bb261975
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_053655_248079_D0DEC9CC 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.17 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [59.111.176.17 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: opensource.kernel@vivo.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The task_running() should be renamed to task_running_on_rq()
like the naming of task_running_on_cpu(), this is what it
originally mean.

This solves the confusing naming problem.

Signed-off-by: Wang Qing <wangqing@vivo.com>
---
 kernel/sched/core.c     | 14 +++++++-------
 kernel/sched/deadline.c |  6 +++---
 kernel/sched/fair.c     |  2 +-
 kernel/sched/rt.c       |  6 +++---
 kernel/sched/sched.h    |  2 +-
 5 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index a2694ba..7ba1840 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -1672,7 +1672,7 @@ static int __set_cpus_allowed_ptr(struct task_struct *p,
 	if (cpumask_test_cpu(task_cpu(p), new_mask))
 		goto out;
 
-	if (task_running(rq, p) || p->state == TASK_WAKING) {
+	if (task_running_on_rq(rq, p) || p->state == TASK_WAKING) {
 		struct migration_arg arg = { p, dest_cpu };
 		/* Need help from migration thread: drop lock and wait. */
 		task_rq_unlock(rq, p, &rf);
@@ -1905,11 +1905,11 @@ unsigned long wait_task_inactive(struct task_struct *p, long match_state)
 		 *
 		 * NOTE! Since we don't hold any locks, it's not
 		 * even sure that "rq" stays as the right runqueue!
-		 * But we don't care, since "task_running()" will
-		 * return false if the runqueue has changed and p
-		 * is actually now running somewhere else!
+		 * But we don't care, since "task_running_on_rq()"
+		 * will return false if the runqueue has changed
+		 * and p is actually now running somewhere else!
 		 */
-		while (task_running(rq, p)) {
+		while (task_running_on_rq(rq, p)) {
 			if (match_state && unlikely(p->state != match_state))
 				return 0;
 			cpu_relax();
@@ -1922,7 +1922,7 @@ unsigned long wait_task_inactive(struct task_struct *p, long match_state)
 		 */
 		rq = task_rq_lock(p, &rf);
 		trace_sched_wait_task(p);
-		running = task_running(rq, p);
+		running = task_running_on_rq(rq, p);
 		queued = task_on_rq_queued(p);
 		ncsw = 0;
 		if (!match_state || p->state == match_state)
@@ -5745,7 +5745,7 @@ int __sched yield_to(struct task_struct *p, bool preempt)
 	if (curr->sched_class != p->sched_class)
 		goto out_unlock;
 
-	if (task_running(p_rq, p) || p->state)
+	if (task_running_on_rq(p_rq, p) || p->state)
 		goto out_unlock;
 
 	yielded = curr->sched_class->yield_to_task(rq, p, preempt);
diff --git a/kernel/sched/deadline.c b/kernel/sched/deadline.c
index 504d2f5..c04cecd 100644
--- a/kernel/sched/deadline.c
+++ b/kernel/sched/deadline.c
@@ -1838,7 +1838,7 @@ static void task_fork_dl(struct task_struct *p)
 
 static int pick_dl_task(struct rq *rq, struct task_struct *p, int cpu)
 {
-	if (!task_running(rq, p) &&
+	if (!task_running_on_rq(rq, p) &&
 	    cpumask_test_cpu(cpu, p->cpus_ptr))
 		return 1;
 	return 0;
@@ -1990,7 +1990,7 @@ static struct rq *find_lock_later_rq(struct task_struct *task, struct rq *rq)
 		if (double_lock_balance(rq, later_rq)) {
 			if (unlikely(task_rq(task) != rq ||
 				     !cpumask_test_cpu(later_rq->cpu, task->cpus_ptr) ||
-				     task_running(rq, task) ||
+				     task_running_on_rq(rq, task) ||
 				     !dl_task(task) ||
 				     !task_on_rq_queued(task))) {
 				double_unlock_balance(rq, later_rq);
@@ -2217,7 +2217,7 @@ static void pull_dl_task(struct rq *this_rq)
  */
 static void task_woken_dl(struct rq *rq, struct task_struct *p)
 {
-	if (!task_running(rq, p) &&
+	if (!task_running_on_rq(rq, p) &&
 	    !test_tsk_need_resched(rq->curr) &&
 	    p->nr_cpus_allowed > 1 &&
 	    dl_task(rq->curr) &&
diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
index 1ea3ddd..6cc0b5b 100644
--- a/kernel/sched/fair.c
+++ b/kernel/sched/fair.c
@@ -7503,7 +7503,7 @@ int can_migrate_task(struct task_struct *p, struct lb_env *env)
 	/* Record that we found atleast one task that could run on dst_cpu */
 	env->flags &= ~LBF_ALL_PINNED;
 
-	if (task_running(env->src_rq, p)) {
+	if (task_running_on_rq(env->src_rq, p)) {
 		schedstat_inc(p->se.statistics.nr_failed_migrations_running);
 		return 0;
 	}
diff --git a/kernel/sched/rt.c b/kernel/sched/rt.c
index df11d88..ea647d9 100644
--- a/kernel/sched/rt.c
+++ b/kernel/sched/rt.c
@@ -1655,7 +1655,7 @@ static void put_prev_task_rt(struct rq *rq, struct task_struct *p)
 
 static int pick_rt_task(struct rq *rq, struct task_struct *p, int cpu)
 {
-	if (!task_running(rq, p) &&
+	if (!task_running_on_rq(rq, p) &&
 	    cpumask_test_cpu(cpu, p->cpus_ptr))
 		return 1;
 
@@ -1810,7 +1810,7 @@ static struct rq *find_lock_lowest_rq(struct task_struct *task, struct rq *rq)
 			 */
 			if (unlikely(task_rq(task) != rq ||
 				     !cpumask_test_cpu(lowest_rq->cpu, task->cpus_ptr) ||
-				     task_running(rq, task) ||
+				     task_running_on_rq(rq, task) ||
 				     !rt_task(task) ||
 				     !task_on_rq_queued(task))) {
 
@@ -2218,7 +2218,7 @@ static void pull_rt_task(struct rq *this_rq)
  */
 static void task_woken_rt(struct rq *rq, struct task_struct *p)
 {
-	bool need_to_push = !task_running(rq, p) &&
+	bool need_to_push = !task_running_on_rq(rq, p) &&
 			    !test_tsk_need_resched(rq->curr) &&
 			    p->nr_cpus_allowed > 1 &&
 			    (dl_task(rq->curr) || rt_task(rq->curr)) &&
diff --git a/kernel/sched/sched.h b/kernel/sched/sched.h
index 0f616bf..e5b6538 100644
--- a/kernel/sched/sched.h
+++ b/kernel/sched/sched.h
@@ -1659,7 +1659,7 @@ static inline int task_current(struct rq *rq, struct task_struct *p)
 	return rq->curr == p;
 }
 
-static inline int task_running(struct rq *rq, struct task_struct *p)
+static inline int task_running_on_rq(struct rq *rq, struct task_struct *p)
 {
 #ifdef CONFIG_SMP
 	return p->on_cpu;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
