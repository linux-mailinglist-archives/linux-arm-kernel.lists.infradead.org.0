Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E715F16057D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:27:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=22MXogjHGVHbEQSPRA7LJMNbzK+Oi1jBoWqNQIbIiRc=; b=LYnUjZ7ASQunTbi70hXChb8km3
	K/exN7j0hoQ3Ya9O4wvP1ck0k5XeZMZZLSBgGLca1tjqTMVVI5rql4zMeAwCMExpSiJ+y4thKNWE7
	2q7TFdFugYq1JQdri6pd4Mxf5zhWqp8FEguKSsjDxHKkcoohQLGXXT0HEe6/lYaUqUNKcxQgb1Vob
	psKfmx9No6MbMsxDoWnbCimsaT90D8N2UDlXtlO17qgC7qUQB9Vwt9FIy0PH4TjTn/e5Usr0APDIb
	Af7yN8b3inCbasC8JBQOWf0vrDFMx3tXO8FBC14J1d2O8a/A68ZAjtrKhTMog+oFGLyy/JDQzUODY
	oBTpXqiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Odk-0002Dz-5q; Sun, 16 Feb 2020 18:27:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3OaP-0006XH-Ck
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:24:11 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2223522B48;
 Sun, 16 Feb 2020 18:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581877448;
 bh=VYuJuZnaa051raJcxOzrSPyvqDyaPJlw5R0zDN1unHw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XJsmffHbmCBdu7JcFJ4AtluEOljB9p+FpodsStoYzM1kZcZvTtV2p9zvBvQ0zk40w
 8ylvOxwyByUk3XTUgse1ulLm6wGJ19alcZdVxNs1kiX1AXolaFY8eC75KWeez4Q5RQ
 hHs8oavQvDBuPU62ACbf2DHdvkpHoHV/d1MVSKOU=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 13/18] efi/x86: remove runtime table address from kexec EFI
 setup data
Date: Sun, 16 Feb 2020 19:23:29 +0100
Message-Id: <20200216182334.8121-14-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200216182334.8121-1-ardb@kernel.org>
References: <20200216182334.8121-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_102409_601686_37DFE663 
X-CRM114-Status: GOOD (  11.68  )
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

Since commit 33b85447fa61946b ("efi/x86: Drop two near identical versions
of efi_runtime_init()"), we no longer map the EFI runtime services table
before calling SetVirtualAddressMap(), which means we don't need the 1:1
mapped physical address of this table, and so there is no point in passing
the address via EFI setup data on kexec boot.

Note that the kexec tools will still look for this address in sysfs, so
we still need to provide it.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/x86/include/asm/efi.h        | 1 -
 arch/x86/kernel/kexec-bzimage64.c | 1 -
 arch/x86/platform/efi/efi.c       | 4 +---
 3 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/arch/x86/include/asm/efi.h b/arch/x86/include/asm/efi.h
index fcb21e3d13c5..ee867f01b2f6 100644
--- a/arch/x86/include/asm/efi.h
+++ b/arch/x86/include/asm/efi.h
@@ -178,7 +178,6 @@ extern void __init efi_uv1_memmap_phys_epilog(pgd_t *save_pgd);
 
 struct efi_setup_data {
 	u64 fw_vendor;
-	u64 runtime;
 	u64 tables;
 	u64 smbios;
 	u64 reserved[8];
diff --git a/arch/x86/kernel/kexec-bzimage64.c b/arch/x86/kernel/kexec-bzimage64.c
index f293d872602a..f400678bd345 100644
--- a/arch/x86/kernel/kexec-bzimage64.c
+++ b/arch/x86/kernel/kexec-bzimage64.c
@@ -142,7 +142,6 @@ prepare_add_efi_setup_data(struct boot_params *params,
 	struct efi_setup_data *esd = (void *)sd + sizeof(struct setup_data);
 
 	esd->fw_vendor = efi.fw_vendor;
-	esd->runtime = efi.runtime;
 	esd->tables = efi.config_table;
 	esd->smbios = efi.smbios;
 
diff --git a/arch/x86/platform/efi/efi.c b/arch/x86/platform/efi/efi.c
index f7025b9075b4..c1f5f229cb02 100644
--- a/arch/x86/platform/efi/efi.c
+++ b/arch/x86/platform/efi/efi.c
@@ -379,6 +379,7 @@ static int __init efi_systab_init(u64 phys)
 			 systab64->con_out		> U32_MAX ||
 			 systab64->stderr_handle	> U32_MAX ||
 			 systab64->stderr		> U32_MAX ||
+			 systab64->runtime		> U32_MAX ||
 			 systab64->boottime		> U32_MAX;
 
 		if (efi_setup) {
@@ -391,17 +392,14 @@ static int __init efi_systab_init(u64 phys)
 			}
 
 			efi_systab.fw_vendor	= (unsigned long)data->fw_vendor;
-			efi_systab.runtime	= (void *)(unsigned long)data->runtime;
 			efi_systab.tables	= (unsigned long)data->tables;
 
 			over4g |= data->fw_vendor	> U32_MAX ||
-				  data->runtime		> U32_MAX ||
 				  data->tables		> U32_MAX;
 
 			early_memunmap(data, sizeof(*data));
 		} else {
 			over4g |= systab64->fw_vendor	> U32_MAX ||
-				  systab64->runtime	> U32_MAX ||
 				  systab64->tables	> U32_MAX;
 		}
 	} else {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
