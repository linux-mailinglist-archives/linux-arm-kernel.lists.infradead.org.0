Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CA01C1A61
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 18:11:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hGgnkFrTZGpCO7qkFWA4fXylwo+NMI0F75l1W4PSSts=; b=Hiyg4st1xe/r+0EU/ufm6Mdf+M
	qhNYEKlKteHlowUmkZ1MPt1ROwKMmz10Dq7DCVgZp0UMlud1kOn1CCh/YLzwqWO8/sWNDbEcmQzBu
	T0jrRgvulugkx+NrT2NAL0/SbVGihQFpgrVQpjx+NaWgFAY/70rcyOxftVpCpeXVQxalgJ7KbMTi2
	ZAvNzKl0Id2BQw2/nPXQfh5gjh2iGf697KpHhbpKK5TO1oISABVauwjlw1FodWKabQUCEJy9WXgSA
	iZuGYJKQfr0YtLRYThXETcVXAvv2LpiJfcpzMvKk24pWNaXqTLmMsJaXv5AGYEdivjiudDg/MtCYd
	fUWLyIhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUYFi-00074N-0b; Fri, 01 May 2020 16:11:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUYFA-0006cC-3A
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 16:10:29 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 958DD24956;
 Fri,  1 May 2020 16:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588349427;
 bh=yqjxjNbvDvgpGXMyUQLw+kBshy3NV1WeyfDFrv6omJc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=M4G3H5kE3wbd7qeK9qeWE4ExCS/FA0+Oih5v8KD+XXbnujGMyca+tDEv5zDanbUOI
 ENBgmXzLDHOeoQsXuFSnMoJlbgBmjtVdlxdvmVoneg4lLSz6sGCZInryzzPECBk+I1
 EKhRonUKzOKt2jh9/WPj65yjwx+rea7awSxkiPdQ=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] Revert "ACPI/IORT: Fix 'Number of IDs' handling in
 iort_id_map()"
Date: Fri,  1 May 2020 18:10:13 +0200
Message-Id: <20200501161014.5935-2-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200501161014.5935-1-ardb@kernel.org>
References: <20200501161014.5935-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_091028_171452_0FC514A2 
X-CRM114-Status: GOOD (  12.68  )
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
