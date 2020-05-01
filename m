Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA501C1092
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 11:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hGgnkFrTZGpCO7qkFWA4fXylwo+NMI0F75l1W4PSSts=; b=t0XlRIS32V8LtYP9n/eVHYkwdw
	Ejm275siVFAxM//dYRkGNVMAQuTgdtfCQVHs19WmUa76IqZYciOhDXp9OOwtjnCGXdqkJsk57bA0W
	HPf2NL1egxHpd3h9bkP1SmtkDqrfbrSNyDO3NbetaD/waiwhm00h1gUoXd05RuK2WaoW8mBnjhOLD
	K/HkHz+WliyJ7+eHp315tcOTtjIQ/knXfrL1lfST/Y+0psUI8UjT3SX2zC/GhW4fbSVpEBxGaUGvP
	ppkBJH9YVh4e5Ofz5elwEXWX88M55r4PC94aXPwnvsCkzCUOOPpfbvIfJj5frQ13E9uWWrb6ssONn
	5kG9BG9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUSS6-0000ak-0Y; Fri, 01 May 2020 09:59:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUSRg-0000Q1-Gj
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 09:59:02 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD2F02173E;
 Fri,  1 May 2020 09:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588327140;
 bh=yqjxjNbvDvgpGXMyUQLw+kBshy3NV1WeyfDFrv6omJc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=o5e1t4Al7VXHPPCgMJyavEap0uPX8d62Vq93UnbXxXd2CrI1TPesw/RNnXgx4+HJ3
 hV1PMi/ymMJpei2upJKOkWiXKOPk1gx1elfINnXuQyPlkhg42gBniUVQfWRwj6j4SG
 j/JVG07AnYkS2axad81aR9qV0zVdL0/mBe2GTZ0Q=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH RFC 1/2] Revert "ACPI/IORT: Fix 'Number of IDs' handling in
 iort_id_map()"
Date: Fri,  1 May 2020 11:58:42 +0200
Message-Id: <20200501095843.25401-2-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200501095843.25401-1-ardb@kernel.org>
References: <20200501095843.25401-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_025900_588544_A3A1CFC1 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-acpi@vger.kernel.org,
 Hanjun Guo <guohanjun@huawei.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 3c23b83a88d00383e1d498cfa515249aa2fe0238.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/acpi/arm64/iort.c | 57 +-------------------
 1 file changed, 2 insertions(+), 55 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 7d04424189df..98be18266a73 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -299,59 +299,6 @@ static acpi_status iort_match_node_callback(struct acpi_iort_node *node,
 	return status;
 }
 
-struct iort_workaround_oem_info {
-	char oem_id[ACPI_OEM_ID_SIZE + 1];
-	char oem_table_id[ACPI_OEM_TABLE_ID_SIZE + 1];
-	u32 oem_revision;
-};
-
-static bool apply_id_count_workaround;
-
-static struct iort_workaround_oem_info wa_info[] __initdata = {
-	{
-		.oem_id		= "HISI  ",
-		.oem_table_id	= "HIP07   ",
-		.oem_revision	= 0,
-	}, {
-		.oem_id		= "HISI  ",
-		.oem_table_id	= "HIP08   ",
-		.oem_revision	= 0,
-	}
-};
-
-static void __init
-iort_check_id_count_workaround(struct acpi_table_header *tbl)
-{
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(wa_info); i++) {
-		if (!memcmp(wa_info[i].oem_id, tbl->oem_id, ACPI_OEM_ID_SIZE) &&
-		    !memcmp(wa_info[i].oem_table_id, tbl->oem_table_id, ACPI_OEM_TABLE_ID_SIZE) &&
-		    wa_info[i].oem_revision == tbl->oem_revision) {
-			apply_id_count_workaround = true;
-			pr_warn(FW_BUG "ID count for ID mapping entry is wrong, applying workaround\n");
-			break;
-		}
-	}
-}
-
-static inline u32 iort_get_map_max(struct acpi_iort_id_mapping *map)
-{
-	u32 map_max = map->input_base + map->id_count;
-
-	/*
-	 * The IORT specification revision D (Section 3, table 4, page 9) says
-	 * Number of IDs = The number of IDs in the range minus one, but the
-	 * IORT code ignored the "minus one", and some firmware did that too,
-	 * so apply a workaround here to keep compatible with both the spec
-	 * compliant and non-spec compliant firmwares.
-	 */
-	if (apply_id_count_workaround)
-		map_max--;
-
-	return map_max;
-}
-
 static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
 		       u32 *rid_out)
 {
@@ -368,7 +315,8 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
 		return -ENXIO;
 	}
 
-	if (rid_in < map->input_base || rid_in > iort_get_map_max(map))
+	if (rid_in < map->input_base ||
+	    (rid_in >= map->input_base + map->id_count))
 		return -ENXIO;
 
 	*rid_out = map->output_base + (rid_in - map->input_base);
@@ -1703,6 +1651,5 @@ void __init acpi_iort_init(void)
 		return;
 	}
 
-	iort_check_id_count_workaround(iort_table);
 	iort_init_platform_devices();
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
