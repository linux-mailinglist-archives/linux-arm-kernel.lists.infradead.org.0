Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8E11D97BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 15:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=f2kkcyFWf6blMnq9PjR+ChxNrSMDVUZLgccqi998CpY=; b=Urb
	AAH+WTL1d0XoBWKK4xRfpqof+nKF/dyXR7c7Hj0c3RcE89CPJz4T2sTV88OiIm0lqtG10f9EFYOsE
	sREzECR7SNWiN8OlV+/AGrZN4AmoGWPjxYVmwsmbrBZaBFKHjF/o0VFzj2HMjRHgnZmzcvko5ONvD
	+Myv/2HhiHuNyhOafxbQet2CyOTQBJx402i60U1YdHNDjBtebAdM6Aq0r4YFnY1+9D4GFOKpWVvKM
	tjTGaQi0YpZLUY+35Pbkcu6bc6JC8y8aTfYQQl4RdPTmglcVXQEeA49tN2lZ27esZeyQgeQIXBh0y
	6ubkXrvmMmJcar6FjehOfvdU+InLokw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2Ie-0007zv-Gi; Tue, 19 May 2020 13:28:52 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2IU-0007wf-7Y; Tue, 19 May 2020 13:28:43 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 7785F386; Tue, 19 May 2020 15:28:33 +0200 (CEST)
From: Joerg Roedel <joro@8bytes.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH] iommu: Don't call .probe_finalize() under group->mutex
Date: Tue, 19 May 2020 15:28:24 +0200
Message-Id: <20200519132824.15163-1-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_062842_433084_4430C0DE 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
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
Cc: Joerg Roedel <jroedel@suse.de>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Joerg Roedel <jroedel@suse.de>

The .probe_finalize() call-back of some IOMMU drivers calls into
arm_iommu_attach_device(). This function will call back into the
IOMMU core code, where it tries to take group->mutex again, resulting
in a deadlock.

As there is no reason why .probe_finalize() needs to be called under
that mutex, move it after the lock has been released to fix the
deadlock.

Cc: Yong Wu <yong.wu@mediatek.com>
Reported-by: Yong Wu <yong.wu@mediatek.com>
Fixes: deac0b3bed26 ("iommu: Split off default domain allocation from group assignment")
Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/iommu.c | 28 ++++++++++++++++++----------
 1 file changed, 18 insertions(+), 10 deletions(-)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index 629d209b8e88..d5d9fcbc9714 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -1683,17 +1683,8 @@ static void probe_alloc_default_domain(struct bus_type *bus,
 static int iommu_group_do_dma_attach(struct device *dev, void *data)
 {
 	struct iommu_domain *domain = data;
-	const struct iommu_ops *ops;
-	int ret;
-
-	ret = __iommu_attach_device(domain, dev);
-
-	ops = domain->ops;
-
-	if (ret == 0 && ops->probe_finalize)
-		ops->probe_finalize(dev);
 
-	return ret;
+	return __iommu_attach_device(domain, dev);
 }
 
 static int __iommu_group_dma_attach(struct iommu_group *group)
@@ -1702,6 +1693,21 @@ static int __iommu_group_dma_attach(struct iommu_group *group)
 					  iommu_group_do_dma_attach);
 }
 
+static int iommu_group_do_probe_finalize(struct device *dev, void *data)
+{
+	struct iommu_domain *domain = data;
+
+	if (domain->ops->probe_finalize)
+		domain->ops->probe_finalize(dev);
+
+	return 0;
+}
+
+static void __iommu_group_dma_finalize(struct iommu_group *group)
+{
+	__iommu_group_for_each_dev(group, group->default_domain,
+				   iommu_group_do_probe_finalize);
+}
 static int iommu_do_create_direct_mappings(struct device *dev, void *data)
 {
 	struct iommu_group *group = data;
@@ -1754,6 +1760,8 @@ int bus_iommu_probe(struct bus_type *bus)
 
 		if (ret)
 			break;
+
+		__iommu_group_dma_finalize(group);
 	}
 
 	return ret;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
