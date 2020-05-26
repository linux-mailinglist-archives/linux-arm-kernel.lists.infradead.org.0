Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D45291A6947
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 17:57:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZAgBn/cWPRDe6YA7MpGYYan1soAnmM7GPub+bRZxt94=; b=WadMFwA5+NmFRwAW3EHS8JVKwz
	lsDrhErbc4KuuB7rh62r+Xk9KXEbmKs26wSNjdMqZs+7hmjJShYiO23yI3Pg4R73nrVha3UhNls3A
	rJpcTA0pctUu3HSGij97vZI+/Vo9oMMF9MzmIY8kdsWLzVWYQsP16zAIFklVns0bG4bmQ90q4K7sy
	yWMzgnIBTm2QlRT9VZHVniXtclTtYyacOt4atFsQ1rA1ILixJpEZPFWBprpdAtj+8MbWjjF4ovALn
	jB6BAwquM4o8FyJjF0lPrLgMaCGRtoCAPeRAUjtps7AHEFV5kmvFjeC1xEhCLF1gq73TdMSXqQDJv
	L/Go93gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO1Sv-0000Tl-Mz; Mon, 13 Apr 2020 15:57:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO1R7-0007L1-6O
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 15:55:53 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BF2A420656;
 Mon, 13 Apr 2020 15:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586793348;
 bh=eonJNO62odtacTFyqTyC6HrMo8PZy9uC3vAhpf4OgOY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=giR6Tnw9LSq9bhIZu+dTTVTeRMrTpIX3CIXW01VH79B/0isCYFOzIJHKgPLcnPNIK
 j/0k8s9z6XNttdABjbRAaeFCWFJUGTpCp/xKI3DHyReLs/axYeUknBcXtlbnOcdSKl
 QlW6JQeDhRoSuaV20GthhSJ1jkXj1/h98PO2iYks=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2 8/8] efi/libstub: move efi_relocate_kernel() into separate
 source file
Date: Mon, 13 Apr 2020 17:55:21 +0200
Message-Id: <20200413155521.24698-9-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200413155521.24698-1-ardb@kernel.org>
References: <20200413155521.24698-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_085549_384353_5DD43244 
X-CRM114-Status: GOOD (  24.52  )
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

Move efi_relocate_kernel() into a separate source file, so that it
only gets pulled into builds for architectures that use it. Since
efi_relocate_kernel() is the only user of efi_low_alloc(), let's
move that over as well.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/Makefile   |   2 +-
 drivers/firmware/efi/libstub/efistub.h  |  15 --
 drivers/firmware/efi/libstub/mem.c      | 168 -------------------
 drivers/firmware/efi/libstub/relocate.c | 174 ++++++++++++++++++++
 4 files changed, 175 insertions(+), 184 deletions(-)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 1a09b9445394..2dbe4394f818 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -43,7 +43,7 @@ KCOV_INSTRUMENT			:= n
 lib-y				:= efi-stub-helper.o gop.o secureboot.o tpm.o \
 				   file.o mem.o random.o randomalloc.o pci.o \
 				   skip_spaces.o lib-cmdline.o lib-ctype.o \
-				   alignedmem.o
+				   alignedmem.o relocate.o
 
 # include the stub's generic dependencies from lib/ when building for ARM/arm64
 arm-deps-y := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c fdt_empty_tree.c fdt_sw.c
diff --git a/drivers/firmware/efi/libstub/efistub.h b/drivers/firmware/efi/libstub/efistub.h
index 5dcfadcf2bc1..eafb409278fa 100644
--- a/drivers/firmware/efi/libstub/efistub.h
+++ b/drivers/firmware/efi/libstub/efistub.h
@@ -623,21 +623,6 @@ char *efi_convert_cmdline(efi_loaded_image_t *image, int *cmd_line_len,
 
 efi_status_t efi_get_memory_map(struct efi_boot_memmap *map);
 
-efi_status_t efi_low_alloc_above(unsigned long size, unsigned long align,
-				 unsigned long *addr, unsigned long min);
-
-static inline
-efi_status_t efi_low_alloc(unsigned long size, unsigned long align,
-			   unsigned long *addr)
-{
-	/*
-	 * Don't allocate at 0x0. It will confuse code that
-	 * checks pointers against NULL. Skip the first 8
-	 * bytes so we start at a nice even number.
-	 */
-	return efi_low_alloc_above(size, align, addr, 0x8);
-}
-
 efi_status_t efi_allocate_pages(unsigned long size, unsigned long *addr,
 				unsigned long max);
 
diff --git a/drivers/firmware/efi/libstub/mem.c b/drivers/firmware/efi/libstub/mem.c
index 0020b0fa9587..6e0ee6b3d897 100644
--- a/drivers/firmware/efi/libstub/mem.c
+++ b/drivers/firmware/efi/libstub/mem.c
@@ -111,96 +111,6 @@ efi_status_t efi_allocate_pages(unsigned long size, unsigned long *addr,
 	return EFI_SUCCESS;
 }
 
-/**
- * efi_low_alloc_above() - allocate pages at or above given address
- * @size:	size of the memory area to allocate
- * @align:	minimum alignment of the allocated memory area. It should
- *		a power of two.
- * @addr:	on exit the address of the allocated memory
- * @min:	minimum address to used for the memory allocation
- *
- * Allocate at the lowest possible address that is not below @min as
- * EFI_LOADER_DATA. The allocated pages are aligned according to @align but at
- * least EFI_ALLOC_ALIGN. The first allocated page will not below the address
- * given by @min.
- *
- * Return:	status code
- */
-efi_status_t efi_low_alloc_above(unsigned long size, unsigned long align,
-				 unsigned long *addr, unsigned long min)
-{
-	unsigned long map_size, desc_size, buff_size;
-	efi_memory_desc_t *map;
-	efi_status_t status;
-	unsigned long nr_pages;
-	int i;
-	struct efi_boot_memmap boot_map;
-
-	boot_map.map		= &map;
-	boot_map.map_size	= &map_size;
-	boot_map.desc_size	= &desc_size;
-	boot_map.desc_ver	= NULL;
-	boot_map.key_ptr	= NULL;
-	boot_map.buff_size	= &buff_size;
-
-	status = efi_get_memory_map(&boot_map);
-	if (status != EFI_SUCCESS)
-		goto fail;
-
-	/*
-	 * Enforce minimum alignment that EFI or Linux requires when
-	 * requesting a specific address.  We are doing page-based (or
-	 * larger) allocations, and both the address and size must meet
-	 * alignment constraints.
-	 */
-	if (align < EFI_ALLOC_ALIGN)
-		align = EFI_ALLOC_ALIGN;
-
-	size = round_up(size, EFI_ALLOC_ALIGN);
-	nr_pages = size / EFI_PAGE_SIZE;
-	for (i = 0; i < map_size / desc_size; i++) {
-		efi_memory_desc_t *desc;
-		unsigned long m = (unsigned long)map;
-		u64 start, end;
-
-		desc = efi_early_memdesc_ptr(m, desc_size, i);
-
-		if (desc->type != EFI_CONVENTIONAL_MEMORY)
-			continue;
-
-		if (efi_soft_reserve_enabled() &&
-		    (desc->attribute & EFI_MEMORY_SP))
-			continue;
-
-		if (desc->num_pages < nr_pages)
-			continue;
-
-		start = desc->phys_addr;
-		end = start + desc->num_pages * EFI_PAGE_SIZE;
-
-		if (start < min)
-			start = min;
-
-		start = round_up(start, align);
-		if ((start + size) > end)
-			continue;
-
-		status = efi_bs_call(allocate_pages, EFI_ALLOCATE_ADDRESS,
-				     EFI_LOADER_DATA, nr_pages, &start);
-		if (status == EFI_SUCCESS) {
-			*addr = start;
-			break;
-		}
-	}
-
-	if (i == map_size / desc_size)
-		status = EFI_NOT_FOUND;
-
-	efi_bs_call(free_pool, map);
-fail:
-	return status;
-}
-
 /**
  * efi_free() - free memory pages
  * @size:	size of the memory area to free in bytes
@@ -222,81 +132,3 @@ void efi_free(unsigned long size, unsigned long addr)
 	nr_pages = round_up(size, EFI_ALLOC_ALIGN) / EFI_PAGE_SIZE;
 	efi_bs_call(free_pages, addr, nr_pages);
 }
-
-/**
- * efi_relocate_kernel() - copy memory area
- * @image_addr:		pointer to address of memory area to copy
- * @image_size:		size of memory area to copy
- * @alloc_size:		minimum size of memory to allocate, must be greater or
- *			equal to image_size
- * @preferred_addr:	preferred target address
- * @alignment:		minimum alignment of the allocated memory area. It
- *			should be a power of two.
- * @min_addr:		minimum target address
- *
- * Copy a memory area to a newly allocated memory area aligned according
- * to @alignment but at least EFI_ALLOC_ALIGN. If the preferred address
- * is not available, the allocated address will not be below @min_addr.
- * On exit, @image_addr is updated to the target copy address that was used.
- *
- * This function is used to copy the Linux kernel verbatim. It does not apply
- * any relocation changes.
- *
- * Return:		status code
- */
-efi_status_t efi_relocate_kernel(unsigned long *image_addr,
-				 unsigned long image_size,
-				 unsigned long alloc_size,
-				 unsigned long preferred_addr,
-				 unsigned long alignment,
-				 unsigned long min_addr)
-{
-	unsigned long cur_image_addr;
-	unsigned long new_addr = 0;
-	efi_status_t status;
-	unsigned long nr_pages;
-	efi_physical_addr_t efi_addr = preferred_addr;
-
-	if (!image_addr || !image_size || !alloc_size)
-		return EFI_INVALID_PARAMETER;
-	if (alloc_size < image_size)
-		return EFI_INVALID_PARAMETER;
-
-	cur_image_addr = *image_addr;
-
-	/*
-	 * The EFI firmware loader could have placed the kernel image
-	 * anywhere in memory, but the kernel has restrictions on the
-	 * max physical address it can run at.  Some architectures
-	 * also have a prefered address, so first try to relocate
-	 * to the preferred address.  If that fails, allocate as low
-	 * as possible while respecting the required alignment.
-	 */
-	nr_pages = round_up(alloc_size, EFI_ALLOC_ALIGN) / EFI_PAGE_SIZE;
-	status = efi_bs_call(allocate_pages, EFI_ALLOCATE_ADDRESS,
-			     EFI_LOADER_DATA, nr_pages, &efi_addr);
-	new_addr = efi_addr;
-	/*
-	 * If preferred address allocation failed allocate as low as
-	 * possible.
-	 */
-	if (status != EFI_SUCCESS) {
-		status = efi_low_alloc_above(alloc_size, alignment, &new_addr,
-					     min_addr);
-	}
-	if (status != EFI_SUCCESS) {
-		pr_efi_err("Failed to allocate usable memory for kernel.\n");
-		return status;
-	}
-
-	/*
-	 * We know source/dest won't overlap since both memory ranges
-	 * have been allocated by UEFI, so we can safely use memcpy.
-	 */
-	memcpy((void *)new_addr, (void *)cur_image_addr, image_size);
-
-	/* Return the new address of the relocated image. */
-	*image_addr = new_addr;
-
-	return status;
-}
diff --git a/drivers/firmware/efi/libstub/relocate.c b/drivers/firmware/efi/libstub/relocate.c
new file mode 100644
index 000000000000..1507d3c82884
--- /dev/null
+++ b/drivers/firmware/efi/libstub/relocate.c
@@ -0,0 +1,174 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/efi.h>
+#include <asm/efi.h>
+
+#include "efistub.h"
+
+/**
+ * efi_low_alloc_above() - allocate pages at or above given address
+ * @size:	size of the memory area to allocate
+ * @align:	minimum alignment of the allocated memory area. It should
+ *		a power of two.
+ * @addr:	on exit the address of the allocated memory
+ * @min:	minimum address to used for the memory allocation
+ *
+ * Allocate at the lowest possible address that is not below @min as
+ * EFI_LOADER_DATA. The allocated pages are aligned according to @align but at
+ * least EFI_ALLOC_ALIGN. The first allocated page will not below the address
+ * given by @min.
+ *
+ * Return:	status code
+ */
+static efi_status_t efi_low_alloc_above(unsigned long size, unsigned long align,
+					unsigned long *addr, unsigned long min)
+{
+	unsigned long map_size, desc_size, buff_size;
+	efi_memory_desc_t *map;
+	efi_status_t status;
+	unsigned long nr_pages;
+	int i;
+	struct efi_boot_memmap boot_map;
+
+	boot_map.map		= &map;
+	boot_map.map_size	= &map_size;
+	boot_map.desc_size	= &desc_size;
+	boot_map.desc_ver	= NULL;
+	boot_map.key_ptr	= NULL;
+	boot_map.buff_size	= &buff_size;
+
+	status = efi_get_memory_map(&boot_map);
+	if (status != EFI_SUCCESS)
+		goto fail;
+
+	/*
+	 * Enforce minimum alignment that EFI or Linux requires when
+	 * requesting a specific address.  We are doing page-based (or
+	 * larger) allocations, and both the address and size must meet
+	 * alignment constraints.
+	 */
+	if (align < EFI_ALLOC_ALIGN)
+		align = EFI_ALLOC_ALIGN;
+
+	size = round_up(size, EFI_ALLOC_ALIGN);
+	nr_pages = size / EFI_PAGE_SIZE;
+	for (i = 0; i < map_size / desc_size; i++) {
+		efi_memory_desc_t *desc;
+		unsigned long m = (unsigned long)map;
+		u64 start, end;
+
+		desc = efi_early_memdesc_ptr(m, desc_size, i);
+
+		if (desc->type != EFI_CONVENTIONAL_MEMORY)
+			continue;
+
+		if (efi_soft_reserve_enabled() &&
+		    (desc->attribute & EFI_MEMORY_SP))
+			continue;
+
+		if (desc->num_pages < nr_pages)
+			continue;
+
+		start = desc->phys_addr;
+		end = start + desc->num_pages * EFI_PAGE_SIZE;
+
+		if (start < min)
+			start = min;
+
+		start = round_up(start, align);
+		if ((start + size) > end)
+			continue;
+
+		status = efi_bs_call(allocate_pages, EFI_ALLOCATE_ADDRESS,
+				     EFI_LOADER_DATA, nr_pages, &start);
+		if (status == EFI_SUCCESS) {
+			*addr = start;
+			break;
+		}
+	}
+
+	if (i == map_size / desc_size)
+		status = EFI_NOT_FOUND;
+
+	efi_bs_call(free_pool, map);
+fail:
+	return status;
+}
+
+/**
+ * efi_relocate_kernel() - copy memory area
+ * @image_addr:		pointer to address of memory area to copy
+ * @image_size:		size of memory area to copy
+ * @alloc_size:		minimum size of memory to allocate, must be greater or
+ *			equal to image_size
+ * @preferred_addr:	preferred target address
+ * @alignment:		minimum alignment of the allocated memory area. It
+ *			should be a power of two.
+ * @min_addr:		minimum target address
+ *
+ * Copy a memory area to a newly allocated memory area aligned according
+ * to @alignment but at least EFI_ALLOC_ALIGN. If the preferred address
+ * is not available, the allocated address will not be below @min_addr.
+ * On exit, @image_addr is updated to the target copy address that was used.
+ *
+ * This function is used to copy the Linux kernel verbatim. It does not apply
+ * any relocation changes.
+ *
+ * Return:		status code
+ */
+efi_status_t efi_relocate_kernel(unsigned long *image_addr,
+				 unsigned long image_size,
+				 unsigned long alloc_size,
+				 unsigned long preferred_addr,
+				 unsigned long alignment,
+				 unsigned long min_addr)
+{
+	unsigned long cur_image_addr;
+	unsigned long new_addr = 0;
+	efi_status_t status;
+	unsigned long nr_pages;
+	efi_physical_addr_t efi_addr = preferred_addr;
+
+	if (!image_addr || !image_size || !alloc_size)
+		return EFI_INVALID_PARAMETER;
+	if (alloc_size < image_size)
+		return EFI_INVALID_PARAMETER;
+
+	cur_image_addr = *image_addr;
+
+	/*
+	 * The EFI firmware loader could have placed the kernel image
+	 * anywhere in memory, but the kernel has restrictions on the
+	 * max physical address it can run at.  Some architectures
+	 * also have a prefered address, so first try to relocate
+	 * to the preferred address.  If that fails, allocate as low
+	 * as possible while respecting the required alignment.
+	 */
+	nr_pages = round_up(alloc_size, EFI_ALLOC_ALIGN) / EFI_PAGE_SIZE;
+	status = efi_bs_call(allocate_pages, EFI_ALLOCATE_ADDRESS,
+			     EFI_LOADER_DATA, nr_pages, &efi_addr);
+	new_addr = efi_addr;
+	/*
+	 * If preferred address allocation failed allocate as low as
+	 * possible.
+	 */
+	if (status != EFI_SUCCESS) {
+		status = efi_low_alloc_above(alloc_size, alignment, &new_addr,
+					     min_addr);
+	}
+	if (status != EFI_SUCCESS) {
+		pr_efi_err("Failed to allocate usable memory for kernel.\n");
+		return status;
+	}
+
+	/*
+	 * We know source/dest won't overlap since both memory ranges
+	 * have been allocated by UEFI, so we can safely use memcpy.
+	 */
+	memcpy((void *)new_addr, (void *)cur_image_addr, image_size);
+
+	/* Return the new address of the relocated image. */
+	*image_addr = new_addr;
+
+	return status;
+}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
