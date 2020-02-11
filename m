Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B162D1599B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 20:26:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=55b639mWBT12yq68+6LiKC4skvqsOnX8VKcHlzt4um0=; b=L0cOTXm/2U/iJv
	IzieBOeSEv4nTaAXHCpAS/up11Lly25P5nN+kK5BgtYQ0a894K++8ED1fcDyiCKttLACZO1xJeTQU
	IMuCi/vS1oVYbhacMyxEo6FSUznqC6fJThoW5NvpwImt/04kTyVk3jl2eHkNmaqWYgNozRpuXiKBR
	z3mF2hxiSoVsgs9S/lCKoeFcWWJxTjFbCW+bbYPrzITT+Okm8yohE+hePTLeL9Z/CeI3xvTPoOK/4
	xZXvh3Dtz5GXeTkQ3plpT513tizp1lFA93GPTM35jC2yXNTuBAPx5NBH3tQTrHExYfgykDMd5LiFt
	iQ+c7G/MsqFQW7ono6sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1bB7-0006vs-3T; Tue, 11 Feb 2020 19:26:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1bAx-0006v2-NG
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 19:26:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C397B1FB;
 Tue, 11 Feb 2020 11:26:25 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4778B3F68F;
 Tue, 11 Feb 2020 11:26:25 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: entry: Annotate vector table and handlers as code
Date: Tue, 11 Feb 2020 19:26:21 +0000
Message-Id: <20200211192621.7705-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_112627_848262_87C1B43C 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

In an effort to clarify and simplify the annotation of assembly
functions new macros have been introduced. These replace ENTRY and
ENDPROC with two different annotations for normal functions and those
with unusual calling conventions. The vector table and handlers aren't
normal C style code so should be annotated as CODE.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/entry.S | 76 +++++++++++++++++++--------------------
 1 file changed, 38 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 9461d812ae27..1454f3ea2e2e 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -465,7 +465,7 @@ alternative_endif
 	.pushsection ".entry.text", "ax"
 
 	.align	11
-ENTRY(vectors)
+SYM_CODE_START(vectors)
 	kernel_ventry	1, sync_invalid			// Synchronous EL1t
 	kernel_ventry	1, irq_invalid			// IRQ EL1t
 	kernel_ventry	1, fiq_invalid			// FIQ EL1t
@@ -492,7 +492,7 @@ ENTRY(vectors)
 	kernel_ventry	0, fiq_invalid, 32		// FIQ 32-bit EL0
 	kernel_ventry	0, error_invalid, 32		// Error 32-bit EL0
 #endif
-END(vectors)
+SYM_CODE_END(vectors)
 
 #ifdef CONFIG_VMAP_STACK
 	/*
@@ -534,57 +534,57 @@ __bad_stack:
 	ASM_BUG()
 	.endm
 
-el0_sync_invalid:
+SYM_CODE_START_LOCAL(el0_sync_invalid)
 	inv_entry 0, BAD_SYNC
-ENDPROC(el0_sync_invalid)
+SYM_CODE_END(el0_sync_invalid)
 
-el0_irq_invalid:
+SYM_CODE_START_LOCAL(el0_irq_invalid)
 	inv_entry 0, BAD_IRQ
-ENDPROC(el0_irq_invalid)
+SYM_CODE_END(el0_irq_invalid)
 
-el0_fiq_invalid:
+SYM_CODE_START_LOCAL(el0_fiq_invalid)
 	inv_entry 0, BAD_FIQ
-ENDPROC(el0_fiq_invalid)
+SYM_CODE_END(el0_fiq_invalid)
 
-el0_error_invalid:
+SYM_CODE_START_LOCAL(el0_error_invalid)
 	inv_entry 0, BAD_ERROR
-ENDPROC(el0_error_invalid)
+SYM_CODE_END(el0_error_invalid)
 
 #ifdef CONFIG_COMPAT
-el0_fiq_invalid_compat:
+SYM_CODE_START_LOCAL(el0_fiq_invalid_compat)
 	inv_entry 0, BAD_FIQ, 32
-ENDPROC(el0_fiq_invalid_compat)
+SYM_CODE_END(el0_fiq_invalid_compat)
 #endif
 
-el1_sync_invalid:
+SYM_CODE_START_LOCAL(el1_sync_invalid)
 	inv_entry 1, BAD_SYNC
-ENDPROC(el1_sync_invalid)
+SYM_CODE_END(el1_sync_invalid)
 
-el1_irq_invalid:
+SYM_CODE_START_LOCAL(el1_irq_invalid)
 	inv_entry 1, BAD_IRQ
-ENDPROC(el1_irq_invalid)
+SYM_CODE_END(el1_irq_invalid)
 
-el1_fiq_invalid:
+SYM_CODE_START_LOCAL(el1_fiq_invalid)
 	inv_entry 1, BAD_FIQ
-ENDPROC(el1_fiq_invalid)
+SYM_CODE_END(el1_fiq_invalid)
 
-el1_error_invalid:
+SYM_CODE_START_LOCAL(el1_error_invalid)
 	inv_entry 1, BAD_ERROR
-ENDPROC(el1_error_invalid)
+SYM_CODE_END(el1_error_invalid)
 
 /*
  * EL1 mode handlers.
  */
 	.align	6
-el1_sync:
+SYM_CODE_START_LOCAL_NOALIGN(el1_sync)
 	kernel_entry 1
 	mov	x0, sp
 	bl	el1_sync_handler
 	kernel_exit 1
-ENDPROC(el1_sync)
+SYM_CODE_END(el1_sync)
 
 	.align	6
-el1_irq:
+SYM_CODE_START_LOCAL_NOALIGN(el1_irq)
 	kernel_entry 1
 	gic_prio_irq_setup pmr=x20, tmp=x1
 	enable_da_f
@@ -639,42 +639,42 @@ alternative_else_nop_endif
 #endif
 
 	kernel_exit 1
-ENDPROC(el1_irq)
+SYM_CODE_END(el1_irq)
 
 /*
  * EL0 mode handlers.
  */
 	.align	6
-el0_sync:
+SYM_CODE_START_LOCAL_NOALIGN(el0_sync)
 	kernel_entry 0
 	mov	x0, sp
 	bl	el0_sync_handler
 	b	ret_to_user
-ENDPROC(el0_sync)
+SYM_CODE_END(el0_sync)
 
 #ifdef CONFIG_COMPAT
 	.align	6
-el0_sync_compat:
+SYM_CODE_START_LOCAL_NOALIGN(el0_sync_compat)
 	kernel_entry 0, 32
 	mov	x0, sp
 	bl	el0_sync_compat_handler
 	b	ret_to_user
-ENDPROC(el0_sync_compat)
+SYM_CODE_END(el0_sync_compat)
 
 	.align	6
-el0_irq_compat:
+SYM_CODE_START_LOCAL_NOALIGN(el0_irq_compat)
 	kernel_entry 0, 32
 	b	el0_irq_naked
-ENDPROC(el0_irq_compat)
+SYM_CODE_END(el0_irq_compat)
 
-el0_error_compat:
+SYM_CODE_START_LOCAL_NOALIGN(el0_error_compat)
 	kernel_entry 0, 32
 	b	el0_error_naked
-ENDPROC(el0_error_compat)
+SYM_CODE_END(el0_error_compat)
 #endif
 
 	.align	6
-el0_irq:
+SYM_CODE_START_LOCAL_NOALIGN(el0_irq)
 	kernel_entry 0
 el0_irq_naked:
 	gic_prio_irq_setup pmr=x20, tmp=x0
@@ -696,9 +696,9 @@ el0_irq_naked:
 	bl	trace_hardirqs_on
 #endif
 	b	ret_to_user
-ENDPROC(el0_irq)
+SYM_CODE_END(el0_irq)
 
-el1_error:
+SYM_CODE_START_LOCAL(el1_error)
 	kernel_entry 1
 	mrs	x1, esr_el1
 	gic_prio_kentry_setup tmp=x2
@@ -706,9 +706,9 @@ el1_error:
 	mov	x0, sp
 	bl	do_serror
 	kernel_exit 1
-ENDPROC(el1_error)
+SYM_CODE_END(el1_error)
 
-el0_error:
+SYM_CODE_START_LOCAL(el0_error)
 	kernel_entry 0
 el0_error_naked:
 	mrs	x25, esr_el1
@@ -720,7 +720,7 @@ el0_error_naked:
 	bl	do_serror
 	enable_da_f
 	b	ret_to_user
-ENDPROC(el0_error)
+SYM_CODE_END(el0_error)
 
 /*
  * Ok, we need to do extra processing, enter the slow path.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
