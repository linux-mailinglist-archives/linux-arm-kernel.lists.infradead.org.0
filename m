Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9E41A6942
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 17:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yBiE7b1g6D/5yXR+/R7Vn34KqaCRF3TL1yf7ne6+6lI=; b=kwfjvG6PuGS/xDlgGvTdkI1Sk7
	sEGCmevaLEfJ8dNQZBfZSApG5MUse5ueuF3D2NZz4jjjUqLpGxfAilTfvk1HuWQEmA5ZcrAKIdnnw
	qnt7YnLEgvXK3F9wCPAPcXXZovh+JFCOO+REPK4SZ936cEL6kHmGGmmJa9S/r12W9Mje28SKAGSgk
	HkJ3YQ0NnraEvwxSxLdxwr7SCMBM26gMA8KpbnU+X+R6frWf/O1TdteTmnd5/+qWtQJcU7dKL8i17
	tMKCZuHr6b/DNAThXcKj5rVw8YwLFL1rViq7YT0AgU3l6Rh/wg/8sRC4LBmDokH8w4ma6Fy8bQyoC
	P+rJilxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO1Ro-0007lI-41; Mon, 13 Apr 2020 15:56:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO1Qv-00079f-OS
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 15:55:39 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1A7CC20732;
 Mon, 13 Apr 2020 15:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586793337;
 bh=B9em0QnOW/ebLl4/EECoRXR8HxHZ72qj2Ekj5XeNjm4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fLRcaWxGyfbQUv2tVbENFl3XQX4K3W5uVaSQdhaH61Pg/wosJCN1yEidO+IH2J0Xn
 6bAT3f3ZPZKzKpmuskcjK8gXPJtZSLTMDBxTvBPGFaNBwz2kkfYAWEQOcBWogemMKH
 6typOrm7VmCUxALG3jUmm/5fLo7aADefJI1TX2kQ=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2 3/8] efi/libstub/arm64: replace 'preferred' offset with
 alignment check
Date: Mon, 13 Apr 2020 17:55:16 +0200
Message-Id: <20200413155521.24698-4-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200413155521.24698-1-ardb@kernel.org>
References: <20200413155521.24698-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_085537_947685_372D9689 
X-CRM114-Status: GOOD (  20.70  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, nivedita@alum.mit.edu,
 Jonathan.Cameron@huawei.com, will@kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The notion of a 'preferred' load offset for the kernel dates back to the
times when the kernel's primary mapping overlapped with the linear region,
and memory below it could not be used at all.

Today, the arm64 kernel does not really care where it is loaded in physical
memory, as long as the alignment requirements are met, and so there is no
point in unconditionally moving the kernel to a new location in memory at
boot. Instead, we can
- check for a KASLR seed, and randomly reallocate the kernel if one is
  provided
- otherwise, check whether the alignment requirements are met for the
  current placement of the kernel, and just run it in place if they are
- finally, do an ordinary page allocation and reallocate the kernel to a
  suitably aligned buffer anywhere in memory.

By the same reasoning, there is no need to take TEXT_OFFSET into account
if it is a round multiple of the minimum alignment, which is the usual
case for relocatable kernels with TEXT_OFFSET randomization disabled.
Otherwise, it suffices to use the relative misaligment of TEXT_OFFSET
when reallocating the kernel.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/arm64-stub.c | 62 ++++++++------------
 1 file changed, 25 insertions(+), 37 deletions(-)

diff --git a/drivers/firmware/efi/libstub/arm64-stub.c b/drivers/firmware/efi/libstub/arm64-stub.c
index fc9f8ab533a7..cfd535c13242 100644
--- a/drivers/firmware/efi/libstub/arm64-stub.c
+++ b/drivers/firmware/efi/libstub/arm64-stub.c
@@ -34,6 +34,15 @@ efi_status_t check_platform_features(void)
 	return EFI_SUCCESS;
 }
 
+/*
+ * Relocatable kernels can fix up the misalignment with respect to
+ * MIN_KIMG_ALIGN, so they only require a minimum alignment of EFI_KIMG_ALIGN
+ * (which accounts for the alignment of statically allocated objects such as
+ * the swapper stack.)
+ */
+static const u64 min_kimg_align = IS_ENABLED(CONFIG_RELOCATABLE) ? EFI_KIMG_ALIGN
+								 : MIN_KIMG_ALIGN;
+
 efi_status_t handle_kernel_image(unsigned long *image_addr,
 				 unsigned long *image_size,
 				 unsigned long *reserve_addr,
@@ -43,7 +52,6 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
 {
 	efi_status_t status;
 	unsigned long kernel_size, kernel_memsize = 0;
-	unsigned long preferred_offset;
 	u64 phys_seed = 0;
 
 	if (IS_ENABLED(CONFIG_RANDOMIZE_BASE)) {
@@ -61,14 +69,8 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
 		}
 	}
 
-	/*
-	 * The preferred offset of the kernel Image is TEXT_OFFSET bytes beyond
-	 * a 2 MB aligned base, which itself may be lower than dram_base, as
-	 * long as the resulting offset equals or exceeds it.
-	 */
-	preferred_offset = round_down(dram_base, MIN_KIMG_ALIGN) + TEXT_OFFSET;
-	if (preferred_offset < dram_base)
-		preferred_offset += MIN_KIMG_ALIGN;
+	if (image->image_base != _text)
+		pr_efi_err("FIRMWARE BUG: efi_loaded_image_t::image_base has bogus value\n");
 
 	kernel_size = _edata - _text;
 	kernel_memsize = kernel_size + (_end - _edata);
@@ -103,46 +105,32 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
 
 		*image_addr = *reserve_addr + offset;
 	} else {
-		/*
-		 * Else, try a straight allocation at the preferred offset.
-		 * This will work around the issue where, if dram_base == 0x0,
-		 * efi_low_alloc() refuses to allocate at 0x0 (to prevent the
-		 * address of the allocation to be mistaken for a FAIL return
-		 * value or a NULL pointer). It will also ensure that, on
-		 * platforms where the [dram_base, dram_base + TEXT_OFFSET)
-		 * interval is partially occupied by the firmware (like on APM
-		 * Mustang), we can still place the kernel at the address
-		 * 'dram_base + TEXT_OFFSET'.
-		 */
-		*image_addr = (unsigned long)_text;
-		if (*image_addr == preferred_offset)
-			return EFI_SUCCESS;
-
-		*image_addr = *reserve_addr = preferred_offset;
-		*reserve_size = round_up(kernel_memsize, EFI_ALLOC_ALIGN);
-
-		status = efi_bs_call(allocate_pages, EFI_ALLOCATE_ADDRESS,
-				     EFI_LOADER_DATA,
-				     *reserve_size / EFI_PAGE_SIZE,
-				     (efi_physical_addr_t *)reserve_addr);
+		status = EFI_OUT_OF_RESOURCES;
 	}
 
 	if (status != EFI_SUCCESS) {
-		*reserve_size = kernel_memsize + TEXT_OFFSET;
+		if (IS_ALIGNED((u64)_text - TEXT_OFFSET, min_kimg_align)) {
+			/*
+			 * Just execute from wherever we were loaded by the
+			 * UEFI PE/COFF loader if the alignment is suitable.
+			 */
+			*image_addr = (u64)_text;
+			*reserve_size = 0;
+			return EFI_SUCCESS;
+		}
+
+		*reserve_size = kernel_memsize + TEXT_OFFSET % min_kimg_align;
 		status = efi_low_alloc(*reserve_size,
-				       MIN_KIMG_ALIGN, reserve_addr);
+				       min_kimg_align, reserve_addr);
 
 		if (status != EFI_SUCCESS) {
 			pr_efi_err("Failed to relocate kernel\n");
 			*reserve_size = 0;
 			return status;
 		}
-		*image_addr = *reserve_addr + TEXT_OFFSET;
+		*image_addr = *reserve_addr + TEXT_OFFSET % min_kimg_align;
 	}
 
-	if (image->image_base != _text)
-		pr_efi_err("FIRMWARE BUG: efi_loaded_image_t::image_base has bogus value\n");
-
 	memcpy((void *)*image_addr, _text, kernel_size);
 
 	return EFI_SUCCESS;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
