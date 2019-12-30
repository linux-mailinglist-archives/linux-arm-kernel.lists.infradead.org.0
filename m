Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFD112D00B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 13:32:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m4fR9CsiRNJ9JF6XvcXPxyU/vCgzyDOr6Ty0ATl/fRY=; b=O1LCmLIcDxSCJi
	i4iJd52venu0FkQQDi1y1pZD6ScjX8cEiKiCNl9P5TqLVkIfVTY04Me18JS+JTfpPU1s00AkGDRS9
	rWM4xepQKO7U5RUV4JAwkX6SzxUOQyBhcHuYho9ElcaYyjSADov65peJ5BK2XsPaSN4Blgtm6e6pb
	LMr9Fv5t3rS1bK+MBEaI5D6t/2VI3bvEy+9qHGNVL7bcTH5lyiz7TNl3M6qnb93Iiey8Zm3p+w2qZ
	UeIF2BOHt620jx0WXkiwyY5N9bMQdzMMuyq35UA9qC5ZBjN6Kz2ciiULkf2/KRJB/tMtSlLMghCvl
	74fEEuh7qBhvtD86MlNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iluDb-0008Rz-Aq; Mon, 30 Dec 2019 12:32:19 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iluDQ-0008QI-Uq
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 12:32:11 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 86F696DD0046223156DB;
 Mon, 30 Dec 2019 20:31:55 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Mon, 30 Dec 2019 20:31:48 +0800
From: Hanjun Guo <guohanjun@huawei.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Sudeep Holla
 <sudeep.holla@arm.com>, "Rafael J. Wysocki" <rafael@kernel.org>, "Pankaj
 Bansal" <pankaj.bansal@nxp.com>
Subject: [PATCH v1] ACPI/IORT: Workaround for IORT ID count "minus one" issue
Date: Mon, 30 Dec 2019 20:27:04 +0800
Message-ID: <1577708824-4873-1-git-send-email-guohanjun@huawei.com>
X-Mailer: git-send-email 1.7.12.4
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_043209_572763_B6A1C6EC 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-acpi@vger.kernel.org, John Garry <john.garry@huawei.com>,
 linuxarm@huawei.com, linux-arm-kernel@lists.infradead.org,
 Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The IORT spec [0] says Number of IDs = The number of IDs in the range minus
one, it is confusing but it was written down in the first version of the
IORT spec. But the IORT ID mapping function iort_id_map() did something
wrong from the start, which bails out if:

the request ID >= the input base + number of IDs

This is wrong because it ignored the "minus one", and breaks some valid
usecases such as ID mapping to contain single device mapping without
single mapping flag set.

Pankaj Bansal proposed a solution to fix the issue [1], which bails
out if:

the request ID > the input base + number of IDs

This works as the spec defined, unfortunately some firmware didn't
minus one for the number of IDs in the range, and the propoased
solution will break those systems in this way:

PCI hostbridge mapping entry 1:
Input base:  0x1000
ID Count:    0x100
Output base: 0x1000
Output reference: 0xC4  //ITS reference

PCI hostbridge mapping entry 2:
Input base:  0x1100
ID Count:    0x100
Output base: 0x2000
Output reference: 0xD4  //ITS reference

Two mapping entries which the second entry's Input base = the first
entry's Input base + ID count, so for requester ID 0x1100 will map
to ITS 0xC4 not 0xD4 if we update '>=' to '>'.

So introduce a workaround to match the IORT's OEM information for
the broken firmware, also update the logic of the ID mapping for
firmwares report the number of IDs as the IORT spec defined, to
make the code compatible for both kinds of system.

I checked the ACPI tables in the tianocore/edk2-platforms [2], only
HiSilicon HIP07/08 did wrong, so just add HIP07/08 to the workaround
info table, if we break other platforms, we can add that later.

[0]: http://infocenter.arm.com/help/topic/com.arm.doc.den0049d/DEN0049D_IO_Remapping_Table.pdf
[1]: https://patchwork.kernel.org/patch/11292823/
[2]: https://github.com/tianocore/edk2-platforms

Cc: Pankaj Bansal <pankaj.bansal@nxp.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
---

RFC->v1:
- Print warning when matched the workaround info, suggested by Pankaj.

 drivers/acpi/arm64/iort.c | 55 ++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 52 insertions(+), 3 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 33f7198..60eb10d 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -298,6 +298,42 @@ static acpi_status iort_match_node_callback(struct acpi_iort_node *node,
 	return status;
 }
 
+struct iort_workaround_oem_info {
+	char oem_id[ACPI_OEM_ID_SIZE + 1];
+	char oem_table_id[ACPI_OEM_TABLE_ID_SIZE + 1];
+	u32 oem_revision;
+};
+
+static bool apply_id_count_workaround;
+
+static struct iort_workaround_oem_info wa_info[] __initdata = {
+	{
+		.oem_id		= "HISI  ",
+		.oem_table_id	= "HIP07   ",
+		.oem_revision	= 0,
+	}, {
+		.oem_id		= "HISI  ",
+		.oem_table_id	= "HIP08   ",
+		.oem_revision	= 0,
+	}
+};
+
+static void __init
+iort_check_id_count_workaround(struct acpi_table_header *tbl)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(wa_info); i++) {
+		if (!memcmp(wa_info[i].oem_id, tbl->oem_id, ACPI_OEM_ID_SIZE) &&
+		    !memcmp(wa_info[i].oem_table_id, tbl->oem_table_id, ACPI_OEM_TABLE_ID_SIZE) &&
+		    wa_info[i].oem_revision == tbl->oem_revision) {
+			apply_id_count_workaround = true;
+			pr_warn(FW_BUG "ID count for ID mapping entry is wrong, applying workaround\n");
+			break;
+		}
+	}
+}
+
 static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
 		       u32 *rid_out)
 {
@@ -314,9 +350,21 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
 		return -ENXIO;
 	}
 
-	if (rid_in < map->input_base ||
-	    (rid_in >= map->input_base + map->id_count))
-		return -ENXIO;
+	/*
+	 * IORT spec says Number of IDs = The number of IDs in the range minus
+	 * one, but the IORT code ingored the "minus one", and some firmware
+	 * did that too, so apply a workaround here to keep compatible with
+	 * both new and old versions of the firmware.
+	 */
+	if (apply_id_count_workaround) {
+		if (rid_in < map->input_base ||
+			(rid_in >= map->input_base + map->id_count))
+			return -ENXIO;
+	} else {
+		if (rid_in < map->input_base ||
+			(rid_in > map->input_base + map->id_count))
+			return -ENXIO;
+	}
 
 	*rid_out = map->output_base + (rid_in - map->input_base);
 	return 0;
@@ -1631,5 +1679,6 @@ void __init acpi_iort_init(void)
 		return;
 	}
 
+	iort_check_id_count_workaround(iort_table);
 	iort_init_platform_devices();
 }
-- 
1.7.12.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
