Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 970471A6945
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 17:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Oddnxd6B127Gd6a2W+isP9zvbbcA3z+6kp3RNXolynk=; b=raQr0yleAyKV8v5SoxFrh6Arl9
	vlssVU/FfiIhqkhho3HZ0XeDJlQw9rIV+RbpUzmeOW96Qw0cSpHo6rUjgiRWKnJuIX4VLndS6aTsk
	d8yit24OkC/Nrth1TnPtTRaqmR8/pZb7XUh/Zz/LfbMahvcuI3tKyvnOCepncAXTnQl1pRLpUHx+d
	9bVYIHfOCPBqV3BpWnYEIfBTFLpJlnqBQrDwzBPr9UCQairFPpKQ607iWpiDPtcQod/cNJ9MtV0Fy
	egR/4yLqNTLGsAqL9/hwRJkpdcgOX9IG3lL3u45tnYsmmSqBppIXx5qn3Xg2VUzSboetc0n/LQZe/
	EFz0XhHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO1SW-0008Sl-IE; Mon, 13 Apr 2020 15:57:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO1R3-0007Gm-8n
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 15:55:47 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5337120732;
 Mon, 13 Apr 2020 15:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586793344;
 bh=QJx5bZ/r+EHM7IX8iW+NXziBZcauihD5KOeYUipllUo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=grZD0rDD/H4cc30MC2tMqWimYiRD2bHPiJXZC6Qv5+IOoIwEk63/fCEWYm8HJh9aV
 rquevc/gx9qC5OgBB9rbhZgfhtF/jJ7Zy60gSpFNQnMgW7AR9e5O7uGzs4Bmk5/DOP
 I7J/ZccqWB+YDqIyJclEMGh4VD2YR8G5Rc+ePcgQ=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2 6/8] efi/libstub: add API function to allocate aligned
 memory
Date: Mon, 13 Apr 2020 17:55:19 +0200
Message-Id: <20200413155521.24698-7-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200413155521.24698-1-ardb@kernel.org>
References: <20200413155521.24698-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_085545_442477_04E3FB51 
X-CRM114-Status: GOOD (  19.36  )
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

Break out the code to create an aligned page allocation from mem.c
and move it into a function efi_allocate_pages_aligned() in alignedmem.c.
Update efi_allocate_pages() to invoke it unless the minimum alignment
equals the EFI page size (4 KB), in which case the ordinary page
allocator is sufficient. This way, efi_allocate_pages_aligned() will
only be pulled into the build if it is actually being used (which will
be on arm64 only in the immediate future)

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/Makefile     |  3 +-
 drivers/firmware/efi/libstub/alignedmem.c | 57 ++++++++++++++++++++
 drivers/firmware/efi/libstub/efistub.h    |  3 ++
 drivers/firmware/efi/libstub/mem.c        | 25 ++++-----
 4 files changed, 71 insertions(+), 17 deletions(-)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 094eabdecfe6..1a09b9445394 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -42,7 +42,8 @@ KCOV_INSTRUMENT			:= n
 
 lib-y				:= efi-stub-helper.o gop.o secureboot.o tpm.o \
 				   file.o mem.o random.o randomalloc.o pci.o \
-				   skip_spaces.o lib-cmdline.o lib-ctype.o
+				   skip_spaces.o lib-cmdline.o lib-ctype.o \
+				   alignedmem.o
 
 # include the stub's generic dependencies from lib/ when building for ARM/arm64
 arm-deps-y := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c fdt_empty_tree.c fdt_sw.c
diff --git a/drivers/firmware/efi/libstub/alignedmem.c b/drivers/firmware/efi/libstub/alignedmem.c
new file mode 100644
index 000000000000..cc89c4d6196f
--- /dev/null
+++ b/drivers/firmware/efi/libstub/alignedmem.c
@@ -0,0 +1,57 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/efi.h>
+#include <asm/efi.h>
+
+#include "efistub.h"
+
+/**
+ * efi_allocate_pages_aligned() - Allocate memory pages
+ * @size:	minimum number of bytes to allocate
+ * @addr:	On return the address of the first allocated page. The first
+ *		allocated page has alignment EFI_ALLOC_ALIGN which is an
+ *		architecture dependent multiple of the page size.
+ * @max:	the address that the last allocated memory page shall not
+ *		exceed
+ * @align:	minimum alignment of the base of the allocation
+ *
+ * Allocate pages as EFI_LOADER_DATA. The allocated pages are aligned according
+ * to @align, which should be >= EFI_ALLOC_ALIGN. The last allocated page will
+ * not exceed the address given by @max.
+ *
+ * Return:	status code
+ */
+efi_status_t efi_allocate_pages_aligned(unsigned long size, unsigned long *addr,
+					unsigned long max, unsigned long align)
+{
+	efi_physical_addr_t alloc_addr;
+	efi_status_t status;
+	int slack;
+
+	if (align < EFI_ALLOC_ALIGN)
+		align = EFI_ALLOC_ALIGN;
+
+	alloc_addr = ALIGN_DOWN(max + 1, align) - 1;
+	size = round_up(size, EFI_ALLOC_ALIGN);
+	slack = align / EFI_PAGE_SIZE - 1;
+
+	status = efi_bs_call(allocate_pages, EFI_ALLOCATE_MAX_ADDRESS,
+			     EFI_LOADER_DATA, size / EFI_PAGE_SIZE + slack,
+			     &alloc_addr);
+	if (status != EFI_SUCCESS)
+		return status;
+
+	*addr = ALIGN((unsigned long)alloc_addr, align);
+
+	if (slack > 0) {
+		int l = (alloc_addr % align) / EFI_PAGE_SIZE;
+
+		if (l) {
+			efi_bs_call(free_pages, alloc_addr, slack - l + 1);
+			slack = l - 1;
+		}
+		if (slack)
+			efi_bs_call(free_pages, *addr + size, slack);
+	}
+	return EFI_SUCCESS;
+}
diff --git a/drivers/firmware/efi/libstub/efistub.h b/drivers/firmware/efi/libstub/efistub.h
index 4844c3bd40df..5dcfadcf2bc1 100644
--- a/drivers/firmware/efi/libstub/efistub.h
+++ b/drivers/firmware/efi/libstub/efistub.h
@@ -641,6 +641,9 @@ efi_status_t efi_low_alloc(unsigned long size, unsigned long align,
 efi_status_t efi_allocate_pages(unsigned long size, unsigned long *addr,
 				unsigned long max);
 
+efi_status_t efi_allocate_pages_aligned(unsigned long size, unsigned long *addr,
+					unsigned long max, unsigned long align);
+
 efi_status_t efi_relocate_kernel(unsigned long *image_addr,
 				 unsigned long image_size,
 				 unsigned long alloc_size,
diff --git a/drivers/firmware/efi/libstub/mem.c b/drivers/firmware/efi/libstub/mem.c
index 869a79c8946f..0020b0fa9587 100644
--- a/drivers/firmware/efi/libstub/mem.c
+++ b/drivers/firmware/efi/libstub/mem.c
@@ -93,31 +93,24 @@ efi_status_t efi_get_memory_map(struct efi_boot_memmap *map)
 efi_status_t efi_allocate_pages(unsigned long size, unsigned long *addr,
 				unsigned long max)
 {
-	efi_physical_addr_t alloc_addr = ALIGN_DOWN(max + 1, EFI_ALLOC_ALIGN) - 1;
-	int slack = EFI_ALLOC_ALIGN / EFI_PAGE_SIZE - 1;
+	efi_physical_addr_t alloc_addr;
 	efi_status_t status;
 
-	size = round_up(size, EFI_ALLOC_ALIGN);
+	if (EFI_ALLOC_ALIGN > EFI_PAGE_SIZE)
+		return efi_allocate_pages_aligned(size, addr, max,
+						  EFI_ALLOC_ALIGN);
+
+	alloc_addr = ALIGN_DOWN(max + 1, EFI_ALLOC_ALIGN) - 1;
 	status = efi_bs_call(allocate_pages, EFI_ALLOCATE_MAX_ADDRESS,
-			     EFI_LOADER_DATA, size / EFI_PAGE_SIZE + slack,
+			     EFI_LOADER_DATA, DIV_ROUND_UP(size, EFI_PAGE_SIZE),
 			     &alloc_addr);
 	if (status != EFI_SUCCESS)
 		return status;
 
-	*addr = ALIGN((unsigned long)alloc_addr, EFI_ALLOC_ALIGN);
-
-	if (slack > 0) {
-		int l = (alloc_addr % EFI_ALLOC_ALIGN) / EFI_PAGE_SIZE;
-
-		if (l) {
-			efi_bs_call(free_pages, alloc_addr, slack - l + 1);
-			slack = l - 1;
-		}
-		if (slack)
-			efi_bs_call(free_pages, *addr + size, slack);
-	}
+	*addr = alloc_addr;
 	return EFI_SUCCESS;
 }
+
 /**
  * efi_low_alloc_above() - allocate pages at or above given address
  * @size:	size of the memory area to allocate
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
