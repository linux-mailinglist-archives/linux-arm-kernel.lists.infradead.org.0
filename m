Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45ACF1A6943
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 17:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Dn/EXANPaJ5THnrp79KywbeOZb0HnGCLSS3Q1EZurPA=; b=MBhxc3E0BcEoT8QbYrie2ShxTQ
	x4WT1nQsEbeO0R456zEVhpnRE+/6E9tNOFDU45siCzelbrrbxdazFi031EA/wTYfWzG/C2saoaig6
	CFOpqZ44gS3Oe1JiLUwOT0ql+hGnchPUXxvAvOHJbluHiKLoy1I8H3pVsZF3lLXtWg6kJUlomslwZ
	xrKK2sqQ+J6DROx5EYXeqNh/enFjFT8synTkZL8jp5O++nl5qfLwBXV0fqZgO8QhzQYG9kEW2IXge
	9mppSisdBzOvGG4kwO6QYzbQFs0AvtNcP08cs+f9VlAPqv1jEaxNbTuG8hzCiv4aMZh6m6jUPkChe
	NR9oe9ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO1S1-00080e-Il; Mon, 13 Apr 2020 15:56:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO1Qy-0007Br-3D
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 15:55:41 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A30C820656;
 Mon, 13 Apr 2020 15:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586793339;
 bh=VaI+rKotkHbmEOBPfdJZ7MBqgoLLXlfnO+NwSu9169I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CYa+62IFPe+5jhDiE0ClLd93M9boPUkagr66R+g0/apFWpnNvsSwLYm/G+DsJ9+JM
 8fLRcJ8K7RfMJYIBj3b0F2ilO+qO3nfqrFksOUaw8I2Ez8s4BYaGF3sLwcTPdl1ZXJ
 GNFhkMTVJheVx6HRogegHJIToS8wi4YF9kQ7Zaq8=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2 4/8] efi/libstub/arm64: simplify randomized loading of
 kernel image
Date: Mon, 13 Apr 2020 17:55:17 +0200
Message-Id: <20200413155521.24698-5-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200413155521.24698-1-ardb@kernel.org>
References: <20200413155521.24698-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_085540_278823_E0C6CAE0 
X-CRM114-Status: GOOD (  14.66  )
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

The KASLR code path in the arm64 version of the EFI stub incorporates
some overly complicated logic to randomly allocate a region of the right
alignment: there is no need to randomize the placement of the kernel
modulo 2 MiB separately from the placement of the 2 MiB aligned allocation
itself - we can simply follow the same logic used by the non-randomized
placement, which is to allocate at the correct alignment, and only take
TEXT_OFFSET into account if it is not a round multiple of the alignment.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/arm64-stub.c | 32 +++-----------------
 1 file changed, 5 insertions(+), 27 deletions(-)

diff --git a/drivers/firmware/efi/libstub/arm64-stub.c b/drivers/firmware/efi/libstub/arm64-stub.c
index cfd535c13242..6fc3bd9a56db 100644
--- a/drivers/firmware/efi/libstub/arm64-stub.c
+++ b/drivers/firmware/efi/libstub/arm64-stub.c
@@ -52,7 +52,7 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
 {
 	efi_status_t status;
 	unsigned long kernel_size, kernel_memsize = 0;
-	u64 phys_seed = 0;
+	u32 phys_seed = 0;
 
 	if (IS_ENABLED(CONFIG_RANDOMIZE_BASE)) {
 		if (!nokaslr()) {
@@ -74,36 +74,15 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
 
 	kernel_size = _edata - _text;
 	kernel_memsize = kernel_size + (_end - _edata);
+	*reserve_size = kernel_memsize + TEXT_OFFSET % min_kimg_align;
 
 	if (IS_ENABLED(CONFIG_RANDOMIZE_BASE) && phys_seed != 0) {
-		/*
-		 * Produce a displacement in the interval [0, MIN_KIMG_ALIGN)
-		 * that doesn't violate this kernel's de-facto alignment
-		 * constraints.
-		 */
-		u32 mask = (MIN_KIMG_ALIGN - 1) & ~(EFI_KIMG_ALIGN - 1);
-		u32 offset = (phys_seed >> 32) & mask;
-
-		/*
-		 * With CONFIG_RANDOMIZE_TEXT_OFFSET=y, TEXT_OFFSET may not
-		 * be a multiple of EFI_KIMG_ALIGN, and we must ensure that
-		 * we preserve the misalignment of 'offset' relative to
-		 * EFI_KIMG_ALIGN so that statically allocated objects whose
-		 * alignment exceeds PAGE_SIZE appear correctly aligned in
-		 * memory.
-		 */
-		offset |= TEXT_OFFSET % EFI_KIMG_ALIGN;
-
 		/*
 		 * If KASLR is enabled, and we have some randomness available,
 		 * locate the kernel at a randomized offset in physical memory.
 		 */
-		*reserve_size = kernel_memsize + offset;
-		status = efi_random_alloc(*reserve_size,
-					  MIN_KIMG_ALIGN, reserve_addr,
-					  (u32)phys_seed);
-
-		*image_addr = *reserve_addr + offset;
+		status = efi_random_alloc(*reserve_size, min_kimg_align,
+					  reserve_addr, phys_seed);
 	} else {
 		status = EFI_OUT_OF_RESOURCES;
 	}
@@ -119,7 +98,6 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
 			return EFI_SUCCESS;
 		}
 
-		*reserve_size = kernel_memsize + TEXT_OFFSET % min_kimg_align;
 		status = efi_low_alloc(*reserve_size,
 				       min_kimg_align, reserve_addr);
 
@@ -128,9 +106,9 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
 			*reserve_size = 0;
 			return status;
 		}
-		*image_addr = *reserve_addr + TEXT_OFFSET % min_kimg_align;
 	}
 
+	*image_addr = *reserve_addr + TEXT_OFFSET % min_kimg_align;
 	memcpy((void *)*image_addr, _text, kernel_size);
 
 	return EFI_SUCCESS;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
