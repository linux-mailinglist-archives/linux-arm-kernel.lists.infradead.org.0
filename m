Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EA216057F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:28:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cd1bZ+tU19UGeQncnOeLCgXIc4+aiFnloznvzS9VKYY=; b=cQ0/EW9GaqlKi9tWVIdEUXSoZs
	tqTZ+KwdoIFEtLkCaOrBrwHHsCWIp0KjYgWQ9dRTvOMDacGN2EGwCBkr4p8jPhoUZUxpemb1y+nW7
	HJjD6lKv4CHQaALO2UaPGIM55xqEUgc+CeZLLZJoZhvFDBpM/vQJRSjJv9F7cLVQHLNzLN0gXMr+B
	SCDUcFgr4okyQhA7Nrvx79WgVUaV10kOKtpkdy5I6bl7DkkI3z+I6iBuStQ76z3+eLIVfqIiwhfi2
	Sekoc5+UdFFk02mpJw+hAYp/79KEj2P/JKYoUtgM08CTjj0AjMMAPKF6hZl9nAplXjaJp6irqbueG
	JIlGh9TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3OeB-0002fC-Fk; Sun, 16 Feb 2020 18:28:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3OaQ-0006Yz-KV
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:24:13 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C8B002467C;
 Sun, 16 Feb 2020 18:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581877450;
 bh=ApugZ35SVmjE87o7jRvUIFkvrM7lXeUlJqjD6XC83k4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qdLu2wMM2+u+MmDmyORiLgUffq4AIR8j9vVtpUAtYT2bPE0DM3M8qOFTunXqM0Po7
 rTwCIJ7+bt1NVprUawTWGss0wpmQszDWbo68HbqPOr42g/6UCpdS0VI8J5cFdO+mWF
 9b4i+aRyLVUIqTLR5Y6GNq+QYuM6bO2YZ5v5F/FQ=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 14/18] efi/x86: make fw_vendor,
 config_table and runtime sysfs nodes x86 specific
Date: Sun, 16 Feb 2020 19:23:30 +0100
Message-Id: <20200216182334.8121-15-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200216182334.8121-1-ardb@kernel.org>
References: <20200216182334.8121-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_102410_822887_F53667D4 
X-CRM114-Status: GOOD (  17.33  )
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

There is some code that exposes physical addresses of certain parts of
the EFI firmware implementation via sysfs nodes. These nodes are only
used on x86, and are of dubious value to begin with, so let's move
their handling into the x86 arch code.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/x86/include/asm/efi.h        |  2 +
 arch/x86/kernel/kexec-bzimage64.c |  4 +-
 arch/x86/platform/efi/efi.c       | 60 ++++++++++++++++----
 arch/x86/platform/efi/quirks.c    |  2 +-
 drivers/firmware/efi/arm-init.c   |  3 -
 drivers/firmware/efi/efi.c        | 40 ++-----------
 include/linux/efi.h               |  3 -
 7 files changed, 59 insertions(+), 55 deletions(-)

diff --git a/arch/x86/include/asm/efi.h b/arch/x86/include/asm/efi.h
index ee867f01b2f6..78fc28da2e29 100644
--- a/arch/x86/include/asm/efi.h
+++ b/arch/x86/include/asm/efi.h
@@ -10,6 +10,8 @@
 #include <asm/mmu_context.h>
 #include <linux/build_bug.h>
 
+extern unsigned long efi_fw_vendor, efi_config_table;
+
 /*
  * We map the EFI regions needed for runtime services non-contiguously,
  * with preserved alignment on virtual addresses starting from -4G down
diff --git a/arch/x86/kernel/kexec-bzimage64.c b/arch/x86/kernel/kexec-bzimage64.c
index f400678bd345..db6578d45157 100644
--- a/arch/x86/kernel/kexec-bzimage64.c
+++ b/arch/x86/kernel/kexec-bzimage64.c
@@ -141,8 +141,8 @@ prepare_add_efi_setup_data(struct boot_params *params,
 	struct setup_data *sd = (void *)params + efi_setup_data_offset;
 	struct efi_setup_data *esd = (void *)sd + sizeof(struct setup_data);
 
-	esd->fw_vendor = efi.fw_vendor;
-	esd->tables = efi.config_table;
+	esd->fw_vendor = efi_fw_vendor;
+	esd->tables = efi_config_table;
 	esd->smbios = efi.smbios;
 
 	sd->type = SETUP_EFI;
diff --git a/arch/x86/platform/efi/efi.c b/arch/x86/platform/efi/efi.c
index c1f5f229cb02..54ada9f9612e 100644
--- a/arch/x86/platform/efi/efi.c
+++ b/arch/x86/platform/efi/efi.c
@@ -59,6 +59,9 @@ static u64 efi_systab_phys __initdata;
 
 static unsigned long prop_phys = EFI_INVALID_TABLE_ADDR;
 static unsigned long uga_phys = EFI_INVALID_TABLE_ADDR;
+static unsigned long efi_runtime, efi_nr_tables;
+
+unsigned long efi_fw_vendor, efi_config_table;
 
 static const efi_config_table_type_t arch_tables[] __initconst = {
 	{EFI_PROPERTIES_TABLE_GUID, "PROP", &prop_phys},
@@ -78,9 +81,9 @@ static const unsigned long * const efi_tables[] = {
 #ifdef CONFIG_X86_UV
 	&uv_systab_phys,
 #endif
-	&efi.fw_vendor,
-	&efi.runtime,
-	&efi.config_table,
+	&efi_fw_vendor,
+	&efi_runtime,
+	&efi_config_table,
 	&efi.esrt,
 	&prop_phys,
 	&efi_mem_attr_table,
@@ -437,7 +440,7 @@ static int __init efi_config_init(const efi_config_table_type_t *arch_tables)
 	void *config_tables;
 	int sz, ret;
 
-	if (efi.systab->nr_tables == 0)
+	if (efi_nr_tables == 0)
 		return 0;
 
 	if (efi_enabled(EFI_64BIT))
@@ -448,17 +451,16 @@ static int __init efi_config_init(const efi_config_table_type_t *arch_tables)
 	/*
 	 * Let's see what config tables the firmware passed to us.
 	 */
-	config_tables = early_memremap(efi.systab->tables,
-				       efi.systab->nr_tables * sz);
+	config_tables = early_memremap(efi_config_table, efi_nr_tables * sz);
 	if (config_tables == NULL) {
 		pr_err("Could not map Configuration table!\n");
 		return -ENOMEM;
 	}
 
-	ret = efi_config_parse_tables(config_tables, efi.systab->nr_tables,
+	ret = efi_config_parse_tables(config_tables, efi_nr_tables,
 				      arch_tables);
 
-	early_memunmap(config_tables, efi.systab->nr_tables * sz);
+	early_memunmap(config_tables, efi_nr_tables * sz);
 	return ret;
 }
 
@@ -477,11 +479,12 @@ void __init efi_init(void)
 	if (efi_systab_init(efi_systab_phys))
 		return;
 
-	efi.config_table = (unsigned long)efi.systab->tables;
-	efi.fw_vendor	 = (unsigned long)efi.systab->fw_vendor;
-	efi.runtime	 = (unsigned long)efi.systab->runtime;
+	efi_config_table = (unsigned long)efi.systab->tables;
+	efi_nr_tables    = efi.systab->nr_tables;
+	efi_fw_vendor    = (unsigned long)efi.systab->fw_vendor;
+	efi_runtime      = (unsigned long)efi.systab->runtime;
 
-	if (efi_reuse_config(efi.systab->tables, efi.systab->nr_tables))
+	if (efi_reuse_config(efi_config_table, efi_nr_tables))
 		return;
 
 	if (efi_config_init(arch_tables))
@@ -1026,3 +1029,36 @@ char *efi_systab_show_arch(char *str)
 		str += sprintf(str, "UGA=0x%lx\n", uga_phys);
 	return str;
 }
+
+#define EFI_FIELD(var) efi_ ## var
+
+#define EFI_ATTR_SHOW(name) \
+static ssize_t name##_show(struct kobject *kobj, \
+				struct kobj_attribute *attr, char *buf) \
+{ \
+	return sprintf(buf, "0x%lx\n", EFI_FIELD(name)); \
+}
+
+EFI_ATTR_SHOW(fw_vendor);
+EFI_ATTR_SHOW(runtime);
+EFI_ATTR_SHOW(config_table);
+
+struct kobj_attribute efi_attr_fw_vendor = __ATTR_RO(fw_vendor);
+struct kobj_attribute efi_attr_runtime = __ATTR_RO(runtime);
+struct kobj_attribute efi_attr_config_table = __ATTR_RO(config_table);
+
+umode_t efi_attr_is_visible(struct kobject *kobj, struct attribute *attr, int n)
+{
+	if (attr == &efi_attr_fw_vendor.attr) {
+		if (efi_enabled(EFI_PARAVIRT) ||
+				efi_fw_vendor == EFI_INVALID_TABLE_ADDR)
+			return 0;
+	} else if (attr == &efi_attr_runtime.attr) {
+		if (efi_runtime == EFI_INVALID_TABLE_ADDR)
+			return 0;
+	} else if (attr == &efi_attr_config_table.attr) {
+		if (efi_config_table == EFI_INVALID_TABLE_ADDR)
+			return 0;
+	}
+	return attr->mode;
+}
diff --git a/arch/x86/platform/efi/quirks.c b/arch/x86/platform/efi/quirks.c
index 88d32c06cffa..b0e0161e2e8e 100644
--- a/arch/x86/platform/efi/quirks.c
+++ b/arch/x86/platform/efi/quirks.c
@@ -537,7 +537,7 @@ int __init efi_reuse_config(u64 tables, int nr_tables)
 		goto out_memremap;
 	}
 
-	for (i = 0; i < efi.systab->nr_tables; i++) {
+	for (i = 0; i < nr_tables; i++) {
 		efi_guid_t guid;
 
 		guid = ((efi_config_table_64_t *)p)->guid;
diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
index d1f44c847841..5fc2f6813b84 100644
--- a/drivers/firmware/efi/arm-init.c
+++ b/drivers/firmware/efi/arm-init.c
@@ -120,9 +120,6 @@ static int __init uefi_init(void)
 	retval = efi_config_parse_tables(config_tables, efi.systab->nr_tables,
 					 arch_tables);
 
-	if (!retval)
-		efi.config_table = (unsigned long)efi.systab->tables;
-
 	early_memunmap(config_tables, table_size);
 out:
 	early_memunmap(efi.systab,  sizeof(efi_system_table_t));
diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index db1fe765380f..9c7ed971edc2 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -39,9 +39,6 @@ struct efi __read_mostly efi = {
 	.acpi20			= EFI_INVALID_TABLE_ADDR,
 	.smbios			= EFI_INVALID_TABLE_ADDR,
 	.smbios3		= EFI_INVALID_TABLE_ADDR,
-	.fw_vendor		= EFI_INVALID_TABLE_ADDR,
-	.runtime		= EFI_INVALID_TABLE_ADDR,
-	.config_table		= EFI_INVALID_TABLE_ADDR,
 	.esrt			= EFI_INVALID_TABLE_ADDR,
 	.tpm_log		= EFI_INVALID_TABLE_ADDR,
 	.tpm_final_log		= EFI_INVALID_TABLE_ADDR,
@@ -142,55 +139,30 @@ static ssize_t systab_show(struct kobject *kobj,
 
 static struct kobj_attribute efi_attr_systab = __ATTR_RO_MODE(systab, 0400);
 
-#define EFI_FIELD(var) efi.var
-
-#define EFI_ATTR_SHOW(name) \
-static ssize_t name##_show(struct kobject *kobj, \
-				struct kobj_attribute *attr, char *buf) \
-{ \
-	return sprintf(buf, "0x%lx\n", EFI_FIELD(name)); \
-}
-
-EFI_ATTR_SHOW(fw_vendor);
-EFI_ATTR_SHOW(runtime);
-EFI_ATTR_SHOW(config_table);
-
 static ssize_t fw_platform_size_show(struct kobject *kobj,
 				     struct kobj_attribute *attr, char *buf)
 {
 	return sprintf(buf, "%d\n", efi_enabled(EFI_64BIT) ? 64 : 32);
 }
 
-static struct kobj_attribute efi_attr_fw_vendor = __ATTR_RO(fw_vendor);
-static struct kobj_attribute efi_attr_runtime = __ATTR_RO(runtime);
-static struct kobj_attribute efi_attr_config_table = __ATTR_RO(config_table);
+extern __weak struct kobj_attribute efi_attr_fw_vendor;
+extern __weak struct kobj_attribute efi_attr_runtime;
+extern __weak struct kobj_attribute efi_attr_config_table;
 static struct kobj_attribute efi_attr_fw_platform_size =
 	__ATTR_RO(fw_platform_size);
 
 static struct attribute *efi_subsys_attrs[] = {
 	&efi_attr_systab.attr,
+	&efi_attr_fw_platform_size.attr,
 	&efi_attr_fw_vendor.attr,
 	&efi_attr_runtime.attr,
 	&efi_attr_config_table.attr,
-	&efi_attr_fw_platform_size.attr,
 	NULL,
 };
 
-static umode_t efi_attr_is_visible(struct kobject *kobj,
-				   struct attribute *attr, int n)
+umode_t __weak efi_attr_is_visible(struct kobject *kobj, struct attribute *attr,
+				   int n)
 {
-	if (attr == &efi_attr_fw_vendor.attr) {
-		if (efi_enabled(EFI_PARAVIRT) ||
-				efi.fw_vendor == EFI_INVALID_TABLE_ADDR)
-			return 0;
-	} else if (attr == &efi_attr_runtime.attr) {
-		if (efi.runtime == EFI_INVALID_TABLE_ADDR)
-			return 0;
-	} else if (attr == &efi_attr_config_table.attr) {
-		if (efi.config_table == EFI_INVALID_TABLE_ADDR)
-			return 0;
-	}
-
 	return attr->mode;
 }
 
diff --git a/include/linux/efi.h b/include/linux/efi.h
index 99a7fcbe5e9b..a42045568df3 100644
--- a/include/linux/efi.h
+++ b/include/linux/efi.h
@@ -535,9 +535,6 @@ extern struct efi {
 	unsigned long acpi20;		/* ACPI table  (ACPI 2.0) */
 	unsigned long smbios;		/* SMBIOS table (32 bit entry point) */
 	unsigned long smbios3;		/* SMBIOS table (64 bit entry point) */
-	unsigned long fw_vendor;	/* fw_vendor */
-	unsigned long runtime;		/* runtime table */
-	unsigned long config_table;	/* config tables */
 	unsigned long esrt;		/* ESRT table */
 	unsigned long tpm_log;		/* TPM2 Event Log table */
 	unsigned long tpm_final_log;	/* TPM2 Final Events Log table */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
