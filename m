Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 619C017A10F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 09:17:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Pt5/JGZAO5YbNxfxRLMRMmfwQx2td/6PpqP/bKuprmw=; b=OJAcJ+LOzl8OZldvwIgcTEtNzO
	gFSW+LtclTYenJ1zePQX8y8MpLWn3wSQqYsYx+PCNHfxS7mZ5xhSaWK3cFeELZASw0nNUB9GB59OK
	utrZuWlKkO/OVXWDZaQb62ONJ9adMqlBRKpFrIKVpukBkSrYRrKrmjW4naAWmm8/qmFd6KHX3A3Cz
	K+qhCp4NpM4iklsfSuylTPIBJkeOdqkcM9S4XXG1rVNfWtrc2iUkd7uNOvLGM2GGHqncPRu7icwh+
	qvWVp/CRxwm8H9jwYBpyRMIBeJjRRDOIq8r5dxUhxOtlu/WAEkO6vc7LyUPOqUyddcpx5FkWMvf38
	20f2DBDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9lgu-0003Xn-Iv; Thu, 05 Mar 2020 08:17:12 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9lgf-0003RL-9a
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 08:16:59 +0000
Received: from localhost (unknown [192.168.167.209])
 by lucky1.263xmail.com (Postfix) with ESMTP id 3A7D89F87B;
 Thu,  5 Mar 2020 16:16:34 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32633T140274034538240S1583396184137610_; 
 Thu, 05 Mar 2020 16:16:33 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <104baa6c45971adc002ce26f794e2d59>
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
Subject: [PATCH v1 1/1] sched/fair: do not preempt current task if it is going
 to call schedule()
Date: Thu,  5 Mar 2020 16:16:11 +0800
Message-Id: <20200305081611.29323-2-cl@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200305081611.29323-1-cl@rock-chips.com>
References: <20200305081611.29323-1-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_001657_823891_F0466034 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
 arch/arm/include/asm/thread_info.h   |  1 +
 arch/arm64/include/asm/thread_info.h |  1 +
 include/linux/sched.h                | 15 +++++++++++++++
 kernel/kthread.c                     |  4 ++++
 kernel/sched/fair.c                  |  4 ++++
 5 files changed, 25 insertions(+)

diff --git a/arch/arm/include/asm/thread_info.h b/arch/arm/include/asm/thread_info.h
index 0d0d5178e2c3..51802991ba1f 100644
--- a/arch/arm/include/asm/thread_info.h
+++ b/arch/arm/include/asm/thread_info.h
@@ -145,6 +145,7 @@ extern int vfp_restore_user_hwstate(struct user_vfp *,
 #define TIF_USING_IWMMXT	17
 #define TIF_MEMDIE		18	/* is terminating due to OOM killer */
 #define TIF_RESTORE_SIGMASK	20
+#define TIF_GOING_TO_SCHED	27	/* task is going to call schedule() */
 
 #define _TIF_SIGPENDING		(1 << TIF_SIGPENDING)
 #define _TIF_NEED_RESCHED	(1 << TIF_NEED_RESCHED)
diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
index f0cec4160136..332786f11dc3 100644
--- a/arch/arm64/include/asm/thread_info.h
+++ b/arch/arm64/include/asm/thread_info.h
@@ -78,6 +78,7 @@ void arch_release_task_struct(struct task_struct *tsk);
 #define TIF_SVE_VL_INHERIT	24	/* Inherit sve_vl_onexec across exec */
 #define TIF_SSBD		25	/* Wants SSB mitigation */
 #define TIF_TAGGED_ADDR		26	/* Allow tagged user addresses */
+#define TIF_GOING_TO_SCHED	27	/* task is going to call schedule() */
 
 #define _TIF_SIGPENDING		(1 << TIF_SIGPENDING)
 #define _TIF_NEED_RESCHED	(1 << TIF_NEED_RESCHED)
diff --git a/include/linux/sched.h b/include/linux/sched.h
index 04278493bf15..cb9058d2cf0b 100644
--- a/include/linux/sched.h
+++ b/include/linux/sched.h
@@ -1768,6 +1768,21 @@ static inline int test_tsk_need_resched(struct task_struct *tsk)
 	return unlikely(test_tsk_thread_flag(tsk,TIF_NEED_RESCHED));
 }
 
+static inline void set_tsk_going_to_sched(struct task_struct *tsk)
+{
+	set_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED);
+}
+
+static inline void clear_tsk_going_to_sched(struct task_struct *tsk)
+{
+	clear_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED);
+}
+
+static inline int test_tsk_going_to_sched(struct task_struct *tsk)
+{
+	return unlikely(test_tsk_thread_flag(tsk, TIF_GOING_TO_SCHED));
+}
+
 /*
  * cond_resched() and cond_resched_lock(): latency reduction via
  * explicit rescheduling in places that are safe. The return
diff --git a/kernel/kthread.c b/kernel/kthread.c
index b262f47046ca..8a4e4c9cdc22 100644
--- a/kernel/kthread.c
+++ b/kernel/kthread.c
@@ -199,8 +199,10 @@ static void __kthread_parkme(struct kthread *self)
 		if (!test_bit(KTHREAD_SHOULD_PARK, &self->flags))
 			break;
 
+		set_tsk_going_to_sched(current);
 		complete(&self->parked);
 		schedule();
+		clear_tsk_going_to_sched(current);
 	}
 	__set_current_state(TASK_RUNNING);
 }
@@ -245,8 +247,10 @@ static int kthread(void *_create)
 	/* OK, tell user we're spawned, wait for stop or wakeup */
 	__set_current_state(TASK_UNINTERRUPTIBLE);
 	create->result = current;
+	set_tsk_going_to_sched(current);
 	complete(done);
 	schedule();
+	clear_tsk_going_to_sched(current);
 
 	ret = -EINTR;
 	if (!test_bit(KTHREAD_SHOULD_STOP, &self->flags)) {
diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
index 3c8a379c357e..28a308743bf8 100644
--- a/kernel/sched/fair.c
+++ b/kernel/sched/fair.c
@@ -4330,6 +4330,8 @@ entity_tick(struct cfs_rq *cfs_rq, struct sched_entity *curr, int queued)
 			hrtimer_active(&rq_of(cfs_rq)->hrtick_timer))
 		return;
 #endif
+	if (test_tsk_going_to_sched(rq_of(cfs_rq)->curr))
+		return;
 
 	if (cfs_rq->nr_running > 1)
 		check_preempt_tick(cfs_rq, curr);
@@ -6633,6 +6635,8 @@ static void check_preempt_wakeup(struct rq *rq, struct task_struct *p, int wake_
 	 */
 	if (test_tsk_need_resched(curr))
 		return;
+	if (test_tsk_going_to_sched(curr))
+		return;
 
 	/* Idle tasks are by definition preempted by non-idle tasks. */
 	if (unlikely(task_has_idle_policy(curr)) &&
-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
