Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C0A158DDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 13:00:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MU2w4Pk9RnEtGLuwNOFxsNUQK1ey3w7R/IhDjhsWNz0=; b=f/HLk9v8VCtpkx
	Y3UgJPqpBE4qK9LAb0Dx4MMk6lGNTWad4QK3yYs+LZXiwO+pLoAXycZ0N7Ai3jsTeeIzq9cXwBhAg
	R2j1AR0wi/9Ue3nqu6ex45BLYF2fNIQtMq5sTOSeaR23UgB0OSgec426RGCEvDdQWEqaWKsq8t7o0
	aJSsobZNHP9CUGz7Twpgw01jAQ+gwtlRAIVO+5b4kf2InYSLYRA/52IOwNBttGIIiyT1IMOPLxBpN
	JfHah2LfXpzMQl+/WQvrQBKEnFc8q/LYbHSveOS4T6j/zhgxXzcbM4e/evG7AEBJzo2UYMzq2afEo
	Ln88te9IkIvSuXzuXjqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1UDa-0000nE-TG; Tue, 11 Feb 2020 12:00:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1UDS-0000mc-38
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 12:00:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4DC7A1FB;
 Tue, 11 Feb 2020 04:00:33 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C87473F6CF;
 Tue, 11 Feb 2020 04:00:32 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v2] arm64: sdei: Annotate SDEI entry points using new style
 annotations
Date: Tue, 11 Feb 2020 12:00:29 +0000
Message-Id: <20200211120029.5623-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_040034_177529_12823EC8 
X-CRM114-Status: UNSURE (   8.30  )
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
Cc: Mark Brown <broonie@kernel.org>, James Morse <james.Morse@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to clarify and simplify the annotation of assembly
functions new macros have been introduced. These replace ENTRY and
ENDPROC with two different annotations for normal functions and those
with unusual calling conventions.

The SDEI entry points are currently annotated as normal functions but
are called from non-kernel contexts with non-standard calling convention
and should therefore be annotated as such so do so.

Signed-off-by: Mark Brown <broonie@kernel.org>
Acked-by: James Morse <james.Morse@arm.com>
---
 arch/arm64/kernel/entry.S | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index b0a4012cd535..b79c86d71c75 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -938,7 +938,7 @@ NOKPROBE(ret_from_fork)
  */
 .ltorg
 .pushsection ".entry.tramp.text", "ax"
-ENTRY(__sdei_asm_entry_trampoline)
+SYM_CODE_START(__sdei_asm_entry_trampoline)
 	mrs	x4, ttbr1_el1
 	tbz	x4, #USER_ASID_BIT, 1f
 
@@ -960,7 +960,7 @@ ENTRY(__sdei_asm_entry_trampoline)
 	ldr	x4, =__sdei_asm_handler
 #endif
 	br	x4
-ENDPROC(__sdei_asm_entry_trampoline)
+SYM_CODE_END(__sdei_asm_entry_trampoline)
 NOKPROBE(__sdei_asm_entry_trampoline)
 
 /*
@@ -970,14 +970,14 @@ NOKPROBE(__sdei_asm_entry_trampoline)
  * x2: exit_mode
  * x4: struct sdei_registered_event argument from registration time.
  */
-ENTRY(__sdei_asm_exit_trampoline)
+SYM_CODE_START(__sdei_asm_exit_trampoline)
 	ldr	x4, [x4, #(SDEI_EVENT_INTREGS + S_ORIG_ADDR_LIMIT)]
 	cbnz	x4, 1f
 
 	tramp_unmap_kernel	tmp=x4
 
 1:	sdei_handler_exit exit_mode=x2
-ENDPROC(__sdei_asm_exit_trampoline)
+SYM_CODE_END(__sdei_asm_exit_trampoline)
 NOKPROBE(__sdei_asm_exit_trampoline)
 	.ltorg
 .popsection		// .entry.tramp.text
@@ -1002,7 +1002,7 @@ __sdei_asm_trampoline_next_handler:
  * follow SMC-CC. We save (or retrieve) all the registers as the handler may
  * want them.
  */
-ENTRY(__sdei_asm_handler)
+SYM_CODE_START(__sdei_asm_handler)
 	stp     x2, x3, [x1, #SDEI_EVENT_INTREGS + S_PC]
 	stp     x4, x5, [x1, #SDEI_EVENT_INTREGS + 16 * 2]
 	stp     x6, x7, [x1, #SDEI_EVENT_INTREGS + 16 * 3]
@@ -1085,6 +1085,6 @@ alternative_else_nop_endif
 	tramp_alias	dst=x5, sym=__sdei_asm_exit_trampoline
 	br	x5
 #endif
-ENDPROC(__sdei_asm_handler)
+SYM_CODE_END(__sdei_asm_handler)
 NOKPROBE(__sdei_asm_handler)
 #endif /* CONFIG_ARM_SDE_INTERFACE */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
