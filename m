Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C857D2BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 03:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9ml68+QqKnuYYLJt3yI6t64s6JxR4p9T27CiN7HSIQ=; b=JL4bZqAEv6i5Wb
	JTS2LwVLenKF19giCWEfUMqkR/7dVqjSZor60PazVrYKvfHN4+4A619PrbbmI1flPBJ6SnSaN3T2o
	n7B25xqCiQktFcnpL/v1LvrkXVvJWrleGpElf0uAeqsI7gwvD+W8T05ZUauPG/Uump4MrWSaJyyfx
	HvCXwfMsSL219uttkHc64nvPt49o4pHyNJkmexnFXvIRVG9EB0pypWg3wrPc4/Dn+ZL9IIxH7pYSg
	cDvyGk9Xfet0u9MVC43aWkrtsOLKtMh50S+1Hs3gUx1MYEpnwZDVbX+IKxOC33tK+nqA6NOn+LYiD
	D/6T0NrImhUL5vRi0EBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hszkM-0007wV-1D; Thu, 01 Aug 2019 01:19:10 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hszkE-0007w5-Tn
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 01:19:04 +0000
Received: by mail-qk1-x74a.google.com with SMTP id s25so59573466qkj.18
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 18:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=l1Y0E2uxDzeuFZd3SoVM5KQ4j3MJyT1KII9C3kn9KRw=;
 b=ZhA0c4EBcC3uEKmWwjm6xhX39CDbwkow0bE1Jzb3EOPkc3ldvBEr6bjJ+3y7EDBW1j
 EJ/qxjxmYey50UzNmGsSe6DRfHNYyxkiX7FRsMBhQtZb8GMZcIbclXFW4SsbP+MQfpAa
 5odGDYT+QaW2rYCBCYU9gADdq9yTajFXMuQD8qmNaqYFonmojQ1ioN8xcmkIilc0/3/1
 NnHjdXTo6xw8pUL9T5nqNgo03PqOcOLvtkfG7ES8MI61T3OGi1T2ohsO4ck2R+eiOV7v
 5LmzOD58rJsOmC6+Pjv3vNEf6vmINuRBaoy3sUaqwOi+tRqtz4WcEX7nXBHRmuEnInkw
 i68g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=l1Y0E2uxDzeuFZd3SoVM5KQ4j3MJyT1KII9C3kn9KRw=;
 b=FdSPdvoV0lQAPJuGK5P3+P2fUtrkLwhUXfFaGtP1uVxv/VyuuncLLw6WUhH//JR+3L
 r9JelwaeTRm5y3XTeaSumj3Zxtv2X2qECsm9lxtiwhA0ETcO1K0V1n2DiqsC6tGHZDpW
 6yVLxad08UOWjd2RV7cnl3laMtNHX5w/DpLMO98tg7OB64AOKx3X8rdt02esryD30q4d
 A81lu1KMcmiIEQEKZY2W3mwVv87yiRFT3Nq/QaoWtX5CvcFAeL37dfYJ5VVjHQOcErLB
 B7vf/Ekfh1vLECYu214yPc856gFXuokGmHOHb3dYEEXkOFwRff0N3It6HqKitY83+mSp
 l7fA==
X-Gm-Message-State: APjAAAVpEe0x3lIjfrLgcFQ5MWmVKaMA63yd0jmAL2X/SKgRE7C3EORz
 TL1WJ0M4Brd03Q3OubdbM4hMJqA=
X-Google-Smtp-Source: APXvYqyOVIzz2Xo0ropjAmavJ+6XZm/53yGCFoOKCQao+I/PncAuqpdBtQkEBUQ2hqmrStUY2WRNVaE=
X-Received: by 2002:a0c:984a:: with SMTP id e10mr89541242qvd.57.1564622340917; 
 Wed, 31 Jul 2019 18:19:00 -0700 (PDT)
Date: Wed, 31 Jul 2019 18:18:42 -0700
In-Reply-To: <20190712193846.174893-1-pcc@google.com>
Message-Id: <20190801011842.199786-1-pcc@google.com>
Mime-Version: 1.0
References: <20190712193846.174893-1-pcc@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v3] arm64: Add support for relocating the kernel with RELR
 relocations
From: Peter Collingbourne <pcc@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_181902_993402_F6D8617D 
X-CRM114-Status: GOOD (  25.54  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Notes:
    Changes in v3:
    - Move Kconfig/Makefile logic to arch-independent location
    - Tweak CONFIG_RELR documentation to remove "currently"
    
    Changes in v2:
    - Reverted change to RELA processing
    - Added more comments, as requested by Nick and Will
    - Added a feature test for NM and OBJCOPY
    - Made CONFIG_RELR=y the default if the tools support it

 Makefile                        |  4 ++
 arch/Kconfig                    | 14 +++++
 arch/arm64/Kconfig              |  1 +
 arch/arm64/kernel/head.S        | 96 ++++++++++++++++++++++++++++++---
 arch/arm64/kernel/vmlinux.lds.S |  9 ++++
 init/Kconfig                    |  3 ++
 scripts/tools-support-relr.sh   | 16 ++++++
 7 files changed, 137 insertions(+), 6 deletions(-)
 create mode 100755 scripts/tools-support-relr.sh

diff --git a/Makefile b/Makefile
index 5ee6f68898693..23ed9dbef12a1 100644
--- a/Makefile
+++ b/Makefile
@@ -912,6 +912,10 @@ ifeq ($(CONFIG_STRIP_ASM_SYMS),y)
 LDFLAGS_vmlinux	+= $(call ld-option, -X,)
 endif
 
+ifeq ($(CONFIG_RELR),y)
+LDFLAGS_vmlinux	+= --pack-dyn-relocs=relr
+endif
+
 # insure the checker run with the right endianness
 CHECKFLAGS += $(if $(CONFIG_CPU_BIG_ENDIAN),-mbig-endian,-mlittle-endian)
 
diff --git a/arch/Kconfig b/arch/Kconfig
index d4c1f0551dfe0..719b27275f86a 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -936,6 +936,20 @@ config LOCK_EVENT_COUNTS
 	  the chance of application behavior change because of timing
 	  differences. The counts are reported via debugfs.
 
+# Select if the architecture has support for applying RELR relocations.
+config ARCH_HAS_RELR
+	bool
+
+config RELR
+	bool "Use RELR relocation packing"
+	depends on ARCH_HAS_RELR && TOOLS_SUPPORT_RELR
+	default y
+	help
+	  Store the kernel's dynamic relocations in the RELR relocation packing
+	  format. Requires a compatible linker (LLD supports this feature), as
+	  well as compatible NM and OBJCOPY utilities (llvm-nm and llvm-objcopy
+	  are compatible).
+
 source "kernel/gcov/Kconfig"
 
 source "scripts/gcc-plugins/Kconfig"
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 399f595ef852e..ac1bc9cc22a26 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1467,6 +1467,7 @@ endif
 
 config RELOCATABLE
 	bool
+	select ARCH_HAS_RELR
 	help
 	  This builds the kernel as a Position Independent Executable (PIE),
 	  which retains all relocation metadata required to relocate the
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
index bd7d650d4a996..d96127ebc44e0 100644
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
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
