Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D4E160575
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:25:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NlNOxw0idV10+0ZK92VpuYc3dKuJGMeFWfT2YIDa4XU=; b=dln1W/TXcMqh7l+oRvKhjFCZNV
	qvzL0QtRzKjWDm0D1gLl7m3bGa99LG4PZZJ9/pTyXyLgEG58G+XvQcKITGDpZmzMNTOhJFeiv2lWw
	iNTsYql5QLztR0VRgqor6MEJRtx3/BXgDCezmiCbbwiGB4yelrJfbVFIQ5Nqs7acH7y9/Sn7p730V
	zjUBwMwCetHWfK6RYgOD70lhm9VZsfKVZLo+sPq+zX8y43IFUQhhz/1GGevEuEDiRp8uToCF+NGvU
	0PR9koox6NbPMGQq+HIfrG6fBbnMKPlknVJay/G8lf3zmtkk/EjlGSUvQ1TasQZGNLPeVVPpYDvb5
	k0xP+ojw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Obg-00008s-KV; Sun, 16 Feb 2020 18:25:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Oa9-0006JP-Ia
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:23:55 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E423222522;
 Sun, 16 Feb 2020 18:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581877433;
 bh=5b5M140echkw/dYLSqSctOwCKM+tl990EFoGSiaFw2k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HL5m5V5v7X31CbKPqK9uKYszH3bGqayPB7bHXAdrLRBZiOq8DGY4Jhv29cBpdNayF
 InnfJT+snnuYCP5ROfE/aj+0yO4XsIpvG2m/ZQY83laqD2ZGEmSln35erh20PYer8L
 UlsdVjOHsQp1U8XUgs0oPSgqJfJUbhrWuCuSQmY8=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 04/18] efi: make rng_seed table handling local to efi.c
Date: Sun, 16 Feb 2020 19:23:20 +0100
Message-Id: <20200216182334.8121-5-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200216182334.8121-1-ardb@kernel.org>
References: <20200216182334.8121-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_102353_684400_9535CA82 
X-CRM114-Status: GOOD (  14.08  )
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

Move the rng_seed table address from struct efi into a static global
variable in efi.c, which is the only place we ever refer to it anyway.
This reduces the footprint of struct efi, which is a r/w data structure
that is shared with the world.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/efi.c | 21 ++++++++++----------
 include/linux/efi.h        |  1 -
 2 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index 68527fbbe01c..bbb6246d08be 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -44,13 +44,14 @@ struct efi __read_mostly efi = {
 	.config_table		= EFI_INVALID_TABLE_ADDR,
 	.esrt			= EFI_INVALID_TABLE_ADDR,
 	.mem_attr_table		= EFI_INVALID_TABLE_ADDR,
-	.rng_seed		= EFI_INVALID_TABLE_ADDR,
 	.tpm_log		= EFI_INVALID_TABLE_ADDR,
 	.tpm_final_log		= EFI_INVALID_TABLE_ADDR,
 	.mem_reserve		= EFI_INVALID_TABLE_ADDR,
 };
 EXPORT_SYMBOL(efi);
 
+static unsigned long __ro_after_init rng_seed = EFI_INVALID_TABLE_ADDR;
+
 struct mm_struct efi_mm = {
 	.mm_rb			= RB_ROOT,
 	.mm_users		= ATOMIC_INIT(2),
@@ -467,7 +468,7 @@ static __initdata efi_config_table_type_t common_tables[] = {
 	{SMBIOS3_TABLE_GUID, "SMBIOS 3.0", &efi.smbios3},
 	{EFI_SYSTEM_RESOURCE_TABLE_GUID, "ESRT", &efi.esrt},
 	{EFI_MEMORY_ATTRIBUTES_TABLE_GUID, "MEMATTR", &efi.mem_attr_table},
-	{LINUX_EFI_RANDOM_SEED_TABLE_GUID, "RNG", &efi.rng_seed},
+	{LINUX_EFI_RANDOM_SEED_TABLE_GUID, "RNG", &rng_seed},
 	{LINUX_EFI_TPM_EVENT_LOG_GUID, "TPMEventLog", &efi.tpm_log},
 	{LINUX_EFI_TPM_FINAL_LOG_GUID, "TPMFinalLog", &efi.tpm_final_log},
 	{LINUX_EFI_MEMRESERVE_TABLE_GUID, "MEMRESERVE", &efi.mem_reserve},
@@ -535,11 +536,11 @@ int __init efi_config_parse_tables(void *config_tables, int count, int sz,
 	pr_cont("\n");
 	set_bit(EFI_CONFIG_TABLES, &efi.flags);
 
-	if (efi.rng_seed != EFI_INVALID_TABLE_ADDR) {
+	if (rng_seed != EFI_INVALID_TABLE_ADDR) {
 		struct linux_efi_random_seed *seed;
 		u32 size = 0;
 
-		seed = early_memremap(efi.rng_seed, sizeof(*seed));
+		seed = early_memremap(rng_seed, sizeof(*seed));
 		if (seed != NULL) {
 			size = seed->size;
 			early_memunmap(seed, sizeof(*seed));
@@ -547,8 +548,7 @@ int __init efi_config_parse_tables(void *config_tables, int count, int sz,
 			pr_err("Could not map UEFI random seed!\n");
 		}
 		if (size > 0) {
-			seed = early_memremap(efi.rng_seed,
-					      sizeof(*seed) + size);
+			seed = early_memremap(rng_seed, sizeof(*seed) + size);
 			if (seed != NULL) {
 				pr_notice("seeding entropy pool\n");
 				add_bootloader_randomness(seed->bits, seed->size);
@@ -1048,7 +1048,7 @@ static int update_efi_random_seed(struct notifier_block *nb,
 	if (!kexec_in_progress)
 		return NOTIFY_DONE;
 
-	seed = memremap(efi.rng_seed, sizeof(*seed), MEMREMAP_WB);
+	seed = memremap(rng_seed, sizeof(*seed), MEMREMAP_WB);
 	if (seed != NULL) {
 		size = min(seed->size, EFI_RANDOM_SEED_SIZE);
 		memunmap(seed);
@@ -1056,8 +1056,7 @@ static int update_efi_random_seed(struct notifier_block *nb,
 		pr_err("Could not map UEFI random seed!\n");
 	}
 	if (size > 0) {
-		seed = memremap(efi.rng_seed, sizeof(*seed) + size,
-				MEMREMAP_WB);
+		seed = memremap(rng_seed, sizeof(*seed) + size, MEMREMAP_WB);
 		if (seed != NULL) {
 			seed->size = size;
 			get_random_bytes(seed->bits, seed->size);
@@ -1073,9 +1072,9 @@ static struct notifier_block efi_random_seed_nb = {
 	.notifier_call = update_efi_random_seed,
 };
 
-static int register_update_efi_random_seed(void)
+static int __init register_update_efi_random_seed(void)
 {
-	if (efi.rng_seed == EFI_INVALID_TABLE_ADDR)
+	if (rng_seed == EFI_INVALID_TABLE_ADDR)
 		return 0;
 	return register_reboot_notifier(&efi_random_seed_nb);
 }
diff --git a/include/linux/efi.h b/include/linux/efi.h
index e091f2aff61d..36380542e054 100644
--- a/include/linux/efi.h
+++ b/include/linux/efi.h
@@ -540,7 +540,6 @@ extern struct efi {
 	unsigned long config_table;	/* config tables */
 	unsigned long esrt;		/* ESRT table */
 	unsigned long mem_attr_table;	/* memory attributes table */
-	unsigned long rng_seed;		/* UEFI firmware random seed */
 	unsigned long tpm_log;		/* TPM2 Event Log table */
 	unsigned long tpm_final_log;	/* TPM2 Final Events Log table */
 	unsigned long mem_reserve;	/* Linux EFI memreserve table */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
