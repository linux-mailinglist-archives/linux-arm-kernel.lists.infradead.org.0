Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6A01EB560
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 07:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K736CrQNZQTL+5Ln0afHIPYmi/g6bDS1w6IJrWxgspE=; b=LfC4oebIxgPWlt
	aPBjkPJBBTire7Zjzl6VFu4UXeZvBB+/mUXrgLnEDDGeIZexRXTdoPWR9UUpDYsP7w2Oss2uYLFMM
	QvcpQGbtTwcqLQ1gQQDrWG4IZUUzRrEQB0+V6Km63VmfInQa1EGMOmbqXgDmMEnhvL1BIZABBDzqG
	mQIjBlAQgiZhvL67hv0W0lN1P8t0yqnKF3s2fZ/U/107cDQmXGdJx1/ok/CwiZ4GctZh9spbfMNd2
	A6EN7W4LsLIVDDDrOPYefi3qJnJPlE4XXk2Md6PzZIUUjze2crk5cfZqHT4Ba9XVZSii1gT/8dSnN
	iMiPeiquneN05ZL5BA5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfzdC-0003kb-8t; Tue, 02 Jun 2020 05:38:34 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfzd4-0003kB-EG
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 05:38:28 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id C9A0C268594C6AC3DFE3;
 Tue,  2 Jun 2020 13:38:19 +0800 (CST)
Received: from SWX921481.china.huawei.com (10.126.200.200) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Tue, 2 Jun 2020 13:38:09 +0800
From: Barry Song <song.bao.hua@hisilicon.com>
To: <gregkh@linuxfoundation.org>, <rafael@kernel.org>
Subject: [PATCH v2] driver core: platform: expose numa_node to users in sysfs
Date: Tue, 2 Jun 2020 17:36:53 +1200
Message-ID: <20200602053653.63760-1-song.bao.hua@hisilicon.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.126.200.200]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_223826_653983_4E0630A2 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
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
Cc: Barry Song <song.bao.hua@hisilicon.com>, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, iommu@lists.linux-foundation.org,
 Prime Zeng <prime.zeng@hisilicon.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For some platform devices like iommu, particually ARM smmu, users may
care about the numa locality. for example, if threads and drivers run
near iommu, they may get much better performance on dma_unmap_sg.
For other platform devices, users may still want to know the hardware
topology.

Cc: Prime Zeng <prime.zeng@hisilicon.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Barry Song <song.bao.hua@hisilicon.com>
---
 -v2: add the numa_node entry in Documentation/ABI/

 Documentation/ABI/testing/sysfs-bus-platform | 10 ++++++++
 drivers/base/platform.c                      | 26 +++++++++++++++++++-
 2 files changed, 35 insertions(+), 1 deletion(-)

diff --git a/Documentation/ABI/testing/sysfs-bus-platform b/Documentation/ABI/testing/sysfs-bus-platform
index 5172a6124b27..e8f5958c1d18 100644
--- a/Documentation/ABI/testing/sysfs-bus-platform
+++ b/Documentation/ABI/testing/sysfs-bus-platform
@@ -18,3 +18,13 @@ Description:
 		devices to opt-out of driver binding using a driver_override
 		name such as "none".  Only a single driver may be specified in
 		the override, there is no support for parsing delimiters.
+
+What:		/sys/bus/platform/devices/.../numa_node
+Date:		June 2020
+Contact:	Barry Song <song.bao.hua@hisilicon.com>
+Description:
+		This file contains the NUMA node to which the platform device
+		is attached. It won't be visible if the node is unknown. The
+		value comes from an ACPI _PXM method or a similar firmware
+		source. Initial users for this file would be devices like
+		arm smmu which are populated by arm64 acpi_iort.
diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index b27d0f6c18c9..7794b9a38d82 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -1062,13 +1062,37 @@ static ssize_t driver_override_show(struct device *dev,
 }
 static DEVICE_ATTR_RW(driver_override);
 
+static ssize_t numa_node_show(struct device *dev,
+		struct device_attribute *attr, char *buf)
+{
+	return sprintf(buf, "%d\n", dev_to_node(dev));
+}
+static DEVICE_ATTR_RO(numa_node);
+
+static umode_t platform_dev_attrs_visible(struct kobject *kobj, struct attribute *a,
+		int n)
+{
+	struct device *dev = container_of(kobj, typeof(*dev), kobj);
+
+	if (a == &dev_attr_numa_node.attr &&
+			dev_to_node(dev) == NUMA_NO_NODE)
+		return 0;
+
+	return a->mode;
+}
 
 static struct attribute *platform_dev_attrs[] = {
 	&dev_attr_modalias.attr,
+	&dev_attr_numa_node.attr,
 	&dev_attr_driver_override.attr,
 	NULL,
 };
-ATTRIBUTE_GROUPS(platform_dev);
+
+static struct attribute_group platform_dev_group = {
+	.attrs = platform_dev_attrs,
+	.is_visible = platform_dev_attrs_visible,
+};
+__ATTRIBUTE_GROUPS(platform_dev);
 
 static int platform_uevent(struct device *dev, struct kobj_uevent_env *env)
 {
-- 
2.23.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
