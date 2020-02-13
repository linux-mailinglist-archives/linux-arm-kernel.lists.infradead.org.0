Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3924015C0DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 16:00:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RTDkv/v5ZF4reLqMavxTKsYwWLIJh9JcpJrdboRbifM=; b=JwftL6JkYrVwBXSPxm900JpADC
	fco2UxazxPxXqDXj/yJBIzr+YXkf64IC3z/ZqOuKGnHb3O4D8D5EXgqQsC9Q2nl/8WEJMHGh/v49t
	5trf5D7aMJVAbWMutG6uj7YKlM2quQSrr+RBRseAEvyHK2Z6w/vvmmPq0lbA8Q3S5W/JtxcFntfxI
	SiYy2aHK2lvLVcM+kMNWhJUBhSEKECf0Eyhf+tzJaYdYUoSg1tTheNqbz+pgEIh3wt1SxDje2yuBI
	hNsRywX3X5xMY+CY6FzKb1rc+dEXNNdITahY4dJ/ny9FcpJZBPGn8xnhTyzuKcODozlAk4GGjfnPU
	6nU+QjEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2FyV-0001cL-0M; Thu, 13 Feb 2020 15:00:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Fy2-0001SS-Ti
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 14:59:52 +0000
Received: from cam-smtp0.cambridge.arm.com (fw-tnat.cambridge.arm.com
 [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 96EF3218AC;
 Thu, 13 Feb 2020 14:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581605990;
 bh=dzXGEwPuXZ+ThiLE83ovGglZj5LrVvfa4e0a9juvxuU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wtHnBCqALVbLhbo8hURER56BK+MTrVKkiDo3sAmQyWwtVEJUfFeLWNd3DfzUChHJj
 1a86/2gx5cxXcZly4NqcuM1CuZ0BxDerG5+fiLyaKNQWVu2ANeSFLHBYU3f8AeyIJI
 ODQB3FiQakHD+n7/ZrMPEzbyZjygZ1UcscBEcNsQ=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [RFC PATCH 1/3] efi/x86: drop redundant .bss section
Date: Thu, 13 Feb 2020 15:59:26 +0100
Message-Id: <20200213145928.7047-2-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200213145928.7047-1-ardb@kernel.org>
References: <20200213145928.7047-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_065951_022718_FBB0436A 
X-CRM114-Status: GOOD (  12.93  )
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

In commit c7fb93ec51d462ec ("x86/efi: Include a .bss section within
the PE/COFF headers"), we added a separate .bss section to the PE/COFF
header of the compressed kernel describing the static memory footprint
of the decompressor, to ensure that it has enough headroom to decompress
itself.

We can achieve the exact same result by increasing the virtual size of
the .text section, without changing the raw size, which, as per the
PE/COFF specification, requires the loader to zero initialize the delta.

Doing so frees up a slot in the section table, which we will use later
to describe the mixed mode entrypoint.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/x86/boot/header.S      | 21 +-----------
 arch/x86/boot/tools/build.c | 35 ++++++++------------
 2 files changed, 14 insertions(+), 42 deletions(-)

diff --git a/arch/x86/boot/header.S b/arch/x86/boot/header.S
index 97d9b6d6c1af..d59f6604bb42 100644
--- a/arch/x86/boot/header.S
+++ b/arch/x86/boot/header.S
@@ -106,7 +106,7 @@ coff_header:
 #else
 	.word	0x8664				# x86-64
 #endif
-	.word	4				# nr_sections
+	.word	3				# nr_sections
 	.long	0 				# TimeDateStamp
 	.long	0				# PointerToSymbolTable
 	.long	1				# NumberOfSymbols
@@ -248,25 +248,6 @@ section_table:
 	.word	0				# NumberOfLineNumbers
 	.long	0x60500020			# Characteristics (section flags)
 
-	#
-	# The offset & size fields are filled in by build.c.
-	#
-	.ascii	".bss"
-	.byte	0
-	.byte	0
-	.byte	0
-	.byte	0
-	.long	0
-	.long	0x0
-	.long	0				# Size of initialized data
-						# on disk
-	.long	0x0
-	.long	0				# PointerToRelocations
-	.long	0				# PointerToLineNumbers
-	.word	0				# NumberOfRelocations
-	.word	0				# NumberOfLineNumbers
-	.long	0xc8000080			# Characteristics (section flags)
-
 #endif /* CONFIG_EFI_STUB */
 
 	# Kernel attributes; used by setup.  This is part 1 of the
diff --git a/arch/x86/boot/tools/build.c b/arch/x86/boot/tools/build.c
index 55e669d29e54..0c8c5a52f1f0 100644
--- a/arch/x86/boot/tools/build.c
+++ b/arch/x86/boot/tools/build.c
@@ -203,10 +203,12 @@ static void update_pecoff_setup_and_reloc(unsigned int size)
 	put_unaligned_le32(10, &buf[reloc_offset + 4]);
 }
 
-static void update_pecoff_text(unsigned int text_start, unsigned int file_sz)
+static void update_pecoff_text(unsigned int text_start, unsigned int file_sz,
+			       unsigned int init_sz)
 {
 	unsigned int pe_header;
 	unsigned int text_sz = file_sz - text_start;
+	unsigned int bss_sz = init_sz - file_sz;
 
 	pe_header = get_unaligned_le32(&buf[0x3c]);
 
@@ -216,28 +218,19 @@ static void update_pecoff_text(unsigned int text_start, unsigned int file_sz)
 	 */
 	put_unaligned_le32(file_sz - 512, &buf[pe_header + 0x1c]);
 
-	/*
-	 * Address of entry point for PE/COFF executable
-	 */
-	put_unaligned_le32(text_start + efi_pe_entry, &buf[pe_header + 0x28]);
-
-	update_pecoff_section_header(".text", text_start, text_sz);
-}
-
-static void update_pecoff_bss(unsigned int file_sz, unsigned int init_sz)
-{
-	unsigned int pe_header;
-	unsigned int bss_sz = init_sz - file_sz;
-
-	pe_header = get_unaligned_le32(&buf[0x3c]);
-
 	/* Size of uninitialized data */
 	put_unaligned_le32(bss_sz, &buf[pe_header + 0x24]);
 
 	/* Size of image */
 	put_unaligned_le32(init_sz, &buf[pe_header + 0x50]);
 
-	update_pecoff_section_header_fields(".bss", file_sz, bss_sz, 0, 0);
+	/*
+	 * Address of entry point for PE/COFF executable
+	 */
+	put_unaligned_le32(text_start + efi_pe_entry, &buf[pe_header + 0x28]);
+
+	update_pecoff_section_header_fields(".text", text_start, text_sz + bss_sz,
+					    text_sz, text_start);
 }
 
 static int reserve_pecoff_reloc_section(int c)
@@ -278,9 +271,8 @@ static void efi_stub_entry_update(void)
 
 static inline void update_pecoff_setup_and_reloc(unsigned int size) {}
 static inline void update_pecoff_text(unsigned int text_start,
-				      unsigned int file_sz) {}
-static inline void update_pecoff_bss(unsigned int file_sz,
-				     unsigned int init_sz) {}
+				      unsigned int file_sz,
+				      unsigned int init_sz) {}
 static inline void efi_stub_defaults(void) {}
 static inline void efi_stub_entry_update(void) {}
 
@@ -406,9 +398,8 @@ int main(int argc, char ** argv)
 	buf[0x1f1] = setup_sectors-1;
 	put_unaligned_le32(sys_size, &buf[0x1f4]);
 
-	update_pecoff_text(setup_sectors * 512, i + (sys_size * 16));
 	init_sz = get_unaligned_le32(&buf[0x260]);
-	update_pecoff_bss(i + (sys_size * 16), init_sz);
+	update_pecoff_text(setup_sectors * 512, i + (sys_size * 16), init_sz);
 
 	efi_stub_entry_update();
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
