Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D661FAED4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 13:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WXJkGlJr4WRKp1/1LOsNzFDcleatnUvymxHpnJXJqzI=; b=rNCEma+yU9lROY
	+W4oXMoROz2x9XD4Pq+xrCxaTAzd6dptUrnwuLd+Osy0rhgozd26CBHRoMc7wMzpHAvJTqlPA+UEq
	zYgo+a0xGCkJxpOzJKv6N6Iunq150SdPTzmybtqYxURPLs2hfQoQHGbagejxhTfgHDhOWhywBqsWG
	Z14EgQh56gnBL2KtRWQnRNYOhRtFAsbC+K6X94YwTSl+iC25mGhhQnbRgK7+y1PlXhNfDXE9kaJWt
	L+9fwXRal91YbPITZ0VZonv0MeWUllPIuLg8Hm38raGSDBPDV4qfQTgJ+hOlru53A2NLjQG+BRK9b
	0dFDCc0uWKnuYbE/XgKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl9Kd-0001SO-D1; Tue, 16 Jun 2020 11:00:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl9KW-0001Rj-1d
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 11:00:37 +0000
Received: from localhost.localdomain (lfbn-nic-1-188-42.w2-15.abo.wanadoo.fr
 [2.15.37.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE15D20739;
 Tue, 16 Jun 2020 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592305235;
 bh=6iykV8yTO9x29fZKbGvA221ZIaReCNzafH3wTMLBVls=;
 h=From:To:Cc:Subject:Date:From;
 b=tt5GA0SYEuIzOBJhC+a2M9YQphW9EYlD+NdfvX5kZhwJ9j8oHGjXfDQmujUOEGToC
 IIVSb0/keFAG1nsJqQEM5ldGk3hhSUDwGgr26F00kY6pGWoIhi6Fbg+K9/rqRHECdu
 FuOQN8Ivi3bfNqsKbUD3L8KdIB/suZK34gvEcFNo=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH] efi/libstub: arm: Omit arch specific config table matching
 array on arm64
Date: Tue, 16 Jun 2020 13:00:30 +0200
Message-Id: <20200616110030.1054015-1-ardb@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_040036_108308_01A9EE40 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: xypron.glpk@gmx.de, leif@nuviainc.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On arm64, the EFI stub is built into the kernel proper, and so the stub
can refer to its symbols directly. Therefore, the practice of using EFI
configuration tables to pass information between them is never needed,
so we can omit any code consuming such tables when building for arm64.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---

This will be applied before 'efi/libstub: arm: Print CPU boot mode and MMU 
state at boot' [v3] sent out today

 drivers/firmware/efi/arm-init.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
index c697e70ca7e7..6f4baf70db16 100644
--- a/drivers/firmware/efi/arm-init.c
+++ b/drivers/firmware/efi/arm-init.c
@@ -62,7 +62,8 @@ static void __init init_screen_info(void)
 {
 	struct screen_info *si;
 
-	if (screen_info_table != EFI_INVALID_TABLE_ADDR) {
+	if (IS_ENABLED(CONFIG_ARM) &&
+	    screen_info_table != EFI_INVALID_TABLE_ADDR) {
 		si = early_memremap_ro(screen_info_table, sizeof(*si));
 		if (!si) {
 			pr_err("Could not map screen_info config table\n");
@@ -116,7 +117,8 @@ static int __init uefi_init(u64 efi_system_table)
 		goto out;
 	}
 	retval = efi_config_parse_tables(config_tables, systab->nr_tables,
-					 arch_tables);
+					 IS_ENABLED(CONFIG_ARM) ? arch_tables
+								: NULL);
 
 	early_memunmap(config_tables, table_size);
 out:
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
