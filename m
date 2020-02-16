Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 665E6160579
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:26:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wLD6JuNv8Y7uY6MlLnZOMB7K6Mptszg2NTjW1M+SP9Y=; b=NsrHlSlIQH5VHuL+TLddIKa0XJ
	FteqK2b7KU9oDdo6OkCl2je+JOvr/RiR0G4n6SwySIws93HYmjCO3vbiskYPCd/tclY4WyH2Qp5Jz
	dezrW3nfTqI/omllKPGyLAalKCsYJu+cF73kw9MzrQv8KlR3diPl1WuayJNiYb+mEYbZXELRguUsx
	f0i7E3ZOfSPQtQO/4sPtVDLkX0fPqhf/PSsEF+4sf5c3dwPY1cpPnby3wkLZPugLDRdaC1ss4EHVh
	Fqet83KMbuhuxDDH0XjNyY+iwM66xJ7z9H9hlqXGaCRGFsXkMu8wYfYbHi0Q7em0AK1pEmqaxepBh
	7oOxTBTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Oce-00015Z-AI; Sun, 16 Feb 2020 18:26:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3OaI-0006Rz-8J
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:24:03 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5E2102086A;
 Sun, 16 Feb 2020 18:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581877441;
 bh=j3nSc1ziDeAOZ+GMaZJ73PIdlDUEWebRMtAgq39UXfs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iqZ9ZlllVcZiNnNk8PL/flvephl9ku9KJYSiyBxqtBcQBrRodDzq86YSHV8aqPWWy
 O9mdOL0iIQU0P1EIkskzsJiFN+pro0ivbUT1nk6CimLwxyH720r+n+V/b0cWnnEo11
 Z6i8sRHBC6mIlFObDNM47f+2QzWWhAbF37M0tmo8=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 09/18] efi/ia64: use local variable for EFI system table
 address
Date: Sun, 16 Feb 2020 19:23:25 +0100
Message-Id: <20200216182334.8121-10-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200216182334.8121-1-ardb@kernel.org>
References: <20200216182334.8121-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_102402_417176_28A0EF30 
X-CRM114-Status: GOOD (  11.02  )
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

The IA64 code never refers to the EFI system table except from
inside the scope of efi_init(). So let's use a local variable
instead of efi.systab, which will be going away soon.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/ia64/kernel/efi.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/ia64/kernel/efi.c b/arch/ia64/kernel/efi.c
index 74fad89ae209..81bc5031a115 100644
--- a/arch/ia64/kernel/efi.c
+++ b/arch/ia64/kernel/efi.c
@@ -484,6 +484,7 @@ efi_map_pal_code (void)
 void __init
 efi_init (void)
 {
+	const efi_system_table_t *efi_systab;
 	void *efi_map_start, *efi_map_end;
 	u64 efi_desc_size;
 	char *cp;
@@ -516,17 +517,17 @@ efi_init (void)
 		printk(KERN_INFO "Ignoring memory above %lluMB\n",
 		       max_addr >> 20);
 
-	efi.systab = __va(ia64_boot_param->efi_systab);
+	efi_systab = __va(ia64_boot_param->efi_systab);
 
 	/*
 	 * Verify the EFI Table
 	 */
-	if (efi.systab == NULL)
+	if (efi_systab == NULL)
 		panic("Whoa! Can't find EFI system table.\n");
-	if (efi_systab_check_header(&efi.systab->hdr, 1))
+	if (efi_systab_check_header(&efi_systab->hdr, 1))
 		panic("Whoa! EFI system table signature incorrect\n");
 
-	efi_systab_report_header(&efi.systab->hdr, efi.systab->fw_vendor);
+	efi_systab_report_header(&efi_systab->hdr, efi_systab->fw_vendor);
 
 	palo_phys      = EFI_INVALID_TABLE_ADDR;
 
@@ -536,7 +537,7 @@ efi_init (void)
 	if (palo_phys != EFI_INVALID_TABLE_ADDR)
 		handle_palo(palo_phys);
 
-	runtime = __va(efi.systab->runtime);
+	runtime = __va(efi_systab->runtime);
 	efi.get_time = phys_get_time;
 	efi.set_time = phys_set_time;
 	efi.get_wakeup_time = phys_get_wakeup_time;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
