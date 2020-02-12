Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D9C15ADE6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 17:59:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fJc8A8wzll/8DCEPq+QgmQlWb/Ud2eNGFG/Vvk/gMOk=; b=gUYVfwI+OlCBtA
	WZ0Zc6d2AVkKRqGRxugwJm/eHmRBtIe4tGdNlBD7AZIfI3+wfGPkxuC02zj7Pz9YOikkd+Ex2X+4V
	0g/jGphTdZ53j5m+A17r0s2xyoUAe96v/vIEl40FSCmdR84CmoAZ1AtwFYodAS/V/vIcGQEf/tWk3
	pg35SGnUTtZtOHrtAb6QBlPPhLmgaGa8sUygoF6Q1rsA97u2laRZYQDjcNJPZRQQscV/hjDm1FhgR
	ietwFThZl6UkN3qnSZfu5nWl2UUw5s/O44lmLoinRtgj5kvM5fHhXaG87F4VSOQXvfW641a7RS66A
	/kgzQKtPJzRZgPdEPWRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1vLv-0003p3-FC; Wed, 12 Feb 2020 16:59:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1vLo-0003oT-VC
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 16:59:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A77F230E;
 Wed, 12 Feb 2020 08:58:58 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2CD7C3F68F;
 Wed, 12 Feb 2020 08:58:58 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: kernel: Convert to modern annotations for assembly data
Date: Wed, 12 Feb 2020 16:58:51 +0000
Message-Id: <20200212165851.40310-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_085901_047833_7759C84B 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
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

In an effort to clarify and simplify the annotation of assembly functions
in the kernel new macros have been introduced. These include specific
annotations for the start and end of data, update symbols for data to use
these.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/entry.S | 7 ++++---
 arch/arm64/kernel/head.S  | 9 ++++++---
 2 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index a2d01166f87f..860a261ea51c 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -859,9 +859,9 @@ END(tramp_exit_compat)
 #ifdef CONFIG_RANDOMIZE_BASE
 	.pushsection ".rodata", "a"
 	.align PAGE_SHIFT
-	.globl	__entry_tramp_data_start
-__entry_tramp_data_start:
+SYM_DATA_START(__entry_tramp_data_start)
 	.quad	vectors
+SYM_DATA_END(__entry_tramp_data_start)
 	.popsection				// .rodata
 #endif /* CONFIG_RANDOMIZE_BASE */
 #endif /* CONFIG_UNMAP_KERNEL_AT_EL0 */
@@ -983,8 +983,9 @@ NOKPROBE(__sdei_asm_exit_trampoline)
 .popsection		// .entry.tramp.text
 #ifdef CONFIG_RANDOMIZE_BASE
 .pushsection ".rodata", "a"
-__sdei_asm_trampoline_next_handler:
+SYM_DATA_START(__sdei_asm_trampoline_next_handler)
 	.quad	__sdei_asm_handler
+SYM_DATA_END(__sdei_asm_trampoline_next_handler)
 .popsection		// .rodata
 #endif /* CONFIG_RANDOMIZE_BASE */
 #endif /* CONFIG_UNMAP_KERNEL_AT_EL0 */
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index c334863991e7..a06727354fad 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -464,8 +464,9 @@ SYM_FUNC_END(__primary_switched)
  */
 	.section ".idmap.text","awx"
 
-ENTRY(kimage_vaddr)
+SYM_DATA_START(kimage_vaddr)
 	.quad		_text - TEXT_OFFSET
+SYM_DATA_END(kimage_vaddr)
 EXPORT_SYMBOL(kimage_vaddr)
 
 /*
@@ -667,15 +668,17 @@ SYM_FUNC_END(set_cpu_boot_mode_flag)
  * This is not in .bss, because we set it sufficiently early that the boot-time
  * zeroing of .bss would clobber it.
  */
-ENTRY(__boot_cpu_mode)
+SYM_DATA_START(__boot_cpu_mode)
 	.long	BOOT_CPU_MODE_EL2
 	.long	BOOT_CPU_MODE_EL1
+SYM_DATA_END(__boot_cpu_mode)
 /*
  * The booting CPU updates the failed status @__early_cpu_boot_status,
  * with MMU turned off.
  */
-ENTRY(__early_cpu_boot_status)
+SYM_DATA_START(__early_cpu_boot_status)
 	.quad 	0
+SYM_DATA_END(__early_cpu_boot_status)
 
 	.popsection
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
