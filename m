Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3B5C2378
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 16:38:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQmw07YaxfwgLRoCInK7AE+jSJgM/7AYlc678cj8wLM=; b=OoMKqGMCPR0EzA
	LAOH4Drvea/eqnmC/JMGALV0hkPYUcMyJ2T5ql7UiAMZjoCxrp+18qxYm5VziLGyGiF1FpbMihvMC
	72bbLzXcv1nRMUgyFF36e2bl3Rbv+kWXD3PJO6f9KvqlP08DMQtKSIeVDM90JBuTpZck+OX97II30
	tG8cIbmYC8OhnvZn0jww78AZkea/iB5gOmCKrbkkffpYHbJJSC2jLa559Q9558/lZI7oYXgqfiK8i
	CdbgCqxjd5Fnr/hJZ6DKeO4JFpPmDGgM8la52iHwYMVmWtWjEvo34p512k+nkPmy3xXuInsaNGrxd
	o5RKo7Ce38RCIu01en1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEwoL-00086m-Pq; Mon, 30 Sep 2019 14:38:01 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEwnT-0007OE-LT
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 14:37:09 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2A2F4719A77CE6655499;
 Mon, 30 Sep 2019 22:36:58 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.439.0; Mon, 30 Sep 2019 22:36:48 +0800
From: John Garry <john.garry@huawei.com>
To: <lorenzo.pieralisi@arm.com>, <guohanjun@huawei.com>,
 <sudeep.holla@arm.com>, <robin.murphy@arm.com>, <mark.rutland@arm.com>,
 <will@kernel.org>
Subject: [RFC PATCH 1/6] ACPI/IORT: Set PMCG device parent
Date: Mon, 30 Sep 2019 22:33:46 +0800
Message-ID: <1569854031-237636-2-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
References: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_073707_891250_0A83DEAD 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: nleeder@codeaurora.org, John Garry <john.garry@huawei.com>,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 shameerali.kolothum.thodi@huawei.com, linuxarm@huawei.com,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the IORT, a PMCG node includes a node reference to its associated
device.

Set the PMCG platform device parent device for future referencing.

For now, we only consider setting for when the associated component is an
SMMUv3.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 drivers/acpi/arm64/iort.c | 34 ++++++++++++++++++++++++++++++++--
 1 file changed, 32 insertions(+), 2 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 8569b79e8b58..0b687520c3e7 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -1455,7 +1455,7 @@ static __init const struct iort_dev_config *iort_get_dev_cfg(
  * Returns: 0 on success, <0 failure
  */
 static int __init iort_add_platform_device(struct acpi_iort_node *node,
-					   const struct iort_dev_config *ops)
+					   const struct iort_dev_config *ops, struct device *parent)
 {
 	struct fwnode_handle *fwnode;
 	struct platform_device *pdev;
@@ -1466,6 +1466,8 @@ static int __init iort_add_platform_device(struct acpi_iort_node *node,
 	if (!pdev)
 		return -ENOMEM;
 
+	pdev->dev.parent = parent;
+
 	if (ops->dev_set_proximity) {
 		ret = ops->dev_set_proximity(&pdev->dev, node);
 		if (ret)
@@ -1573,6 +1575,11 @@ static void __init iort_enable_acs(struct acpi_iort_node *iort_node)
 static inline void iort_enable_acs(struct acpi_iort_node *iort_node) { }
 #endif
 
+static int iort_fwnode_match(struct device *dev, const void *fwnode)
+{
+	return dev->fwnode == fwnode;
+}
+
 static void __init iort_init_platform_devices(void)
 {
 	struct acpi_iort_node *iort_node, *iort_end;
@@ -1594,11 +1601,34 @@ static void __init iort_init_platform_devices(void)
 				iort_table->length);
 
 	for (i = 0; i < iort->node_count; i++) {
+		struct device *parent = NULL;
+
 		if (iort_node >= iort_end) {
 			pr_err("iort node pointer overflows, bad table\n");
 			return;
 		}
 
+		/* Fixme: handle parent declared in IORT after PMCG */
+		if (iort_node->type == ACPI_IORT_NODE_PMCG) {
+			struct acpi_iort_node *iort_assoc_node;
+			struct acpi_iort_pmcg *pmcg;
+			u32 node_reference;
+
+			pmcg = (struct acpi_iort_pmcg *)iort_node->node_data;
+
+			node_reference = pmcg->node_reference;
+			iort_assoc_node = ACPI_ADD_PTR(struct acpi_iort_node, iort,
+				 node_reference);
+
+			if (iort_assoc_node->type == ACPI_IORT_NODE_SMMU_V3) {
+				struct fwnode_handle *assoc_fwnode;
+
+				assoc_fwnode = iort_get_fwnode(iort_assoc_node);
+
+				parent = bus_find_device(&platform_bus_type, NULL,
+				      assoc_fwnode, iort_fwnode_match);
+			}
+		}
 		iort_enable_acs(iort_node);
 
 		ops = iort_get_dev_cfg(iort_node);
@@ -1609,7 +1639,7 @@ static void __init iort_init_platform_devices(void)
 
 			iort_set_fwnode(iort_node, fwnode);
 
-			ret = iort_add_platform_device(iort_node, ops);
+			ret = iort_add_platform_device(iort_node, ops, parent);
 			if (ret) {
 				iort_delete_fwnode(iort_node);
 				acpi_free_fwnode_static(fwnode);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
