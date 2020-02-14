Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0647215E087
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:14:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vyx009IK50Vqonvr9Qp1Bxz3D/RS9pnVbdfM1O34Nsg=; b=JcJ/HogGOJNy1G
	D7sLI2omIhFuQBlPJ8eWfjL1IGZFVodRW7/9H98hzbCe+GaTawHcPBkQ+MXJIH1Aj/h2DfsMq91vx
	HonqMV+hOtZ7ctfxtaxkxtzvDdyKFcq0mSY5/NsBwApUrxoz4An1Edv4xYC1Jmxlp9YBD2mS1sfyx
	hA+VftSZD4hBWchk5zOImXR7wNHkToDajjT+ifW1jPo9gfov11M+VfsmvCmgBpQWyut6frje/9sq8
	Lwx61tj0duxao1S8BH1s4Axv1ltafa5MDHyMQ72+Qyx9af+CWoZlqmYsxarfBAA7/QUL7PNzhXRji
	CoO3X6efY0EKApz1j9Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dbo-0005u9-JC; Fri, 14 Feb 2020 16:14:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dMh-0003tc-Ld
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:58:53 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F29D22467B;
 Fri, 14 Feb 2020 15:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695930;
 bh=avJYHk9+rm68xYfto9kc+SfaVmoDR3ZjTQltM8N55/w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LRI21qPxO1fcE/v6AtEcoIEPST1FjSUmxEU5SlUrgjNtAH5gjDhA+y5b+6vlIJ8Fd
 BPeu6Bx0lAFxeLamohIxO5RUwqyIwZGL0booS+gcIXwj4eLIbBUW3nZSqpUmvPQa09
 V1q495HPugRvBt+LqoRkVY33lhF62mofRfjpKXYw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 466/542] ARM: 8941/1: decompressor: enable CP15
 barrier instructions in v7 cache setup code
Date: Fri, 14 Feb 2020 10:47:38 -0500
Message-Id: <20200214154854.6746-466-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075851_867877_43619C89 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

[ Upstream commit 8239fc7755fd3d410920006615abd0c7d653560f ]

Commit e17b1af96b2afc38e684aa2f1033387e2ed10029

  "ARM: 8857/1: efi: enable CP15 DMB instructions before cleaning the cache"

added some explicit handling of the CP15BEN bit in the SCTLR system
register, to ensure that CP15 barrier instructions are enabled, even
if we enter the decompressor via the EFI stub.

However, as it turns out, there are other ways in which we may end up
using CP15 barrier instructions without them being enabled. I.e., when
the decompressor startup code skips the cache_on() initially, we end
up calling cache_clean_flush() with the caches and MMU off, in which
case the CP15BEN bit in SCTLR may not be programmed either. And in
fact, cache_on() itself issues CP15 barrier instructions before actually
enabling them by programming the new SCTLR value (and issuing an ISB)

Since these routines are shared between v7 CPUs and older ones that
implement the CPUID extension as well, using the ordinary v7 barrier
instructions in this code is not possible, and so we should enable the
CP15 ones explicitly before issuing them. Note that a v7 ISB is still
required between programming the SCTLR register and using the CP15 barrier
instructions, and we should take care to branch over it if the CP15BEN
bit is already set, given that in that case, the CPU may not support it.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/compressed/head.S | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index ead21e5f2b803..469a2b3b60c09 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -140,6 +140,17 @@
 #endif
 		.endm
 
+		.macro	enable_cp15_barriers, reg
+		mrc	p15, 0, \reg, c1, c0, 0	@ read SCTLR
+		tst	\reg, #(1 << 5)		@ CP15BEN bit set?
+		bne	.L_\@
+		orr	\reg, \reg, #(1 << 5)	@ CP15 barrier instructions
+		mcr	p15, 0, \reg, c1, c0, 0	@ write SCTLR
+ ARM(		.inst   0xf57ff06f		@ v7+ isb	)
+ THUMB(		isb						)
+.L_\@:
+		.endm
+
 		.section ".start", "ax"
 /*
  * sort out different calling conventions
@@ -820,6 +831,7 @@ __armv4_mmu_cache_on:
 		mov	pc, r12
 
 __armv7_mmu_cache_on:
+		enable_cp15_barriers	r11
 		mov	r12, lr
 #ifdef CONFIG_MMU
 		mrc	p15, 0, r11, c0, c1, 4	@ read ID_MMFR0
@@ -1209,6 +1221,7 @@ __armv6_mmu_cache_flush:
 		mov	pc, lr
 
 __armv7_mmu_cache_flush:
+		enable_cp15_barriers	r10
 		tst	r4, #1
 		bne	iflush
 		mrc	p15, 0, r10, c0, c1, 5	@ read ID_MMFR1
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
