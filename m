Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD05C6756A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 21:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=hq9Pe9o8oBnKdgu68twA20TDjwx4zUGqX/N2cFjb5WQ=; b=LXOa3e6AxXpqWF
	45s2O5cnjJKu6m5lUAXrSg4luCPnKF6Gq1fapL6XfAp0j7ogbzG0YF/O75dGnCzumjGg2cV/H79E0
	rR7B+33kR3XL3pjuIusthFOQDlguJFYVx2cZf1HaCy+THVqvm2d3b2QjbAeZW3S384a2IVehx6EFP
	ggCh1OuBx5pR9p7OeCu1+7wGRdsRUa7yuCNGSAFx7MPSg/kiIhLoVabVnsmVYC8PmgmwZNfkn4RNV
	72ahevwgF5mozvIW+lOYZ/oWsuJWPU3xzAcnb4BiA4x2kHCg6u5eYGo0azBe3MPkeKVg0Tdmg3DCx
	EqeXxK48s9DndH1Rvcig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm1OQ-0001sC-7J; Fri, 12 Jul 2019 19:39:42 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm1OB-0001r1-R4
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 19:39:29 +0000
Received: by mail-qk1-x74a.google.com with SMTP id c1so7830111qkl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 12:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:subject:from:to:cc;
 bh=KIevc60/RHyhSvw826g6ikoHIUxi0aKYGfP0yIJrsJ8=;
 b=p6moMXPb0N63mCIr+DQXqIEUyAbt5Af2rCodWfAHBpWpqXCmqutV24i7AD1BHT8H47
 pIzcP7T0KpoYRWyYkKBwrZTeYiajFeWnf+BH5yRt6zME6IWe6XMAhmWcePhtiZP5pC1e
 ChpfsksHbsrD1ye9iDp/2XgipHpWAv+f8+3fpiLZLC/VlTO0cdy1XcXPypdY8eX3O/xw
 HDXejz+SGYGjELLbWqVFENdiZi9Xy9fmsz/7ts9e8HLzplPmNeAwT+eflW9+MlMsQ0vI
 FEpwwqVDC5sYYG5sVU82nMiM3dF/RpzOAzVKvIehW8jTiuKXJ5l/dALYBIRPszHLCgwn
 1Z9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version:subject
 :from:to:cc;
 bh=KIevc60/RHyhSvw826g6ikoHIUxi0aKYGfP0yIJrsJ8=;
 b=NFRza5ziA3IRe56Xq+kXZGUpTuXj3uGBzOcEVtaRCaAxzR9PplK7cCAaxBG6T1xUtz
 yR10wkVkONwnxl8RSLF3vP8dbizVWs4ta16M8yP9kInRtqPQKCjc17/xG9C9R/OEKZm0
 1XUeslRa2+j2wx/wnEuMJzgVE8w4sv9Q7vIlChfyBuYyKaxfzzlPLzmHPtm6gJxkCXrb
 OWl3Yyy6VKJjMbu6siCH2V4vnX1eu+bzNmMNqfUjaCcWYDk829f7TWRIGaJbs90PjwWO
 d5q6WufZiFJ5K2JVHQPodbeQgLvF8sd4lSDF5d4T+wz7xxEiMwHQZJ8NUFcWmazQ2LCy
 RMPA==
X-Gm-Message-State: APjAAAWP3ybzy+eNBqhNB2zNsPxRvDVuyNaVZ/PRCvO7ApDHslsOIeFD
 6e8q9aMoA2Qp53FDvYALymMVrMg=
X-Google-Smtp-Source: APXvYqxOtx0Hy5oTdW5FsbQ89v46YeJi63KF+Wx9F5ne73+drB5Wh2vVzYQgTNb7JkvfM2xu5inhvpY=
X-Received: by 2002:ac8:1ba9:: with SMTP id z38mr8014237qtj.176.1562960365977; 
 Fri, 12 Jul 2019 12:39:25 -0700 (PDT)
Date: Fri, 12 Jul 2019 12:38:46 -0700
In-Reply-To: <20190705080231.123522-1-pcc@google.com>
Message-Id: <20190712193846.174893-1-pcc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH v2] arm64: Add support for relocating the kernel with RELR
 relocations
From: Peter Collingbourne <pcc@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_123927_905519_B62C2AF3 
X-CRM114-Status: GOOD (  24.66  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: clang-built-linux@googlegroups.com,
 Nick Desaulniers <ndesaulniers@google.com>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org
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
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes in v2:
- Reverted change to RELA processing
- Added more comments, as requested by Nick and Will
- Added a feature test for NM and OBJCOPY
- Made CONFIG_RELR=y the default if the tools support it

 arch/arm64/Kconfig              | 10 ++++
 arch/arm64/Makefile             |  4 ++
 arch/arm64/kernel/head.S        | 96 ++++++++++++++++++++++++++++++---
 arch/arm64/kernel/vmlinux.lds.S |  9 ++++
 init/Kconfig                    |  3 ++
 scripts/tools-support-relr.sh   | 16 ++++++
 6 files changed, 132 insertions(+), 6 deletions(-)
 create mode 100755 scripts/tools-support-relr.sh

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 7442edbcabfc3..cf3907d21d097 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1476,6 +1476,16 @@ config RELOCATABLE
 	  relocation pass at runtime even if the kernel is loaded at the
 	  same address it was linked at.
 
+config RELR
+	bool "Use RELR relocation packing"
+	depends on RELOCATABLE && TOOLS_SUPPORT_RELR
+	default y
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
index bb1f1dbb34e8f..11f84450c7784 100644
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
index 2cdacd1c141b9..cc23302e9d95e 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -102,6 +102,8 @@ pe_header:
 	 *  x23        stext() .. start_kernel()  physical misalignment/KASLR offset
 	 *  x28        __create_page_tables()     callee preserved temp register
 	 *  x19/x20    __primary_switch()         callee preserved temp registers
+	 *  x24        __primary_switch() .. relocate_kernel()
+	 *                                        current RELR displacement
 	 */
 ENTRY(stext)
 	bl	preserve_boot_args
@@ -834,14 +836,93 @@ __relocate_kernel:
 
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
+	/*
+	 * Apply RELR relocations.
+	 *
+	 * RELR is a compressed format for storing relative relocations. The
+	 * encoded sequence of entries looks like:
+	 * [ AAAAAAAA BBBBBBB1 BBBBBBB1 ... AAAAAAAA BBBBBB1 ... ]
+	 *
+	 * i.e. start with an address, followed by any number of bitmaps. The
+	 * address entry encodes 1 relocation. The subsequent bitmap entries
+	 * encode up to 63 relocations each, at subsequent offsets following
+	 * the last address entry.
+	 *
+	 * The bitmap entries must have 1 in the least significant bit. The
+	 * assumption here is that an address cannot have 1 in lsb. Odd
+	 * addresses are not supported. Any odd addresses are stored in the RELA
+	 * section, which is handled above.
+	 *
+	 * Excluding the least significant bit in the bitmap, each non-zero
+	 * bit in the bitmap represents a relocation to be applied to
+	 * a corresponding machine word that follows the base address
+	 * word. The second least significant bit represents the machine
+	 * word immediately following the initial address, and each bit
+	 * that follows represents the next word, in linear order. As such,
+	 * a single bitmap can encode up to 63 relocations in a 64-bit object.
+	 *
+	 * In this implementation we store the address of the next RELR table
+	 * entry in x9, the address being relocated by the current address or
+	 * bitmap entry in x13 and the address being relocated by the current
+	 * bit in x14.
+	 *
+	 * Because addends are stored in place in the binary, RELR relocations
+	 * cannot be applied idempotently. We use x24 to keep track of the
+	 * currently applied displacement so that we can correctly relocate if
+	 * __relocate_kernel is called twice with non-zero displacements (i.e.
+	 * if there is both a physical misalignment and a KASLR displacement).
+	 */
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
+6:	/*
+	 * Move to the next bitmap's address. 8 is the word size, and 63 is the
+	 * number of significant bits in a bitmap entry.
+	 */
+	add	x13, x13, #(8 * 63)
+	b	2b
+
+7:
+#endif
+	ret
+
 ENDPROC(__relocate_kernel)
 #endif
 
@@ -854,6 +935,9 @@ __primary_switch:
 	adrp	x1, init_pg_dir
 	bl	__enable_mmu
 #ifdef CONFIG_RELOCATABLE
+#ifdef CONFIG_RELR
+	mov	x24, #0				// no RELR displacement yet
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
diff --git a/init/Kconfig b/init/Kconfig
index 99da78db04405..a148c795fde39 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -30,6 +30,9 @@ config CC_CAN_LINK
 config CC_HAS_ASM_GOTO
 	def_bool $(success,$(srctree)/scripts/gcc-goto.sh $(CC))
 
+config TOOLS_SUPPORT_RELR
+	def_bool $(success,env "CC=$(CC)" "LD=$(LD)" "NM=$(NM)" "OBJCOPY=$(OBJCOPY)" $(srctree)/scripts/tools-support-relr.sh)
+
 config CC_HAS_WARN_MAYBE_UNINITIALIZED
 	def_bool $(cc-option,-Wmaybe-uninitialized)
 	help
diff --git a/scripts/tools-support-relr.sh b/scripts/tools-support-relr.sh
new file mode 100755
index 0000000000000..97a2c844a95e4
--- /dev/null
+++ b/scripts/tools-support-relr.sh
@@ -0,0 +1,16 @@
+#!/bin/sh -eu
+# SPDX-License-Identifier: GPL-2.0
+
+tmp_file=$(mktemp)
+trap "rm -f $tmp_file.o $tmp_file $tmp_file.bin" EXIT
+
+cat << "END" | "$CC" -c -x c - -o $tmp_file.o >/dev/null 2>&1
+void *p = &p;
+END
+"$LD" $tmp_file.o -shared -Bsymbolic --pack-dyn-relocs=relr -o $tmp_file
+
+# Despite printing an error message, GNU nm still exits with exit code 0 if it
+# sees a relr section. So we need to check that nothing is printed to stderr.
+test -z "$("$NM" $tmp_file 2>&1 >/dev/null)"
+
+"$OBJCOPY" -O binary $tmp_file $tmp_file.bin
-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
