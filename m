Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF81B160576
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:25:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1bF8f+ZSSejGSR6gO4bRkXy6jrCfZRcRl5Oh2OFqI1U=; b=bKpZ6S+z1KO5RVvG2VNj6GMROP
	1souYW6BqbOgTTdDfq2JoqbMo4F6fYSZGK9Fqzf4UosupN17Jsb+UpgB/5wtSjwoYN9iryEIAgK82
	uDqd9Wi/A6mPYTdDvYIPjVAostu5KSAVs9jrjAQU4Kbn34F/XYxqJHFcr+Ju3Bgi3hFjVYWKyNwri
	i304oWkHd3DU4TlhY98798aC/Dg5DUijJGfMcdr1UdOje48CpOWRZFkuhf9vZNaaQBVGr0xfmwLAl
	Id7xPIKUZXJhH+8maaOHKiaMomm7gDf68Pl+Eqi0ScRZ1smGNfn1cEi4sstBCjNVPcIYRm/OVgG4L
	4kkTRN7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Obv-0000Qc-CI; Sun, 16 Feb 2020 18:25:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3OaB-0006L9-Bv
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:23:56 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C1BE227BF;
 Sun, 16 Feb 2020 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581877434;
 bh=8Rv0RYfX4r364tsdeZ+WYlbCOm523pI9rBuG7Ne55yE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rY2dKM53lM7g64wbeZ5FV575ilMcNqaDkg4Pam21pJ+LCAw1tHBsp5g/GPcaBdwaN
 E849VmFlqTMq37eW2ZJ/MbxuEOIDjuq0OxjrJpv3C3N1MnslaWuX+xHfLaEa/REtPQ
 eZAJS5gM9RTb5WF5ebw2eASSrn+Jnwj82CLIdUzw=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 05/18] efi: move mem_attr_table out of struct efi
Date: Sun, 16 Feb 2020 19:23:21 +0100
Message-Id: <20200216182334.8121-6-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200216182334.8121-1-ardb@kernel.org>
References: <20200216182334.8121-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_102355_462904_D6E05791 
X-CRM114-Status: GOOD (  14.72  )
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

The memory attributes table is only used at init time by the core EFI
code, so there is no need to carry its address in struct efi that is
shared with the world. So move it out, and make it __ro_after_init as
well, considering that the value is set during early boot.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/x86/platform/efi/efi.c    |  2 +-
 drivers/firmware/efi/efi.c     |  3 +--
 drivers/firmware/efi/memattr.c | 13 +++++++------
 include/linux/efi.h            |  3 ++-
 4 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/arch/x86/platform/efi/efi.c b/arch/x86/platform/efi/efi.c
index 70efb75607aa..db4c14f62978 100644
--- a/arch/x86/platform/efi/efi.c
+++ b/arch/x86/platform/efi/efi.c
@@ -83,7 +83,7 @@ static const unsigned long * const efi_tables[] = {
 	&efi.config_table,
 	&efi.esrt,
 	&prop_phys,
-	&efi.mem_attr_table,
+	&efi_mem_attr_table,
 #ifdef CONFIG_EFI_RCI2_TABLE
 	&rci2_table_phys,
 #endif
diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index bbb6246d08be..1fc4e174f11d 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -43,7 +43,6 @@ struct efi __read_mostly efi = {
 	.runtime		= EFI_INVALID_TABLE_ADDR,
 	.config_table		= EFI_INVALID_TABLE_ADDR,
 	.esrt			= EFI_INVALID_TABLE_ADDR,
-	.mem_attr_table		= EFI_INVALID_TABLE_ADDR,
 	.tpm_log		= EFI_INVALID_TABLE_ADDR,
 	.tpm_final_log		= EFI_INVALID_TABLE_ADDR,
 	.mem_reserve		= EFI_INVALID_TABLE_ADDR,
@@ -467,7 +466,7 @@ static __initdata efi_config_table_type_t common_tables[] = {
 	{SMBIOS_TABLE_GUID, "SMBIOS", &efi.smbios},
 	{SMBIOS3_TABLE_GUID, "SMBIOS 3.0", &efi.smbios3},
 	{EFI_SYSTEM_RESOURCE_TABLE_GUID, "ESRT", &efi.esrt},
-	{EFI_MEMORY_ATTRIBUTES_TABLE_GUID, "MEMATTR", &efi.mem_attr_table},
+	{EFI_MEMORY_ATTRIBUTES_TABLE_GUID, "MEMATTR", &efi_mem_attr_table},
 	{LINUX_EFI_RANDOM_SEED_TABLE_GUID, "RNG", &rng_seed},
 	{LINUX_EFI_TPM_EVENT_LOG_GUID, "TPMEventLog", &efi.tpm_log},
 	{LINUX_EFI_TPM_FINAL_LOG_GUID, "TPMFinalLog", &efi.tpm_final_log},
diff --git a/drivers/firmware/efi/memattr.c b/drivers/firmware/efi/memattr.c
index 58452fde92cc..3045120acf8e 100644
--- a/drivers/firmware/efi/memattr.c
+++ b/drivers/firmware/efi/memattr.c
@@ -13,6 +13,7 @@
 #include <asm/early_ioremap.h>
 
 static int __initdata tbl_size;
+unsigned long __ro_after_init efi_mem_attr_table;
 
 /*
  * Reserve the memory associated with the Memory Attributes configuration
@@ -22,13 +23,13 @@ int __init efi_memattr_init(void)
 {
 	efi_memory_attributes_table_t *tbl;
 
-	if (efi.mem_attr_table == EFI_INVALID_TABLE_ADDR)
+	if (efi_mem_attr_table == EFI_INVALID_TABLE_ADDR)
 		return 0;
 
-	tbl = early_memremap(efi.mem_attr_table, sizeof(*tbl));
+	tbl = early_memremap(efi_mem_attr_table, sizeof(*tbl));
 	if (!tbl) {
 		pr_err("Failed to map EFI Memory Attributes table @ 0x%lx\n",
-		       efi.mem_attr_table);
+		       efi_mem_attr_table);
 		return -ENOMEM;
 	}
 
@@ -39,7 +40,7 @@ int __init efi_memattr_init(void)
 	}
 
 	tbl_size = sizeof(*tbl) + tbl->num_entries * tbl->desc_size;
-	memblock_reserve(efi.mem_attr_table, tbl_size);
+	memblock_reserve(efi_mem_attr_table, tbl_size);
 	set_bit(EFI_MEM_ATTR, &efi.flags);
 
 unmap:
@@ -147,10 +148,10 @@ int __init efi_memattr_apply_permissions(struct mm_struct *mm,
 	if (WARN_ON(!efi_enabled(EFI_MEMMAP)))
 		return 0;
 
-	tbl = memremap(efi.mem_attr_table, tbl_size, MEMREMAP_WB);
+	tbl = memremap(efi_mem_attr_table, tbl_size, MEMREMAP_WB);
 	if (!tbl) {
 		pr_err("Failed to map EFI Memory Attributes table @ 0x%lx\n",
-		       efi.mem_attr_table);
+		       efi_mem_attr_table);
 		return -ENOMEM;
 	}
 
diff --git a/include/linux/efi.h b/include/linux/efi.h
index 36380542e054..b093fce1cf59 100644
--- a/include/linux/efi.h
+++ b/include/linux/efi.h
@@ -539,7 +539,6 @@ extern struct efi {
 	unsigned long runtime;		/* runtime table */
 	unsigned long config_table;	/* config tables */
 	unsigned long esrt;		/* ESRT table */
-	unsigned long mem_attr_table;	/* memory attributes table */
 	unsigned long tpm_log;		/* TPM2 Event Log table */
 	unsigned long tpm_final_log;	/* TPM2 Final Events Log table */
 	unsigned long mem_reserve;	/* Linux EFI memreserve table */
@@ -641,6 +640,8 @@ extern void __init efi_fake_memmap(void);
 static inline void efi_fake_memmap(void) { }
 #endif
 
+extern unsigned long efi_mem_attr_table;
+
 /*
  * efi_memattr_perm_setter - arch specific callback function passed into
  *                           efi_memattr_apply_permissions() that updates the
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
