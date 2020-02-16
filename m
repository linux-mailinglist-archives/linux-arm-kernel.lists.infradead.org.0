Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BAE716057E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:27:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TEHY3dTYg1tWeFrvgTpcVY9yNx4Vo0r+Wh4m7R9MSS8=; b=fQB0J3OKzmKBNfa7dkF1ltURLJ
	yDByqyz5ojQHD5gs9mvfSycn0gndYg/1jJJeV6UgAI4b3BaUGUx+JoiVbQ756vBUhp7fjAfeIp1Y4
	V2cIgT0X1xPXq9Hi7DTsvIWXAU7Zz0MciUk4uDOQbXa5a9Zf8Hr8Uwxrn5EHMKKcrrQjWC1sa959w
	pZ/AxKVhpaMnxnHKW+MZ/6KZ+kMIcZY1ntjmxN6CeuFJBKzGWiChsEJtampurpuAfmPXLoup1QW6w
	R7DD97ZmiZaZ0daG8V5RzYZtenGg1nJ3yy4w4JgY8wPGcCimj94d1Y4KQM9jNpaoT7wAsfbh+zvIE
	2taiiekg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Odx-0002Sp-MS; Sun, 16 Feb 2020 18:27:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3OaN-0006Vx-NG
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:24:10 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E18E22522;
 Sun, 16 Feb 2020 18:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581877446;
 bh=eXN+NFZ6TrUO9R/dlwfyCYacKvHM2vfmyoceG98umSM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DdaxSq6oA2D5O4A+CqXaPQc0LS/CuRgmte9Agd1MF6cr63o4Pxc5Nj+s7Mv8+bJk5
 1kKWqz613bRjRSIeGRKgA9J2bKumM8r7TnQwMD41ac7yd9ddpwFGTWAtINA6NO0NeC
 bJKRVB8U//J0OKk3OFQc6oCmhXD4z5U3LCzEPHVc=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 12/18] efi: clean up config_parse_tables()
Date: Sun, 16 Feb 2020 19:23:28 +0100
Message-Id: <20200216182334.8121-13-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200216182334.8121-1-ardb@kernel.org>
References: <20200216182334.8121-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_102407_832733_025EA730 
X-CRM114-Status: GOOD (  13.45  )
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

config_parse_tables() is a jumble of pointer arithmetic, due to the
fact that on x86, we may be dealing with firmware whose native word
size differs from the kernel's.

This is not a concern on other architectures, and doesn't quite
justify the state of the code, so let's clean it up by adding a
non-x86 code path, constifying statically allocated tables and
replacing preprocessor conditionals with IS_ENABLED() checks.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/ia64/kernel/efi.c          |  3 +-
 arch/x86/platform/efi/efi.c     |  6 +--
 drivers/firmware/efi/arm-init.c |  5 +--
 drivers/firmware/efi/efi.c      | 47 ++++++++++----------
 include/linux/efi.h             |  5 ++-
 5 files changed, 32 insertions(+), 34 deletions(-)

diff --git a/arch/ia64/kernel/efi.c b/arch/ia64/kernel/efi.c
index 3b5cf551489c..f69f3fe0532e 100644
--- a/arch/ia64/kernel/efi.c
+++ b/arch/ia64/kernel/efi.c
@@ -56,7 +56,7 @@ unsigned long __initdata esi_phys = EFI_INVALID_TABLE_ADDR;
 unsigned long hcdp_phys = EFI_INVALID_TABLE_ADDR;
 unsigned long sal_systab_phys = EFI_INVALID_TABLE_ADDR;
 
-static __initdata efi_config_table_type_t arch_tables[] = {
+static const efi_config_table_type_t arch_tables[] __initconst = {
 	{ESI_TABLE_GUID, "ESI", &esi_phys},
 	{HCDP_TABLE_GUID, "HCDP", &hcdp_phys},
 	{MPS_TABLE_GUID, "MPS", &mps_phys},
@@ -533,7 +533,6 @@ efi_init (void)
 
 	if (efi_config_parse_tables(__va(efi_systab->tables),
 				    efi_systab->nr_tables,
-				    sizeof(efi_config_table_t),
 				    arch_tables) != 0)
 		return;
 
diff --git a/arch/x86/platform/efi/efi.c b/arch/x86/platform/efi/efi.c
index 26d905e6b579..f7025b9075b4 100644
--- a/arch/x86/platform/efi/efi.c
+++ b/arch/x86/platform/efi/efi.c
@@ -60,7 +60,7 @@ static u64 efi_systab_phys __initdata;
 static unsigned long prop_phys = EFI_INVALID_TABLE_ADDR;
 static unsigned long uga_phys = EFI_INVALID_TABLE_ADDR;
 
-static efi_config_table_type_t arch_tables[] __initdata = {
+static const efi_config_table_type_t arch_tables[] __initconst = {
 	{EFI_PROPERTIES_TABLE_GUID, "PROP", &prop_phys},
 	{UGA_IO_PROTOCOL_GUID, "UGA", &uga_phys},
 #ifdef CONFIG_X86_UV
@@ -434,7 +434,7 @@ static int __init efi_systab_init(u64 phys)
 	return 0;
 }
 
-static int __init efi_config_init(efi_config_table_type_t *arch_tables)
+static int __init efi_config_init(const efi_config_table_type_t *arch_tables)
 {
 	void *config_tables;
 	int sz, ret;
@@ -457,7 +457,7 @@ static int __init efi_config_init(efi_config_table_type_t *arch_tables)
 		return -ENOMEM;
 	}
 
-	ret = efi_config_parse_tables(config_tables, efi.systab->nr_tables, sz,
+	ret = efi_config_parse_tables(config_tables, efi.systab->nr_tables,
 				      arch_tables);
 
 	early_memunmap(config_tables, efi.systab->nr_tables * sz);
diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
index a656bfcd7e27..d1f44c847841 100644
--- a/drivers/firmware/efi/arm-init.c
+++ b/drivers/firmware/efi/arm-init.c
@@ -55,7 +55,7 @@ static phys_addr_t efi_to_phys(unsigned long addr)
 
 static __initdata unsigned long screen_info_table = EFI_INVALID_TABLE_ADDR;
 
-static __initdata efi_config_table_type_t arch_tables[] = {
+static const efi_config_table_type_t arch_tables[] __initconst = {
 	{LINUX_EFI_ARM_SCREEN_INFO_TABLE_GUID, NULL, &screen_info_table},
 	{NULL_GUID, NULL, NULL}
 };
@@ -85,7 +85,7 @@ static void __init init_screen_info(void)
 
 static int __init uefi_init(void)
 {
-	void *config_tables;
+	efi_config_table_t *config_tables;
 	size_t table_size;
 	int retval;
 
@@ -118,7 +118,6 @@ static int __init uefi_init(void)
 		goto out;
 	}
 	retval = efi_config_parse_tables(config_tables, efi.systab->nr_tables,
-					 sizeof(efi_config_table_t),
 					 arch_tables);
 
 	if (!retval)
diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index 2bfd6c0806ce..db1fe765380f 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -460,7 +460,7 @@ void __init efi_mem_reserve(phys_addr_t addr, u64 size)
 	efi_arch_mem_reserve(addr, size);
 }
 
-static __initdata efi_config_table_type_t common_tables[] = {
+static const efi_config_table_type_t common_tables[] __initconst = {
 	{ACPI_20_TABLE_GUID, "ACPI 2.0", &efi.acpi20},
 	{ACPI_TABLE_GUID, "ACPI", &efi.acpi},
 	{SMBIOS_TABLE_GUID, "SMBIOS", &efi.smbios},
@@ -477,9 +477,9 @@ static __initdata efi_config_table_type_t common_tables[] = {
 	{NULL_GUID, NULL, NULL},
 };
 
-static __init int match_config_table(efi_guid_t *guid,
+static __init int match_config_table(const efi_guid_t *guid,
 				     unsigned long table,
-				     efi_config_table_type_t *table_types)
+				     const efi_config_table_type_t *table_types)
 {
 	int i;
 
@@ -498,39 +498,38 @@ static __init int match_config_table(efi_guid_t *guid,
 	return 0;
 }
 
-int __init efi_config_parse_tables(void *config_tables, int count, int sz,
-				   efi_config_table_type_t *arch_tables)
+int __init efi_config_parse_tables(const efi_config_table_t *config_tables,
+				   int count,
+				   const efi_config_table_type_t *arch_tables)
 {
-	void *tablep;
+	const efi_config_table_64_t *tbl64 = (void *)config_tables;
+	const efi_config_table_32_t *tbl32 = (void *)config_tables;
+	const efi_guid_t *guid;
+	unsigned long table;
 	int i;
 
-	tablep = config_tables;
 	pr_info("");
 	for (i = 0; i < count; i++) {
-		efi_guid_t guid;
-		unsigned long table;
-
-		if (efi_enabled(EFI_64BIT)) {
-			u64 table64;
-			guid = ((efi_config_table_64_t *)tablep)->guid;
-			table64 = ((efi_config_table_64_t *)tablep)->table;
-			table = table64;
-#ifndef CONFIG_64BIT
-			if (table64 >> 32) {
+		if (!IS_ENABLED(CONFIG_X86)) {
+			guid = &config_tables[i].guid;
+			table = (unsigned long)config_tables[i].table;
+		} else if (efi_enabled(EFI_64BIT)) {
+			guid = &tbl64[i].guid;
+			table = tbl64[i].table;
+
+			if (IS_ENABLED(CONFIG_X64_32) &&
+			    tbl64[i].table > U32_MAX) {
 				pr_cont("\n");
 				pr_err("Table located above 4GB, disabling EFI.\n");
 				return -EINVAL;
 			}
-#endif
 		} else {
-			guid = ((efi_config_table_32_t *)tablep)->guid;
-			table = ((efi_config_table_32_t *)tablep)->table;
+			guid = &tbl32[i].guid;
+			table = tbl32[i].table;
 		}
 
-		if (!match_config_table(&guid, table, common_tables))
-			match_config_table(&guid, table, arch_tables);
-
-		tablep += sz;
+		if (!match_config_table(guid, table, common_tables))
+			match_config_table(guid, table, arch_tables);
 	}
 	pr_cont("\n");
 	set_bit(EFI_CONFIG_TABLES, &efi.flags);
diff --git a/include/linux/efi.h b/include/linux/efi.h
index d61c25fd5824..99a7fcbe5e9b 100644
--- a/include/linux/efi.h
+++ b/include/linux/efi.h
@@ -613,8 +613,9 @@ extern void __init efi_esrt_init(void);
 #else
 static inline void efi_esrt_init(void) { }
 #endif
-extern int efi_config_parse_tables(void *config_tables, int count, int sz,
-				   efi_config_table_type_t *arch_tables);
+extern int efi_config_parse_tables(const efi_config_table_t *config_tables,
+				   int count,
+				   const efi_config_table_type_t *arch_tables);
 extern int efi_systab_check_header(const efi_table_hdr_t *systab_hdr,
 				   int min_major_version);
 extern void efi_systab_report_header(const efi_table_hdr_t *systab_hdr,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
