Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C95E160554
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:24:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1Kxgp168byrO7MkuUUqDlr0Y6WFN+WkALnypD5NLOJ8=; b=MYvppD3Pvp1OoOe3QxizkWNRcg
	9ZKk8uUGpuNXhShBgMBg3c9GRNTAw27225ghQar0eMhl8xWZD34z+YM/flhFn4EBBskZor1E99W2/
	GHrrEViQFkDbr58zJEjfPm9K21zzf4DE06loGXnuHtMF5Qbb93awivqeRDKAK3YLnK/ms2/i2nZzw
	ffRceaRCBLIx5x4EAtwYuPoQEgrd3ouNcVggtOul/DciNde85cm91LvCsYaysvacKh2NMtjEUhcfg
	PfYjUnmzwfXwH/vNL56F9OJlUnNyQ4yb/j7QZBQKCi48K8rNCuXTVGCAu+Jiox3E1DfPzlvrKdz0j
	ScI/F7Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3OaJ-0006Im-7S; Sun, 16 Feb 2020 18:24:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Oa4-0006Gr-W8
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:23:50 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D3B7F22522;
 Sun, 16 Feb 2020 18:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581877428;
 bh=tBrRsneP/Qs4RsbmuuoI8w+sAxty14FJ/aFDIlwLcSg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KOXSSsDbKGxlhyfaC4IT+eNVuEAD9AuP2TVa9Alj/4cm90Z6U4OqzaSeYrmKcTy6l
 U/hbqdzyKYqz8NzxmcMrcDI5kGNWpEomsqQ0vfOUSLXam+7kEfo1xbKpHdZmmyfm+7
 wGVmGszOwGMcX6oTkzFJzw70ID3jwSq/jwZI6UHk=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 01/18] efi: drop handling of 'boot_info' configuration table
Date: Sun, 16 Feb 2020 19:23:17 +0100
Message-Id: <20200216182334.8121-2-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200216182334.8121-1-ardb@kernel.org>
References: <20200216182334.8121-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_102349_062982_49599BEF 
X-CRM114-Status: GOOD (  10.60  )
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

Some plumbing exists to handle a UEFI configuration table of type
BOOT_INFO but since we never match it to a GUID anywhere, we never
actually register such a table, or access it, for that matter. So
simply drop all mentions of it.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/x86/platform/efi/efi.c | 1 -
 drivers/firmware/efi/efi.c  | 3 ---
 include/linux/efi.h         | 1 -
 3 files changed, 5 deletions(-)

diff --git a/arch/x86/platform/efi/efi.c b/arch/x86/platform/efi/efi.c
index ae923ee8e2b4..383d1003c3dc 100644
--- a/arch/x86/platform/efi/efi.c
+++ b/arch/x86/platform/efi/efi.c
@@ -70,7 +70,6 @@ static const unsigned long * const efi_tables[] = {
 	&efi.acpi20,
 	&efi.smbios,
 	&efi.smbios3,
-	&efi.boot_info,
 	&efi.hcdp,
 	&efi.uga,
 #ifdef CONFIG_X86_UV
diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index 621220ab3d0e..5464e3849ee4 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -40,7 +40,6 @@ struct efi __read_mostly efi = {
 	.acpi20			= EFI_INVALID_TABLE_ADDR,
 	.smbios			= EFI_INVALID_TABLE_ADDR,
 	.smbios3		= EFI_INVALID_TABLE_ADDR,
-	.boot_info		= EFI_INVALID_TABLE_ADDR,
 	.hcdp			= EFI_INVALID_TABLE_ADDR,
 	.uga			= EFI_INVALID_TABLE_ADDR,
 	.fw_vendor		= EFI_INVALID_TABLE_ADDR,
@@ -139,8 +138,6 @@ static ssize_t systab_show(struct kobject *kobj,
 		str += sprintf(str, "SMBIOS=0x%lx\n", efi.smbios);
 	if (efi.hcdp != EFI_INVALID_TABLE_ADDR)
 		str += sprintf(str, "HCDP=0x%lx\n", efi.hcdp);
-	if (efi.boot_info != EFI_INVALID_TABLE_ADDR)
-		str += sprintf(str, "BOOTINFO=0x%lx\n", efi.boot_info);
 	if (efi.uga != EFI_INVALID_TABLE_ADDR)
 		str += sprintf(str, "UGA=0x%lx\n", efi.uga);
 
diff --git a/include/linux/efi.h b/include/linux/efi.h
index 1bf482daa22d..c517d3b7986b 100644
--- a/include/linux/efi.h
+++ b/include/linux/efi.h
@@ -536,7 +536,6 @@ extern struct efi {
 	unsigned long acpi20;		/* ACPI table  (ACPI 2.0) */
 	unsigned long smbios;		/* SMBIOS table (32 bit entry point) */
 	unsigned long smbios3;		/* SMBIOS table (64 bit entry point) */
-	unsigned long boot_info;	/* boot info table */
 	unsigned long hcdp;		/* HCDP table */
 	unsigned long uga;		/* UGA table */
 	unsigned long fw_vendor;	/* fw_vendor */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
