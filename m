Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0449A10FD64
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:10:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vwMVHxpWBhbHxTW/VLUybFjDAsUtXHf3pWC++YynVzU=; b=ECRfa3yKkaLfOsaXysqVx5ZPBu
	55cDGQXjLTb4lDBG53iK/+u4zh8nJdFHsDXwr0PXgzF/XrG7/BEnHyp3Kj4hoksqsFXsFQ6ETM2h/
	FOJtNgUj8SIu1WlfYhyKpWmv7cM3oxzSsfg75/N8CStQ+Qx6Ty0mMU5R+aKiKtTvZPMFxbukr21GE
	5DdE/0KsxQ6puB1eQiWGDfAPAPm/59dXNXHKjpshx4Mwcn4UyazupHRBwMAvEunbuJ8i6MOv5PKWe
	BrTeVeTNGzY19K4vAf7bMMKxDrIFum5PfD/Ae94EECdLTcWx2tH1beOJWis+mG+9Y0PZEbWsznxlN
	87Lly3Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic70D-0007E4-M4; Tue, 03 Dec 2019 12:10:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6zt-00073D-ID
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:09:43 +0000
Received: from e123331-lin.cambridge.arm.com (fw-tnat-cam5.arm.com
 [217.140.106.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D85452070A;
 Tue,  3 Dec 2019 12:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575374981;
 bh=Oyd9px9Vod4vUnf2sIgOriR/vEkbLCfvzGTbqMfA2i4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Z/iQioNDEI9n7FrgZPAyt+cHGmT7JPYMyWIbiTOjxltoRQHXExqm1VOTlQp5uU3Vr
 JXl6/UfV3lsva7tCz1KqdVZd/4XrEWQ1MILQIn3WY9AE9oo436S1zZzL05FZY51vCb
 /cMvSD6tJLEhDfOuVBr2BshaleB1aBETFDoa3+Yg=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 1/2] efi/arm64: use 1:1 mapping of RT services if property
 table exists
Date: Tue,  3 Dec 2019 12:09:16 +0000
Message-Id: <20191203120917.25981-2-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191203120917.25981-1-ardb@kernel.org>
References: <20191203120917.25981-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040941_642518_911F0969 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -4.7 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.5 PDS_BTC_ID             FP reduced Bitcoin ID
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
Cc: mark.rutland@arm.com, james.morse@arm.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The UEFI spec defines (and deprecates) a misguided and shortlived
memory protection feature that is based on splitting memory regions
covering PE/COFF executables into separate code and data regions,
without annotating them as belonging to the same executable image.
When the OS assigns the virtual addresses of these regions, it may
move them around arbitrarily, without taking into account that the
PE/COFF code sections may contain relative references into the data
sections, which means the relative placement of these segments has
to be preserved or the executable image will be corrupt.

The original workaround on arm64 was to ensure that adjacent regions
of the same type were mapped adjacently in the virtual mapping, but
this requires sorting of the memory map, which we would prefer to
avoid.

Considering that we have recently added the option to simply reuse
the firmware's 1:1 mapping at runtime, let's do the same for systems
where this memory protection feature is implemented, and drop the
sorting and associated checks when creating the virtual mapping.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/Makefile   |   1 -
 drivers/firmware/efi/libstub/arm-stub.c | 103 ++++++--------------
 2 files changed, 29 insertions(+), 75 deletions(-)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index c35f893897e1..33535252605a 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -43,7 +43,6 @@ lib-y				:= efi-stub-helper.o gop.o secureboot.o tpm.o \
 
 # include the stub's generic dependencies from lib/ when building for ARM/arm64
 arm-deps-y := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c fdt_empty_tree.c fdt_sw.c
-arm-deps-$(CONFIG_ARM64) += sort.c
 
 $(obj)/lib-%.o: $(srctree)/lib/%.c FORCE
 	$(call if_changed_rule,cc_o_c)
diff --git a/drivers/firmware/efi/libstub/arm-stub.c b/drivers/firmware/efi/libstub/arm-stub.c
index 817237ce2420..4951604b3624 100644
--- a/drivers/firmware/efi/libstub/arm-stub.c
+++ b/drivers/firmware/efi/libstub/arm-stub.c
@@ -10,7 +10,6 @@
  */
 
 #include <linux/efi.h>
-#include <linux/sort.h>
 #include <asm/efi.h>
 
 #include "efistub.h"
@@ -37,6 +36,8 @@
 
 static u64 virtmap_base = EFI_RT_VIRTUAL_BASE;
 
+static bool __section(.data) virtual_remap = false;
+
 void efi_char16_printk(efi_system_table_t *sys_table_arg,
 			      efi_char16_t *str)
 {
@@ -238,8 +239,18 @@ unsigned long efi_entry(void *handle, efi_system_table_t *sys_table,
 
 	efi_random_get_seed(sys_table);
 
+	if (!novamap()) {
+		efi_properties_table_t *prop_table;
+
+		prop_table = get_efi_config_table(sys_table,
+						  EFI_PROPERTIES_TABLE_GUID);
+		virtual_remap = !prop_table ||
+				!(prop_table->memory_protection_attribute &
+				  EFI_PROPERTIES_RUNTIME_MEMORY_PROTECTION_NON_EXECUTABLE_PE_DATA);
+	}
+
 	/* hibernation expects the runtime regions to stay in the same place */
-	if (!IS_ENABLED(CONFIG_HIBERNATION) && !nokaslr()) {
+	if (!IS_ENABLED(CONFIG_HIBERNATION) && !nokaslr() && virtual_remap) {
 		/*
 		 * Randomize the base of the UEFI runtime services region.
 		 * Preserve the 2 MB alignment of the region by taking a
@@ -290,44 +301,6 @@ unsigned long efi_entry(void *handle, efi_system_table_t *sys_table,
 	return EFI_ERROR;
 }
 
-static int cmp_mem_desc(const void *l, const void *r)
-{
-	const efi_memory_desc_t *left = l, *right = r;
-
-	return (left->phys_addr > right->phys_addr) ? 1 : -1;
-}
-
-/*
- * Returns whether region @left ends exactly where region @right starts,
- * or false if either argument is NULL.
- */
-static bool regions_are_adjacent(efi_memory_desc_t *left,
-				 efi_memory_desc_t *right)
-{
-	u64 left_end;
-
-	if (left == NULL || right == NULL)
-		return false;
-
-	left_end = left->phys_addr + left->num_pages * EFI_PAGE_SIZE;
-
-	return left_end == right->phys_addr;
-}
-
-/*
- * Returns whether region @left and region @right have compatible memory type
- * mapping attributes, and are both EFI_MEMORY_RUNTIME regions.
- */
-static bool regions_have_compatible_memory_type_attrs(efi_memory_desc_t *left,
-						      efi_memory_desc_t *right)
-{
-	static const u64 mem_type_mask = EFI_MEMORY_WB | EFI_MEMORY_WT |
-					 EFI_MEMORY_WC | EFI_MEMORY_UC |
-					 EFI_MEMORY_RUNTIME;
-
-	return ((left->attribute ^ right->attribute) & mem_type_mask) == 0;
-}
-
 /*
  * efi_get_virtmap() - create a virtual mapping for the EFI memory map
  *
@@ -340,23 +313,10 @@ void efi_get_virtmap(efi_memory_desc_t *memory_map, unsigned long map_size,
 		     int *count)
 {
 	u64 efi_virt_base = virtmap_base;
-	efi_memory_desc_t *in, *prev = NULL, *out = runtime_map;
+	efi_memory_desc_t *in, *out = runtime_map;
 	int l;
 
-	/*
-	 * To work around potential issues with the Properties Table feature
-	 * introduced in UEFI 2.5, which may split PE/COFF executable images
-	 * in memory into several RuntimeServicesCode and RuntimeServicesData
-	 * regions, we need to preserve the relative offsets between adjacent
-	 * EFI_MEMORY_RUNTIME regions with the same memory type attributes.
-	 * The easiest way to find adjacent regions is to sort the memory map
-	 * before traversing it.
-	 */
-	if (IS_ENABLED(CONFIG_ARM64))
-		sort(memory_map, map_size / desc_size, desc_size, cmp_mem_desc,
-		     NULL);
-
-	for (l = 0; l < map_size; l += desc_size, prev = in) {
+	for (l = 0; l < map_size; l += desc_size) {
 		u64 paddr, size;
 
 		in = (void *)memory_map + l;
@@ -366,7 +326,7 @@ void efi_get_virtmap(efi_memory_desc_t *memory_map, unsigned long map_size,
 		paddr = in->phys_addr;
 		size = in->num_pages * EFI_PAGE_SIZE;
 
-		if (novamap()) {
+		if (!virtual_remap) {
 			in->virt_addr = in->phys_addr;
 			continue;
 		}
@@ -376,24 +336,19 @@ void efi_get_virtmap(efi_memory_desc_t *memory_map, unsigned long map_size,
 		 * a 4k page size kernel to kexec a 64k page size kernel and
 		 * vice versa.
 		 */
-		if ((IS_ENABLED(CONFIG_ARM64) &&
-		     !regions_are_adjacent(prev, in)) ||
-		    !regions_have_compatible_memory_type_attrs(prev, in)) {
-
-			paddr = round_down(in->phys_addr, SZ_64K);
-			size += in->phys_addr - paddr;
-
-			/*
-			 * Avoid wasting memory on PTEs by choosing a virtual
-			 * base that is compatible with section mappings if this
-			 * region has the appropriate size and physical
-			 * alignment. (Sections are 2 MB on 4k granule kernels)
-			 */
-			if (IS_ALIGNED(in->phys_addr, SZ_2M) && size >= SZ_2M)
-				efi_virt_base = round_up(efi_virt_base, SZ_2M);
-			else
-				efi_virt_base = round_up(efi_virt_base, SZ_64K);
-		}
+		paddr = round_down(in->phys_addr, SZ_64K);
+		size += in->phys_addr - paddr;
+
+		/*
+		 * Avoid wasting memory on PTEs by choosing a virtual
+		 * base that is compatible with section mappings if this
+		 * region has the appropriate size and physical
+		 * alignment. (Sections are 2 MB on 4k granule kernels)
+		 */
+		if (IS_ALIGNED(in->phys_addr, SZ_2M) && size >= SZ_2M)
+			efi_virt_base = round_up(efi_virt_base, SZ_2M);
+		else
+			efi_virt_base = round_up(efi_virt_base, SZ_64K);
 
 		in->virt_addr = efi_virt_base + in->phys_addr - paddr;
 		efi_virt_base += size;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
