Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C571F9480
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:20:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UrdkhqfORaOBAfi1NEbXqqj0UJwfYZROQG4PYD9d+xU=; b=laeDZypPBLZMXS
	Ga+019oWg+avji9m1dNtsVrvWd9WMH5hj8D0MDCBl63dHIhy48OowIa7KjsyfvMsG8JeQ6ubuzzX3
	U6w8BI69kvLRl8y5plsIpUZ24cQn00iSd/C7RtIyx5/IXsNnVmuDgK7MPuUIuC3StCCu095USIC94
	5CLNik+APnNu1/jFpP5rSRYgr7Dli+A0LOUapi3OLTMNzu0Ee/XavMQk5c3BV5+buw+xPoA+2ngx+
	r0xx6AhjgAScsUHuBWy5vjGmIESQt+pjuNJ2jvNhimXCYtoTS5eqyurqbeoif1nBDrZvZQUds5y9B
	W9jAiEPJja7OpOMUUb/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkmDe-00078V-Nj; Mon, 15 Jun 2020 10:19:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkmDU-00077T-Ur
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:19:51 +0000
Received: from localhost.localdomain (lfbn-nic-1-188-42.w2-15.abo.wanadoo.fr
 [2.15.37.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9EFCF206B7;
 Mon, 15 Jun 2020 10:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592216388;
 bh=jAy4bCj0AFR8MHaDTIYGWROCHrUn6dc02GRL4zw7Zrs=;
 h=From:To:Cc:Subject:Date:From;
 b=qFbdocNLCiYmt500BYjc1CMWs0+Lb5ved3RPOGEDoIwEC3PhUqM8rcTxEGZOPq+an
 aHqnZseqqKJTDD+RZYDCAdhff/c1LbKIFDm/MeMd2H+KtCRTSR6pNWSUZUgaw3DRiX
 e6BnqE3AEQ41Qm4NzjqJ6jXo2fW5pN0CTybIl75I=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: remove TEXT_OFFSET randomization
Date: Mon, 15 Jun 2020 12:19:39 +0200
Message-Id: <20200615101939.634391-1-ardb@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_031949_024783_2B7DC8BD 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, will@kernel.org, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TEXT_OFFSET was recently changed to 0x0, in preparation for its removal
at a later stage, and a warning is emitted into the kernel log when the
bootloader appears to have failed to take the TEXT_OFFSET image header
value into account.

Ironically, this warning itself fails to take TEXT_OFFSET into account,
and compares the kernel image's alignment modulo 2M against a hardcoded
value of 0x0, and so the warning will trigger spuriously when TEXT_OFFSET
randomization is enabled.

Given the intent to get rid of TEXT_OFFSET entirely, let's fix this
oversight by just removing support for TEXT_OFFSET randomization.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/Kconfig.debug | 15 ---------------
 arch/arm64/Makefile      |  6 ------
 2 files changed, 21 deletions(-)

diff --git a/arch/arm64/Kconfig.debug b/arch/arm64/Kconfig.debug
index cdf7ec0b975e..265c4461031f 100644
--- a/arch/arm64/Kconfig.debug
+++ b/arch/arm64/Kconfig.debug
@@ -8,21 +8,6 @@ config PID_IN_CONTEXTIDR
 	  instructions during context switch. Say Y here only if you are
 	  planning to use hardware trace tools with this kernel.
 
-config ARM64_RANDOMIZE_TEXT_OFFSET
-	bool "Randomize TEXT_OFFSET at build time"
-	help
-	  Say Y here if you want the image load offset (AKA TEXT_OFFSET)
-	  of the kernel to be randomized at build-time. When selected,
-	  this option will cause TEXT_OFFSET to be randomized upon any
-	  build of the kernel, and the offset will be reflected in the
-	  text_offset field of the resulting Image. This can be used to
-	  fuzz-test bootloaders which respect text_offset.
-
-	  This option is intended for bootloader and/or kernel testing
-	  only. Bootloaders must make no assumptions regarding the value
-	  of TEXT_OFFSET and platforms must not require a specific
-	  value.
-
 config DEBUG_EFI
 	depends on EFI && DEBUG_INFO
 	bool "UEFI debugging"
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 76359cfb328a..a0d94d063fa8 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -121,13 +121,7 @@ endif
 head-y		:= arch/arm64/kernel/head.o
 
 # The byte offset of the kernel image in RAM from the start of RAM.
-ifeq ($(CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET), y)
-TEXT_OFFSET := $(shell awk "BEGIN {srand(); printf \"0x%06x\n\", \
-		 int(2 * 1024 * 1024 / (2 ^ $(CONFIG_ARM64_PAGE_SHIFT)) * \
-		 rand()) * (2 ^ $(CONFIG_ARM64_PAGE_SHIFT))}")
-else
 TEXT_OFFSET := 0x0
-endif
 
 ifeq ($(CONFIG_KASAN_SW_TAGS), y)
 KASAN_SHADOW_SCALE_SHIFT := 4
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
