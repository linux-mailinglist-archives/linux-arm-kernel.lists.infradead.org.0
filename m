Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E16241F74C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 09:42:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=G+jSsnt9TG2huXMkFu+ukcZ+7QfpcUK2lwPyRfx/Cic=; b=qGg
	zg/t0PuFNKf57B6sKGfhkEiRAAGfCAtkbaNDZzL/U/Sk2XhQ72MQDyKzT+Xwi6m8i0/v/eu/MTFrX
	wlARw8fzuIVL3jCkS44p20tSaNyq2F8oR+MxRFALysozy9E2wkc1uRv9eXFpYT8OV21AJc4OtBgd2
	MwbFa780xw+YF6J/mm9MK8Vrwd3OZiy7phuff5FVmFLIDu+DIdObJ6iXEFjm3IOv+Jux/ixDKl9jx
	QKlf3zZXE3xv3kP02ohmPMhiHlJfTe+FgaKjZar2BpNXIdMUnios6rAJ8e8eSJ5TDnqvJRFv+uW+n
	fMFmyyaxi4zP0Ud5C0UMr+aUMoi1opA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjeKO-0000n3-U6; Fri, 12 Jun 2020 07:42:16 +0000
Received: from m17617.mail.qiye.163.com ([59.111.176.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjeKD-0000lt-8Y
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 07:42:07 +0000
Received: from vivo-HP-ProDesk-680-G4-PCI-MT.vivo.xyz (unknown [58.251.74.226])
 by m17617.mail.qiye.163.com (Hmail) with ESMTPA id E6F1326151C;
 Fri, 12 Jun 2020 15:41:52 +0800 (CST)
From: Wang Qing <wangqing@vivo.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>, Mark Rutland <mark.rutland@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Wang Qing <wangqing@vivo.com>,
 jinho lim <jordan.lim@samsung.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: smp call when task currently running on other cpu
Date: Fri, 12 Jun 2020 15:41:46 +0800
Message-Id: <1591947707-15140-1-git-send-email-wangqing@vivo.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgYFAkeWUFZS1VLWVdZKFlBSE83V1ktWUFJV1kPCR
 oVCBIfWUFZQkJCHR8dHksfTx1DVkpOQkpCT0xMSkhPTk5VEwETFhoSFyQUDg9ZV1kWGg8SFR0UWU
 FZT0tIVUpKS0hKTFVKS0tZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRw6Ehw*HzgrTgsNFhoiSx1L
 AgMwCzFVSlVKTkJKQk9MTEpIQ0xJVTMWGhIXVQwaFRwKEhUcOw0SDRRVGBQWRVlXWRILWUFZTkNV
 SU5KVUxPVUlJTVlXWQgBWUFJTU9CNwY+
X-HM-Tid: 0a72a77a5b3a9375kuwse6f1326151c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_004205_577788_AA375845 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.17 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [59.111.176.17 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

We cannot get FP and PC when the task is running on another CPU,
task->thread.cpu_context is the last time the task was switched out,
we can use smp call to print backtrace itself.

Signed-off-by: Wang Qing <wangqing@vivo.com>
---
 arch/arm64/kernel/traps.c | 11 +++++++++++
 1 file changed, 11 insertions(+)
 mode change 100644 => 100755 arch/arm64/kernel/traps.c

diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 50cc30a..17a07b9
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -83,6 +83,11 @@ static void dump_kernel_instr(const char *lvl, struct pt_regs *regs)
 	printk("%sCode: %s\n", lvl, str);
 }
 
+static void dump_backtrace_smp_fun(struct task_struct *tsk)
+{
+	dump_backtrace(NULL, tsk, KERN_DEFAULT);
+}
+
 void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
 		    const char *loglvl)
 {
@@ -107,6 +112,12 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
 		start_backtrace(&frame,
 				(unsigned long)__builtin_frame_address(0),
 				(unsigned long)dump_backtrace);
+	} else if (task_curr(tsk)) {
+		/*
+		 * The task is currently running on other cpu
+		 */
+		smp_call_function_single(tsk->cpu, dump_backtrace_fun, tsk, 0);
+		return;
 	} else {
 		/*
 		 * task blocked in __switch_to
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
