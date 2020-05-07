Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C09C1C85E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 11:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cmHw9Zx98lGdt4s/KsSPOSzxAOyevxe96ckgahjao24=; b=a08
	8uffdetlsFJUKxd7gA/cRJyeRP1K2pJpOvokJJci+WNWcGkdDztTsHBTfCn1jEFWBQEjggHICEEoB
	X6RUgZ0uyh+PpcR8E5zfV9A6ApUPIE+o6M9l00ZEx166Lhu0U8oo7WQg2KUasmSSjp/vuLEJYf05a
	9x84w0GrSuAHgpicTkiHUXzZdvRdKLpYF4VqSzfBSPlwojjSlBPNO2x/zAyL2EaUPR9TryYvM2VqN
	BlRvDN+kMqKneyEQGEtdz6siKYwV9Borzg2ezD60mwI/MWIxTSOFYwhlNmLkWHe+hNkR1G640tnKk
	JGUpQLSuYCYrUHJ65Az/JqApZbD5YgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWcut-0004IL-Mb; Thu, 07 May 2020 09:34:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWcuj-0004Hv-8O
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 09:33:58 +0000
Received: from e123331-lin.nice.arm.com
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5AE112083B;
 Thu,  7 May 2020 09:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588844035;
 bh=o+xx+BvniOem0w64cXpK4vCna7i++t0+cPEdoSgezxI=;
 h=From:To:Cc:Subject:Date:From;
 b=OKQPT3J23uhNPTiVPe+B6T8JzxNg89+mHKZquAnaqGK/LN4nPTOhIVWiCB77vV4+1
 91Xd6k/9vzs3jOBaUH3+kTOwBCbgAnRPjGiEPKOTtz3uDatXauI7d3IpTSert7TEe4
 nXBSCFZbunnHM/+nc4utogAKEN/4ef1/vXRCfuUA=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: drop Thumb-2 workaround for ancient binutils
Date: Thu,  7 May 2020 11:33:49 +0200
Message-Id: <20200507093349.25313-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_023357_317887_8FE8E623 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dave Martin <Dave.Martin@arm.com>, linus.walleij@linaro.org,
 linux@armlinux.org.uk, arnd@arndb.de, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11 workaround addresses an issue
which was fixed before the oldest supported binutils (2.23 at this time)
were released. So we can remove it now.

Cc: Dave Martin <Dave.Martin@arm.com>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/Kconfig  | 31 -------------------------------
 arch/arm/Makefile |  4 ----
 2 files changed, 35 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 165987aa5bcd..9a4d4c14fbde 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1425,37 +1425,6 @@ config THUMB2_KERNEL
 
 	  If unsure, say N.
 
-config THUMB2_AVOID_R_ARM_THM_JUMP11
-	bool "Work around buggy Thumb-2 short branch relocations in gas"
-	depends on THUMB2_KERNEL && MODULES
-	default y
-	help
-	  Various binutils versions can resolve Thumb-2 branches to
-	  locally-defined, preemptible global symbols as short-range "b.n"
-	  branch instructions.
-
-	  This is a problem, because there's no guarantee the final
-	  destination of the symbol, or any candidate locations for a
-	  trampoline, are within range of the branch.  For this reason, the
-	  kernel does not support fixing up the R_ARM_THM_JUMP11 (102)
-	  relocation in modules at all, and it makes little sense to add
-	  support.
-
-	  The symptom is that the kernel fails with an "unsupported
-	  relocation" error when loading some modules.
-
-	  Until fixed tools are available, passing
-	  -fno-optimize-sibling-calls to gcc should prevent gcc generating
-	  code which hits this problem, at the cost of a bit of extra runtime
-	  stack usage in some cases.
-
-	  The problem is described in more detail at:
-	      https://bugs.launchpad.net/binutils-linaro/+bug/725126
-
-	  Only Thumb-2 kernels are affected.
-
-	  Unless you are sure your tools don't have this problem, say Y.
-
 config ARM_PATCH_IDIV
 	bool "Runtime patch udiv/sdiv instructions into __aeabi_{u}idiv()"
 	depends on CPU_32v7 && !XIP_KERNEL
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 7d5cd0f85461..ba65205ab609 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -125,10 +125,6 @@ AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
 ifeq ($(CONFIG_THUMB2_KERNEL),y)
 CFLAGS_ISA	:=-mthumb -Wa,-mimplicit-it=always $(AFLAGS_NOWARN)
 AFLAGS_ISA	:=$(CFLAGS_ISA) -Wa$(comma)-mthumb
-# Work around buggy relocation from gas if requested:
-ifeq ($(CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11),y)
-KBUILD_CFLAGS_MODULE	+=-fno-optimize-sibling-calls
-endif
 else
 CFLAGS_ISA	:=$(call cc-option,-marm,) $(AFLAGS_NOWARN)
 AFLAGS_ISA	:=$(CFLAGS_ISA)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
