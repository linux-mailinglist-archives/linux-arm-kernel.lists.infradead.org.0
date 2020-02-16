Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2E816057A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:26:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=onhkjPM9Hf2+3C2P2D8tdSzPoovMm4pu1JJHC0WAIoU=; b=pMBVfWyA8Yw5Y9502ktLYr9YAj
	YyFIu2maw7H2uEEE+m1QWgGv8tTt8Oqodjd2ESQVpDicffZmaHPuAhaMs6UVJnY5mw0u0PmKJPF0H
	fApgIIixxxBDXlwCZS21NafHuJNbfievg7RlCqjnpe8+yB9/pcFLy77sWFxG2TCisSewabZy9x9bB
	x8A+gCECFuGg05G4ptcj1mLuQAHO+ug8rv7kRWwSqwLHIMtM53ZxGOIRPlLigbaAcbp+WGnYd7g6j
	s3OYwK1CAYw/s0qMInMT/vo8g224kwr+oiQqqB1jbNIckJxyssrC4be+IbLXj01EhUrHTTqWKa95j
	y874zhQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Ocx-0001Oz-M3; Sun, 16 Feb 2020 18:26:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3OaG-0006QU-SO
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:24:02 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A89CB227BF;
 Sun, 16 Feb 2020 18:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581877440;
 bh=euKJYXOia2rQ9pUwQt2bnN7886DrahmzBis1Tb15+pY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wC6t4Yjbw8Re489VTKrMSSHcLumHV4tFZbfljRUT/T5F5bx1zDZZUV+kSVWl3v2vY
 k0yu0Vrl0Oh5BH3sv/x0qRePNwd5xu619EiK6byRf8/V834vDhERcxZdyxFCJBMiWq
 sxRC/BLI6QtXiGsq2sYAfEEfXiNVXtyr4cBCTfsU=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 08/18] efi/ia64: use existing helpers to locate ESI table
Date: Sun, 16 Feb 2020 19:23:24 +0100
Message-Id: <20200216182334.8121-9-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200216182334.8121-1-ardb@kernel.org>
References: <20200216182334.8121-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_102401_142800_EA39AAF7 
X-CRM114-Status: GOOD (  12.50  )
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

Instead of iterating over the EFI config table array manually,
declare it as an arch table so it gets picked up by the existing
config table handling code.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/ia64/kernel/efi.c |  6 ++++++
 arch/ia64/kernel/esi.c | 21 ++++----------------
 2 files changed, 10 insertions(+), 17 deletions(-)

diff --git a/arch/ia64/kernel/efi.c b/arch/ia64/kernel/efi.c
index 292fe354158d..74fad89ae209 100644
--- a/arch/ia64/kernel/efi.c
+++ b/arch/ia64/kernel/efi.c
@@ -45,13 +45,19 @@
 
 #define EFI_DEBUG	0
 
+#define ESI_TABLE_GUID					\
+    EFI_GUID(0x43EA58DC, 0xCF28, 0x4b06, 0xB3,		\
+	     0x91, 0xB7, 0x50, 0x59, 0x34, 0x2B, 0xD4)
+
 static unsigned long mps_phys = EFI_INVALID_TABLE_ADDR;
 static __initdata unsigned long palo_phys;
 
+unsigned long __initdata esi_phys = EFI_INVALID_TABLE_ADDR;
 unsigned long hcdp_phys = EFI_INVALID_TABLE_ADDR;
 unsigned long sal_systab_phys = EFI_INVALID_TABLE_ADDR;
 
 static __initdata efi_config_table_type_t arch_tables[] = {
+	{ESI_TABLE_GUID, "ESI", &esi_phys},
 	{HCDP_TABLE_GUID, "HCDP", &hcdp_phys},
 	{MPS_TABLE_GUID, "MPS", &mps_phys},
 	{PROCESSOR_ABSTRACTION_LAYER_OVERWRITE_GUID, "PALO", &palo_phys},
diff --git a/arch/ia64/kernel/esi.c b/arch/ia64/kernel/esi.c
index cb514126ef7f..4df57c93e0a8 100644
--- a/arch/ia64/kernel/esi.c
+++ b/arch/ia64/kernel/esi.c
@@ -19,10 +19,6 @@ MODULE_LICENSE("GPL");
 
 #define MODULE_NAME	"esi"
 
-#define ESI_TABLE_GUID					\
-    EFI_GUID(0x43EA58DC, 0xCF28, 0x4b06, 0xB3,		\
-	     0x91, 0xB7, 0x50, 0x59, 0x34, 0x2B, 0xD4)
-
 enum esi_systab_entry_type {
 	ESI_DESC_ENTRY_POINT = 0
 };
@@ -48,27 +44,18 @@ struct pdesc {
 
 static struct ia64_sal_systab *esi_systab;
 
+extern unsigned long esi_phys;
+
 static int __init esi_init (void)
 {
-	efi_config_table_t *config_tables;
 	struct ia64_sal_systab *systab;
-	unsigned long esi = 0;
 	char *p;
 	int i;
 
-	config_tables = __va(efi.systab->tables);
-
-	for (i = 0; i < (int) efi.systab->nr_tables; ++i) {
-		if (efi_guidcmp(config_tables[i].guid, ESI_TABLE_GUID) == 0) {
-			esi = config_tables[i].table;
-			break;
-		}
-	}
-
-	if (!esi)
+	if (esi_phys == EFI_INVALID_TABLE_ADDR)
 		return -ENODEV;
 
-	systab = __va(esi);
+	systab = __va(esi_phys);
 
 	if (strncmp(systab->signature, "ESIT", 4) != 0) {
 		printk(KERN_ERR "bad signature in ESI system table!");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
