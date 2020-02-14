Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 789B415E4A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:37:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Npn6W3o08P2ubk1s6eY/MUtVwTVbE0EXqj7Bbx9V4M=; b=IhUk8UTgX3Z6UO
	ZPG7ygHPscWyGQtYJVirKu05rY38FYa2DhquVLDWrzYKUp17q5P5mgc2C481BUK0Gv0Ko2kTW0rzx
	rA4CmN9067Qs2KhpqjQh3NIVS1nANooQfVpsJsWvGWj1Jo6hjLQnoJOeFfg8Rceo210R4PAEKENGw
	4nSDmj5wa/Ixr5PDFfJY1nHrpUw92cQkvgdFdzcIKbR56wtPWA7iQNHXbt7vPRu204Wxy7hhlrO2E
	Ayyg/4LwlP8dcXrN/dawHluKP/ClqiEf5HyuRSkTc2ZDUhL0hYzGgyygBHnLkZ1j03VjHmLoBK7NP
	CZIozuaJwL/rCP77jtQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dxi-0006AQ-Rd; Fri, 14 Feb 2020 16:37:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dWo-0000O8-5n
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:09:21 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD36D24694;
 Fri, 14 Feb 2020 16:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696556;
 bh=JFmU9L5DKs2efaKZkAdEWbq9vodAIhVGttA8t5P2wVI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AFNfTmk5OzeDi88VV6+MH2eXwchC26GE1RTIXcS49HF3Oicilc+zJGQb2XeNw2WTb
 BBvie9FibnMmZfeZPWkrXxAf6QR1si0mEv7K6Ru7E+cAi+LH/miIUmQisCGQ7zSM91
 bl13TfWuTXNPZ6991QGZarKiuh2rnhff6EravLd0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 347/459] ACPI/IORT: Fix 'Number of IDs' handling
 in iort_id_map()
Date: Fri, 14 Feb 2020 10:59:57 -0500
Message-Id: <20200214160149.11681-347-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080918_308153_CAF74090 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Hanjun Guo <guohanjun@huawei.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-acpi@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hanjun Guo <guohanjun@huawei.com>

[ Upstream commit 3c23b83a88d00383e1d498cfa515249aa2fe0238 ]

The IORT specification [0] (Section 3, table 4, page 9) defines the
'Number of IDs' as 'The number of IDs in the range minus one'.

However, the IORT ID mapping function iort_id_map() treats the 'Number
of IDs' field as if it were the full IDs mapping count, with the
following check in place to detect out of boundary input IDs:

InputID >= Input base + Number of IDs

This check is flawed in that it considers the 'Number of IDs' field as
the full number of IDs mapping and disregards the 'minus one' from
the IDs count.

The correct check in iort_id_map() should be implemented as:

InputID > Input base + Number of IDs

this implements the specification correctly but unfortunately it breaks
existing firmwares that erroneously set the 'Number of IDs' as the full
IDs mapping count rather than IDs mapping count minus one.

e.g.

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
entry's Input base + ID count, so for InputID 0x1100 and with the
correct InputID check in place in iort_id_map() the kernel would map
the InputID to ITS 0xC4 not 0xD4 as it would be expected.

Therefore, to keep supporting existing flawed firmwares, introduce a
workaround that instructs the kernel to use the old InputID range check
logic in iort_id_map(), so that we can support both firmwares written
with the flawed 'Number of IDs' logic and the correct one as defined in
the specifications.

[0]: http://infocenter.arm.com/help/topic/com.arm.doc.den0049d/DEN0049D_IO_Remapping_Table.pdf

Reported-by: Pankaj Bansal <pankaj.bansal@nxp.com>
Link: https://lore.kernel.org/linux-acpi/20191215203303.29811-1-pankaj.bansal@nxp.com/
Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Pankaj Bansal <pankaj.bansal@nxp.com>
Cc: Will Deacon <will@kernel.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/acpi/arm64/iort.c | 57 +++++++++++++++++++++++++++++++++++++--
 1 file changed, 55 insertions(+), 2 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 5a7551d060f25..161b609e4cdfb 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -298,6 +298,59 @@ static acpi_status iort_match_node_callback(struct acpi_iort_node *node,
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
+static inline u32 iort_get_map_max(struct acpi_iort_id_mapping *map)
+{
+	u32 map_max = map->input_base + map->id_count;
+
+	/*
+	 * The IORT specification revision D (Section 3, table 4, page 9) says
+	 * Number of IDs = The number of IDs in the range minus one, but the
+	 * IORT code ignored the "minus one", and some firmware did that too,
+	 * so apply a workaround here to keep compatible with both the spec
+	 * compliant and non-spec compliant firmwares.
+	 */
+	if (apply_id_count_workaround)
+		map_max--;
+
+	return map_max;
+}
+
 static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
 		       u32 *rid_out)
 {
@@ -314,8 +367,7 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
 		return -ENXIO;
 	}
 
-	if (rid_in < map->input_base ||
-	    (rid_in >= map->input_base + map->id_count))
+	if (rid_in < map->input_base || rid_in > iort_get_map_max(map))
 		return -ENXIO;
 
 	*rid_out = map->output_base + (rid_in - map->input_base);
@@ -1637,5 +1689,6 @@ void __init acpi_iort_init(void)
 		return;
 	}
 
+	iort_check_id_count_workaround(iort_table);
 	iort_init_platform_devices();
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
