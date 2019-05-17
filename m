Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CA921DC1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 20:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=B+7vfYvyHKY46Yb0jgKWGu+2oEcodspYfd4jY75AYYw=; b=JUznQSaHxNOdh+I4zOASxxAqq3
	7RHdU28l957RP4KjM3Ygq94wkzYaWJrphs919DN/JQiWasWfZEWneB7dvM2iMV/lO21uBw5ullOPW
	Akkw9/wg05ydthfFtdgcsu7W9DUiohVRFjgpshNjWdN7O1ZH5BG6b9F8Q3Cz1jBde2I9FqZxt0HDS
	RADnBZ3dDIHV6R0pxt4WEUJMKRCDFIaU9fJvBaJ6W3zp9Zj8zFtKgFmqJ+wGLzCukOx+p+Hf/U6iY
	VmMN9TkOHOZzDS2DiXWXsjVx2mceQUGPZ8+t9gOk3h4BB7kA8m9U1GOlEeqXsL3AsncIo+33ecKTj
	vz3Rb9MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRhuX-0006lN-EZ; Fri, 17 May 2019 18:48:53 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhu7-0006bw-TH
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 18:48:35 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 97977619C8; Fri, 17 May 2019 18:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558118907;
 bh=kxktoBS1pRxC6RjcDvLlbVi5FujSN7tU1/fCwkp4N1o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KUcy+P/b23uQ8ZbKPaS1lCfaf1sseO3yzGDB6OE1ZztYo4hxd1LQz3dD/CtWEoGK7
 dUQeFP+fUpElKxlOW7sGjpIXkCctJti01fyiJSPOUcqQRX4cqTo6mKHBeO0bLgLi6w
 I9YEZBnBI21mSUcUUyhCeoQ1AcYxwlF8HqB+fims=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from isaacm-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: isaacm@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 130DC619B4;
 Fri, 17 May 2019 18:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558118903;
 bh=kxktoBS1pRxC6RjcDvLlbVi5FujSN7tU1/fCwkp4N1o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oah+MUC4XK/B7pkRpWFBUR815EF6RciVl3rKTJKJxLWkgViTrFFKNgKx3dI9zv8jd
 39XErz3TKn2EA0vsInFzFBttxOm1NSEbxOfXYfDNb733H3WVCmr2iEWe4ToGQiS3FK
 S03hvzJMeM+iyTlN2SnGp1vtCSZigZqMzf3s435g=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 130DC619B4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=isaacm@codeaurora.org
From: "Isaac J. Manjarres" <isaacm@codeaurora.org>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC/PATCH 3/4] iommu: Export core IOMMU functions to kernel modules
Date: Fri, 17 May 2019 11:47:36 -0700
Message-Id: <1558118857-16912-4-git-send-email-isaacm@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558118857-16912-1-git-send-email-isaacm@codeaurora.org>
References: <1558118857-16912-1-git-send-email-isaacm@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_114828_088404_BE45AA82 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "Isaac J. Manjarres" <isaacm@codeaurora.org>, kernel-team@android.com,
 robin.murphy@arm.com, joro@8bytes.org, will.deacon@arm.com,
 lmark@codeaurora.org, robh+dt@kernel.org, bhelgaas@google.com,
 frowand.list@gmail.com, pratikp@codeaurora.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IOMMU drivers that can be compiled as modules need to use
some of the IOMMU core functions, so expose them.

Signed-off-by: Isaac J. Manjarres <isaacm@codeaurora.org>
---
 drivers/iommu/iommu-sysfs.c | 3 +++
 drivers/iommu/iommu.c       | 6 ++++++
 2 files changed, 9 insertions(+)

diff --git a/drivers/iommu/iommu-sysfs.c b/drivers/iommu/iommu-sysfs.c
index 44127d5..b3dadb8 100644
--- a/drivers/iommu/iommu-sysfs.c
+++ b/drivers/iommu/iommu-sysfs.c
@@ -90,6 +90,7 @@ int iommu_device_sysfs_add(struct iommu_device *iommu,
 	put_device(iommu->dev);
 	return ret;
 }
+EXPORT_SYMBOL_GPL(iommu_device_sysfs_add);
 
 void iommu_device_sysfs_remove(struct iommu_device *iommu)
 {
@@ -122,6 +123,7 @@ int iommu_device_link(struct iommu_device *iommu, struct device *link)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(iommu_device_link);
 
 void iommu_device_unlink(struct iommu_device *iommu, struct device *link)
 {
@@ -131,3 +133,4 @@ void iommu_device_unlink(struct iommu_device *iommu, struct device *link)
 	sysfs_remove_link(&link->kobj, "iommu");
 	sysfs_remove_link_from_group(&iommu->dev->kobj, "devices", dev_name(link));
 }
+EXPORT_SYMBOL_GPL(iommu_device_unlink);
diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index 109de67..2b92f35 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -103,6 +103,7 @@ int iommu_device_register(struct iommu_device *iommu)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(iommu_device_register);
 
 void iommu_device_unregister(struct iommu_device *iommu)
 {
@@ -813,6 +814,7 @@ struct iommu_group *iommu_group_ref_get(struct iommu_group *group)
 	kobject_get(group->devices_kobj);
 	return group;
 }
+EXPORT_SYMBOL_GPL(iommu_group_ref_get);
 
 /**
  * iommu_group_put - Decrement group reference
@@ -986,6 +988,7 @@ struct iommu_group *generic_device_group(struct device *dev)
 {
 	return iommu_group_alloc();
 }
+EXPORT_SYMBOL_GPL(generic_device_group);
 
 /*
  * Use standard PCI bus topology, isolation features, and DMA alias quirks
@@ -1053,6 +1056,7 @@ struct iommu_group *pci_device_group(struct device *dev)
 	/* No shared group found, allocate new */
 	return iommu_group_alloc();
 }
+EXPORT_SYMBOL_GPL(pci_device_group);
 
 /* Get the IOMMU group for device on fsl-mc bus */
 struct iommu_group *fsl_mc_device_group(struct device *dev)
@@ -1133,6 +1137,7 @@ struct iommu_group *iommu_group_get_for_dev(struct device *dev)
 
 	return group;
 }
+EXPORT_SYMBOL_GPL(iommu_group_get_for_dev);
 
 struct iommu_domain *iommu_group_default_domain(struct iommu_group *group)
 {
@@ -1913,6 +1918,7 @@ struct iommu_resv_region *iommu_alloc_resv_region(phys_addr_t start,
 	region->type = type;
 	return region;
 }
+EXPORT_SYMBOL_GPL(iommu_alloc_resv_region);
 
 /* Request that a device is direct mapped by the IOMMU */
 int iommu_request_dm_for_dev(struct device *dev)
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
