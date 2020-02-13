Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C8B15C0DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 16:00:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HCzSbIt1nm6rvp+5x3zxyZubsHhD6W1ARw9S1BK1J3Y=; b=QOb/WhBLWRRZ8ReTHCQHFFGoqw
	J5MjS2GH2kO3mOu5FW4TZpgcMMx6Y6XNJHGhCR98N51qYrXi5XOilMorQp0AedMf9EswPr7S+CcbM
	VVb4c6GSNxRNfoSgCUwG3y2MXj7OlRy3gUrvKvqo/LGglWPWIS53Xs+t2vh52TBwPkjawB6UgL2Kf
	hHzkOYEaL34UhPS4WmUvbQCMDPqQAeglAFH41WkpeDakRcNtAR2SFmEzr/uGrwo/VU4CSA+8psYTq
	X9BZNjtwoCUlDeoHuqmalkcRR3HANwGQCHf+dlH/hyTI1X1gtGrVjpjqM/a4t43PHCQxe899NCzuV
	nr2RZYbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Fyj-00031j-OM; Thu, 13 Feb 2020 15:00:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Fy7-0001XM-2A
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 14:59:56 +0000
Received: from cam-smtp0.cambridge.arm.com (fw-tnat.cambridge.arm.com
 [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B4AE2082F;
 Thu, 13 Feb 2020 14:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581605994;
 bh=tP/nrC7vqmTYk59YGXGbjbDeHTY+3bz/+I3O4muIg1Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jmCmL6S+RZ4t0UJu/CDPzcpFn1jwmsGuhH6HHICJm8ZHRPFEunNaSXg0GWXeJDrg3
 CrnMEkDW1H/XZvkaI4ZdIxIfnGfmdIQz9rEo5UClNBLsqpSjyEfFd2iUjqjYVBOP6f
 PEu1N2G3zp+KDbUwcqNAtzuGr5slHjzqi4pRHNtw=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [RFC PATCH 2/3] efi/x86: add true mixed mode entry point into .compat
 section
Date: Thu, 13 Feb 2020 15:59:27 +0100
Message-Id: <20200213145928.7047-3-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200213145928.7047-1-ardb@kernel.org>
References: <20200213145928.7047-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_065955_273514_B65CC87D 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mingo@kernel.org, agraf@csgraf.de, daniel.kiper@oracle.com,
 mjg59@google.com, mbrown@fensystems.co.uk, hdegoede@redhat.com,
 nivedita@alum.mit.edu, pjones@redhat.com, leif@nuviainc.com, lersek@redhat.com,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, mixed mode is closely tied to the EFI handover protocol
and relies on intimate knowledge of the bootparams structure, setup
header etc, all of which are rather byzantine and entirely specific
to x86.

Even though no other EFI supported architectures are currently known
that could support something like mixed mode, it makes sense to
abstract a bit from this, and make it part of a generic Linux on EFI
boot protocol.

To that end, add a .compat section to the mixed mode binary, and populate
it with the PE machine type and entry point address, allowing firmware
implementations to match it to their native machine type, and invoke
non-native binaries using a secondary entry point.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/x86/boot/Makefile      |  2 +-
 arch/x86/boot/header.S      | 20 +++++++++++-
 arch/x86/boot/tools/build.c | 32 +++++++++++++++++++-
 3 files changed, 51 insertions(+), 3 deletions(-)

diff --git a/arch/x86/boot/Makefile b/arch/x86/boot/Makefile
index 012b82fc8617..ef9e1f2c836c 100644
--- a/arch/x86/boot/Makefile
+++ b/arch/x86/boot/Makefile
@@ -88,7 +88,7 @@ $(obj)/vmlinux.bin: $(obj)/compressed/vmlinux FORCE
 
 SETUP_OBJS = $(addprefix $(obj)/,$(setup-y))
 
-sed-zoffset := -e 's/^\([0-9a-fA-F]*\) [a-zA-Z] \(startup_32\|startup_64\|efi32_stub_entry\|efi64_stub_entry\|efi_pe_entry\|input_data\|kernel_info\|_end\|_ehead\|_text\|z_.*\)$$/\#define ZO_\2 0x\1/p'
+sed-zoffset := -e 's/^\([0-9a-fA-F]*\) [a-zA-Z] \(startup_32\|startup_64\|efi32_stub_entry\|efi64_stub_entry\|efi_pe_entry\|efi32_pe_entry\|input_data\|kernel_info\|_end\|_ehead\|_text\|z_.*\)$$/\#define ZO_\2 0x\1/p'
 
 quiet_cmd_zoffset = ZOFFSET $@
       cmd_zoffset = $(NM) $< | sed -n $(sed-zoffset) > $@
diff --git a/arch/x86/boot/header.S b/arch/x86/boot/header.S
index d59f6604bb42..76a485013771 100644
--- a/arch/x86/boot/header.S
+++ b/arch/x86/boot/header.S
@@ -106,7 +106,7 @@ coff_header:
 #else
 	.word	0x8664				# x86-64
 #endif
-	.word	3				# nr_sections
+	.word	section_count			# nr_sections
 	.long	0 				# TimeDateStamp
 	.long	0				# PointerToSymbolTable
 	.long	1				# NumberOfSymbols
@@ -230,6 +230,23 @@ section_table:
 	.word	0				# NumberOfLineNumbers
 	.long	0x42100040			# Characteristics (section flags)
 
+#ifdef CONFIG_EFI_MIXED
+	#
+	# The offset & size fields are filled in by build.c.
+	#
+	.asciz	".compat"
+	.long	0
+	.long	0x0
+	.long	0				# Size of initialized data
+						# on disk
+	.long	0x0
+	.long	0				# PointerToRelocations
+	.long	0				# PointerToLineNumbers
+	.word	0				# NumberOfRelocations
+	.word	0				# NumberOfLineNumbers
+	.long	0x60500020			# Characteristics (section flags)
+#endif
+
 	#
 	# The offset & size fields are filled in by build.c.
 	#
@@ -248,6 +265,7 @@ section_table:
 	.word	0				# NumberOfLineNumbers
 	.long	0x60500020			# Characteristics (section flags)
 
+	.set	section_count, (. - section_table) / 40
 #endif /* CONFIG_EFI_STUB */
 
 	# Kernel attributes; used by setup.  This is part 1 of the
diff --git a/arch/x86/boot/tools/build.c b/arch/x86/boot/tools/build.c
index 0c8c5a52f1f0..707b979566ca 100644
--- a/arch/x86/boot/tools/build.c
+++ b/arch/x86/boot/tools/build.c
@@ -53,9 +53,16 @@ u8 buf[SETUP_SECT_MAX*512];
 
 #define PECOFF_RELOC_RESERVE 0x20
 
+#ifdef CONFIG_EFI_MIXED
+#define PECOFF_COMPAT_RESERVE 0x20
+#else
+#define PECOFF_COMPAT_RESERVE 0x0
+#endif
+
 unsigned long efi32_stub_entry;
 unsigned long efi64_stub_entry;
 unsigned long efi_pe_entry;
+unsigned long efi32_pe_entry;
 unsigned long kernel_info;
 unsigned long startup_64;
 
@@ -189,7 +196,8 @@ static void update_pecoff_section_header(char *section_name, u32 offset, u32 siz
 static void update_pecoff_setup_and_reloc(unsigned int size)
 {
 	u32 setup_offset = 0x200;
-	u32 reloc_offset = size - PECOFF_RELOC_RESERVE;
+	u32 reloc_offset = size - PECOFF_RELOC_RESERVE - PECOFF_COMPAT_RESERVE;
+	u32 compat_offset = reloc_offset + PECOFF_RELOC_RESERVE;
 	u32 setup_size = reloc_offset - setup_offset;
 
 	update_pecoff_section_header(".setup", setup_offset, setup_size);
@@ -201,6 +209,20 @@ static void update_pecoff_setup_and_reloc(unsigned int size)
 	 */
 	put_unaligned_le32(reloc_offset + 10, &buf[reloc_offset]);
 	put_unaligned_le32(10, &buf[reloc_offset + 4]);
+
+#ifdef CONFIG_EFI_MIXED
+	update_pecoff_section_header(".compat", compat_offset, PECOFF_COMPAT_RESERVE);
+
+	/*
+	 * Put the IA-32 machine type (0x14c) and the associated entry point
+	 * address in the .compat section, so loaders can figure out which other
+	 * execution modes this image supports.
+	 */
+	buf[compat_offset] = 0x1;
+	buf[compat_offset + 1] = 0x8;
+	put_unaligned_le16(0x14c, &buf[compat_offset + 2]);
+	put_unaligned_le32(efi32_pe_entry + size, &buf[compat_offset + 4]);
+#endif
 }
 
 static void update_pecoff_text(unsigned int text_start, unsigned int file_sz,
@@ -282,6 +304,12 @@ static inline int reserve_pecoff_reloc_section(int c)
 }
 #endif /* CONFIG_EFI_STUB */
 
+static int reserve_pecoff_compat_section(int c)
+{
+	/* Reserve 0x20 bytes for .compat section */
+	memset(buf+c, 0, PECOFF_COMPAT_RESERVE);
+	return PECOFF_COMPAT_RESERVE;
+}
 
 /*
  * Parse zoffset.h and find the entry points. We could just #include zoffset.h
@@ -314,6 +342,7 @@ static void parse_zoffset(char *fname)
 		PARSE_ZOFS(p, efi32_stub_entry);
 		PARSE_ZOFS(p, efi64_stub_entry);
 		PARSE_ZOFS(p, efi_pe_entry);
+		PARSE_ZOFS(p, efi32_pe_entry);
 		PARSE_ZOFS(p, kernel_info);
 		PARSE_ZOFS(p, startup_64);
 
@@ -357,6 +386,7 @@ int main(int argc, char ** argv)
 		die("Boot block hasn't got boot flag (0xAA55)");
 	fclose(file);
 
+	c += reserve_pecoff_compat_section(c);
 	c += reserve_pecoff_reloc_section(c);
 
 	/* Pad unused space with zeros */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
