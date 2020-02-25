Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B4316BCEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:04:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B54AAZ3Z3eAXV1PaoUPUi6jo9k//oJGFBx9dOvy+dFA=; b=kNxMJWv0A5MG7b
	nneoxr/Hm2mJGOikdXPftPgDRKYwkuSn8v5aWywd6Vm740/xKvgWR0irwbZQeI5BnZc8Meb57Y0tD
	QokKJP+fnS65XBqHvIFj3mCn2uThW57DHC08bkLaWWA36SBmkG9X7ZVWB0rIBhXvn0gnlrkSuPGiN
	EDnmxqPZ+gQcLa7ZTi/68xyazb5syuiouqwQSNf0C5+RqdU2RJQBajE4pILeLnWRPAMTusPr8CluJ
	cdjpKIMl30TjhhFEyYJm6dFQvPXJHbA14oF9dlxxTrwaWbOZI2eL2F/CKpevKpDg7DIGWJCsPqrFR
	iSdj2b0oGIeft9RhmbPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6W8q-0007NT-QI; Tue, 25 Feb 2020 09:04:36 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6W8T-00078C-B8
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 09:04:15 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 6F6B2544FE40937246FC;
 Tue, 25 Feb 2020 17:04:04 +0800 (CST)
Received: from linux-TFkxOR.huawei.com (10.175.104.212) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Tue, 25 Feb 2020 17:03:46 +0800
From: Heyi Guo <guoheyi@huawei.com>
To: <devel@edk2.groups.io>
Subject: [PATCH] acpi/iort: check output reference for the real used mapping
Date: Tue, 25 Feb 2020 17:01:36 +0800
Message-ID: <20200225090136.40989-1-guoheyi@huawei.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-Originating-IP: [10.175.104.212]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_010413_975673_91A12D04 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 Heyi Guo <guoheyi@huawei.com>, wanghaibin.wang@huawei.com,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The function iort_node_map_id() does the sanity check against the
first mapping in the node, but not the one which we really use.

Logically we need check the mapping we use, or check every mapping in
the node. Choose the first fix for we are not firmware tester.

Signed-off-by: Heyi Guo <guoheyi@huawei.com>

---
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Hanjun Guo <guohanjun@huawei.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Len Brown <lenb@kernel.org>
Cc: linux-acpi@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/acpi/arm64/iort.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index ed3d2d1a7ae9..d0fe8d673240 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -470,13 +470,6 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
 		map = ACPI_ADD_PTR(struct acpi_iort_id_mapping, node,
 				   node->mapping_offset);
 
-		/* Firmware bug! */
-		if (!map->output_reference) {
-			pr_err(FW_BUG "[node %p type %d] ID map has NULL parent reference\n",
-			       node, node->type);
-			goto fail_map;
-		}
-
 		/*
 		 * Get the special ID mapping index (if any) and skip its
 		 * associated ID map to prevent erroneous multi-stage
@@ -497,6 +490,13 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
 		if (i == node->mapping_count)
 			goto fail_map;
 
+		/* Firmware bug! */
+		if (!map->output_reference) {
+			pr_err(FW_BUG "[node %p type %d] ID map has NULL parent reference\n",
+			       node, node->type);
+			goto fail_map;
+		}
+
 		node = ACPI_ADD_PTR(struct acpi_iort_node, iort_table,
 				    map->output_reference);
 	}
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
