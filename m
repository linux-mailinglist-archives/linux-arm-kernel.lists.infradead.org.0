Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8657B163194
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 21:02:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zujsGOKea/gAbEkvS/6CiFhgO2Um0qsFBCpld+9FOT0=; b=QLCAwXOzJCn9LZ
	/IGsvUIuytuq0VWnDWsvITlLKLsTRHkhJUbWCadF6u9j04xXp45UXDGuMgqACqCf2xzDMTFW7sj0I
	0qtzX5aBVPecU7SqLZUefxegDS+JPoEcwA9NDlHt99lm+G230/9eKeI7sz6xD7BSLmt14yT4sZYSr
	yevsvYenWVaGKCGJ+B6cjmHQtXZTOtQLEShrY2q4UrNhGKrlc6Djm5kNmTsJhz+xNbMyGdC24gJMa
	Yvi8FoMmHrPHMRTRcjsWUl8jJGEUaoQoIxMgtb6mseUiotheF1IW9NchkKyQNOIPIHd9Wf0XQb3qs
	fsH0ZZ25vEKFhBgGa31w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j494P-0001KV-10; Tue, 18 Feb 2020 20:02:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j491b-0005ju-CL
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:59:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 76C7C31B;
 Tue, 18 Feb 2020 11:59:18 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ED71F3F68F;
 Tue, 18 Feb 2020 11:59:17 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH 11/18] arm64: kernel: Convert to modern annotations for
 assembly data
Date: Tue, 18 Feb 2020 19:58:35 +0000
Message-Id: <20200218195842.34156-12-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200218195842.34156-1-broonie@kernel.org>
References: <20200218195842.34156-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_115919_497171_E50C42A2 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Brown <broonie@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
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
index fbf69fe94412..7439f29946fb 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -859,9 +859,9 @@ SYM_CODE_END(tramp_exit_compat)
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
