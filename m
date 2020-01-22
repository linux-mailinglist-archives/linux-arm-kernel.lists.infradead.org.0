Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3FC145E66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 23:11:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MgEVX9Npx0+2lt/cvQIeYszprYVGimygM+JyNM/nvn4=; b=W3hf4vOJOR83B0
	rr2NAKJ+dnKb7KwKI6BMgT0teBx2vbSB8aVW8y1Ji/a8JojvZaIOUv2UONbcTZwVhDb1lJnk1Qmpf
	FIuPg1IWfKpYVBeFwJhJo4GwfhZET0hA1vW4uJtt3mrd0hPV/vKrBfLmtAqGYQDVfCC0LuagRdL7g
	RQtTYMIkRV4Vh2zaQKQzW5kyVPT5LGaB5CVapT5Gz775lc4llF8Q/GfxFcLz7+CLVNzIThuuZ5/tp
	DeOPFFvrfA3dHzorla6i5Pe7iwOxbpRheRHUVJ5e/HORekBXNoBhbQRmq2GIFXNfHFzyykgTv2MT0
	e/eMbwrJmas2cWSHhzPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuODE-0000xD-Dr; Wed, 22 Jan 2020 22:11:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuOD5-0000wr-Vg
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 22:10:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D430531B;
 Wed, 22 Jan 2020 14:10:50 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0602F3F6C4;
 Wed, 22 Jan 2020 14:10:49 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: sedi: Annotate SEDI entry points using new style
 annotations
Date: Wed, 22 Jan 2020 22:10:45 +0000
Message-Id: <20200122221045.24857-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_141052_061976_B209B6C0 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to clarify and simplify the annotation of assembly
functions new macros have been introduced. These replace ENTRY and
ENDPROC with two different annotations for normal functions and those
with unusual calling conventions.

The SEDI entry points are currently annotated as normal functions but
are called from non-kernel contexts with non-standard calling convention
and should therefore be annotated as such so do so.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/entry.S | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 5d47687592ec..65d126228046 100644
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
