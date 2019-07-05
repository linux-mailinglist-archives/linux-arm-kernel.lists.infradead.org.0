Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FF460842
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:48:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dCeR8NGai+zGTrKZW9fLTCZCJbGf2nzdqVG5jnYRDxQ=; b=DGorWLsSOpvBMx
	GKcBbmRc3pLEbDkAtiIbHhJ/NcLzCMOdXy/VJEKFKO1RiPuadqwN0a2YZZFylC6x/9fLMJAvvwD/u
	CRsXCdIr4LK6Ggabd0V8SM+2m5kaGCyGm3EPrQR1d4rewguPXLbAiEEl5s3jZuZUMgy6yigFUTTXu
	Rj7v1+DyAqH0mKL3fXXS08AAMEJW5MgJ/z5GTtkUdsSk/OoP6cYH6JvQriA6SgxdHRzRKc53LRFrA
	MsIPg6r03hhfx1o7z9aY7Z/cP2vciiqZIt7+kgAPhJ2HDi3D8NkcWQ1ZxIMaykUcC98sZiZVzhWoQ
	je9qrVcxv1jpd9agClLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPVR-0003Km-4a; Fri, 05 Jul 2019 14:48:09 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPRo-0006PQ-UZ
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:44:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:From:Subject:
 Mime-Version:Message-Id:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hhX2XwkgEKB93Pn3qfFnxuuo6Qt0MPLsM6lUEhZlszI=; b=FU+DoKsJF8pW2uqvdMzx5LHsu
 h2zjp2K9qB7QWo5hSdWosuKD9rFxo3TRVkn590TZ1qlDaTnV+fiQM5qXtBCxvVILTUkH5hLSogLXh
 KcdqN6jGs6EnEbntO0jvU9Vf2dCanvLpbA/9RJ2hUTXDq1o0A2WQXgpOlZxdiQrcE5j5EerH7mBJ9
 7apjwLqe8f1nc92XcSJGiW9de5Hal9ADvilUXdEQoq3lTbPecn9Lv3T2gOuppLY63iuAD3I9rmwI2
 FIdlVgnMQx+DXdwoviTUSrGkom32MVg+N1hQG3Lx1FgCa707+h5+rW1oA05XqkFsaHr/z8/JAbbb2
 HRfclUA6A==;
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJDS-0000O4-DN
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 08:05:11 +0000
Received: by mail-pl1-x649.google.com with SMTP id bb9so4601126plb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 01:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=hhX2XwkgEKB93Pn3qfFnxuuo6Qt0MPLsM6lUEhZlszI=;
 b=KyCapYyMEFW13KgaR1Hz7jzg+VCg37rBGVzeH+/5kwkA8AVbdlZdH/7k9ce6fpQWWM
 l5sP9Uh/CUrf2IIJ0E+QpibgDzGQV9fErVzuZkOej24N+2Po8yK831bkoTtJOeXPao6h
 uSAk/j0m+0v6EXt9OGWiYwUoqme4ntwiehVo8rf8lh4zEuaNGjEJmfbN9rPkoie4+kGf
 IYL5l8+ASgoUeDAZAy0cSvJv1SydBBi4Pa+DCckI0Z2MUkOrGJ9W1s4I5Za1TBD1zr2v
 stQ9sp1qpA29Hx5YP2B4F0SVkWtxyiP2i4i+8HO7U6YuW2r7ul3cH/G3Zg1xCmkKBy2J
 HZuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=hhX2XwkgEKB93Pn3qfFnxuuo6Qt0MPLsM6lUEhZlszI=;
 b=bRczAQAF2u4WqNEeeTXwbPCGmJbJBQ/Zy/rg416Xb+HHvORp4/3qA6RjTG/UlmpOZE
 S5suYTLTige+oAbvCuUqMSMBmyHEdtacgEwESU8VCTP1UXT7gEYq4kKkICNUCflMdye5
 KuyTa3fVOaIitXxJ3PXAupG+w6+MI9torzvR7yYJxCvOAorgoVPJvg7/NI0zaToTj0mN
 g8W2Xe32EZEOJTyM5SZZWsYLj0+IZo+Y7K6Ry8Li2MXkY9e7ErfBf4LBlXDKU/ctd2pd
 lJN2w4s3VQ0kl30qM+cxlTTA6bfIdMkj/e9KzSeEupSvp3xeYcxVdNF360NY9uuF0eAW
 1i3Q==
X-Gm-Message-State: APjAAAWaBT6EPPYUjfsHzxjJIzSvMc7UQGjptnbYNb76iiBcGD0E84IF
 6F6jJY1Ou7O33vvE7/HltOpz4gE=
X-Google-Smtp-Source: APXvYqwq1jZ+MGgu0KbqrUdMYz2S9QOU7rDp3MFFryIT4Qwk1mGcR6tiMIpWJmGk7ukxCf8FhQB/0xs=
X-Received: by 2002:a63:7a4f:: with SMTP id j15mr3736770pgn.427.1562313780600; 
 Fri, 05 Jul 2019 01:03:00 -0700 (PDT)
Date: Fri,  5 Jul 2019 01:02:31 -0700
Message-Id: <20190705080231.123522-1-pcc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH] arm64: Add support for relocating the kernel with RELR
 relocations
From: Peter Collingbourne <pcc@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: clang-built-linux@googlegroups.com, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RELR is a relocation packing format for relative relocations.
The format is described in a generic-abi proposal:
https://groups.google.com/d/topic/generic-abi/bX460iggiKg/discussion

The LLD linker can be instructed to pack relocations in the RELR
format by passing the flag --pack-dyn-relocs=relr.

This patch adds a new config option, CONFIG_RELR. Enabling this option
instructs the linker to pack vmlinux's relative relocations in the RELR
format, and causes the kernel to apply the relocations at startup along
with the RELA relocations. RELA relocations still need to be applied
because the linker will emit RELA relative relocations if they are
unrepresentable in the RELR format (i.e. address not a multiple of 2).

Enabling CONFIG_RELR reduces the size of a defconfig kernel image
with CONFIG_RANDOMIZE_BASE by 3.5MB/16% uncompressed, or 550KB/5%
compressed (lz4).

Signed-off-by: Peter Collingbourne <pcc@google.com>
---
 arch/arm64/Kconfig              |  9 +++++
 arch/arm64/Makefile             |  4 ++
 arch/arm64/kernel/head.S        | 70 ++++++++++++++++++++++++++++-----
 arch/arm64/kernel/vmlinux.lds.S |  9 +++++
 4 files changed, 83 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 697ea05107298..f0cd0d2607e70 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1447,6 +1447,15 @@ config RELOCATABLE
 	  relocation pass at runtime even if the kernel is loaded at the
 	  same address it was linked at.
 
+config RELR
+	bool "Use RELR relocation packing"
+	depends on RELOCATABLE && $(ld-option,--pack-dyn-relocs=relr)
+	help
+	  Store the kernel's dynamic relocations in the RELR relocation packing
+	  format. Requires a compatible linker (currently only LLD supports
+	  this feature), as well as compatible NM and OBJCOPY utilities
+	  (llvm-nm and llvm-objcopy are compatible).
+
 config RANDOMIZE_BASE
 	bool "Randomize the address of the kernel image"
 	select ARM64_MODULE_PLTS if MODULES
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index e9d2e578cbe67..16a8636f815c9 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -22,6 +22,10 @@ LDFLAGS_vmlinux		+= -shared -Bsymbolic -z notext -z norelro \
 			$(call ld-option, --no-apply-dynamic-relocs)
 endif
 
+ifeq ($(CONFIG_RELR),y)
+  LDFLAGS_vmlinux += --pack-dyn-relocs=relr
+endif
+
 ifeq ($(CONFIG_ARM64_ERRATUM_843419),y)
   ifeq ($(call ld-option, --fix-cortex-a53-843419),)
 $(warning ld does not support --fix-cortex-a53-843419; kernel may be susceptible to erratum)
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 2cdacd1c141b9..9b27d5e7d8f70 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -102,6 +102,7 @@ pe_header:
 	 *  x23        stext() .. start_kernel()  physical misalignment/KASLR offset
 	 *  x28        __create_page_tables()     callee preserved temp register
 	 *  x19/x20    __primary_switch()         callee preserved temp registers
+	 *  x24        __primary_switch()         current RELR displacement
 	 */
 ENTRY(stext)
 	bl	preserve_boot_args
@@ -824,24 +825,63 @@ __relocate_kernel:
 	 * Iterate over each entry in the relocation table, and apply the
 	 * relocations in place.
 	 */
-	ldr	w9, =__rela_offset		// offset to reloc table
-	ldr	w10, =__rela_size		// size of reloc table
-
 	mov_q	x11, KIMAGE_VADDR		// default virtual offset
 	add	x11, x11, x23			// actual virtual offset
+
+	ldr	w9, =__rela_offset		// offset to reloc table
+	ldr	w10, =__rela_size		// size of reloc table
 	add	x9, x9, x11			// __va(.rela)
 	add	x10, x9, x10			// __va(.rela) + sizeof(.rela)
 
 0:	cmp	x9, x10
 	b.hs	1f
-	ldp	x11, x12, [x9], #24
-	ldr	x13, [x9, #-8]
-	cmp	w12, #R_AARCH64_RELATIVE
+	ldp	x12, x13, [x9], #24
+	ldr	x14, [x9, #-8]
+	cmp	w13, #R_AARCH64_RELATIVE
 	b.ne	0b
-	add	x13, x13, x23			// relocate
-	str	x13, [x11, x23]
+	add	x14, x14, x23			// relocate
+	str	x14, [x12, x23]
 	b	0b
-1:	ret
+
+1:
+#ifdef CONFIG_RELR
+	ldr	w9, =__relr_offset		// offset to reloc table
+	ldr	w10, =__relr_size		// size of reloc table
+	add	x9, x9, x11			// __va(.relr)
+	add	x10, x9, x10			// __va(.relr) + sizeof(.relr)
+
+	sub	x15, x23, x24			// delta from previous offset
+	cbz	x15, 7f				// nothing to do if unchanged
+	mov	x24, x23			// save new offset
+
+2:	cmp	x9, x10
+	b.hs	7f
+	ldr	x11, [x9], #8
+	tbnz	x11, #0, 3f			// branch to handle bitmaps
+	add	x13, x11, x23
+	ldr	x12, [x13]			// relocate address entry
+	add	x12, x12, x15
+	str	x12, [x13], #8			// adjust to start of bitmap
+	b	2b
+
+3:	mov	x14, x13
+4:	lsr	x11, x11, #1
+	cbz	x11, 6f
+	tbz	x11, #0, 5f			// skip bit if not set
+	ldr	x12, [x14]			// relocate bit
+	add	x12, x12, x15
+	str	x12, [x14]
+
+5:	add	x14, x14, #8			// move to next bit's address
+	b	4b
+
+6:	add	x13, x13, #(8 * 63)		// move to next bitmap's address
+	b	2b
+
+7:
+#endif
+	ret
+
 ENDPROC(__relocate_kernel)
 #endif
 
@@ -854,6 +894,18 @@ __primary_switch:
 	adrp	x1, init_pg_dir
 	bl	__enable_mmu
 #ifdef CONFIG_RELOCATABLE
+#ifdef CONFIG_RELR
+	/*
+	 * RELR is similar to REL in that the addends are stored in place in the
+	 * binary. This means that RELR relocations cannot be applied
+	 * idempotently. We use x24 to keep track of the currently applied
+	 * displacement so that we can correctly relocate if __relocate_kernel
+	 * is called twice with non-zero displacements (i.e. if there is both a
+	 * physical misalignment and a KASLR displacement). We start off at 0
+	 * because no displacement has been applied yet.
+	 */
+	mov	x24, #0
+#endif
 	bl	__relocate_kernel
 #ifdef CONFIG_RANDOMIZE_BASE
 	ldr	x8, =__primary_switched
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 7fa0083749078..31716afa30f65 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -200,6 +200,15 @@ SECTIONS
 	__rela_offset	= ABSOLUTE(ADDR(.rela.dyn) - KIMAGE_VADDR);
 	__rela_size	= SIZEOF(.rela.dyn);
 
+#ifdef CONFIG_RELR
+	.relr.dyn : ALIGN(8) {
+		*(.relr.dyn)
+	}
+
+	__relr_offset	= ABSOLUTE(ADDR(.relr.dyn) - KIMAGE_VADDR);
+	__relr_size	= SIZEOF(.relr.dyn);
+#endif
+
 	. = ALIGN(SEGMENT_ALIGN);
 	__initdata_end = .;
 	__init_end = .;
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
