Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AD1160585
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:29:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JvUskdUN47+UgDxmX/61jRzUxI5zH1eBgjtI7l1YvJU=; b=EWPkG0+lXWy9moyoG7qs5SKGQe
	LCkxCbxHFjoEY9QBDBeYqa0oNyKjBmv6LpVlgiuPmBtJ27k5HSylonI281Co0Mt1k6Tf6xNpGxYYY
	gmAPrEZKzpFOoKujytCng+PNV0Y/ZLyH09rak2oCgm8fzwqE+RDW7fBiXir5VpJyYGAocWE5yCr/k
	XJuNG9/AxagpUAt8bjo4qaHjCFVHqMjtO1NBKcZIsI8TaMxn2MOdB5kDv9PJg6aa2ciWZPu/deMBJ
	5DqggshJ9Nkh8LzT7YPkvdYuGJO3eOdiiB5goEBt+alkWNzNoQ+8oYPAfLAqGGumoj7hyn/GJn54M
	WcAbE+Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Of6-0003Yg-T8; Sun, 16 Feb 2020 18:29:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3OaX-0006eX-81
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:24:19 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 883482086A;
 Sun, 16 Feb 2020 18:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581877456;
 bh=ebMK4OlA/+lK0k5n2Vxoy4v7LrZN61elIxrBoGV+I1M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cPiUrk0U5n5PvKEAXfoJ8Pev6MIhkKYoPBY/rh0Wm8eytbsMoqAMeXERX4pH4OUlb
 2nLLGC5gKk+VhBBrimDpe2wfGJ5jGsEbI8uCfeFQOlQuOgYqwb14KJ8MJH4eMcsLAg
 ApiCKSVnmJRV6pnAuP5XP2y4s2THVJGt49hEGqV8=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 18/18] efi/x86: drop 'systab' member from struct efi
Date: Sun, 16 Feb 2020 19:23:34 +0100
Message-Id: <20200216182334.8121-19-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200216182334.8121-1-ardb@kernel.org>
References: <20200216182334.8121-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_102417_335791_52DAD93D 
X-CRM114-Status: GOOD (  15.25  )
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

The systab member in struct efi has outlived its usefulness, now that
we have better ways to access the only piece of information we are
interested in after init, which is the EFI runtime services table
address. So instead of instantiating a doctored copy at early boot
with lots of mangled values, and switching the pointer when switching
into virtual mode, let's grab the values we need directly, and get
rid of the systab pointer entirely.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/x86/platform/efi/efi.c | 87 ++++----------------
 include/linux/efi.h         | 52 ++++++------
 2 files changed, 41 insertions(+), 98 deletions(-)

diff --git a/arch/x86/platform/efi/efi.c b/arch/x86/platform/efi/efi.c
index 40eb4d2e3321..2d7ae24c5d02 100644
--- a/arch/x86/platform/efi/efi.c
+++ b/arch/x86/platform/efi/efi.c
@@ -54,8 +54,6 @@
 #include <asm/x86_init.h>
 #include <asm/uv/uv.h>
 
-static efi_system_table_t efi_systab __initdata;
-
 static unsigned long efi_systab_phys __initdata;
 static unsigned long prop_phys = EFI_INVALID_TABLE_ADDR;
 static unsigned long uga_phys = EFI_INVALID_TABLE_ADDR;
@@ -362,28 +360,8 @@ static int __init efi_systab_init(unsigned long phys)
 	if (efi_enabled(EFI_64BIT)) {
 		const efi_system_table_64_t *systab64 = p;
 
-		efi_systab.hdr			= systab64->hdr;
-		efi_systab.fw_vendor		= systab64->fw_vendor;
-		efi_systab.fw_revision		= systab64->fw_revision;
-		efi_systab.con_in_handle	= systab64->con_in_handle;
-		efi_systab.con_in		= systab64->con_in;
-		efi_systab.con_out_handle	= systab64->con_out_handle;
-		efi_systab.con_out		= (void *)(unsigned long)systab64->con_out;
-		efi_systab.stderr_handle	= systab64->stderr_handle;
-		efi_systab.stderr		= systab64->stderr;
-		efi_systab.runtime		= (void *)(unsigned long)systab64->runtime;
-		efi_systab.boottime		= (void *)(unsigned long)systab64->boottime;
-		efi_systab.nr_tables		= systab64->nr_tables;
-		efi_systab.tables		= systab64->tables;
-
-		over4g = systab64->con_in_handle	> U32_MAX ||
-			 systab64->con_in		> U32_MAX ||
-			 systab64->con_out_handle	> U32_MAX ||
-			 systab64->con_out		> U32_MAX ||
-			 systab64->stderr_handle	> U32_MAX ||
-			 systab64->stderr		> U32_MAX ||
-			 systab64->runtime		> U32_MAX ||
-			 systab64->boottime		> U32_MAX;
+		efi_runtime	= systab64->runtime;
+		over4g		= systab64->runtime > U32_MAX;
 
 		if (efi_setup) {
 			struct efi_setup_data *data;
@@ -394,38 +372,33 @@ static int __init efi_systab_init(unsigned long phys)
 				return -ENOMEM;
 			}
 
-			efi_systab.fw_vendor	= (unsigned long)data->fw_vendor;
-			efi_systab.tables	= (unsigned long)data->tables;
+			efi_fw_vendor		= (unsigned long)data->fw_vendor;
+			efi_config_table	= (unsigned long)data->tables;
 
 			over4g |= data->fw_vendor	> U32_MAX ||
 				  data->tables		> U32_MAX;
 
 			early_memunmap(data, sizeof(*data));
 		} else {
+			efi_fw_vendor		= systab64->fw_vendor;
+			efi_config_table	= systab64->tables;
+
 			over4g |= systab64->fw_vendor	> U32_MAX ||
 				  systab64->tables	> U32_MAX;
 		}
+		efi_nr_tables = systab64->nr_tables;
 	} else {
 		const efi_system_table_32_t *systab32 = p;
 
-		efi_systab.hdr			= systab32->hdr;
-		efi_systab.fw_vendor		= systab32->fw_vendor;
-		efi_systab.fw_revision		= systab32->fw_revision;
-		efi_systab.con_in_handle	= systab32->con_in_handle;
-		efi_systab.con_in		= systab32->con_in;
-		efi_systab.con_out_handle	= systab32->con_out_handle;
-		efi_systab.con_out		= (void *)(unsigned long)systab32->con_out;
-		efi_systab.stderr_handle	= systab32->stderr_handle;
-		efi_systab.stderr		= systab32->stderr;
-		efi_systab.runtime		= (void *)(unsigned long)systab32->runtime;
-		efi_systab.boottime		= (void *)(unsigned long)systab32->boottime;
-		efi_systab.nr_tables		= systab32->nr_tables;
-		efi_systab.tables		= systab32->tables;
+		efi_fw_vendor		= systab32->fw_vendor;
+		efi_runtime		= systab32->runtime;
+		efi_config_table	= systab32->tables;
+		efi_nr_tables		= systab32->nr_tables;
 	}
 
 	efi.runtime_version = hdr->revision;
 
-	efi_systab_report_header(hdr, efi_systab.fw_vendor);
+	efi_systab_report_header(hdr, efi_fw_vendor);
 	early_memunmap(p, size);
 
 	if (IS_ENABLED(CONFIG_X86_32) && over4g) {
@@ -433,7 +406,6 @@ static int __init efi_systab_init(unsigned long phys)
 		return -EINVAL;
 	}
 
-	efi.systab = &efi_systab;
 	return 0;
 }
 
@@ -481,11 +453,6 @@ void __init efi_init(void)
 	if (efi_systab_init(efi_systab_phys))
 		return;
 
-	efi_config_table = (unsigned long)efi.systab->tables;
-	efi_nr_tables    = efi.systab->nr_tables;
-	efi_fw_vendor    = (unsigned long)efi.systab->fw_vendor;
-	efi_runtime      = (unsigned long)efi.systab->runtime;
-
 	if (efi_reuse_config(efi_config_table, efi_nr_tables))
 		return;
 
@@ -627,20 +594,6 @@ static void __init efi_merge_regions(void)
 	}
 }
 
-static void __init get_systab_virt_addr(efi_memory_desc_t *md)
-{
-	unsigned long size;
-	u64 end, systab;
-
-	size = md->num_pages << EFI_PAGE_SHIFT;
-	end = md->phys_addr + size;
-	systab = efi_systab_phys;
-	if (md->phys_addr <= systab && systab < end) {
-		systab += md->virt_addr - md->phys_addr;
-		efi.systab = (efi_system_table_t *)(unsigned long)systab;
-	}
-}
-
 static void *realloc_pages(void *old_memmap, int old_shift)
 {
 	void *ret;
@@ -796,7 +749,6 @@ static void * __init efi_map_regions(int *count, int *pg_shift)
 			continue;
 
 		efi_map_region(md);
-		get_systab_virt_addr(md);
 
 		if (left < desc_size) {
 			new_memmap = realloc_pages(new_memmap, *pg_shift);
@@ -822,8 +774,6 @@ static void __init kexec_enter_virtual_mode(void)
 	efi_memory_desc_t *md;
 	unsigned int num_pages;
 
-	efi.systab = NULL;
-
 	/*
 	 * We don't do virtual mode, since we don't do runtime services, on
 	 * non-native EFI. With the UV1 memmap, we don't do runtime services in
@@ -846,10 +796,8 @@ static void __init kexec_enter_virtual_mode(void)
 	* Map efi regions which were passed via setup_data. The virt_addr is a
 	* fixed addr which was used in first kernel of a kexec boot.
 	*/
-	for_each_efi_memory_desc(md) {
+	for_each_efi_memory_desc(md)
 		efi_map_region_fixed(md); /* FIXME: add error handling */
-		get_systab_virt_addr(md);
-	}
 
 	/*
 	 * Unregister the early EFI memmap from efi_init() and install
@@ -864,8 +812,6 @@ static void __init kexec_enter_virtual_mode(void)
 		return;
 	}
 
-	BUG_ON(!efi.systab);
-
 	num_pages = ALIGN(efi.memmap.nr_map * efi.memmap.desc_size, PAGE_SIZE);
 	num_pages >>= PAGE_SHIFT;
 
@@ -908,8 +854,6 @@ static void __init __efi_enter_virtual_mode(void)
 	efi_status_t status;
 	unsigned long pa;
 
-	efi.systab = NULL;
-
 	if (efi_alloc_page_tables()) {
 		pr_err("Failed to allocate EFI page tables\n");
 		goto err;
@@ -941,9 +885,6 @@ static void __init __efi_enter_virtual_mode(void)
 		efi_print_memmap();
 	}
 
-	if (WARN_ON(!efi.systab))
-		goto err;
-
 	if (efi_setup_page_tables(pa, 1 << pg_shift))
 		goto err;
 
diff --git a/include/linux/efi.h b/include/linux/efi.h
index 1f69c4c2dd5c..575e6aa39514 100644
--- a/include/linux/efi.h
+++ b/include/linux/efi.h
@@ -530,31 +530,33 @@ typedef struct {
  */
 extern struct efi {
 	const efi_runtime_services_t	*runtime;		/* EFI runtime services table */
-	efi_system_table_t *systab;	/* EFI system table */
-	unsigned int runtime_version;	/* Runtime services version */
-	unsigned long acpi;		/* ACPI table  (IA64 ext 0.71) */
-	unsigned long acpi20;		/* ACPI table  (ACPI 2.0) */
-	unsigned long smbios;		/* SMBIOS table (32 bit entry point) */
-	unsigned long smbios3;		/* SMBIOS table (64 bit entry point) */
-	unsigned long esrt;		/* ESRT table */
-	unsigned long tpm_log;		/* TPM2 Event Log table */
-	unsigned long tpm_final_log;	/* TPM2 Final Events Log table */
-	efi_get_time_t *get_time;
-	efi_set_time_t *set_time;
-	efi_get_wakeup_time_t *get_wakeup_time;
-	efi_set_wakeup_time_t *set_wakeup_time;
-	efi_get_variable_t *get_variable;
-	efi_get_next_variable_t *get_next_variable;
-	efi_set_variable_t *set_variable;
-	efi_set_variable_t *set_variable_nonblocking;
-	efi_query_variable_info_t *query_variable_info;
-	efi_query_variable_info_t *query_variable_info_nonblocking;
-	efi_update_capsule_t *update_capsule;
-	efi_query_capsule_caps_t *query_capsule_caps;
-	efi_get_next_high_mono_count_t *get_next_high_mono_count;
-	efi_reset_system_t *reset_system;
-	struct efi_memory_map memmap;
-	unsigned long flags;
+	unsigned int			runtime_version;	/* Runtime services version */
+
+	unsigned long			acpi;			/* ACPI table  (IA64 ext 0.71) */
+	unsigned long			acpi20;			/* ACPI table  (ACPI 2.0) */
+	unsigned long			smbios;			/* SMBIOS table (32 bit entry point) */
+	unsigned long			smbios3;		/* SMBIOS table (64 bit entry point) */
+	unsigned long			esrt;			/* ESRT table */
+	unsigned long			tpm_log;		/* TPM2 Event Log table */
+	unsigned long			tpm_final_log;		/* TPM2 Final Events Log table */
+
+	efi_get_time_t			*get_time;
+	efi_set_time_t			*set_time;
+	efi_get_wakeup_time_t		*get_wakeup_time;
+	efi_set_wakeup_time_t		*set_wakeup_time;
+	efi_get_variable_t		*get_variable;
+	efi_get_next_variable_t		*get_next_variable;
+	efi_set_variable_t		*set_variable;
+	efi_set_variable_t		*set_variable_nonblocking;
+	efi_query_variable_info_t	*query_variable_info;
+	efi_query_variable_info_t	*query_variable_info_nonblocking;
+	efi_update_capsule_t		*update_capsule;
+	efi_query_capsule_caps_t	*query_capsule_caps;
+	efi_get_next_high_mono_count_t	*get_next_high_mono_count;
+	efi_reset_system_t		*reset_system;
+
+	struct efi_memory_map		memmap;
+	unsigned long			flags;
 } efi;
 
 extern struct mm_struct efi_mm;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
