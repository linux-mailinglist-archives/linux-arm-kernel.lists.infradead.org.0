Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8BE164876
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:25:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JEONj14dkAypTAxxjPGNw4UKHgspLbDUpy6JFsL56iI=; b=nr2SG5IRJjLFiOrToHwe17nMsX
	ddtik9H4kTM6EVIeAMWb646k3UTyMBDy7C36KKKkf0PamFKnk3rrxhOEWXXLAXRtEhXYZphLNQMMT
	9B1ac2tn89B2GRLK4TPtkjOVqYOooHm3IdTPzZx1nyNbsgYyW/zr/KNnzaedhkFFDD/ZSULwytmJn
	qaWtH8EhB/B9gx3/dyVVrk0oKEcqDa2xibYFsEAvezR+9NclVthKTHsedCzT1YrZdJbgWVhLewLgf
	whRvRR1LpJZqVujlN2rpQi8ifTdBgnnFv38+zs+ir9UtNvV30d8uBO5GucMfxHj2/+YD7T2KGgka/
	qB5CK33g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4REB-0007vn-Tc; Wed, 19 Feb 2020 15:25:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4RDW-0006LW-7M
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:24:51 +0000
Received: from cam-smtp0.cambridge.arm.com (fw-tnat.cambridge.arm.com
 [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44E4E24654;
 Wed, 19 Feb 2020 15:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582125889;
 bh=PDvat8kqeig3BTT+VeV1np0/DyvF6xBQeL7xe9NzH90=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VtSsGXifZA5RnZW/dPBhY07N+PB9khG0s6OLmhnznF/9pY/EO70fxGiclxOuG/8Xm
 nFjfpnZrM+5BWB0EULVD24qOOX6sgCcRWlG6ktv3fwoftsvZkG7TY8iM9377H4Y6AJ
 Nnp01MRNoJKenob3pOBPLL2i/161bFa/c6sLgSm4=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 2/3] efi/arm: move FDT specific definitions into fdtparams.c
Date: Wed, 19 Feb 2020 16:24:39 +0100
Message-Id: <20200219152440.11561-3-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219152440.11561-1-ardb@kernel.org>
References: <20200219152440.11561-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_072450_348573_BE91886E 
X-CRM114-Status: GOOD (  15.89  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: atish.patra@wdc.com, leif@nuviainc.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Push the FDT params specific types and definition into fdtparams.c,
and instead, pass a reference to the memory map data structure and
populate it directly, and return the system table address as the
return value.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/arm-init.c  | 17 ++++-------
 drivers/firmware/efi/fdtparams.c | 30 +++++++++++++++-----
 include/linux/efi.h              | 10 +------
 3 files changed, 30 insertions(+), 27 deletions(-)

diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
index 76bf5b22e49e..2791a8048f30 100644
--- a/drivers/firmware/efi/arm-init.c
+++ b/drivers/firmware/efi/arm-init.c
@@ -205,17 +205,13 @@ static __init void reserve_regions(void)
 void __init efi_init(void)
 {
 	struct efi_memory_map_data data;
-	struct efi_fdt_params params;
+	u64 efi_system_table;
 
 	/* Grab UEFI information placed in FDT by stub */
-	if (!efi_get_fdt_params(&params))
+	efi_system_table = efi_get_fdt_params(&data);
+	if (!efi_system_table)
 		return;
 
-	data.desc_version = params.desc_ver;
-	data.desc_size = params.desc_size;
-	data.size = params.mmap_size;
-	data.phys_map = params.mmap;
-
 	if (efi_memmap_init_early(&data) < 0) {
 		/*
 		* If we are booting via UEFI, the UEFI memory map is the only
@@ -229,7 +225,7 @@ void __init efi_init(void)
 	     "Unexpected EFI_MEMORY_DESCRIPTOR version %ld",
 	      efi.memmap.desc_version);
 
-	if (uefi_init(params.system_table) < 0) {
+	if (uefi_init(efi_system_table) < 0) {
 		efi_memmap_unmap();
 		return;
 	}
@@ -237,9 +233,8 @@ void __init efi_init(void)
 	reserve_regions();
 	efi_esrt_init();
 
-	memblock_reserve(params.mmap & PAGE_MASK,
-			 PAGE_ALIGN(params.mmap_size +
-				    (params.mmap & ~PAGE_MASK)));
+	memblock_reserve(data.phys_map & PAGE_MASK,
+			 PAGE_ALIGN(data.size + (data.phys_map & ~PAGE_MASK)));
 
 	init_screen_info();
 
diff --git a/drivers/firmware/efi/fdtparams.c b/drivers/firmware/efi/fdtparams.c
index 3de343faffc6..7a384b307c56 100644
--- a/drivers/firmware/efi/fdtparams.c
+++ b/drivers/firmware/efi/fdtparams.c
@@ -18,6 +18,14 @@
 		sizeof_field(struct efi_fdt_params, field) \
 	}
 
+struct efi_fdt_params {
+	u64 system_table;
+	u64 mmap;
+	u32 mmap_size;
+	u32 desc_size;
+	u32 desc_ver;
+};
+
 struct params {
 	const char name[32];
 	const char propname[32];
@@ -121,22 +129,30 @@ static int __init fdt_find_uefi_params(unsigned long node, const char *uname,
 	return 0;
 }
 
-int __init efi_get_fdt_params(struct efi_fdt_params *params)
+u64 __init efi_get_fdt_params(struct efi_memory_map_data *memmap)
 {
+	struct efi_fdt_params params;
 	struct param_info info;
 	int ret;
 
 	pr_info("Getting EFI parameters from FDT:\n");
 
 	info.found = 0;
-	info.params = params;
+	info.params = &params;
 
 	ret = of_scan_flat_dt(fdt_find_uefi_params, &info);
-	if (!info.found)
+	if (!info.found) {
 		pr_info("UEFI not found.\n");
-	else if (!ret)
-		pr_err("Can't find '%s' in device tree!\n",
-		       info.missing);
+		return 0;
+	} else if (!ret) {
+		pr_err("Can't find '%s' in device tree!\n", info.missing);
+		return 0;
+	}
+
+	memmap->desc_version	= params.desc_ver;
+	memmap->desc_size	= params.desc_size;
+	memmap->size		= params.mmap_size;
+	memmap->phys_map	= params.mmap;
 
-	return ret;
+	return params.system_table;
 }
diff --git a/include/linux/efi.h b/include/linux/efi.h
index a36bbd20e3ac..2ab33d5d6ca5 100644
--- a/include/linux/efi.h
+++ b/include/linux/efi.h
@@ -478,14 +478,6 @@ struct efi_mem_range {
 	u64 attribute;
 };
 
-struct efi_fdt_params {
-	u64 system_table;
-	u64 mmap;
-	u32 mmap_size;
-	u32 desc_size;
-	u32 desc_ver;
-};
-
 typedef struct {
 	u32 version;
 	u32 length;
@@ -661,7 +653,7 @@ extern void efi_mem_reserve(phys_addr_t addr, u64 size);
 extern int efi_mem_reserve_persistent(phys_addr_t addr, u64 size);
 extern void efi_initialize_iomem_resources(struct resource *code_resource,
 		struct resource *data_resource, struct resource *bss_resource);
-extern int efi_get_fdt_params(struct efi_fdt_params *params);
+extern u64 efi_get_fdt_params(struct efi_memory_map_data *data);
 extern struct kobject *efi_kobj;
 
 extern int efi_reboot_quirk_mode;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
