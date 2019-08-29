Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137ABA0FDC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 05:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nrcRSlFi0rBkCEwcdAhKsedaA8GHyxlE5wGfWU+rUSU=; b=eUjBcOSzz9dTER
	A/MEQ8QcDFuTBp38q+DDj5ufWUFUzHtw631Fi+fViJtOzb4ZHFRxdzOA6PyHIX+WWdmNZH4w1zKEh
	5ntQnQYmRdyys+vvkftL4J8CKk702Q4rRLg/p7E5Xd9YS6ye+6tvI7aajHhtLKuH6eXI+daFJfF9L
	kjcclApX/XyfvCRchhlbjicCiqyx4ToxXOgbgLPWNTWmmT+/vSB5PlEvscSOzW+KAWmxyMQCmWKOx
	dvwUb2leq/Kw7VJ4AJOR6q9TyuRfu9ZrF4OFfbdBz3aTnZgvMnjof7vvC50RtU73yAOaXqLtrASSV
	6CDsXpGZfkSCsTE3pdEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3AuO-0004Fk-Br; Thu, 29 Aug 2019 03:15:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3AuF-0004F2-7o; Thu, 29 Aug 2019 03:15:29 +0000
X-UUID: 8b7545fe6acd45c2aee943b55227b8ce-20190828
X-UUID: 8b7545fe6acd45c2aee943b55227b8ce-20190828
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jing-ting.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 854325770; Wed, 28 Aug 2019 19:15:26 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 20:15:24 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 11:15:10 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 29 Aug 2019 11:15:10 +0800
From: Jing-Ting Wu <jing-ting.wu@mediatek.com>
To: Peter Zijlstra <peterz@infradead.org>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH 1/1] sched/rt: avoid contend with CFS task
Date: Thu, 29 Aug 2019 11:15:02 +0800
Message-ID: <1567048502-6064-1-git-send-email-jing-ting.wu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: CF92C9C9AC6572474D62653CE02C724113EE36A30E31A424135181DAEB5C373D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_201527_289295_A9E7C425 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-arm-kernel@lists.infradead.org,
 Jing-Ting Wu <jing-ting.wu@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

At original linux design, RT & CFS scheduler are independent.
Current RT task placement policy will select the first cpu in
lowest_mask, even if the first CPU is running a CFS task.
This may put RT task to a running cpu and let CFS task runnable.

So we select idle cpu in lowest_mask first to avoid preempting
CFS task.

Signed-off-by: Jing-Ting Wu <jing-ting.wu@mediatek.com>
---
 kernel/sched/rt.c |   42 +++++++++++++++++-------------------------
 1 file changed, 17 insertions(+), 25 deletions(-)

diff --git a/kernel/sched/rt.c b/kernel/sched/rt.c
index a532558..626ca27 100644
--- a/kernel/sched/rt.c
+++ b/kernel/sched/rt.c
@@ -1388,7 +1388,6 @@ static void yield_task_rt(struct rq *rq)
 static int
 select_task_rq_rt(struct task_struct *p, int cpu, int sd_flag, int flags)
 {
-	struct task_struct *curr;
 	struct rq *rq;
 
 	/* For anything but wake ups, just return the task_cpu */
@@ -1398,33 +1397,15 @@ static void yield_task_rt(struct rq *rq)
 	rq = cpu_rq(cpu);
 
 	rcu_read_lock();
-	curr = READ_ONCE(rq->curr); /* unlocked access */
 
 	/*
-	 * If the current task on @p's runqueue is an RT task, then
-	 * try to see if we can wake this RT task up on another
-	 * runqueue. Otherwise simply start this RT task
-	 * on its current runqueue.
-	 *
-	 * We want to avoid overloading runqueues. If the woken
-	 * task is a higher priority, then it will stay on this CPU
-	 * and the lower prio task should be moved to another CPU.
-	 * Even though this will probably make the lower prio task
-	 * lose its cache, we do not want to bounce a higher task
-	 * around just because it gave up its CPU, perhaps for a
-	 * lock?
-	 *
-	 * For equal prio tasks, we just let the scheduler sort it out.
-	 *
-	 * Otherwise, just let it ride on the affined RQ and the
-	 * post-schedule router will push the preempted task away
-	 *
-	 * This test is optimistic, if we get it wrong the load-balancer
-	 * will have to sort it out.
+	 * If the task p is allowed to put more than one CPU or
+	 * it is not allowed to put on this CPU.
+	 * Let p use find_lowest_rq to choose other idle CPU first,
+	 * instead of choose this cpu and preempt curr cfs task.
 	 */
-	if (curr && unlikely(rt_task(curr)) &&
-	    (curr->nr_cpus_allowed < 2 ||
-	     curr->prio <= p->prio)) {
+	if ((p->nr_cpus_allowed > 1) ||
+	    (!cpumask_test_cpu(cpu, p->cpus_ptr))) {
 		int target = find_lowest_rq(p);
 
 		/*
@@ -1648,6 +1629,7 @@ static int find_lowest_rq(struct task_struct *task)
 	struct cpumask *lowest_mask = this_cpu_cpumask_var_ptr(local_cpu_mask);
 	int this_cpu = smp_processor_id();
 	int cpu      = task_cpu(task);
+	int i;
 
 	/* Make sure the mask is initialized first */
 	if (unlikely(!lowest_mask))
@@ -1659,6 +1641,16 @@ static int find_lowest_rq(struct task_struct *task)
 	if (!cpupri_find(&task_rq(task)->rd->cpupri, task, lowest_mask))
 		return -1; /* No targets found */
 
+	/* Choose previous cpu if it is idle and it fits lowest_mask */
+	if (cpumask_test_cpu(cpu, lowest_mask) && idle_cpu(cpu))
+		return cpu;
+
+	/* Choose idle_cpu among lowest_mask */
+	for_each_cpu(i, lowest_mask) {
+		if (idle_cpu(i))
+			return i;
+	}
+
 	/*
 	 * At this point we have built a mask of CPUs representing the
 	 * lowest priority tasks in the system.  Now we want to elect
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
