Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B6F160577
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:26:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j0D7qMddn2z6sORlLP/k/5SQGpxJ3tZEZ8ymPNntPBw=; b=gMf2ZqR47a336CLK4sn2An3Bis
	+Zm588Gjak/6VmITZQ2wBUhmirouXexGeQ9uDizaoCzoKubqxkb8okSkLVIV5HuH5DU7MhO3/5/mp
	8XoNY1Oj21f/Q8NExnrZJHh9QnX0aC6BUIIgeCOWPKgaUPwpWYPXS68RBCz5NCnO0iLVLQQc4m8S/
	Piofa36Bp6s4TwFC37r5H2pKqcnGWbYNHD0lAyFraJK3sVxVBfxUY7JBh26zEyns6cPxNXZYtw208
	zCQsGDRWkS5JbL841U/HVG2EIayjUwO+TAsvrhtVWwzkjtp57Yc9EIuPN9KS6nJXCmY3Q0EtvUAet
	L044k32g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3OcC-0000cT-80; Sun, 16 Feb 2020 18:26:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3OaD-0006Mp-6M
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:23:58 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4DAE6206D6;
 Sun, 16 Feb 2020 18:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581877436;
 bh=bvY7jkOH4eGGLIFXLY5eHChKYaTowEdHN1ApObhP+M4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VocnGw1e6dD8Q4xB9HaV8zimojU5yPjH0C6Xx5XWMaf6PVA5YhmiEpLytQSeRod05
 OjU5RMws0nqm9HZQdDkgg8S5cFvpv7Hm/d5yb1YILEyBE92a0hdqH+5yEEM+ywn0GQ
 nNCnkdRN85vDgn0/Zh6Jcmid2Fvi2VBWTRzF+EHw=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 06/18] efi: make memreserve table handling local to efi.c
Date: Sun, 16 Feb 2020 19:23:22 +0100
Message-Id: <20200216182334.8121-7-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200216182334.8121-1-ardb@kernel.org>
References: <20200216182334.8121-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_102357_302655_F3D2EC1B 
X-CRM114-Status: GOOD (  12.49  )
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

There is no need for struct efi to carry the address of the memreserve
table and share it with the world. So move it out and make it
__initdata as well.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/efi.c | 12 ++++++------
 include/linux/efi.h        |  1 -
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index 1fc4e174f11d..41bb2c44cea4 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -45,11 +45,11 @@ struct efi __read_mostly efi = {
 	.esrt			= EFI_INVALID_TABLE_ADDR,
 	.tpm_log		= EFI_INVALID_TABLE_ADDR,
 	.tpm_final_log		= EFI_INVALID_TABLE_ADDR,
-	.mem_reserve		= EFI_INVALID_TABLE_ADDR,
 };
 EXPORT_SYMBOL(efi);
 
 static unsigned long __ro_after_init rng_seed = EFI_INVALID_TABLE_ADDR;
+static unsigned long __initdata mem_reserve = EFI_INVALID_TABLE_ADDR;
 
 struct mm_struct efi_mm = {
 	.mm_rb			= RB_ROOT,
@@ -470,7 +470,7 @@ static __initdata efi_config_table_type_t common_tables[] = {
 	{LINUX_EFI_RANDOM_SEED_TABLE_GUID, "RNG", &rng_seed},
 	{LINUX_EFI_TPM_EVENT_LOG_GUID, "TPMEventLog", &efi.tpm_log},
 	{LINUX_EFI_TPM_FINAL_LOG_GUID, "TPMFinalLog", &efi.tpm_final_log},
-	{LINUX_EFI_MEMRESERVE_TABLE_GUID, "MEMRESERVE", &efi.mem_reserve},
+	{LINUX_EFI_MEMRESERVE_TABLE_GUID, "MEMRESERVE", &mem_reserve},
 #ifdef CONFIG_EFI_RCI2_TABLE
 	{DELLEMC_EFI_RCI2_TABLE_GUID, NULL, &rci2_table_phys},
 #endif
@@ -563,8 +563,8 @@ int __init efi_config_parse_tables(void *config_tables, int count, int sz,
 
 	efi_tpm_eventlog_init();
 
-	if (efi.mem_reserve != EFI_INVALID_TABLE_ADDR) {
-		unsigned long prsv = efi.mem_reserve;
+	if (mem_reserve != EFI_INVALID_TABLE_ADDR) {
+		unsigned long prsv = mem_reserve;
 
 		while (prsv) {
 			struct linux_efi_memreserve *rsv;
@@ -939,10 +939,10 @@ static struct linux_efi_memreserve *efi_memreserve_root __ro_after_init;
 
 static int __init efi_memreserve_map_root(void)
 {
-	if (efi.mem_reserve == EFI_INVALID_TABLE_ADDR)
+	if (mem_reserve == EFI_INVALID_TABLE_ADDR)
 		return -ENODEV;
 
-	efi_memreserve_root = memremap(efi.mem_reserve,
+	efi_memreserve_root = memremap(mem_reserve,
 				       sizeof(*efi_memreserve_root),
 				       MEMREMAP_WB);
 	if (WARN_ON_ONCE(!efi_memreserve_root))
diff --git a/include/linux/efi.h b/include/linux/efi.h
index b093fce1cf59..a5e210abe4ca 100644
--- a/include/linux/efi.h
+++ b/include/linux/efi.h
@@ -541,7 +541,6 @@ extern struct efi {
 	unsigned long esrt;		/* ESRT table */
 	unsigned long tpm_log;		/* TPM2 Event Log table */
 	unsigned long tpm_final_log;	/* TPM2 Final Events Log table */
-	unsigned long mem_reserve;	/* Linux EFI memreserve table */
 	efi_get_time_t *get_time;
 	efi_set_time_t *set_time;
 	efi_get_wakeup_time_t *get_wakeup_time;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
