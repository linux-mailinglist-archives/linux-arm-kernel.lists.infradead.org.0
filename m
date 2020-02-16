Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6912160582
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:28:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VZvi76nFBi9OBimtimuK/CgsSTqtQOAvICWDs/xNxj8=; b=mpLTSJVEcaS41VC0P+4nLwndCx
	GDn1mlKBDXuTz4epE/X+r2Eaz5/UW5Nc/jG6FD5q4nbar/Ac9leAkmkGkFG+MsliFp9YTEdkUti8e
	QFclN4ZbEIp4hgXl9Kqbp3CYJP3xalEpMyrvQ/0D4f0MNVNRr+fTFNfwcbfIqXBBAcgL4MvUVMtoe
	jvwv0IXZf32ES6O72QWH4h3B7UVOpqW252Y6iK/bRCQPQF6O6dKQ2gFLzv4D8kZxBj3aZe2qxRvvx
	/9V5y1JCKy3v1blwHGGtTrL20cE3SoKS7SWq3tRtOG9OdZVKkSBmaOY2zKS6wFE6scxn8v+O8/DpK
	u3cT74XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Oee-00038V-HI; Sun, 16 Feb 2020 18:28:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3OaV-0006cp-Jv
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:24:18 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D489222522;
 Sun, 16 Feb 2020 18:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581877455;
 bh=bXkrKOA7dq4Cyhmz9HL+jaciVLSolWJkvW8yB2cdyLI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BgokPXkrtcbNCOpP+2MimdKMp87TlwWCEoujot1ubbfPj71ZwBZJ/SzMBS9rwto/V
 ko/rtmMv6f5rYo16FkPDSPr8KMbkgSofIxk9Zn4YdH8h+XTc4HNmEP9yyeJ+Kz+nYj
 D44Gn+L1/I2EIIxQ0nEz0z3Ln02UMKAMA4CQsABU=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 17/18] efi/arm: drop unnecessary references to efi.systab
Date: Sun, 16 Feb 2020 19:23:33 +0100
Message-Id: <20200216182334.8121-18-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200216182334.8121-1-ardb@kernel.org>
References: <20200216182334.8121-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_102415_751098_E7E380A3 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: nivedita@alum.mit.edu, x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Instead of populating efi.systab very early during efi_init() with
a mapping that is released again before the function exits, use a
local variable here. Now that we use efi.runtime to access the runtime
services table, this removes the only reference efi.systab, so there is
no need to populate it anymore, or discover its virtually remapped
address. So drop the references entirely.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/arm-init.c    | 33 +++++++++-----------
 drivers/firmware/efi/arm-runtime.c | 18 -----------
 2 files changed, 14 insertions(+), 37 deletions(-)

diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
index 77048f7a9659..76bf5b22e49e 100644
--- a/drivers/firmware/efi/arm-init.c
+++ b/drivers/firmware/efi/arm-init.c
@@ -22,8 +22,6 @@
 
 #include <asm/efi.h>
 
-u64 efi_system_table;
-
 static int __init is_memory(efi_memory_desc_t *md)
 {
 	if (md->attribute & (EFI_MEMORY_WB|EFI_MEMORY_WT|EFI_MEMORY_WC))
@@ -36,7 +34,7 @@ static int __init is_memory(efi_memory_desc_t *md)
  * as some data members of the EFI system table are virtually remapped after
  * SetVirtualAddressMap() has been called.
  */
-static phys_addr_t efi_to_phys(unsigned long addr)
+static phys_addr_t __init efi_to_phys(unsigned long addr)
 {
 	efi_memory_desc_t *md;
 
@@ -83,15 +81,15 @@ static void __init init_screen_info(void)
 		memblock_mark_nomap(screen_info.lfb_base, screen_info.lfb_size);
 }
 
-static int __init uefi_init(void)
+static int __init uefi_init(u64 efi_system_table)
 {
 	efi_config_table_t *config_tables;
+	efi_system_table_t *systab;
 	size_t table_size;
 	int retval;
 
-	efi.systab = early_memremap_ro(efi_system_table,
-				       sizeof(efi_system_table_t));
-	if (efi.systab == NULL) {
+	systab = early_memremap_ro(efi_system_table, sizeof(efi_system_table_t));
+	if (systab == NULL) {
 		pr_warn("Unable to map EFI system table.\n");
 		return -ENOMEM;
 	}
@@ -100,30 +98,29 @@ static int __init uefi_init(void)
 	if (IS_ENABLED(CONFIG_64BIT))
 		set_bit(EFI_64BIT, &efi.flags);
 
-	retval = efi_systab_check_header(&efi.systab->hdr, 2);
+	retval = efi_systab_check_header(&systab->hdr, 2);
 	if (retval)
 		goto out;
 
-	efi.runtime = efi.systab->runtime;
-	efi.runtime_version = efi.systab->hdr.revision;
+	efi.runtime = systab->runtime;
+	efi.runtime_version = systab->hdr.revision;
 
-	efi_systab_report_header(&efi.systab->hdr,
-				 efi_to_phys(efi.systab->fw_vendor));
+	efi_systab_report_header(&systab->hdr, efi_to_phys(systab->fw_vendor));
 
-	table_size = sizeof(efi_config_table_64_t) * efi.systab->nr_tables;
-	config_tables = early_memremap_ro(efi_to_phys(efi.systab->tables),
+	table_size = sizeof(efi_config_table_t) * systab->nr_tables;
+	config_tables = early_memremap_ro(efi_to_phys(systab->tables),
 					  table_size);
 	if (config_tables == NULL) {
 		pr_warn("Unable to map EFI config table array.\n");
 		retval = -ENOMEM;
 		goto out;
 	}
-	retval = efi_config_parse_tables(config_tables, efi.systab->nr_tables,
+	retval = efi_config_parse_tables(config_tables, systab->nr_tables,
 					 arch_tables);
 
 	early_memunmap(config_tables, table_size);
 out:
-	early_memunmap(efi.systab,  sizeof(efi_system_table_t));
+	early_memunmap(systab, sizeof(efi_system_table_t));
 	return retval;
 }
 
@@ -214,8 +211,6 @@ void __init efi_init(void)
 	if (!efi_get_fdt_params(&params))
 		return;
 
-	efi_system_table = params.system_table;
-
 	data.desc_version = params.desc_ver;
 	data.desc_size = params.desc_size;
 	data.size = params.mmap_size;
@@ -234,7 +229,7 @@ void __init efi_init(void)
 	     "Unexpected EFI_MEMORY_DESCRIPTOR version %ld",
 	      efi.memmap.desc_version);
 
-	if (uefi_init() < 0) {
+	if (uefi_init(params.system_table) < 0) {
 		efi_memmap_unmap();
 		return;
 	}
diff --git a/drivers/firmware/efi/arm-runtime.c b/drivers/firmware/efi/arm-runtime.c
index 9dda2602c862..b876373f2297 100644
--- a/drivers/firmware/efi/arm-runtime.c
+++ b/drivers/firmware/efi/arm-runtime.c
@@ -25,8 +25,6 @@
 #include <asm/pgalloc.h>
 #include <asm/pgtable.h>
 
-extern u64 efi_system_table;
-
 #if defined(CONFIG_PTDUMP_DEBUGFS) && defined(CONFIG_ARM64)
 #include <asm/ptdump.h>
 
@@ -54,13 +52,11 @@ device_initcall(ptdump_init);
 static bool __init efi_virtmap_init(void)
 {
 	efi_memory_desc_t *md;
-	bool systab_found;
 
 	efi_mm.pgd = pgd_alloc(&efi_mm);
 	mm_init_cpumask(&efi_mm);
 	init_new_context(NULL, &efi_mm);
 
-	systab_found = false;
 	for_each_efi_memory_desc(md) {
 		phys_addr_t phys = md->phys_addr;
 		int ret;
@@ -76,20 +72,6 @@ static bool __init efi_virtmap_init(void)
 				&phys, ret);
 			return false;
 		}
-		/*
-		 * If this entry covers the address of the UEFI system table,
-		 * calculate and record its virtual address.
-		 */
-		if (efi_system_table >= phys &&
-		    efi_system_table < phys + (md->num_pages * EFI_PAGE_SIZE)) {
-			efi.systab = (void *)(unsigned long)(efi_system_table -
-							     phys + md->virt_addr);
-			systab_found = true;
-		}
-	}
-	if (!systab_found) {
-		pr_err("No virtual mapping found for the UEFI System Table\n");
-		return false;
 	}
 
 	if (efi_memattr_apply_permissions(&efi_mm, efi_set_mapping_permissions))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
