Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAC31A69CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 18:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GcURPFYNPux4rnHxbQHCl9cwj/0sLFewqC+Ly2LgqZ8=; b=SCIeFQlalQEKl27G24+IjhTTuq
	8WFiXd4B8F+Fps6gYOm/gg0I5XTG3zHU6oBaCf32qMREN5BCrB8sVfn5kZW0pZ1FHbkSlUiL16nVx
	0IYlS6z0BcNBTOvECoTCBtEIfB2nWYdlxGgxJFrHtxV9CL8KzxArr0h1Oi/oOIcv39TD7ECvtY0Yf
	jhaon1IJ/iKrof76d9INqX3HDGkL8rYuaUR6z4PHJGq1Ym2rVRPmS/5KbZpDqyRswQI5RhqZPSuOU
	CnbBh/zkXL1AwGceLDmK1ViPBJW1+A2Dnz+hMTMXJJLCIuDCaW+8KmBg/Ztr3MDhgPukAzyVK2Q88
	37AwBhDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO1rZ-0000Mb-7t; Mon, 13 Apr 2020 16:23:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO1qO-0007re-Re
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 16:21:58 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B10D20678;
 Mon, 13 Apr 2020 16:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586794915;
 bh=yaoIwi+Ux7uaWMr1LOXjqVIdnt6J1WFg3Howl+bvQKc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CeB0Zi5AqGuX9YBhTOBuuFfSwB4ikdJolQ1jYDXvWM1bQppsbG2S5eilR6ZOt92u4
 h7bk01YAAnDRag7JeYZVScThn5vKv+lsJ4hrAk8sqCTQp33eDixYyUSr7Bko85MM25
 Mq0ajwOSBza1MIy77OqfkKEEIEdyjmbhjxCS9ADM=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2 5/5] ARM: decompressor: run decompressor in place if loaded
 via UEFI
Date: Mon, 13 Apr 2020 18:21:35 +0200
Message-Id: <20200413162135.14955-6-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200413162135.14955-1-ardb@kernel.org>
References: <20200413162135.14955-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_092156_958592_B451DA7B 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Nicolas Pitre <nico@fluxnic.net>, Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The decompressor can load from anywhere in memory, and the only reason
the EFI stub code relocates it is to ensure it appears within the first
128 MiB of memory, so that the uncompressed kernel ends up at the right
offset in memory.

We can short circuit this, and simply jump into the decompressor startup
code at the point where it knows where the base of memory lives. This
also means there is no need to disable the MMU and caches, create new
page tables and re-enable them.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/head.S           | 37 +++++-----------
 drivers/firmware/efi/libstub/arm32-stub.c | 45 +++-----------------
 2 files changed, 17 insertions(+), 65 deletions(-)

diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 9dea394b286b..4ec07c98f9b1 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -1480,37 +1480,22 @@ reloc_code_end:
 
 #ifdef CONFIG_EFI_STUB
 ENTRY(efi_enter_kernel)
-		mov	r7, r0				@ preserve image base
-		mov	r4, r1				@ preserve DT pointer
+		mov	r4, r0			@ preserve image base
+		mov	r8, r1			@ preserve DT pointer
 
-		mov	r0, r4				@ DT start
-		add	r1, r4, r2			@ DT end
+		mov	r0, r8			@ DT start
+		add	r1, r8, r2		@ DT end
 		bl	cache_clean_flush
 
-		mov	r0, r7				@ relocated zImage
-		ldr	r1, =_edata			@ size of zImage
-		add	r1, r1, r0			@ end of zImage
-		bl	cache_clean_flush
-
-		@ The PE/COFF loader might not have cleaned the code we are
-		@ running beyond the PoU, and so calling cache_off below from
-		@ inside the PE/COFF loader allocated region is unsafe unless
-		@ we explicitly clean it to the PoC.
-		adr	r0, call_cache_fn		@ region of code we will
-		adr	r1, 0f				@ run with MMU off
-		bl	cache_clean_flush
-		bl	cache_off
+		adr	r0, 0f			@ switch to our stack
+		ldr	sp, [r0]
+		add	sp, sp, r0
 
-		@ Set parameters for booting zImage according to boot protocol
-		@ put FDT address in r2, it was returned by efi_entry()
-		@ r1 is the machine type, and r0 needs to be 0
-		mov	r0, #0
-		mov	r1, #0xFFFFFFFF
-		mov	r2, r4
-		add	r7, r7, #(__efi_start - start)
-		mov	pc, r7				@ no mode switch
+		mov	r5, #0			@ appended DTB size
+		mov	r7, #0xFFFFFFFF		@ machine ID
+		b	wont_overwrite
 ENDPROC(efi_enter_kernel)
-0:
+0:		.long	.L_user_stack_end - .
 #endif
 
 		.align
diff --git a/drivers/firmware/efi/libstub/arm32-stub.c b/drivers/firmware/efi/libstub/arm32-stub.c
index 7826553af2ba..0050d811bf20 100644
--- a/drivers/firmware/efi/libstub/arm32-stub.c
+++ b/drivers/firmware/efi/libstub/arm32-stub.c
@@ -199,14 +199,8 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
 	unsigned long kernel_base;
 	efi_status_t status;
 
-	/*
-	 * Verify that the DRAM base address is compatible with the ARM
-	 * boot protocol, which determines the base of DRAM by masking
-	 * off the low 27 bits of the address at which the zImage is
-	 * loaded. These assumptions are made by the decompressor,
-	 * before any memory map is available.
-	 */
-	kernel_base = round_up(dram_base, SZ_128M);
+	/* use a 16 MiB aligned base for the decompressed kernel */
+	kernel_base = round_up(dram_base, SZ_16M) + TEXT_OFFSET;
 
 	/*
 	 * Note that some platforms (notably, the Raspberry Pi 2) put
@@ -215,41 +209,14 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
 	 * base of the kernel image is only partially used at the moment.
 	 * (Up to 5 pages are used for the swapper page tables)
 	 */
-	kernel_base += TEXT_OFFSET - 5 * PAGE_SIZE;
-
-	status = reserve_kernel_base(kernel_base, reserve_addr, reserve_size);
+	status = reserve_kernel_base(kernel_base - 5 * PAGE_SIZE, reserve_addr,
+				     reserve_size);
 	if (status != EFI_SUCCESS) {
 		pr_efi_err("Unable to allocate memory for uncompressed kernel.\n");
 		return status;
 	}
 
-	/*
-	 * Relocate the zImage, so that it appears in the lowest 128 MB
-	 * memory window.
-	 */
-	*image_addr = (unsigned long)image->image_base;
-	*image_size = image->image_size;
-	status = efi_relocate_kernel(image_addr, *image_size, *image_size,
-				     kernel_base + MAX_UNCOMP_KERNEL_SIZE, 0, 0);
-	if (status != EFI_SUCCESS) {
-		pr_efi_err("Failed to relocate kernel.\n");
-		efi_free(*reserve_size, *reserve_addr);
-		*reserve_size = 0;
-		return status;
-	}
-
-	/*
-	 * Check to see if we were able to allocate memory low enough
-	 * in memory. The kernel determines the base of DRAM from the
-	 * address at which the zImage is loaded.
-	 */
-	if (*image_addr + *image_size > dram_base + ZIMAGE_OFFSET_LIMIT) {
-		pr_efi_err("Failed to relocate kernel, no low memory available.\n");
-		efi_free(*reserve_size, *reserve_addr);
-		*reserve_size = 0;
-		efi_free(*image_size, *image_addr);
-		*image_size = 0;
-		return EFI_LOAD_ERROR;
-	}
+	*image_addr = kernel_base;
+	*image_size = 0;
 	return EFI_SUCCESS;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
