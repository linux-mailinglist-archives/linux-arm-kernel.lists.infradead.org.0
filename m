Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE5E15E5F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:45:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Knhn33cZ9ncpbDiAAK641Lc41fHOMnUUcPtg8inodyQ=; b=k7+iS5V6On/jRo
	lrBkThKyL+qGRTBcJQXDWr24MeDsqvCHti2jlCjMjW4LYW3HD08g2H4wozhFW6cUr49EDJV2YNIfY
	pHhp1b4r6E09C32tJJTdPppJ18KA/IQuoaje+FQUHstScv3wnGiCZCT7r08wAt/GZqtOd0Xvu/svK
	45dnbIJsXia+gM3nXESMp8n2UzP03sTuKw7vvuwsirihwkqE7/v93ZN6Zt+5dDCaU7W/+Bef+2oUM
	nS2sRVyCZI82WTOnVR89B9UrDu0o/l0nOw9eVKh/HwyaawHFqYf189rdJPEKaj/1GmjS9jA05thXs
	fmiWM8QnVKIhDmnuWRuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2e5q-0006dI-By; Fri, 14 Feb 2020 16:45:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dd3-00086G-0e
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:15:51 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 00A75246E6;
 Fri, 14 Feb 2020 16:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696944;
 bh=NroTEEz88OFI1ey2Ae6osJV4lvm97R1EcRqCkBVhUgg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2CEkLWYjd5V/rag2iGhOh7kdYAB5UfN4oW1z9nHIqWF4SCnMKhUfVW+JVPMj8Dg4A
 S+NCvkUols+CsVA7Pdf7/0uKgAZ1ZWpaqnK7Gno/IwoUBWN26QID9iVSvsRr4ia09+
 oYzi4FID7KbDqyrS4NRxWjhqH3RRcZhGEYnkgd60=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 186/252] ACPI/IORT: Fix 'Number of IDs' handling
 in iort_id_map()
Date: Fri, 14 Feb 2020 11:10:41 -0500
Message-Id: <20200214161147.15842-186-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_081545_124066_CD5B0B9E 
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
index e11b5da6f828f..7d86468300b78 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -306,6 +306,59 @@ static acpi_status iort_match_node_callback(struct acpi_iort_node *node,
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
@@ -322,8 +375,7 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
 		return -ENXIO;
 	}
 
-	if (rid_in < map->input_base ||
-	    (rid_in >= map->input_base + map->id_count))
+	if (rid_in < map->input_base || rid_in > iort_get_map_max(map))
 		return -ENXIO;
 
 	*rid_out = map->output_base + (rid_in - map->input_base);
@@ -1542,5 +1594,6 @@ void __init acpi_iort_init(void)
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
