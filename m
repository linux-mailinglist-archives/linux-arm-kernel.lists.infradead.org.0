Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84070160573
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R4gGHi65E3AOeLoxe7TDtR1GnVRcFWCYMU3cyAazHh0=; b=UAoPmGhWMKmIIWzy/7jh7LZwHf
	oANi+Z4Ejn+QtnNhWkcUPZTlY5Vf8HJ2tJwZePqgvOA1erawU2J3t0HduNDmyGi7rYlpnwoiEhiB6
	g7/TOAnjcMRHRspIjXnMlJT9/y+jFe+kDTQ+JtS7rlZyLyYzHLSduyvGeqQlQMfHzc6scA9hnRUMK
	VWf5t+G17cRYjzXnYO/eJIXhcBVGbmMCkSvX76AaJkUTQClNoT6H5ftYW1B7DZoeqogf6aHbGKwUX
	TgnYDM2dLNFMFMJJRd+H1OqjHuTdsAZlh6sNEnYWMnjqZbvfhZwQyG15Bk6Pcsc54L17xtJUkU/5J
	kILDpEPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ObT-000784-Ut; Sun, 16 Feb 2020 18:25:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Oa7-0006IQ-QD
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:23:53 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B062227BF;
 Sun, 16 Feb 2020 18:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581877431;
 bh=JsPzSCeZvVDyNylvlj/YUfYF8zfoCUdsQlRv8BdviFw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hJ9ldcYRMmclJBYhk28C9bBdMP3DsoyFEUkS/k0JJdHE+57GQcvpi0YYT49ScoJSB
 l7hufDFmWFqOrUTQFMbJGFLcTRY0zrHqM74dqxG3dMhboTjq9yL5Cl+yCt5m8gNjJT
 0STqQkA5hicRn+R3lLjmKCxYuQptYBqqKR+Gs0Ag=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 03/18] efi: move UGA and PROP table handling to x86 code
Date: Sun, 16 Feb 2020 19:23:19 +0100
Message-Id: <20200216182334.8121-4-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200216182334.8121-1-ardb@kernel.org>
References: <20200216182334.8121-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_102351_888448_A90FEB7F 
X-CRM114-Status: GOOD (  15.73  )
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

The UGA table is x86 specific (its handling was introduced when the
EFI support code was modified to accommodate IA32), so there is no
need to handle it in generic code.

The EFI properties table is not strictly x86 specific, but it was
deprecated almost immediately after having been introduced, due to
implementation difficulties. Only x86 takes it into account today,
and this is not going to change, so make this table x86 only as well.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/x86/platform/efi/efi.c | 32 ++++++++++++++++++--
 drivers/firmware/efi/efi.c  | 25 +--------------
 include/linux/efi.h         |  2 --
 3 files changed, 31 insertions(+), 28 deletions(-)

diff --git a/arch/x86/platform/efi/efi.c b/arch/x86/platform/efi/efi.c
index bb45fd9f221c..70efb75607aa 100644
--- a/arch/x86/platform/efi/efi.c
+++ b/arch/x86/platform/efi/efi.c
@@ -57,7 +57,12 @@
 static efi_system_table_t efi_systab __initdata;
 static u64 efi_systab_phys __initdata;
 
+static unsigned long prop_phys = EFI_INVALID_TABLE_ADDR;
+static unsigned long uga_phys = EFI_INVALID_TABLE_ADDR;
+
 static efi_config_table_type_t arch_tables[] __initdata = {
+	{EFI_PROPERTIES_TABLE_GUID, "PROP", &prop_phys},
+	{UGA_IO_PROTOCOL_GUID, "UGA", &uga_phys},
 #ifdef CONFIG_X86_UV
 	{UV_SYSTEM_TABLE_GUID, "UVsystab", &uv_systab_phys},
 #endif
@@ -69,7 +74,7 @@ static const unsigned long * const efi_tables[] = {
 	&efi.acpi20,
 	&efi.smbios,
 	&efi.smbios3,
-	&efi.uga,
+	&uga_phys,
 #ifdef CONFIG_X86_UV
 	&uv_systab_phys,
 #endif
@@ -77,7 +82,7 @@ static const unsigned long * const efi_tables[] = {
 	&efi.runtime,
 	&efi.config_table,
 	&efi.esrt,
-	&efi.properties_table,
+	&prop_phys,
 	&efi.mem_attr_table,
 #ifdef CONFIG_EFI_RCI2_TABLE
 	&rci2_table_phys,
@@ -493,6 +498,22 @@ void __init efi_init(void)
 		return;
 	}
 
+	/* Parse the EFI Properties table if it exists */
+	if (prop_phys != EFI_INVALID_TABLE_ADDR) {
+		efi_properties_table_t *tbl;
+
+		tbl = early_memremap_ro(prop_phys, sizeof(*tbl));
+		if (tbl == NULL) {
+			pr_err("Could not map Properties table!\n");
+		} else {
+			if (tbl->memory_protection_attribute &
+			    EFI_PROPERTIES_RUNTIME_MEMORY_PROTECTION_NON_EXECUTABLE_PE_DATA)
+				set_bit(EFI_NX_PE_DATA, &efi.flags);
+
+			early_memunmap(tbl, sizeof(*tbl));
+		}
+	}
+
 	set_bit(EFI_RUNTIME_SERVICES, &efi.flags);
 	efi_clean_memmap();
 
@@ -996,3 +1017,10 @@ bool efi_is_table_address(unsigned long phys_addr)
 
 	return false;
 }
+
+char *efi_systab_show_arch(char *str)
+{
+	if (uga_phys != EFI_INVALID_TABLE_ADDR)
+		str += sprintf(str, "UGA=0x%lx\n", uga_phys);
+	return str;
+}
diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index 8129a52f8ef5..68527fbbe01c 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -39,12 +39,10 @@ struct efi __read_mostly efi = {
 	.acpi20			= EFI_INVALID_TABLE_ADDR,
 	.smbios			= EFI_INVALID_TABLE_ADDR,
 	.smbios3		= EFI_INVALID_TABLE_ADDR,
-	.uga			= EFI_INVALID_TABLE_ADDR,
 	.fw_vendor		= EFI_INVALID_TABLE_ADDR,
 	.runtime		= EFI_INVALID_TABLE_ADDR,
 	.config_table		= EFI_INVALID_TABLE_ADDR,
 	.esrt			= EFI_INVALID_TABLE_ADDR,
-	.properties_table	= EFI_INVALID_TABLE_ADDR,
 	.mem_attr_table		= EFI_INVALID_TABLE_ADDR,
 	.rng_seed		= EFI_INVALID_TABLE_ADDR,
 	.tpm_log		= EFI_INVALID_TABLE_ADDR,
@@ -132,10 +130,8 @@ static ssize_t systab_show(struct kobject *kobj,
 		str += sprintf(str, "SMBIOS3=0x%lx\n", efi.smbios3);
 	if (efi.smbios != EFI_INVALID_TABLE_ADDR)
 		str += sprintf(str, "SMBIOS=0x%lx\n", efi.smbios);
-	if (efi.uga != EFI_INVALID_TABLE_ADDR)
-		str += sprintf(str, "UGA=0x%lx\n", efi.uga);
 
-	if (IS_ENABLED(CONFIG_IA64)) {
+	if (IS_ENABLED(CONFIG_IA64) || IS_ENABLED(CONFIG_X86)) {
 		extern char *efi_systab_show_arch(char *str);
 
 		str = efi_systab_show_arch(str);
@@ -469,9 +465,7 @@ static __initdata efi_config_table_type_t common_tables[] = {
 	{ACPI_TABLE_GUID, "ACPI", &efi.acpi},
 	{SMBIOS_TABLE_GUID, "SMBIOS", &efi.smbios},
 	{SMBIOS3_TABLE_GUID, "SMBIOS 3.0", &efi.smbios3},
-	{UGA_IO_PROTOCOL_GUID, "UGA", &efi.uga},
 	{EFI_SYSTEM_RESOURCE_TABLE_GUID, "ESRT", &efi.esrt},
-	{EFI_PROPERTIES_TABLE_GUID, "PROP", &efi.properties_table},
 	{EFI_MEMORY_ATTRIBUTES_TABLE_GUID, "MEMATTR", &efi.mem_attr_table},
 	{LINUX_EFI_RANDOM_SEED_TABLE_GUID, "RNG", &efi.rng_seed},
 	{LINUX_EFI_TPM_EVENT_LOG_GUID, "TPMEventLog", &efi.tpm_log},
@@ -570,23 +564,6 @@ int __init efi_config_parse_tables(void *config_tables, int count, int sz,
 
 	efi_tpm_eventlog_init();
 
-	/* Parse the EFI Properties table if it exists */
-	if (efi.properties_table != EFI_INVALID_TABLE_ADDR) {
-		efi_properties_table_t *tbl;
-
-		tbl = early_memremap(efi.properties_table, sizeof(*tbl));
-		if (tbl == NULL) {
-			pr_err("Could not map Properties table!\n");
-			return -ENOMEM;
-		}
-
-		if (tbl->memory_protection_attribute &
-		    EFI_PROPERTIES_RUNTIME_MEMORY_PROTECTION_NON_EXECUTABLE_PE_DATA)
-			set_bit(EFI_NX_PE_DATA, &efi.flags);
-
-		early_memunmap(tbl, sizeof(*tbl));
-	}
-
 	if (efi.mem_reserve != EFI_INVALID_TABLE_ADDR) {
 		unsigned long prsv = efi.mem_reserve;
 
diff --git a/include/linux/efi.h b/include/linux/efi.h
index 45443932104f..e091f2aff61d 100644
--- a/include/linux/efi.h
+++ b/include/linux/efi.h
@@ -535,12 +535,10 @@ extern struct efi {
 	unsigned long acpi20;		/* ACPI table  (ACPI 2.0) */
 	unsigned long smbios;		/* SMBIOS table (32 bit entry point) */
 	unsigned long smbios3;		/* SMBIOS table (64 bit entry point) */
-	unsigned long uga;		/* UGA table */
 	unsigned long fw_vendor;	/* fw_vendor */
 	unsigned long runtime;		/* runtime table */
 	unsigned long config_table;	/* config tables */
 	unsigned long esrt;		/* ESRT table */
-	unsigned long properties_table;	/* properties table */
 	unsigned long mem_attr_table;	/* memory attributes table */
 	unsigned long rng_seed;		/* UEFI firmware random seed */
 	unsigned long tpm_log;		/* TPM2 Event Log table */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
