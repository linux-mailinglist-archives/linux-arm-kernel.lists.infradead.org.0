Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D3A106CA1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:55:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lk9RnhFKNFrGxXxYrbGgExXlVHAiho8wWP3ob5hLRWk=; b=qUBwWudHQM7oU7
	BE2QPzPhf0AMlf7RTLa7/a8guK770o2yzHy9WOY/aE63cx9oHkZYlmcifDYPbmxu4fVqNa4/zO/IM
	JXE5WBkBuRfujgu9hvvmG3HAf8JTHl4wz3Rpos4c7wMC/p/B/NeKFxrrRJjCATCu/doIYVyeULKjv
	ic4F/WgCWyoya8VMpqyOwl7uRl1sGxiwmM/XRfScJz1qcSuk3/gtguA0GlcAAIQEypIVi8j8NVhyc
	xKdpE+ctfyWo2J3lV7m8iHSi7fzJvXMY2Ph3eENf5mVzwHJlDd7mkhvSG4wwNqFxoqDqI/bbxOB8J
	bRSAhuQHzfM3HxqMakuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6bB-00021C-R8; Fri, 22 Nov 2019 10:55:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6Wj-00058r-MY
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:51:05 +0000
Received: by mail-wr1-x442.google.com with SMTP id z7so4622627wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 02:51:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CtJV+Z/+/tbCQItMssO61Gtwu58uukk1EMY1cx5Lnrc=;
 b=mCKz+BwSiQij013yjrKfw6oVS8rZuOUhHnkYyeMuylQQuFFsn9XIbdgBHPAB3A8pdU
 cMUMBgkrvvyXzSZLc4JjMGoOSzDyj//LqR8hEsiytCRio7CzvsCfCntQef1cjjByIfQ+
 0DBqbuPYhmOF4UbwVb2bHkiMX1wUo68X/5aywzwjn2hqptbDdDMBAVskk51+xMBuyCTU
 0aOnmA88FRuITCJgViQafNz+hmtGYWMc11yYsyCe7/24XyqUneiJC1AQ84o9o8cla+Ey
 ATsb1Rzo34z2s9+ijfxeiOEUyGmCjwuFbjm2z5hrxBdndr6/6EsPwSvHM8DWWWBQjgAR
 RgBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CtJV+Z/+/tbCQItMssO61Gtwu58uukk1EMY1cx5Lnrc=;
 b=PNQprPCqLGSfjTwlYHgrMX5lbAU/oebpi+11AmfXb7EfwupN7/ZibNUnDxhYjKgD/B
 2USQExpWA3XTl/LEdE5jR/TXqSRkRVcJZwPsIQuvrXnyrij616yJWnA4aAhUdEDQs288
 kawvB2kq/2JiYCRcinF8T+rBskLdBRcQKQqLngXPabAqUQ35egmxIFbSM4XOD4KcCKRQ
 +eFC49rvd00rValggqXjJlDb3oy727zCYoXr1QmRjb6ACWHEjoANV3NysBoU/HG8u3iM
 PK/OAj7nB2uuFex0B8Ocpu8IEttI/R5Y49dgXMpMcdf7D1syNhyK9tBQ6QD5jKD0Dkmz
 tzwg==
X-Gm-Message-State: APjAAAXMT1+14YXEp1aqOvGBw2ItyKP9swvtlUSRGYjDIQMe2jFjynWb
 /6VxDvs8KCHneJIQEurNJCcIiQ==
X-Google-Smtp-Source: APXvYqx7MG4bOlzFFisEZutGEcVZWtWFA9RVeyazzfivhpVCLuQP4wNiRtqWewtbovVtsPJwXnRjLg==
X-Received: by 2002:a5d:4a8c:: with SMTP id o12mr508171wrq.43.1574419860358;
 Fri, 22 Nov 2019 02:51:00 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-204-106.adslplus.ch.
 [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id o133sm2088197wmb.4.2019.11.22.02.50.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 02:50:59 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org,
 virtualization@lists.linux-foundation.org, linux-pci@vger.kernel.org,
 virtio-dev@lists.oasis-open.org
Subject: [RFC 07/13] ACPI/IORT: Defer probe until virtio-iommu-pci has
 registered a fwnode
Date: Fri, 22 Nov 2019 11:49:54 +0100
Message-Id: <20191122105000.800410-8-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122105000.800410-1-jean-philippe@linaro.org>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_025101_858072_0B21F4E6 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kevin.tian@intel.com, lorenzo.pieralisi@arm.com, mst@redhat.com,
 gregkh@linuxfoundation.org, joro@8bytes.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, eric.auger@redhat.com, sebastien.boeuf@intel.com,
 jacob.jun.pan@intel.com, guohanjun@huawei.com, bhelgaas@google.com,
 jasowang@redhat.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the IOMMU is PCI-based, IORT doesn't know the fwnode until the
driver has had a chance to register it. In addition to deferring the
probe until the IOMMU ops are set, also defer the probe until the fwspec
is available.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/acpi/iort.c | 54 ++++++++++++++++++++++++++-------------------
 1 file changed, 31 insertions(+), 23 deletions(-)

diff --git a/drivers/acpi/iort.c b/drivers/acpi/iort.c
index b517aa4e83ba..f08f72d8af78 100644
--- a/drivers/acpi/iort.c
+++ b/drivers/acpi/iort.c
@@ -61,6 +61,22 @@ static bool iort_type_matches(u8 type, enum iort_node_category category)
 	}
 }
 
+static inline bool iort_iommu_driver_enabled(u8 type)
+{
+	switch (type) {
+	case ACPI_IORT_NODE_SMMU_V3:
+		return IS_BUILTIN(CONFIG_ARM_SMMU_V3);
+	case ACPI_IORT_NODE_SMMU:
+		return IS_BUILTIN(CONFIG_ARM_SMMU);
+	case ACPI_VIOT_IORT_NODE_VIRTIO_MMIO_IOMMU:
+	case ACPI_VIOT_IORT_NODE_VIRTIO_PCI_IOMMU:
+		return IS_ENABLED(CONFIG_VIRTIO_IOMMU);
+	default:
+		pr_warn("IORT node type %u does not describe an IOMMU\n", type);
+		return false;
+	}
+}
+
 /**
  * iort_set_fwnode() - Create iort_fwnode and use it to register
  *		       iommu data in the iort_fwnode_list
@@ -102,9 +118,9 @@ static inline int iort_set_fwnode(struct acpi_iort_node *iort_node,
  *
  * Returns: fwnode_handle pointer on success, NULL on failure
  */
-static inline struct fwnode_handle *iort_get_fwnode(
-			struct acpi_iort_node *node)
+static inline struct fwnode_handle *iort_get_fwnode(struct acpi_iort_node *node)
 {
+	int err = -ENODEV;
 	struct iort_fwnode *curr;
 	struct fwnode_handle *fwnode = NULL;
 
@@ -112,12 +128,20 @@ static inline struct fwnode_handle *iort_get_fwnode(
 	list_for_each_entry(curr, &iort_fwnode_list, list) {
 		if (curr->iort_node == node) {
 			fwnode = curr->fwnode;
+			if (!fwnode && curr->pci_devid) {
+				/*
+				 * Postpone probe until virtio-iommu has
+				 * registered its fwnode.
+				 */
+				err = iort_iommu_driver_enabled(node->type) ?
+					-EPROBE_DEFER : -ENODEV;
+			}
 			break;
 		}
 	}
 	spin_unlock(&iort_fwnode_lock);
 
-	return fwnode;
+	return fwnode ?: ERR_PTR(err);
 }
 
 /**
@@ -874,22 +898,6 @@ int iort_iommu_msi_get_resv_regions(struct device *dev, struct list_head *head)
 	return (resv == its->its_count) ? resv : -ENODEV;
 }
 
-static inline bool iort_iommu_driver_enabled(u8 type)
-{
-	switch (type) {
-	case ACPI_IORT_NODE_SMMU_V3:
-		return IS_BUILTIN(CONFIG_ARM_SMMU_V3);
-	case ACPI_IORT_NODE_SMMU:
-		return IS_BUILTIN(CONFIG_ARM_SMMU);
-	case ACPI_VIOT_IORT_NODE_VIRTIO_MMIO_IOMMU:
-	case ACPI_VIOT_IORT_NODE_VIRTIO_PCI_IOMMU:
-		return IS_ENABLED(CONFIG_VIRTIO_IOMMU);
-	default:
-		pr_warn("IORT node type %u does not describe an IOMMU\n", type);
-		return false;
-	}
-}
-
 static int arm_smmu_iort_xlate(struct device *dev, u32 streamid,
 			       struct fwnode_handle *fwnode,
 			       const struct iommu_ops *ops)
@@ -920,8 +928,8 @@ static int iort_iommu_xlate(struct device *dev, struct acpi_iort_node *node,
 		return -ENODEV;
 
 	iort_fwnode = iort_get_fwnode(node);
-	if (!iort_fwnode)
-		return -ENODEV;
+	if (IS_ERR(iort_fwnode))
+		return PTR_ERR(iort_fwnode);
 
 	/*
 	 * If the ops look-up fails, this means that either
@@ -1618,8 +1626,8 @@ static int __init iort_add_platform_device(struct acpi_iort_node *node,
 
 	fwnode = iort_get_fwnode(node);
 
-	if (!fwnode) {
-		ret = -ENODEV;
+	if (IS_ERR(fwnode)) {
+		ret = PTR_ERR(fwnode);
 		goto dev_put;
 	}
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
