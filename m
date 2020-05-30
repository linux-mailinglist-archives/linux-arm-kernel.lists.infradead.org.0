Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 530B61E8FF2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 11:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9heobb9xIDVf/oyapTQjN3UvPKr0OJ+bWD+HE8ENpEk=; b=AXr+/dpv+xX+9w
	i77CNu9c7ehI19Z2VLvuITI2nmyZspwZV5IKlnzBeZXXHWm4Y7wVDK/s1VYsfS1dKiQV3CA3zJbfv
	VnJFsnFEhCTDwA32uHuqCrDreePXIP4Xm6Nw9VlUiv1VnKX3A20x35HrlFtyYLidxNn3tiPKFJUv+
	EQul60S4dzoZtrtlzVnx98gYjwIhMrn9g7kDbNV38XfogNRtyvnOoTAT0zt7so+eHHGA6oW5XM6pH
	0EkcJfPdv9Wk0XEIN40ULeXncoVgl8+E1n7CDRMNIoTlHYnmts/jgBLgneuuaQMBQuNhd9LUrcBvo
	gKqlEMFwp9v0t4SAPWyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jexbq-0005dy-Nx; Sat, 30 May 2020 09:16:54 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jexbi-0005aU-PX
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 09:16:48 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 7AF68A855B4A1C271330;
 Sat, 30 May 2020 17:16:24 +0800 (CST)
Received: from SWX921481.china.huawei.com (10.126.200.151) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Sat, 30 May 2020 17:16:16 +0800
From: Barry Song <song.bao.hua@hisilicon.com>
To: <will@kernel.org>, <robin.murphy@arm.com>, <hch@lst.de>,
 <m.szyprowski@samsung.com>, <iommu@lists.linux-foundation.org>
Subject: [PATCH] iommu/arm-smmu-v3: expose numa_node attribute to users in
 sysfs
Date: Sat, 30 May 2020 21:15:05 +1200
Message-ID: <20200530091505.56664-1-song.bao.hua@hisilicon.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.126.200.151]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_021646_994435_233AD540 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: Barry Song <song.bao.hua@hisilicon.com>, linuxarm@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As tests show the latency of dma_unmap can increase dramatically while
calling them cross NUMA nodes, especially cross CPU packages, eg.
300ns vs 800ns while waiting for the completion of CMD_SYNC in an
empty command queue. The large latency causing by remote node will
in turn make contention of the command queue more serious, and enlarge
the latency of DMA users within local NUMA nodes.

Users might intend to enforce NUMA locality with the consideration of
the position of SMMU. The patch provides minor benefit by presenting
this information to users directly, as they might want to know it without
checking hardware spec at all.

Signed-off-by: Barry Song <song.bao.hua@hisilicon.com>
---
 drivers/iommu/arm-smmu-v3.c | 40 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 39 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 82508730feb7..754c4d59498b 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -4021,6 +4021,44 @@ err_reset_pci_ops: __maybe_unused;
 	return err;
 }
 
+static ssize_t numa_node_show(struct device *dev,
+		struct device_attribute *attr, char *buf)
+{
+	return sprintf(buf, "%d\n", dev_to_node(dev));
+}
+static DEVICE_ATTR_RO(numa_node);
+
+static umode_t arm_smmu_numa_attr_visible(struct kobject *kobj, struct attribute *a,
+		int n)
+{
+	struct device *dev = container_of(kobj, typeof(*dev), kobj);
+
+	if (!IS_ENABLED(CONFIG_NUMA))
+		return 0;
+
+	if (a == &dev_attr_numa_node.attr &&
+			dev_to_node(dev) == NUMA_NO_NODE)
+		return 0;
+
+	return a->mode;
+}
+
+static struct attribute *arm_smmu_dev_attrs[] = {
+	&dev_attr_numa_node.attr,
+	NULL
+};
+
+static struct attribute_group arm_smmu_dev_attrs_group = {
+	.attrs          = arm_smmu_dev_attrs,
+	.is_visible     = arm_smmu_numa_attr_visible,
+};
+
+
+static const struct attribute_group *arm_smmu_dev_attrs_groups[] = {
+	&arm_smmu_dev_attrs_group,
+	NULL,
+};
+
 static int arm_smmu_device_probe(struct platform_device *pdev)
 {
 	int irq, ret;
@@ -4097,7 +4135,7 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
 		return ret;
 
 	/* And we're up. Go go go! */
-	ret = iommu_device_sysfs_add(&smmu->iommu, dev, NULL,
+	ret = iommu_device_sysfs_add(&smmu->iommu, dev, arm_smmu_dev_attrs_groups,
 				     "smmu3.%pa", &ioaddr);
 	if (ret)
 		return ret;
-- 
2.23.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
