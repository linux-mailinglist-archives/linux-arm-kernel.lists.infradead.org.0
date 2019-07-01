Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B8B3BE7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 23:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ASLEi1N5uMES9SSjuXUTmgNzheoa6SakzoaYUcmYyek=; b=eNJOd64ZBKaNPw
	hzjyP1q9HDHxtX4kWrsAWsa4ZD/n6DCN7Upq86q5LUtKwCAgd4qn4CUEI7seNUnkf1KenconnmY+W
	P1/bOOJ15ktj5hXkdPp4U2aygQRHqqmitfrcoj5gRKi1hhIw0vceU2yRBIPED2qQgZFCrmghTVLx4
	8Uoexc34x7Tj7vSRXuu96tOdFzvDii52pU2AUH1sd5U4xngyt8TTEEr0TstlGW73iHwGLzSuo8re8
	TiOLYznb2TUSjpd+3aUbxARmybTBd3vav9M6ZyP8IOolKpmtkCnnbe8gvk9pYSXttDFoMZWwGje2N
	GcnaRN8R5GBm0gu3AA3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haRlk-0003KQ-20; Mon, 10 Jun 2019 21:23:56 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haRic-0000bq-Co; Mon, 10 Jun 2019 21:20:42 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 09/15] binfmt_flat: add a ARCH_HAS_BINFMT_FLAT option
Date: Mon, 10 Jun 2019 23:20:09 +0200
Message-Id: <20190610212015.9157-10-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610212015.9157-1-hch@lst.de>
References: <20190610212015.9157-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow architectures to opt into ARCH_HAS_BINFMT_FLAT support instead of
assuming that all nommu ports support the format.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/Kconfig        | 1 +
 arch/c6x/Kconfig        | 1 +
 arch/h8300/Kconfig      | 1 +
 arch/m68k/Kconfig       | 1 +
 arch/microblaze/Kconfig | 1 +
 arch/sh/Kconfig         | 1 +
 arch/xtensa/Kconfig     | 1 +
 fs/Kconfig.binfmt       | 5 ++++-
 8 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index b1b48c0bde76..695a26c68064 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -4,6 +4,7 @@ config ARM
 	default y
 	select ARCH_32BIT_OFF_T
 	select ARCH_CLOCKSOURCE_DATA
+	select ARCH_HAS_BINFMT_FLAT
 	select ARCH_HAS_DEBUG_VIRTUAL if MMU
 	select ARCH_HAS_DEVMEM_IS_ALLOWED
 	select ARCH_HAS_ELF_RANDOMIZE
diff --git a/arch/c6x/Kconfig b/arch/c6x/Kconfig
index eeb0471268a0..78dfe186d708 100644
--- a/arch/c6x/Kconfig
+++ b/arch/c6x/Kconfig
@@ -7,6 +7,7 @@
 config C6X
 	def_bool y
 	select ARCH_32BIT_OFF_T
+	select ARCH_HAS_BINFMT_FLAT
 	select ARCH_HAS_SYNC_DMA_FOR_CPU
 	select ARCH_HAS_SYNC_DMA_FOR_DEVICE
 	select CLKDEV_LOOKUP
diff --git a/arch/h8300/Kconfig b/arch/h8300/Kconfig
index 7457f190caaa..ec800e9d5aad 100644
--- a/arch/h8300/Kconfig
+++ b/arch/h8300/Kconfig
@@ -2,6 +2,7 @@
 config H8300
         def_bool y
 	select ARCH_32BIT_OFF_T
+	select ARCH_HAS_BINFMT_FLAT
 	select BINFMT_FLAT_ARGVP_ENVP_ON_STACK
 	select BINFMT_FLAT_OLD_ALWAYS_RAM
 	select GENERIC_ATOMIC64
diff --git a/arch/m68k/Kconfig b/arch/m68k/Kconfig
index fd69ee5ad6ab..c0c43c624afa 100644
--- a/arch/m68k/Kconfig
+++ b/arch/m68k/Kconfig
@@ -3,6 +3,7 @@ config M68K
 	bool
 	default y
 	select ARCH_32BIT_OFF_T
+	select ARCH_HAS_BINFMT_FLAT
 	select ARCH_HAS_SYNC_DMA_FOR_DEVICE if HAS_DMA
 	select ARCH_MIGHT_HAVE_PC_PARPORT if ISA
 	select ARCH_NO_COHERENT_DMA_MMAP if !MMU
diff --git a/arch/microblaze/Kconfig b/arch/microblaze/Kconfig
index f11433daab4a..d411de05b628 100644
--- a/arch/microblaze/Kconfig
+++ b/arch/microblaze/Kconfig
@@ -3,6 +3,7 @@ config MICROBLAZE
 	def_bool y
 	select ARCH_32BIT_OFF_T
 	select ARCH_NO_SWAP
+	select ARCH_HAS_BINFMT_FLAT if !MMU
 	select ARCH_HAS_DMA_COHERENT_TO_PFN if MMU
 	select ARCH_HAS_GCOV_PROFILE_ALL
 	select ARCH_HAS_SYNC_DMA_FOR_CPU
diff --git a/arch/sh/Kconfig b/arch/sh/Kconfig
index b77f512bb176..df3e6215b78c 100644
--- a/arch/sh/Kconfig
+++ b/arch/sh/Kconfig
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 config SUPERH
 	def_bool y
+	select ARCH_HAS_BINFMT_FLAT if !MMU
 	select ARCH_HAS_PTE_SPECIAL
 	select ARCH_HAS_TICK_BROADCAST if GENERIC_CLOCKEVENTS_BROADCAST
 	select ARCH_MIGHT_HAVE_PC_PARPORT
diff --git a/arch/xtensa/Kconfig b/arch/xtensa/Kconfig
index 6ec1b75eabc5..ebc135bda921 100644
--- a/arch/xtensa/Kconfig
+++ b/arch/xtensa/Kconfig
@@ -2,6 +2,7 @@
 config XTENSA
 	def_bool y
 	select ARCH_32BIT_OFF_T
+	select ARCH_HAS_BINFMT_FLAT if !MMU
 	select ARCH_HAS_SYNC_DMA_FOR_CPU
 	select ARCH_HAS_SYNC_DMA_FOR_DEVICE
 	select ARCH_NO_COHERENT_DMA_MMAP if !MMU
diff --git a/fs/Kconfig.binfmt b/fs/Kconfig.binfmt
index 82f7d7f234f3..286b425b30b9 100644
--- a/fs/Kconfig.binfmt
+++ b/fs/Kconfig.binfmt
@@ -91,9 +91,12 @@ config BINFMT_SCRIPT
 
 	  Most systems will not boot if you say M or N here.  If unsure, say Y.
 
+config ARCH_HAS_BINFMT_FLAT
+	bool
+
 config BINFMT_FLAT
 	bool "Kernel support for flat binaries"
-	depends on !MMU || ARM || M68K
+	depends on ARCH_HAS_BINFMT_FLAT
 	help
 	  Support uClinux FLAT format binaries.
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
