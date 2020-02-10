Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A81815824F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 19:30:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uLGdos+WlktoD1AVnatdJOgo5hVTFLRG9aRKTU4CJB4=; b=rHk
	ZfvnrqpeWwOW8tzDrVusQAod/aj40X/8JD5HESZF3HPza2DYww+zFJ2zGbdH9w8jhQDDfR3LWy8tQ
	YC9Xo7iIFPBF3dNKoUshYPMtQRGUxcDnxJCkey4j3KJ3oL7srJn+s/juMHyvz2dGk84XFF/gy/VdJ
	MaGhcomN8clFtLKheuJuLKewf14RgiRPBUWMY/LfVmNvO3pXZLqWC2uH1OISJKDvN7otmUomA+Ppc
	1xXuAvJwLJQlcs3uy/k4tRJAf9FihZPZ8txF3NgOtMCbPWRVrpJU3KQd/NOwRhr0RkajtsehkQVka
	PQnbk3LYkOtPseOWL9Uxxw+e0RTEffQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1DpC-0005hr-JI; Mon, 10 Feb 2020 18:30:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Dp4-0005hU-2h
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 18:30:20 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8293220838;
 Mon, 10 Feb 2020 18:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581359417;
 bh=S2dPYF+pX5Zsxi/BD4n/ZCIIzKtCMYV2EuW0eeElZbo=;
 h=From:To:Cc:Subject:Date:From;
 b=lSriZeYS14Wi+4fsuiG6t3xfWv/nGGHCt1qCKCSiUSMRpdOPhFHacTj54csylhX9m
 cVGtor1fPQpEezl7/Ritq+2UwjjDSOaE+SNUjbAUUBTY4BXGNH7onjYGdvHYRURnYg
 D6HOEDYVO9pexUbxOACbQ0gfYPps3MKZ2LCkaku8=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2] efi/libstub/arm64: Use 1:1 mapping of RT services if
 property table exists
Date: Mon, 10 Feb 2020 19:29:36 +0100
Message-Id: <20200210182936.10453-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_103018_166740_6215FC46 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
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
to be preserved or the executable image will be corrupted.

The original workaround on arm64 was to ensure that adjacent regions
of the same type were mapped adjacently in the virtual mapping, but
this requires sorting of the memory map, which we would prefer to
avoid.

Considering that the native physical mapping of the PE/COFF images
does not suffer from this issue, let's preserve it at runtime, and
install it as the virtual mapping as well.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
v2: call SetVirtualAddressMap() with 1:1 mapping rather than not calling it at
    all if the properties table exists and has the NX PE data attribute set

 drivers/firmware/efi/libstub/Makefile   |  1 -
 drivers/firmware/efi/libstub/arm-stub.c | 84 +++++---------------
 2 files changed, 22 insertions(+), 63 deletions(-)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 98a81576213d..f14b7636323a 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -43,7 +43,6 @@ lib-y				:= efi-stub-helper.o gop.o secureboot.o tpm.o \
 
 # include the stub's generic dependencies from lib/ when building for ARM/arm64
 arm-deps-y := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c fdt_empty_tree.c fdt_sw.c
-arm-deps-$(CONFIG_ARM64) += sort.c
 
 $(obj)/lib-%.o: $(srctree)/lib/%.c FORCE
 	$(call if_changed_rule,cc_o_c)
diff --git a/drivers/firmware/efi/libstub/arm-stub.c b/drivers/firmware/efi/libstub/arm-stub.c
index 7bbef4a67350..d357393e680e 100644
--- a/drivers/firmware/efi/libstub/arm-stub.c
+++ b/drivers/firmware/efi/libstub/arm-stub.c
@@ -10,7 +10,6 @@
  */
 
 #include <linux/efi.h>
-#include <linux/sort.h>
 #include <asm/efi.h>
 
 #include "efistub.h"
@@ -36,6 +35,7 @@
 #endif
 
 static u64 virtmap_base = EFI_RT_VIRTUAL_BASE;
+static bool __efistub_global flat_va_mapping;
 
 static efi_system_table_t *__efistub_global sys_table;
 
@@ -126,6 +126,7 @@ unsigned long efi_entry(void *handle, efi_system_table_t *sys_table_arg,
 	unsigned long reserve_size = 0;
 	enum efi_secureboot_mode secure_boot;
 	struct screen_info *si;
+	efi_properties_table_t *prop_tbl;
 
 	sys_table = sys_table_arg;
 
@@ -235,8 +236,20 @@ unsigned long efi_entry(void *handle, efi_system_table_t *sys_table_arg,
 
 	efi_random_get_seed();
 
+	/*
+	 * If the NX PE data feature is enabled in the properties table, we
+	 * should take care not to create a virtual mapping that changes the
+	 * relative placement of runtime services code and data regions, as
+	 * they may belong to the same PE/COFF executable image in memory.
+	 * The easiest way to achieve that is to simply use a 1:1 mapping.
+	 */
+	prop_tbl = get_efi_config_table(EFI_PROPERTIES_TABLE_GUID);
+	flat_va_mapping = prop_tbl &&
+			  (prop_tbl->memory_protection_attribute &
+			   EFI_PROPERTIES_RUNTIME_MEMORY_PROTECTION_NON_EXECUTABLE_PE_DATA);
+
 	/* hibernation expects the runtime regions to stay in the same place */
-	if (!IS_ENABLED(CONFIG_HIBERNATION) && !nokaslr()) {
+	if (!IS_ENABLED(CONFIG_HIBERNATION) && !nokaslr() && !flat_va_mapping) {
 		/*
 		 * Randomize the base of the UEFI runtime services region.
 		 * Preserve the 2 MB alignment of the region by taking a
@@ -286,44 +299,6 @@ unsigned long efi_entry(void *handle, efi_system_table_t *sys_table_arg,
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
@@ -336,23 +311,10 @@ void efi_get_virtmap(efi_memory_desc_t *memory_map, unsigned long map_size,
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
@@ -362,8 +324,8 @@ void efi_get_virtmap(efi_memory_desc_t *memory_map, unsigned long map_size,
 		paddr = in->phys_addr;
 		size = in->num_pages * EFI_PAGE_SIZE;
 
+		in->virt_addr = in->phys_addr;
 		if (novamap()) {
-			in->virt_addr = in->phys_addr;
 			continue;
 		}
 
@@ -372,9 +334,7 @@ void efi_get_virtmap(efi_memory_desc_t *memory_map, unsigned long map_size,
 		 * a 4k page size kernel to kexec a 64k page size kernel and
 		 * vice versa.
 		 */
-		if ((IS_ENABLED(CONFIG_ARM64) &&
-		     !regions_are_adjacent(prev, in)) ||
-		    !regions_have_compatible_memory_type_attrs(prev, in)) {
+		if (!flat_va_mapping) {
 
 			paddr = round_down(in->phys_addr, SZ_64K);
 			size += in->phys_addr - paddr;
@@ -389,10 +349,10 @@ void efi_get_virtmap(efi_memory_desc_t *memory_map, unsigned long map_size,
 				efi_virt_base = round_up(efi_virt_base, SZ_2M);
 			else
 				efi_virt_base = round_up(efi_virt_base, SZ_64K);
-		}
 
-		in->virt_addr = efi_virt_base + in->phys_addr - paddr;
-		efi_virt_base += size;
+			in->virt_addr += efi_virt_base - paddr;
+			efi_virt_base += size;
+		}
 
 		memcpy(out, in, desc_size);
 		out = (void *)out + desc_size;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
