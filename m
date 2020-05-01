Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F901C11B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 13:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kgo/njAMTvXQW4hbHokb9SQdQqfggLzn+p9HcWtEzsg=; b=qMEkERFElylFzy
	g04Snf5vomh70CM7kVN0h59+hLsoXwEaDAGKg9p7JcKrFc/iiHrDa++rrjdM94W6BS7CrLk7Eixo3
	4U9lGcjGXPIEsFM9p5gBt9wQGaInVXjkPvdRdzohISYwAFENXP+NgZakt9/+xJ3TgdObe13MeiKvj
	npbpsnQ0nuPuRvyNvSSr61HWVDIVtTqbEh+Yp3eaplHRXveIuxfrMuQF0JeWzNCuwAucihyqO1khR
	88lLWJgh5jPWINnEbkSWq2F/EW56ew2inMU6wK5kvMS+IB5lcBXskDKsjfYbhqV5wRYogFn8Ql6Gj
	BERtrY0vYzeCVlyuI6Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUUGQ-0000Ha-Jc; Fri, 01 May 2020 11:55:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUUFu-00063D-A6
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 11:54:59 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78C2C208C3;
 Fri,  1 May 2020 11:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588334098;
 bh=iNFeHIk8xWX4ywXBuk4tpzfe0Ik7bUJUoAyqZ9c31B8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=l2LiUhty4QdLprpcbJwt4zY/QEJ/gsssOz61NPSY1l02XVk7HNCCRoIeN6RNyGb1o
 u2htj8LGZ6I4zgSmRaFA0H8WsY/mNKwi+jAuf8Ausa4OEu8ROgyRQAe5mWRdPMK3dq
 5mcugwmG5xmnoiWP/0cxcwfWZBqTvAamvFRw0epw=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v2 1/3] arm64: entry: Refactor and modernise annotation for
 ret_to_user
Date: Fri,  1 May 2020 12:54:28 +0100
Message-Id: <20200501115430.37315-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501115430.37315-1-broonie@kernel.org>
References: <20200501115430.37315-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_045458_379777_223F4D3F 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As part of an effort to clarify and clean up the assembler annotations
new macros have been introduced which annotate the start and end of blocks
of code in assembler files. Currently ret_to_user has an out of line slow
path work_pending placed above the main function which makes annotating the
start and end of these blocks of code awkward.

Since work_pending is only referenced from within ret_to_user try to make
things a bit clearer by moving it after the current ret_to_user and then
marking both ret_to_user and work_pending as part of a single ret_to_user
code block.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/entry.S | 27 ++++++++++++++-------------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index ddcde093c433..73e2c8f5b728 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -727,21 +727,10 @@ el0_error_naked:
 	b	ret_to_user
 SYM_CODE_END(el0_error)
 
-/*
- * Ok, we need to do extra processing, enter the slow path.
- */
-work_pending:
-	mov	x0, sp				// 'regs'
-	bl	do_notify_resume
-#ifdef CONFIG_TRACE_IRQFLAGS
-	bl	trace_hardirqs_on		// enabled while in userspace
-#endif
-	ldr	x1, [tsk, #TSK_TI_FLAGS]	// re-check for single-step
-	b	finish_ret_to_user
 /*
  * "slow" syscall return path.
  */
-ret_to_user:
+SYM_CODE_START_LOCAL(ret_to_user)
 	disable_daif
 	gic_prio_kentry_setup tmp=x3
 	ldr	x1, [tsk, #TSK_TI_FLAGS]
@@ -753,7 +742,19 @@ finish_ret_to_user:
 	bl	stackleak_erase
 #endif
 	kernel_exit 0
-ENDPROC(ret_to_user)
+
+/*
+ * Ok, we need to do extra processing, enter the slow path.
+ */
+work_pending:
+	mov	x0, sp				// 'regs'
+	bl	do_notify_resume
+#ifdef CONFIG_TRACE_IRQFLAGS
+	bl	trace_hardirqs_on		// enabled while in userspace
+#endif
+	ldr	x1, [tsk, #TSK_TI_FLAGS]	// re-check for single-step
+	b	finish_ret_to_user
+SYM_CODE_END(ret_to_user)
 
 	.popsection				// .entry.text
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
