Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C06416057C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:27:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oZA0O7FucI05n9K9DqXaTNurzLSfgWjZh1bQ7uYdzzI=; b=Ktyligb+qOhuCyeXObfZdMC8V/
	ZjWRvazV3sflv/sHDDRFGeKQYIktqAwk6+a7Wb5CWH/wxp+o0XBF1TdJ2u3aYimtpOlXBRo92BTO0
	cYoWBKYCFzB4UZNFBE7YKIP21b63DGMUFs4sPJQAautDg8vLnOWnP72FkmnY2NrS/rojdUmAjdm95
	si14mpUnewgzVDKS06l/ng/6B/bC6PJ4tvFIa71WO8itGA2YjlmUJhFh87F7CRE4ppBcY8x5e9sED
	UJBayGT517o15W9r1KXOwYx6Lh0OLLw3dp8h08YH+5zoAMAq81DNV5jjthIr/qoiK2QMqLSUM0w9U
	ynNdZzyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3OdT-0001o9-8u; Sun, 16 Feb 2020 18:27:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3OaM-0006V7-Tn
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:24:10 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BAE3624125;
 Sun, 16 Feb 2020 18:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581877445;
 bh=535G2Z6StN4Ag1aO0gRi6xti0zt7h38+r39I0O3lAk8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sFiyKrgOP9c19cScnbZQghLN4QA0LCqNwm75+aGlG0FUblmVzZv8FqPCDO2ubjczS
 Ed+qzRTyxJ5mXoRvja33ngrr8OrRohFwRgACnrScf/qSmZet864xPbdbqYn92FPQa1
 OnwbKMFZ8bHrSiFCDSNdODl8UvwC3SpRWaifqMwU=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 11/18] efi: make efi_config_init() x86 only
Date: Sun, 16 Feb 2020 19:23:27 +0100
Message-Id: <20200216182334.8121-12-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200216182334.8121-1-ardb@kernel.org>
References: <20200216182334.8121-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_102407_287272_104C3647 
X-CRM114-Status: GOOD (  12.96  )
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

The efi_config_init() routine is no longer shared with ia64 so let's
move it into the x86 arch code before making further x86 specific
changes to it.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/x86/platform/efi/efi.c | 30 +++++++++++++++++++
 drivers/firmware/efi/efi.c  | 31 --------------------
 include/linux/efi.h         |  1 -
 3 files changed, 30 insertions(+), 32 deletions(-)

diff --git a/arch/x86/platform/efi/efi.c b/arch/x86/platform/efi/efi.c
index 777373423a67..26d905e6b579 100644
--- a/arch/x86/platform/efi/efi.c
+++ b/arch/x86/platform/efi/efi.c
@@ -434,6 +434,36 @@ static int __init efi_systab_init(u64 phys)
 	return 0;
 }
 
+static int __init efi_config_init(efi_config_table_type_t *arch_tables)
+{
+	void *config_tables;
+	int sz, ret;
+
+	if (efi.systab->nr_tables == 0)
+		return 0;
+
+	if (efi_enabled(EFI_64BIT))
+		sz = sizeof(efi_config_table_64_t);
+	else
+		sz = sizeof(efi_config_table_32_t);
+
+	/*
+	 * Let's see what config tables the firmware passed to us.
+	 */
+	config_tables = early_memremap(efi.systab->tables,
+				       efi.systab->nr_tables * sz);
+	if (config_tables == NULL) {
+		pr_err("Could not map Configuration table!\n");
+		return -ENOMEM;
+	}
+
+	ret = efi_config_parse_tables(config_tables, efi.systab->nr_tables, sz,
+				      arch_tables);
+
+	early_memunmap(config_tables, efi.systab->nr_tables * sz);
+	return ret;
+}
+
 void __init efi_init(void)
 {
 	if (IS_ENABLED(CONFIG_X86_32) &&
diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index 80fe0044f2e2..2bfd6c0806ce 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -601,37 +601,6 @@ int __init efi_config_parse_tables(void *config_tables, int count, int sz,
 	return 0;
 }
 
-int __init efi_config_init(efi_config_table_type_t *arch_tables)
-{
-	void *config_tables;
-	int sz, ret;
-
-	if (efi.systab->nr_tables == 0)
-		return 0;
-
-	if (efi_enabled(EFI_64BIT))
-		sz = sizeof(efi_config_table_64_t);
-	else
-		sz = sizeof(efi_config_table_32_t);
-
-	/*
-	 * Let's see what config tables the firmware passed to us.
-	 */
-	config_tables = early_memremap(efi.systab->tables,
-				       efi.systab->nr_tables * sz);
-	if (config_tables == NULL) {
-		pr_err("Could not map Configuration table!\n");
-		return -ENOMEM;
-	}
-
-	ret = efi_config_parse_tables(config_tables, efi.systab->nr_tables, sz,
-				      arch_tables);
-
-	early_memunmap(config_tables, efi.systab->nr_tables * sz);
-	return ret;
-}
-
-
 int __init efi_systab_check_header(const efi_table_hdr_t *systab_hdr,
 				   int min_major_version)
 {
diff --git a/include/linux/efi.h b/include/linux/efi.h
index 287510e84dfb..d61c25fd5824 100644
--- a/include/linux/efi.h
+++ b/include/linux/efi.h
@@ -608,7 +608,6 @@ extern int __init efi_memmap_split_count(efi_memory_desc_t *md,
 extern void __init efi_memmap_insert(struct efi_memory_map *old_memmap,
 				     void *buf, struct efi_mem_range *mem);
 
-extern int efi_config_init(efi_config_table_type_t *arch_tables);
 #ifdef CONFIG_EFI_ESRT
 extern void __init efi_esrt_init(void);
 #else
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
