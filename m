Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10CBECA80
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 22:48:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1gozwXnBCN9zo/7Bxlxrc3Yfp+JSTvGfJ4Gz9RXmDbY=; b=BDcN5a4tFeIP7b
	mq/juwH6I4wMuA/6tN+jbtdYIJzgOx0hUbdS1foGG6R9/FUPkTm1Bc6X3TNH+DT6QxaCZftSfyLVJ
	UjBmpiVIuG7H/yhIRfgLdFP3bT4LqnEngQl7bTqnJYWszw5vxsLs2BnEfdLnBudY6Pyy5pFFyjcaQ
	f7i0z0kjPbeZR9XexdUBF1feulMqWFgp1gi3qi63qwftAMmgLCBP300bg2eh4jwC00s5QDPLaj8hc
	0IjAOCs5hzkHPDvIbynAqPXy/P+G6+piIynbYXhbqRrBNgqY4ZjK76+6LtHOhxrrSLhmVxwcVwYqH
	YUQzkuheXVVKXy8vAdew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQemD-0007La-KN; Fri, 01 Nov 2019 21:48:13 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQem5-0007Hh-GY
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 21:48:07 +0000
Received: from zyt.lan (unknown [37.17.234.113])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 10A635C3996;
 Fri,  1 Nov 2019 22:48:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1572644884;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=O13dNAYrYnYnAw0xq29Wh01pA7LkcCcNnwb/S9BEyZ4=;
 b=oqrarDW4zfIMJCdBVsRFd58EEyoqwH0Xltu0lQsxy8nEPGMa3cBdF7fCHTqr1sYp7csyKD
 Q730qm7qYjDz3FFMTtEaPIC+qAK0QKVff3Hw+XfMDA9SE/qRDBlT6FIW5mZ/vjWNENXntr
 uTvyhbWoTQAVLwrcYpQfodgIRt0bbvk=
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Subject: [PATCH] ARM: use APSR_nzcv instead of r15 as mrc operand
Date: Fri,  1 Nov 2019 22:47:58 +0100
Message-Id: <472f8bd1f000f45343cc0c66a26380fe4b532147.1572644664.git.stefan@agner.ch>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_144805_848582_FA807904 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ard.biesheuvel@linaro.org, linus.walleij@linaro.org, nico@fluxnic.net,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, clang-built-linux@googlegroups.com,
 rfranz@marvell.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LLVM's integrated assembler does not accept r15 as mrc operand.
  arch/arm/boot/compressed/head.S:1267:16: error: operand must be a register in range [r0, r14] or apsr_nzcv
  1: mrc p15, 0, r15, c7, c14, 3 @ test,clean,invalidate D cache
                 ^

Use APSR_nzcv instead of r15. The GNU assembler supports this
syntax since binutils 2.21 [0].

[0] https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commit;h=db472d6ff0f438a21b357249a9b48e4b74498076

Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 arch/arm/boot/compressed/head.S | 2 +-
 arch/arm/mm/proc-arm1026.S      | 4 ++--
 arch/arm/mm/proc-arm926.S       | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 15ecad944847..ead21e5f2b80 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -1273,7 +1273,7 @@ iflush:
 __armv5tej_mmu_cache_flush:
 		tst	r4, #1
 		movne	pc, lr
-1:		mrc	p15, 0, r15, c7, c14, 3	@ test,clean,invalidate D cache
+1:		mrc	p15, 0, APSR_nzcv, c7, c14, 3	@ test,clean,invalidate D cache
 		bne	1b
 		mcr	p15, 0, r0, c7, c5, 0	@ flush I cache
 		mcr	p15, 0, r0, c7, c10, 4	@ drain WB
diff --git a/arch/arm/mm/proc-arm1026.S b/arch/arm/mm/proc-arm1026.S
index 10e21012380b..0bdf25a95b10 100644
--- a/arch/arm/mm/proc-arm1026.S
+++ b/arch/arm/mm/proc-arm1026.S
@@ -138,7 +138,7 @@ ENTRY(arm1026_flush_kern_cache_all)
 	mov	ip, #0
 __flush_whole_cache:
 #ifndef CONFIG_CPU_DCACHE_DISABLE
-1:	mrc	p15, 0, r15, c7, c14, 3		@ test, clean, invalidate
+1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3		@ test, clean, invalidate
 	bne	1b
 #endif
 	tst	r2, #VM_EXEC
@@ -363,7 +363,7 @@ ENTRY(cpu_arm1026_switch_mm)
 #ifdef CONFIG_MMU
 	mov	r1, #0
 #ifndef CONFIG_CPU_DCACHE_DISABLE
-1:	mrc	p15, 0, r15, c7, c14, 3		@ test, clean, invalidate
+1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3		@ test, clean, invalidate
 	bne	1b
 #endif
 #ifndef CONFIG_CPU_ICACHE_DISABLE
diff --git a/arch/arm/mm/proc-arm926.S b/arch/arm/mm/proc-arm926.S
index 3188ab2bac61..1ba253c2bce1 100644
--- a/arch/arm/mm/proc-arm926.S
+++ b/arch/arm/mm/proc-arm926.S
@@ -131,7 +131,7 @@ __flush_whole_cache:
 #ifdef CONFIG_CPU_DCACHE_WRITETHROUGH
 	mcr	p15, 0, ip, c7, c6, 0		@ invalidate D cache
 #else
-1:	mrc	p15, 0, r15, c7, c14, 3 	@ test,clean,invalidate
+1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3 	@ test,clean,invalidate
 	bne	1b
 #endif
 	tst	r2, #VM_EXEC
@@ -358,7 +358,7 @@ ENTRY(cpu_arm926_switch_mm)
 	mcr	p15, 0, ip, c7, c6, 0		@ invalidate D cache
 #else
 @ && 'Clean & Invalidate whole DCache'
-1:	mrc	p15, 0, r15, c7, c14, 3 	@ test,clean,invalidate
+1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3 	@ test,clean,invalidate
 	bne	1b
 #endif
 	mcr	p15, 0, ip, c7, c5, 0		@ invalidate I cache
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
