Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B26013C5C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:19:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9spVmclD3FqyJJTL2dtIDU8Wk5DnGwM/l8qIkFRSmD4=; b=B5H
	M3FfAKFPFpDhAtb9fAsDOFq77mK7v29CRGAQQB82WWydjOHRL84lHnQqw2GnwZzkVDnAQ7RQc3tv0
	/P7xw92OG/1LZjXfbjS7MkYlJkEdwaLzwwVUay3IAOpgsrjpVXeg5gpCWUxiJl+rggr/cD+ZZeOBS
	hvt6LLZ9KFtveotRDrXO+/QogbfXFgNeiWz+xmREJssy+rBKxxozO+lWtIkvmdAL4v0SVE0bcK+dC
	AycVib3ycOWTJ/S+6ZaueTrD/950c4yq1XvR1N/GhFUM2Tdq+/gqw8w3JRvehnJPMEv9bu6XRXOi/
	OKETaqQZwSDK89Wmhz1hFReFvJXR0rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjVV-0003RT-56; Wed, 15 Jan 2020 14:18:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjVJ-0003Qs-3V
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:18:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5221E31B;
 Wed, 15 Jan 2020 06:18:40 -0800 (PST)
Received: from login2.euhpc.arm.com (login2.euhpc.arm.com [10.6.27.34])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CE9993F68E;
 Wed, 15 Jan 2020 06:18:39 -0800 (PST)
From: Vladimir Murzin <vladimir.murzin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Turn "broken gas inst" into real config option
Date: Wed, 15 Jan 2020 14:18:25 +0000
Message-Id: <1579097905-128661-1-git-send-email-vladimir.murzin@arm.com>
X-Mailer: git-send-email 2.0.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_061841_183553_5001F59C 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: will@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

So it is available everywhere and there is no need to keep
CONFIG_ARM64 workaround.

Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>
---
 arch/arm64/Kconfig  |  3 +++
 arch/arm64/Makefile | 10 +++-------
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 63c19ef..4139c927 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -303,6 +303,9 @@ config ARCH_SUPPORTS_UPROBES
 config ARCH_PROC_KCORE_TEXT
 	def_bool y
 
+config BROKEN_GAS_INST
+	def_bool y if !$(as-instr,1:\n.inst 0\n.rept . - 1b\n\nnop\n.endr\n)
+
 config KASAN_SHADOW_OFFSET
 	hex
 	depends on KASAN
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 6dd8eca..dca1a97 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -42,19 +42,15 @@ cc_has_k_constraint := $(call try-run,echo				\
 		return 0;						\
 	}' | $(CC) -S -x c -o "$$TMP" -,,-DCONFIG_CC_HAS_K_CONSTRAINT=1)
 
-ifeq ($(CONFIG_ARM64), y)
-brokengasinst := $(call as-instr,1:\n.inst 0\n.rept . - 1b\n\nnop\n.endr\n,,-DCONFIG_BROKEN_GAS_INST=1)
-
-  ifneq ($(brokengasinst),)
+ifeq ($(CONFIG_BROKEN_GAS_INST),y)
 $(warning Detected assembler with broken .inst; disassembly will be unreliable)
-  endif
 endif
 
-KBUILD_CFLAGS	+= -mgeneral-regs-only $(brokengasinst)	\
+KBUILD_CFLAGS	+= -mgeneral-regs-only	\
 		   $(compat_vdso) $(cc_has_k_constraint)
 KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
 KBUILD_CFLAGS	+= $(call cc-disable-warning, psabi)
-KBUILD_AFLAGS	+= $(brokengasinst) $(compat_vdso)
+KBUILD_AFLAGS	+= $(compat_vdso)
 
 KBUILD_CFLAGS	+= $(call cc-option,-mabi=lp64)
 KBUILD_AFLAGS	+= $(call cc-option,-mabi=lp64)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
