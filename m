Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C234AD5BFB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:10:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1itu4HkOGnWQu+zZ1hTfbBlUvJuuHn6fwKdt7FCJWTA=; b=PTkWme8AmCYk2E
	SLTFmRqLPSxF6hmT4q//aXiqUw1MvXBvGUMyxH1+HM9rMDe297mmTP7UxZbsEFjVbkyv2AWYx9u1K
	sfyTS7ywdopFPvfawb639jP9VaPDkNk8Ub1jqTiiZVR9HdN5WB2t+EWYnXxGIrfkTcnO3WaiGt5gy
	oYVUrS+/IwztVLDVGKGLLkeUiHKdrF10R08V1XT90B1xoePVHG5rxqwWXYE0LZ/pVl4xkd5NxyVoP
	qjqs0Jzvps75B1twKGc1RQUhy8JMV6FX/Dg7AQPTSBrApjBB/UxObPKdGvHOxt4oRyGZNdc9ezBQs
	yETdyn563BAV4iaFng8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJuV2-0006JI-3u; Mon, 14 Oct 2019 07:10:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJuUS-0004pH-V1; Mon, 14 Oct 2019 07:10:02 +0000
X-UUID: 82d7573e70114ea883cd1bd0509eabc3-20191013
X-UUID: 82d7573e70114ea883cd1bd0509eabc3-20191013
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jing-ting.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1824007849; Sun, 13 Oct 2019 23:09:24 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 14 Oct 2019 00:09:54 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 14 Oct 2019 15:09:52 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 14 Oct 2019 15:09:53 +0800
From: Jing-Ting Wu <jing-ting.wu@mediatek.com>
To: Peter Zijlstra <peterz@infradead.org>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH v2 1/1] sched/rt: avoid contend with CFS task
Date: Mon, 14 Oct 2019 15:09:08 +0800
Message-ID: <1571036948-25034-2-git-send-email-jing-ting.wu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1571036948-25034-1-git-send-email-jing-ting.wu@mediatek.com>
References: <1571036948-25034-1-git-send-email-jing-ting.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_001000_999683_99302D06 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Jing-Ting Wu <jing-ting.wu@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
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

We use some third-party application to test the application launch time.
We apply this RT patch, and compare it with original design.
Both this RT patch test case and original design test case are
already apply the series patches: sched/fair: rework the CFS load balance.

Application  Original(ms)  RT patch(ms)  Difference(ms)  Difference(%)
-----------------------------------------------------------------------
weibo          1325.72       1214.88        -110.84         -8.36
weixin          615.92        567.32         -48.60         -7.89
alipay          702.41        649.24         -53.17         -7.57

After apply this RT patch, launch time decrease about 8%.

Change-Id: Ia0a7a61d38cb406d82b7049787c62b95dfa0a69f
Signed-off-by: Jing-Ting Wu <jing-ting.wu@mediatek.com>
---
 kernel/sched/rt.c |   56 +++++++++++++++++++++++++++++------------------------
 1 file changed, 31 insertions(+), 25 deletions(-)

diff --git a/kernel/sched/rt.c b/kernel/sched/rt.c
index a532558..81085ed 100644
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
@@ -1648,6 +1629,9 @@ static int find_lowest_rq(struct task_struct *task)
 	struct cpumask *lowest_mask = this_cpu_cpumask_var_ptr(local_cpu_mask);
 	int this_cpu = smp_processor_id();
 	int cpu      = task_cpu(task);
+	int i;
+	struct rq *prev_rq = cpu_rq(cpu);
+	struct sched_domain *prev_sd;
 
 	/* Make sure the mask is initialized first */
 	if (unlikely(!lowest_mask))
@@ -1659,6 +1643,28 @@ static int find_lowest_rq(struct task_struct *task)
 	if (!cpupri_find(&task_rq(task)->rd->cpupri, task, lowest_mask))
 		return -1; /* No targets found */
 
+	/* Choose previous cpu if it is idle and it fits lowest_mask */
+	if (cpumask_test_cpu(cpu, lowest_mask) && idle_cpu(cpu))
+		return cpu;
+
+	rcu_read_lock();
+	prev_sd = rcu_dereference(prev_rq->sd);
+
+	if (prev_sd) {
+		/*
+		 * Choose idle_cpu among lowest_mask and it is closest
+		 * to our hot cache data.
+		 */
+		for_each_cpu(i, lowest_mask) {
+			if (idle_cpu(i) &&
+			    cpumask_test_cpu(i, sched_domain_span(prev_sd))) {
+				rcu_read_unlock();
+				return i;
+			}
+		}
+	}
+	rcu_read_unlock();
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
