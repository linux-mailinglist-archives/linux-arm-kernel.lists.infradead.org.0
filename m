Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E60106CEC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:56:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6I5VVJ4JEZJR9rvJbP2/Y+nc1+k8bJ6Oxe70QfnfNY=; b=HW+C28aQcwnoo5
	nCRvPU14PR61wX9xa7a6Qdg0cmAfmHZVZ/mAAjqdG32gS2p8Crznufsj8fUXCdo0s7WDwSaNjWi7m
	qpUyKESh6t6jP4sDoHFXNE9vJDrpCvWHKZZoWSG3q16dEC/02gzwtd55nmQ4Bbr4vMdCqe5pTr0Cw
	Ed3RxPB76EoNVES6XFIG05mSXbyYuHr/BBk2t7yeoKSC4b2YnfVqM6mzdZ8+2KnXQF1Tbf1rxXoyK
	7LFDXemRiWyPzLzL0i03yu27f4P0eMQ5Z98Vx4BXmXua4AFfU64xN3YVsgZIF1wuXk7DWv+Og5cnL
	w3+XRnl6sW2AidetfWfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6bn-0002c4-Gi; Fri, 22 Nov 2019 10:56:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6Wm-0005B9-BZ
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:51:12 +0000
Received: by mail-wr1-x444.google.com with SMTP id t1so8061296wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 02:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O8FVNRvH5irJ2zDaBsxloUo7UX0pFrVUzjUZiLfKvwU=;
 b=KE4FZyVJ7oTMaqEmjpbPlG5DZcuerskPQmr4Oz+oBjjiJHvGL6H8exZ0GXrlPmDu4L
 fjock0LX/ANKXLc2tQLf8axKFLTKAmNc1cOarXAmF0mUTryD4ji2KpaeIUDw6KdwzCw2
 MxmVyNC6Z760rlRWN+O0jtt5nJoCB5GWkiGoJq9XOXrGI1Q2/py21NNS6EZZJTYshlH1
 dixx5JojDpj/FfGb3I7ZZgOUrdLQ8kn2WEIgbTcnNR0ah1Bdppb6CTCz4NURwPA8aLfS
 EJmBtSrx3Y1mMzNCGoqbw/42Xt3due4SSZ7dusRabMT5A8dSeghZrBgyRs8JtWKzrXen
 CdDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O8FVNRvH5irJ2zDaBsxloUo7UX0pFrVUzjUZiLfKvwU=;
 b=eeX/NoKH96OrlMdGs0bh/zgBxRTeBkQ7q431C3zwFejUB9H1H4BU5DnMpFi4njI8Fr
 EIQ2CaB5vp/fISCNQTysM7MH3HciJwOv3JX3yON78yykJ01vDv+lvBq9jjVdIIdZvsUG
 9+oLAkt8blW9hHtnRd69rl4sZ1Em7CUgVJDCs1eVMulkM/ujD+eYP4802IeMrTc0HmAJ
 mM594HFS9FFFjOYr5A01hE/lcBnj89FUbfzEhlOF4JlnjtzPnIDoyTbTfdoKcIKhY/gN
 PD3MXWX7nNTa86gre/YBPY2KJ5bN9bR2O3jEeeDukhNlPHl/NbHrmZG8wURNo5GR4k3M
 hwqQ==
X-Gm-Message-State: APjAAAUzVEhBOCVY+Ry0VeuhQ1ZhTyc0VbNlpy0nuNh5aCmi8mw2eUPX
 oXwP46hHs7kR+f8GhPmvnx3yIw==
X-Google-Smtp-Source: APXvYqxupzAk9/+hAGuqo2zCmryiXsqWB8zdfYtdzuCH8fYncJHID5ipVvqg0xilqWNq9KeWUZb/LQ==
X-Received: by 2002:adf:de0a:: with SMTP id b10mr17179236wrm.268.1574419862914; 
 Fri, 22 Nov 2019 02:51:02 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-204-106.adslplus.ch.
 [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id o133sm2088197wmb.4.2019.11.22.02.51.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 02:51:02 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org,
 virtualization@lists.linux-foundation.org, linux-pci@vger.kernel.org,
 virtio-dev@lists.oasis-open.org
Subject: [RFC 09/13] iommu/virtio: Create fwnode if necessary
Date: Fri, 22 Nov 2019 11:49:56 +0100
Message-Id: <20191122105000.800410-10-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122105000.800410-1-jean-philippe@linaro.org>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_025104_475673_F51800D8 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

The presence of a fwnode on a PCI device depends on the platform. QEMU
q35, for example, creates an ACPI description for each PCI slot, but
QEMU virt (aarch64) doesn't. Since the IOMMU subsystem relies heavily on
fwnode to discover the DMA topology, create a fwnode for the
virtio-iommu if necessary, using the software_node framework.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/virtio-iommu.c | 56 ++++++++++++++++++++++++++++++++----
 1 file changed, 51 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
index 3ea9d7682999..8efa368134c0 100644
--- a/drivers/iommu/virtio-iommu.c
+++ b/drivers/iommu/virtio-iommu.c
@@ -966,6 +966,48 @@ static struct iommu_ops viommu_ops = {
 	.of_xlate		= viommu_of_xlate,
 };
 
+static int viommu_set_fwnode(struct viommu_dev *viommu)
+{
+	/*
+	 * viommu->dev is the virtio device, its parent is the associated
+	 * transport device.
+	 */
+	struct device *dev = viommu->dev->parent;
+
+	/*
+	 * With device tree a fwnode is always present. With ACPI, on some
+	 * platforms a PCI device has a DSDT node describing the slot. On other
+	 * platforms, no fwnode is created and we have to do it ourselves.
+	 */
+	if (!dev->fwnode) {
+		struct fwnode_handle *fwnode;
+
+		fwnode = fwnode_create_software_node(NULL, NULL);
+		if (IS_ERR(fwnode))
+			return PTR_ERR(fwnode);
+
+		set_primary_fwnode(dev, fwnode);
+	}
+
+	iommu_device_set_fwnode(&viommu->iommu, dev->fwnode);
+	return 0;
+}
+
+static void viommu_clear_fwnode(struct viommu_dev *viommu)
+{
+	struct device *dev = viommu->dev->parent;
+
+	if (!dev->fwnode)
+		return;
+
+	if (is_software_node(dev->fwnode)) {
+		struct fwnode_handle *fwnode = dev->fwnode;
+
+		set_primary_fwnode(dev, NULL);
+		fwnode_remove_software_node(fwnode);
+	}
+}
+
 static int viommu_init_vqs(struct viommu_dev *viommu)
 {
 	struct virtio_device *vdev = dev_to_virtio(viommu->dev);
@@ -1004,7 +1046,6 @@ static int viommu_fill_evtq(struct viommu_dev *viommu)
 
 static int viommu_probe(struct virtio_device *vdev)
 {
-	struct device *parent_dev = vdev->dev.parent;
 	struct viommu_dev *viommu = NULL;
 	struct device *dev = &vdev->dev;
 	u64 input_start = 0;
@@ -1084,9 +1125,11 @@ static int viommu_probe(struct virtio_device *vdev)
 	if (ret)
 		goto err_free_vqs;
 
-	iommu_device_set_ops(&viommu->iommu, &viommu_ops);
-	iommu_device_set_fwnode(&viommu->iommu, parent_dev->fwnode);
+	ret = viommu_set_fwnode(viommu);
+	if (ret)
+		goto err_sysfs_remove;
 
+	iommu_device_set_ops(&viommu->iommu, &viommu_ops);
 	iommu_device_register(&viommu->iommu);
 
 #ifdef CONFIG_PCI
@@ -1119,8 +1162,10 @@ static int viommu_probe(struct virtio_device *vdev)
 	return 0;
 
 err_unregister:
-	iommu_device_sysfs_remove(&viommu->iommu);
 	iommu_device_unregister(&viommu->iommu);
+	viommu_clear_fwnode(viommu);
+err_sysfs_remove:
+	iommu_device_sysfs_remove(&viommu->iommu);
 err_free_vqs:
 	vdev->config->del_vqs(vdev);
 
@@ -1131,8 +1176,9 @@ static void viommu_remove(struct virtio_device *vdev)
 {
 	struct viommu_dev *viommu = vdev->priv;
 
-	iommu_device_sysfs_remove(&viommu->iommu);
 	iommu_device_unregister(&viommu->iommu);
+	viommu_clear_fwnode(viommu);
+	iommu_device_sysfs_remove(&viommu->iommu);
 
 	/* Stop all virtqueues */
 	vdev->config->reset(vdev);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
