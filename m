Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F39ED24B57
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 11:20:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Oaf5aC7trsXarxpudugURlgXN2UVFJgSwrPgNjQa4Ao=; b=Kn1
	Cz+yybmJTB+tq0AzDDh4EjUocxvwtNW+S7Pk0a9bLlktkdlNsfMD5JahBO7VlgfLGRXsnhRLi2QNB
	BeEQYvYx8sghxncfbBtAM3anDHDGPgS5B+sEpa3zxvJmKwQIlWF2voYNzeckdnRx4gXTwD33pdgzL
	2BVS5kw/r0Ig0VcKqfkdJoOodUR/03mAStDV1BPuHChrbfwW26Yh58I7vidVbxYUMcqhK7HOsoNMj
	BsHS7VCAIsKUuhYC91VBUUYiVVLwEi8HX2cOCSiZB58RGv0P4umzQygw2ixr548gkH/V8BTwPoB90
	HeMlFS8UlbtSsdCIElozocSfjRs1AfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0wl-0000YM-5H; Tue, 21 May 2019 09:20:35 +0000
Received: from alexa-out-tai-02.qualcomm.com ([103.229.16.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0wb-0000Xk-Qh
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 09:20:27 +0000
Received: from ironmsg03-tai.qualcomm.com ([10.249.140.8])
 by alexa-out-tai-02.qualcomm.com with ESMTP; 21 May 2019 17:20:20 +0800
X-IronPort-AV: E=McAfee;i="5900,7806,9263"; a="29754389"
Received: from c-fan-gv.ap.qualcomm.com (HELO c-fan-gv) ([10.231.253.105])
 by ironmsg03-tai.qualcomm.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 21 May 2019 17:20:08 +0800
From: Tengfei Fan <tengfeif@codeaurora.org>
To: catalin.marinas@arm.com,
	will.deacon@arm.com
Subject: [PATCH] arm64: break while loop if task had been rescheduled
Date: Tue, 21 May 2019 17:20:04 +0800
Message-Id: <1558430404-4840-1-git-send-email-tengfeif@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_022026_162037_F921DCCF 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.227 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, tengfei@codeaurora.org,
 Tengfei Fan <tengfeif@codeaurora.org>, anshuman.khandual@arm.com,
 marc.zyngier@arm.com, andreyknvl@google.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While printing a task's backtrace and this task isn't
current task, it is possible that task's fp and fp+8
have the same value, so cannot break the while loop.
This can break while loop if this task had been
rescheduled during print this task's backtrace.

Signed-off-by: Tengfei Fan <tengfeif@codeaurora.org>
---
 arch/arm64/kernel/traps.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 2975598..9df6e02 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -103,6 +103,9 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 {
 	struct stackframe frame;
 	int skip = 0;
+	long cur_state = 0;
+	unsigned long cur_sp = 0;
+	unsigned long cur_fp = 0;
 
 	pr_debug("%s(regs = %p tsk = %p)\n", __func__, regs, tsk);
 
@@ -127,6 +130,9 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 		 */
 		frame.fp = thread_saved_fp(tsk);
 		frame.pc = thread_saved_pc(tsk);
+		cur_state = tsk->state;
+		cur_sp = thread_saved_sp(tsk);
+		cur_fp = frame.fp;
 	}
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 	frame.graph = 0;
@@ -134,6 +140,23 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 
 	printk("Call trace:\n");
 	do {
+		if (tsk != current && (cur_state != tsk->state
+			/*
+			 * We would not be printing backtrace for the task
+			 * that has changed state from uninterruptible to
+			 * running before hitting the do-while loop but after
+			 * saving the current state. If task is in running
+			 * state before saving the state, then we may print
+			 * wrong call trace or end up in infinite while loop
+			 * if *(fp) and *(fp+8) are same. While the situation
+			 * will stop print when that task schedule out.
+			 */
+			|| cur_sp != thread_saved_sp(tsk)
+			|| cur_fp != thread_saved_fp(tsk))) {
+			printk("The task:%s had been rescheduled!\n",
+				tsk->comm);
+			break;
+		}
 		/* skip until specified stack frame */
 		if (!skip) {
 			dump_backtrace_entry(frame.pc);
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
