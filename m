Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7154817A29C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 11:00:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aEihYaJIswW8Edrc+YuS18VcjCsptIcPC3MiH/CVM+k=; b=qZUS1jt0jaw+4yZBbrep59jl0C
	73ibdEbBfGflJlpd6q5jU1eh1b5jbgnGizOdeJLafd6m8yza37KcX65AIbBVvAiOe2XF+/qEINNTU
	nyRuc+fP8O+LPoAaccLrET4K5NK0tnjsr7D280d8V8KULWUe9lnRrjoqICWQDe8JB9vLSSX9/IxrM
	i6wwtct0a4ghSrjpNZWaX8pT7FneAK4vWA7CsfVvoqF4WAnXFFqqU7fTDTagADgZmqls2rcvbV3j1
	hTqWsVexPKcMzeIUiUo6B/LYBdMYhPStTZ1HBBajEbE+DBfN4jee0+XQX0e6lKM8kunzT1VzAfQLg
	tF00Uv3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9nIt-00044f-NJ; Thu, 05 Mar 2020 10:00:31 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9nIS-0002ix-On
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 10:00:06 +0000
Received: from localhost (unknown [192.168.167.8])
 by lucky1.263xmail.com (Postfix) with ESMTP id 8B7BD8A264;
 Thu,  5 Mar 2020 17:59:59 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P12225T140183483700992S1583402391050204_; 
 Thu, 05 Mar 2020 17:59:59 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <cc1503f1456a67c884aa81704f3164a1>
X-RL-SENDER: cl@rock-chips.com
X-SENDER: cl@rock-chips.com
X-LOGIN-NAME: cl@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: <cl@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v2 1/1] sched/fair: do not preempt current task if it is going
 to call schedule()
Date: Thu,  5 Mar 2020 17:59:48 +0800
Message-Id: <20200305095948.10873-2-cl@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200305095948.10873-1-cl@rock-chips.com>
References: <20200305095948.10873-1-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_020005_165711_D3FB386A 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.131 listed in wl.mailspike.net]
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
Cc: juri.lelli@redhat.com, mark.rutland@arm.com, geert+renesas@glider.be,
 peterz@infradead.org, catalin.marinas@arm.com, bsegall@google.com,
 will@kernel.org, mpe@ellerman.id.au, linux@armlinux.org.uk,
 dietmar.eggemann@arm.com, ben.dooks@codethink.co.uk, mgorman@suse.de,
 Liang Chen <cl@rock-chips.com>, huangtao@rock-chips.com, keescook@chromium.org,
 anshuman.khandual@arm.com, rostedt@goodmis.org, tglx@linutronix.de,
 surenb@google.com, mingo@redhat.com, allison@lohutok.net,
 linux-arm-kernel@lists.infradead.org, wad@chromium.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, luto@amacapital.net,
 george_davis@mentor.com, sudeep.holla@arm.com, akpm@linux-foundation.org,
 info@metux.net, kstewart@linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Liang Chen <cl@rock-chips.com>

when we create a kthread with ktrhead_create_on_cpu(),the child thread
entry is ktread.c:ktrhead() which will be preempted by the parent after
call complete(done) while schedule() is not called yet,then the parent
will call wait_task_inactive(child) but the child is still on the runqueue,
so the parent will schedule_hrtimeout() for 1 jiffy,it will waste a lot of
time,especially on startup.

  parent                             child
ktrhead_create_on_cpu()
  wait_fo_completion(&done) -----> ktread.c:ktrhead()
                             |----- complete(done);--wakeup and preempted by parent
 kthread_bind() <------------|  |-> schedule();--dequeue here
  wait_task_inactive(child)     |
   schedule_hrtimeout(1 jiffy) -|

So we hope the child just wakeup parent but not preempted by parent, and the
child is going to call schedule() soon,then the parent will not call
schedule_hrtimeout(1 jiffy) as the child is already dequeue.

The same issue for ktrhead_park()&&kthread_parkme().
This patch can save 120ms on rk312x startup with CONFIG_HZ=300.

Signed-off-by: Liang Chen <cl@rock-chips.com>
---
 include/linux/sched.h |  5 +++++
 kernel/kthread.c      |  4 ++++
 kernel/sched/fair.c   | 13 +++++++++++++
 3 files changed, 22 insertions(+)

diff --git a/include/linux/sched.h b/include/linux/sched.h
index 04278493bf15..54bf336f5790 100644
--- a/include/linux/sched.h
+++ b/include/linux/sched.h
@@ -1533,6 +1533,7 @@ static inline bool is_percpu_thread(void)
 #define PFA_SPEC_IB_DISABLE		5	/* Indirect branch speculation restricted */
 #define PFA_SPEC_IB_FORCE_DISABLE	6	/* Indirect branch speculation permanently restricted */
 #define PFA_SPEC_SSB_NOEXEC		7	/* Speculative Store Bypass clear on execve() */
+#define PFA_GOING_TO_SCHED		8	/* task is going to call schedule() */
 
 #define TASK_PFA_TEST(name, func)					\
 	static inline bool task_##func(struct task_struct *p)		\
@@ -1575,6 +1576,10 @@ TASK_PFA_CLEAR(SPEC_IB_DISABLE, spec_ib_disable)
 TASK_PFA_TEST(SPEC_IB_FORCE_DISABLE, spec_ib_force_disable)
 TASK_PFA_SET(SPEC_IB_FORCE_DISABLE, spec_ib_force_disable)
 
+TASK_PFA_TEST(GOING_TO_SCHED, going_to_sched)
+TASK_PFA_SET(GOING_TO_SCHED, going_to_sched)
+TASK_PFA_CLEAR(GOING_TO_SCHED, going_to_sched)
+
 static inline void
 current_restore_flags(unsigned long orig_flags, unsigned long flags)
 {
diff --git a/kernel/kthread.c b/kernel/kthread.c
index b262f47046ca..bc96de2648f6 100644
--- a/kernel/kthread.c
+++ b/kernel/kthread.c
@@ -199,8 +199,10 @@ static void __kthread_parkme(struct kthread *self)
 		if (!test_bit(KTHREAD_SHOULD_PARK, &self->flags))
 			break;
 
+		task_set_going_to_sched(current);
 		complete(&self->parked);
 		schedule();
+		task_clear_going_to_sched(current);
 	}
 	__set_current_state(TASK_RUNNING);
 }
@@ -245,8 +247,10 @@ static int kthread(void *_create)
 	/* OK, tell user we're spawned, wait for stop or wakeup */
 	__set_current_state(TASK_UNINTERRUPTIBLE);
 	create->result = current;
+	task_set_going_to_sched(current);
 	complete(done);
 	schedule();
+	task_clear_going_to_sched(current);
 
 	ret = -EINTR;
 	if (!test_bit(KTHREAD_SHOULD_STOP, &self->flags)) {
diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
index 3c8a379c357e..78666cec794a 100644
--- a/kernel/sched/fair.c
+++ b/kernel/sched/fair.c
@@ -4330,6 +4330,12 @@ entity_tick(struct cfs_rq *cfs_rq, struct sched_entity *curr, int queued)
 			hrtimer_active(&rq_of(cfs_rq)->hrtick_timer))
 		return;
 #endif
+	/*
+	 * current task is going to call schedule(), do not preempt it or
+	 * it will casue more useless contex_switch().
+	 */
+	if (task_going_to_sched(rq_of(cfs_rq)->curr))
+		return;
 
 	if (cfs_rq->nr_running > 1)
 		check_preempt_tick(cfs_rq, curr);
@@ -6634,6 +6640,13 @@ static void check_preempt_wakeup(struct rq *rq, struct task_struct *p, int wake_
 	if (test_tsk_need_resched(curr))
 		return;
 
+	/*
+	 * current task is going to call schedule(), do not preempt it or
+	 * it will casue more useless contex_switch().
+	 */
+	if (task_going_to_sched(curr))
+		return;
+
 	/* Idle tasks are by definition preempted by non-idle tasks. */
 	if (unlikely(task_has_idle_policy(curr)) &&
 	    likely(!task_has_idle_policy(p)))
-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
