Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A87160578
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:26:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=okbHdozxfxwxUxtVoJ9+3VHEBgNYr9Id4JBiv69+rqA=; b=rAb8kFLI9G+AODOHHNKorIhOCY
	T+3msgpG48GkqYf4tKyFqu3EvR1/OCiplN+fHbPt+jY86AvZLsw4DcRGBwU7/dtzzzsdAySAvSj6i
	wfU+P3m75/nCT/W6kDu9UDWaNk3d2AX+sAP3SVFnRUVhTQ3qjR4Z2B1+NZPWvh3tIi8rxEPjXUBwa
	v3Hd73BbK/ZOfsdke4spPwPrdK5gkJ8UFB8BkvWNQ1AipjGAy8RcUbCfAOWMCHKDcTHP0q57P4tiZ
	vwR+PA3B8y/nkjMywiGGHEr+pmM/hQgDhuQGPbHZ9O9sz9JyGYEAgxBE8ejfRN91WwCtj+I5KRzja
	Pb0LsBOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3OcQ-0000tY-TO; Sun, 16 Feb 2020 18:26:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3OaE-0006Or-Vt
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:24:01 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01E2324673;
 Sun, 16 Feb 2020 18:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581877438;
 bh=FTM+bluUT+EojVLVXGUAlt9rJtbPTpTa25ixsGF+tzY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bU+yWRZmSS4/DJZ3qkwH2bQZW2Ziv0lVoVXdo3PNjPueVkI1oVpn2361P/Ovs4syR
 iNvkvZHgz2poVsbSj1GznFaITK/DEP9LWWOMgb0NeDODWHWRo6Gmlsl22A1g6+g3Av
 q6fzSwxGD4fkqtPRIf29EM2jwzqToJkx+9yrdxEU=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 07/18] efi: merge EFI system table revision and vendor checks
Date: Sun, 16 Feb 2020 19:23:23 +0100
Message-Id: <20200216182334.8121-8-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200216182334.8121-1-ardb@kernel.org>
References: <20200216182334.8121-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_102359_271174_7B9CF2CE 
X-CRM114-Status: GOOD (  15.70  )
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

We have three different versions of the code that checks the EFI system
table revision and copies the firmware vendor string, and they are
mostly equivalent, with the exception of the use of early_memremap_ro
vs. __va() and the lowest major revision to warn about. Let's move this
into common code and factor out the commonalities.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/ia64/kernel/efi.c          | 23 +-------
 arch/x86/platform/efi/efi.c     | 46 ++++-----------
 drivers/firmware/efi/arm-init.c | 32 ++--------
 drivers/firmware/efi/efi.c      | 61 ++++++++++++++++++++
 include/linux/efi.h             |  4 ++
 5 files changed, 83 insertions(+), 83 deletions(-)

diff --git a/arch/ia64/kernel/efi.c b/arch/ia64/kernel/efi.c
index 312308967a9d..292fe354158d 100644
--- a/arch/ia64/kernel/efi.c
+++ b/arch/ia64/kernel/efi.c
@@ -479,10 +479,8 @@ void __init
 efi_init (void)
 {
 	void *efi_map_start, *efi_map_end;
-	efi_char16_t *c16;
 	u64 efi_desc_size;
-	char *cp, vendor[100] = "unknown";
-	int i;
+	char *cp;
 
 	set_bit(EFI_BOOT, &efi.flags);
 	set_bit(EFI_64BIT, &efi.flags);
@@ -519,25 +517,10 @@ efi_init (void)
 	 */
 	if (efi.systab == NULL)
 		panic("Whoa! Can't find EFI system table.\n");
-	if (efi.systab->hdr.signature != EFI_SYSTEM_TABLE_SIGNATURE)
+	if (efi_systab_check_header(&efi.systab->hdr, 1))
 		panic("Whoa! EFI system table signature incorrect\n");
-	if ((efi.systab->hdr.revision >> 16) == 0)
-		printk(KERN_WARNING "Warning: EFI system table version "
-		       "%d.%02d, expected 1.00 or greater\n",
-		       efi.systab->hdr.revision >> 16,
-		       efi.systab->hdr.revision & 0xffff);
-
-	/* Show what we know for posterity */
-	c16 = __va(efi.systab->fw_vendor);
-	if (c16) {
-		for (i = 0;i < (int) sizeof(vendor) - 1 && *c16; ++i)
-			vendor[i] = *c16++;
-		vendor[i] = '\0';
-	}
 
-	printk(KERN_INFO "EFI v%u.%.02u by %s:",
-	       efi.systab->hdr.revision >> 16,
-	       efi.systab->hdr.revision & 0xffff, vendor);
+	efi_systab_report_header(&efi.systab->hdr, efi.systab->fw_vendor);
 
 	palo_phys      = EFI_INVALID_TABLE_ADDR;
 
diff --git a/arch/x86/platform/efi/efi.c b/arch/x86/platform/efi/efi.c
index db4c14f62978..777373423a67 100644
--- a/arch/x86/platform/efi/efi.c
+++ b/arch/x86/platform/efi/efi.c
@@ -339,15 +339,23 @@ static int __init efi_systab_init(u64 phys)
 {
 	int size = efi_enabled(EFI_64BIT) ? sizeof(efi_system_table_64_t)
 					  : sizeof(efi_system_table_32_t);
+	const efi_table_hdr_t *hdr;
 	bool over4g = false;
 	void *p;
+	int ret;
 
-	p = early_memremap_ro(phys, size);
+	hdr = p = early_memremap_ro(phys, size);
 	if (p == NULL) {
 		pr_err("Couldn't map the system table!\n");
 		return -ENOMEM;
 	}
 
+	ret = efi_systab_check_header(hdr, 1);
+	if (ret) {
+		early_memunmap(p, size);
+		return ret;
+	}
+
 	if (efi_enabled(EFI_64BIT)) {
 		const efi_system_table_64_t *systab64 = p;
 
@@ -414,6 +422,7 @@ static int __init efi_systab_init(u64 phys)
 		efi_systab.tables		= systab32->tables;
 	}
 
+	efi_systab_report_header(hdr, efi_systab.fw_vendor);
 	early_memunmap(p, size);
 
 	if (IS_ENABLED(CONFIG_X86_32) && over4g) {
@@ -422,28 +431,11 @@ static int __init efi_systab_init(u64 phys)
 	}
 
 	efi.systab = &efi_systab;
-
-	/*
-	 * Verify the EFI Table
-	 */
-	if (efi.systab->hdr.signature != EFI_SYSTEM_TABLE_SIGNATURE) {
-		pr_err("System table signature incorrect!\n");
-		return -EINVAL;
-	}
-	if ((efi.systab->hdr.revision >> 16) == 0)
-		pr_err("Warning: System table version %d.%02d, expected 1.00 or greater!\n",
-		       efi.systab->hdr.revision >> 16,
-		       efi.systab->hdr.revision & 0xffff);
-
 	return 0;
 }
 
 void __init efi_init(void)
 {
-	efi_char16_t *c16;
-	char vendor[100] = "unknown";
-	int i = 0;
-
 	if (IS_ENABLED(CONFIG_X86_32) &&
 	    (boot_params.efi_info.efi_systab_hi ||
 	     boot_params.efi_info.efi_memmap_hi)) {
@@ -461,24 +453,6 @@ void __init efi_init(void)
 	efi.fw_vendor	 = (unsigned long)efi.systab->fw_vendor;
 	efi.runtime	 = (unsigned long)efi.systab->runtime;
 
-	/*
-	 * Show what we know for posterity
-	 */
-	c16 = early_memremap_ro(efi.systab->fw_vendor,
-				sizeof(vendor) * sizeof(efi_char16_t));
-	if (c16) {
-		for (i = 0; i < sizeof(vendor) - 1 && c16[i]; ++i)
-			vendor[i] = c16[i];
-		vendor[i] = '\0';
-		early_memunmap(c16, sizeof(vendor) * sizeof(efi_char16_t));
-	} else {
-		pr_err("Could not map the firmware vendor!\n");
-	}
-
-	pr_info("EFI v%u.%.02u by %s\n",
-		efi.systab->hdr.revision >> 16,
-		efi.systab->hdr.revision & 0xffff, vendor);
-
 	if (efi_reuse_config(efi.systab->tables, efi.systab->nr_tables))
 		return;
 
diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
index d99f5b0c8a09..a656bfcd7e27 100644
--- a/drivers/firmware/efi/arm-init.c
+++ b/drivers/firmware/efi/arm-init.c
@@ -85,11 +85,9 @@ static void __init init_screen_info(void)
 
 static int __init uefi_init(void)
 {
-	efi_char16_t *c16;
 	void *config_tables;
 	size_t table_size;
-	char vendor[100] = "unknown";
-	int i, retval;
+	int retval;
 
 	efi.systab = early_memremap_ro(efi_system_table,
 				       sizeof(efi_system_table_t));
@@ -102,34 +100,14 @@ static int __init uefi_init(void)
 	if (IS_ENABLED(CONFIG_64BIT))
 		set_bit(EFI_64BIT, &efi.flags);
 
-	/*
-	 * Verify the EFI Table
-	 */
-	if (efi.systab->hdr.signature != EFI_SYSTEM_TABLE_SIGNATURE) {
-		pr_err("System table signature incorrect\n");
-		retval = -EINVAL;
+	retval = efi_systab_check_header(&efi.systab->hdr, 2);
+	if (retval)
 		goto out;
-	}
-	if ((efi.systab->hdr.revision >> 16) < 2)
-		pr_warn("Warning: EFI system table version %d.%02d, expected 2.00 or greater\n",
-			efi.systab->hdr.revision >> 16,
-			efi.systab->hdr.revision & 0xffff);
 
 	efi.runtime_version = efi.systab->hdr.revision;
 
-	/* Show what we know for posterity */
-	c16 = early_memremap_ro(efi_to_phys(efi.systab->fw_vendor),
-				sizeof(vendor) * sizeof(efi_char16_t));
-	if (c16) {
-		for (i = 0; i < (int) sizeof(vendor) - 1 && *c16; ++i)
-			vendor[i] = c16[i];
-		vendor[i] = '\0';
-		early_memunmap(c16, sizeof(vendor) * sizeof(efi_char16_t));
-	}
-
-	pr_info("EFI v%u.%.02u by %s\n",
-		efi.systab->hdr.revision >> 16,
-		efi.systab->hdr.revision & 0xffff, vendor);
+	efi_systab_report_header(&efi.systab->hdr,
+				 efi_to_phys(efi.systab->fw_vendor));
 
 	table_size = sizeof(efi_config_table_64_t) * efi.systab->nr_tables;
 	config_tables = early_memremap_ro(efi_to_phys(efi.systab->tables),
diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index 41bb2c44cea4..80fe0044f2e2 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -631,6 +631,67 @@ int __init efi_config_init(efi_config_table_type_t *arch_tables)
 	return ret;
 }
 
+
+int __init efi_systab_check_header(const efi_table_hdr_t *systab_hdr,
+				   int min_major_version)
+{
+	if (systab_hdr->signature != EFI_SYSTEM_TABLE_SIGNATURE) {
+		pr_err("System table signature incorrect!\n");
+		return -EINVAL;
+	}
+
+	if ((systab_hdr->revision >> 16) < min_major_version)
+		pr_err("Warning: System table version %d.%02d, expected %d.00 or greater!\n",
+		       systab_hdr->revision >> 16,
+		       systab_hdr->revision & 0xffff,
+		       min_major_version);
+
+	return 0;
+}
+
+#ifndef CONFIG_IA64
+static const efi_char16_t *__init map_fw_vendor(unsigned long fw_vendor,
+						size_t size)
+{
+	const efi_char16_t *ret;
+
+	ret = early_memremap_ro(fw_vendor, size);
+	if (!ret)
+		pr_err("Could not map the firmware vendor!\n");
+	return ret;
+}
+
+static void __init unmap_fw_vendor(const void *fw_vendor, size_t size)
+{
+	early_memunmap((void *)fw_vendor, size);
+}
+#else
+#define map_fw_vendor(p, s)	__va(p)
+#define unmap_fw_vendor(v, s)
+#endif
+
+void __init efi_systab_report_header(const efi_table_hdr_t *systab_hdr,
+				     unsigned long fw_vendor)
+{
+	char vendor[100] = "unknown";
+	const efi_char16_t *c16;
+	size_t i;
+
+	c16 = map_fw_vendor(fw_vendor, sizeof(vendor) * sizeof(efi_char16_t));
+	if (c16) {
+		for (i = 0; i < sizeof(vendor) - 1 && c16[i]; ++i)
+			vendor[i] = c16[i];
+		vendor[i] = '\0';
+
+		unmap_fw_vendor(c16, sizeof(vendor) * sizeof(efi_char16_t));
+	}
+
+	pr_info("EFI v%u.%.02u by %s\n",
+		systab_hdr->revision >> 16,
+		systab_hdr->revision & 0xffff,
+		vendor);
+}
+
 #ifdef CONFIG_EFI_VARS_MODULE
 static int __init efi_load_efivars(void)
 {
diff --git a/include/linux/efi.h b/include/linux/efi.h
index a5e210abe4ca..287510e84dfb 100644
--- a/include/linux/efi.h
+++ b/include/linux/efi.h
@@ -616,6 +616,10 @@ static inline void efi_esrt_init(void) { }
 #endif
 extern int efi_config_parse_tables(void *config_tables, int count, int sz,
 				   efi_config_table_type_t *arch_tables);
+extern int efi_systab_check_header(const efi_table_hdr_t *systab_hdr,
+				   int min_major_version);
+extern void efi_systab_report_header(const efi_table_hdr_t *systab_hdr,
+				     unsigned long fw_vendor);
 extern u64 efi_get_iobase (void);
 extern int efi_mem_type(unsigned long phys_addr);
 extern u64 efi_mem_attributes (unsigned long phys_addr);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
