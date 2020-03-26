Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED2F19452D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 18:14:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0fh23R5/4lmR5csT5Y5vXs2r5ecI0UbCfO+vx9bo9j8=; b=Q7l
	7Y5ytl262haUY1+oyom2608TrLObXIcs5q2edXFWPZa/1Qf9pejEMjZHgAPQEhOBLBnIcl28ySlDL
	0z2CZs6M0AQFJF9nJV1IXbB8rm6AJhkzQYkuWIIOx2r+7rj9782WBbLFvmD5WNJi06TapKiiIZnh7
	CiBjQckJdLdsuRfE4HWQG5iyPgi+GzvuvifwUKTdbb8b8EQ/aXNSQ8Qdt8DAgeiCVKWiWM1S1t7iY
	xQFNbObJjlF/0Q3TUXGetWPCDRBxYTrCnaxOmXDloLYlDj7r0xdrRf48rmUDK9mNRxsEO/PY5IDPq
	P01IPLJwm9Tksw22RWRs4X7YRlxJZ9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHW5e-0003Gf-06; Thu, 26 Mar 2020 17:14:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHW5V-0003GG-65
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 17:14:38 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7845020737;
 Thu, 26 Mar 2020 17:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585242876;
 bh=8fXlQ8/Sa6bOSTHBioUjM1DmktUqI8bESsO2pey5Csg=;
 h=From:To:Cc:Subject:Date:From;
 b=lDVbd1Xz8gZe1Of7v/r+Gkv8eK/ON2ul51xYa+wHn3bFcnU0H9PXwIu9nRB14neqV
 0n5hX9IaPmp4FG7uDyk9HGUqnEdK4xHOJqzRpwfsL8J4Utjb6/inszVpUnMo+nOvpg
 VNyTgI17YEDZ082p3U+jL4NDraFR7TlNcG2FAR9Y=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: rename stext to primary_entry
Date: Thu, 26 Mar 2020 18:14:23 +0100
Message-Id: <20200326171423.3080-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_101437_269252_20B719C1 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, broonie@kernel.org,
 will@kernel.org, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For historical reasons, the primary entry routine living somewhere in
the inittext section is called stext(), which is confusing, given that
there is also a section marker called _stext which lives at a fixed
offset in the image (either 64 or 4096 bytes, depending on whether
CONFIG_EFI is enabled)

Let's rename stext to primary_entry(), which is a better description
and reflects the secondary_entry() routine that already exists for
SMP boot.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
Note: this applies to linux-next currently, so this is v5.8 material

 arch/arm64/kernel/efi-entry.S   |  2 +-
 arch/arm64/kernel/head.S        | 19 +++++++++----------
 arch/arm64/kernel/image-vars.h  |  2 +-
 arch/arm64/kernel/vmlinux.lds.S |  4 ++--
 4 files changed, 13 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/kernel/efi-entry.S b/arch/arm64/kernel/efi-entry.S
index 1a03618df0df..303642975a93 100644
--- a/arch/arm64/kernel/efi-entry.S
+++ b/arch/arm64/kernel/efi-entry.S
@@ -19,7 +19,7 @@ SYM_CODE_START(efi_enter_kernel)
 	 * point stored in x0. Save those values in registers which are
 	 * callee preserved.
 	 */
-	ldr	w2, =stext_offset
+	ldr	w2, =primary_entry_offset
 	add	x19, x0, x2		// relocated Image entrypoint
 	mov	x20, x1			// DTB address
 
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 57a91032b4c2..01aa238c7b10 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -70,9 +70,9 @@ _head:
 	 * its opcode forms the magic "MZ" signature required by UEFI.
 	 */
 	add	x13, x18, #0x16
-	b	stext
+	b	primary_entry
 #else
-	b	stext				// branch to kernel start, magic
+	b	primary_entry			// branch to kernel start, magic
 	.long	0				// reserved
 #endif
 	le64sym	_kernel_offset_le		// Image load offset from start of RAM, little-endian
@@ -98,14 +98,13 @@ pe_header:
 	 * primary lowlevel boot path:
 	 *
 	 *  Register   Scope                      Purpose
-	 *  x21        stext() .. start_kernel()  FDT pointer passed at boot in x0
-	 *  x23        stext() .. start_kernel()  physical misalignment/KASLR offset
-	 *  x28        __create_page_tables()     callee preserved temp register
-	 *  x19/x20    __primary_switch()         callee preserved temp registers
-	 *  x24        __primary_switch() .. relocate_kernel()
-	 *                                        current RELR displacement
+	 *  x21        primary_entry() .. start_kernel()        FDT pointer passed at boot in x0
+	 *  x23        primary_entry() .. start_kernel()        physical misalignment/KASLR offset
+	 *  x28        __create_page_tables()                   callee preserved temp register
+	 *  x19/x20    __primary_switch()                       callee preserved temp registers
+	 *  x24        __primary_switch() .. relocate_kernel()  current RELR displacement
 	 */
-SYM_CODE_START(stext)
+SYM_CODE_START(primary_entry)
 	bl	preserve_boot_args
 	bl	el2_setup			// Drop to EL1, w0=cpu_boot_mode
 	adrp	x23, __PHYS_OFFSET
@@ -121,7 +120,7 @@ SYM_CODE_START(stext)
 	mov	x0, #ARM64_CPU_BOOT_PRIMARY
 	bl	__cpu_setup			// initialise processor
 	b	__primary_switch
-SYM_CODE_END(stext)
+SYM_CODE_END(primary_entry)
 
 /*
  * Preserve the arguments passed by the bootloader in x0 .. x3
diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
index 7f06ad93fc95..be0a63ffed23 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -13,7 +13,7 @@
 #ifdef CONFIG_EFI
 
 __efistub_kernel_size		= _edata - _text;
-__efistub_stext_offset		= stext - _text;
+__efistub_primary_entry_offset	= primary_entry - _text;
 
 
 /*
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 497f9675071d..8bd825233580 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -72,8 +72,8 @@ jiffies = jiffies_64;
 
 /*
  * The size of the PE/COFF section that covers the kernel image, which
- * runs from stext to _edata, must be a round multiple of the PE/COFF
- * FileAlignment, which we set to its minimum value of 0x200. 'stext'
+ * runs from _stext to _edata, must be a round multiple of the PE/COFF
+ * FileAlignment, which we set to its minimum value of 0x200. '_stext'
  * itself is 4 KB aligned, so padding out _edata to a 0x200 aligned
  * boundary should be sufficient.
  */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
