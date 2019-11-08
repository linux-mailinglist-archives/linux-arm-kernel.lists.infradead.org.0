Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A26F4FA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 16:29:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecYqf+bljCal9tcyfr9+CEYE3VwwNxqpiEm0Zu/3zTA=; b=qEK4Cj52++uTDm
	xZDGk7dNZ0ZRcmlD8fb+mgByBxLR15yHWJikw4KmX5Xhg+OkU6kbVr5ndBFgdOgy86w5cf9cyoBFn
	yuf7tx4CRt9TWTUTCYRHzUlBLWL6MRGw9cor3ALUkVSII6bvTyYqr7ADdVBREtxaJt4G3CrfHJ0YN
	IgJvRUdFsuLje4po+EB7jsKe7GZGsxbreMzDoe97YnE3es2Qu2i4s7H1yyfmUVxCsQiMhf/nZ1HaV
	dZb19hz8CFrrY0e4IfkWZcGMWogaUvQqhV0cxBzOVIu70Q6DttzemOYYIlFY6v8su3LpcKwj7Td0B
	j4/PQlgtP9CNkAbL8ZyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6CH-0007AW-M2; Fri, 08 Nov 2019 15:29:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT6A6-00057u-DO
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 15:27:00 +0000
Received: by mail-wr1-x443.google.com with SMTP id i10so7491738wrs.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 07:26:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FjGV9dHEsXE/CXRMwyPeo6zW+qyz6ot3r0JcxY8EA5E=;
 b=Stc/zRTgvuJV42ldqRHlqe8DkziQ/xZI3K/M//32mxdJaRU1jz2L5/fMxZ1QFhpcGb
 EvSLry3iFu8329VB2GuTsvuMtRKQtUr6NhZe+OfFoUtq8NdYCPynlIwHbw/GjFUbmRC+
 H6gal8DBpakRVo3SnhTJfseRLFp1XqfFkb3D3NUiwdPCcqFJAIgPj+gGr6Z9Up4EP+4P
 8+Ut1quAnJxAurGbZKQH/VrQGWCWm7la8zmxc89J8tDCxR4MRqdAj9qnVky2l9P/QGSc
 7hQrDyjXx2qQgCLFiaNFaKInDn2CY6ehhHcEYqTjArSQZFKJgu0xbSGyle/kTSvYSm0a
 jagQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FjGV9dHEsXE/CXRMwyPeo6zW+qyz6ot3r0JcxY8EA5E=;
 b=e+GyYkjHY3GZ9EqhWIcW15LT2+1xsIfHDShtCTOlBws4nqPyY2S4LRVjibX73eEbGt
 GND6anHHPTeBuTfRErz2ew8jYpoFVwapnaRsiv7pjg2wJsJ2JFP4g9m5yl+87rtriLns
 ZXH/POtPjokjoc/oWrwqBwEPtgkC74blxWTN794letai41wstc0RFh0KZ9mD2eRHya4I
 fGXkyEQm9lpacCo3N6JuBsczm57MixO+HedfECptujYbDWCYuj9EUagNzQiRr7luIiMe
 bQZosbBZ5CmEjhVANZfuiz6ujsuS7yknENbRZlQnQ2I8nL+Q0ZcBJqHUlWt/V+3uoeOi
 9pug==
X-Gm-Message-State: APjAAAVkpx0fRSa9/LMLG8bHltQe1pfx5Csg+H483UVNHQz23P02CAe4
 PUTkpZ3eQWJWGJR0hKAKoVUN8g==
X-Google-Smtp-Source: APXvYqyYxAoUhXJzLGprymri1AM4kybRhlq/Xshi8NVcy8x0x8VatgjfP55PcG/0utxa9PrTdLVdag==
X-Received: by 2002:a5d:4c4e:: with SMTP id n14mr9845340wrt.260.1573226817077; 
 Fri, 08 Nov 2019 07:26:57 -0800 (PST)
Received: from localhost.localdomain ([85.195.192.192])
 by smtp.gmail.com with ESMTPSA id w18sm6579232wrp.31.2019.11.08.07.26.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 07:26:56 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 8/8] iommu/arm-smmu-v3: Add support for PCI PASID
Date: Fri,  8 Nov 2019 16:25:08 +0100
Message-Id: <20191108152508.4039168-9-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108152508.4039168-1-jean-philippe@linaro.org>
References: <20191108152508.4039168-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_072658_471380_8C807ACA 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net,
 eric.auger@redhat.com, robh+dt@kernel.org, jonathan.cameron@huawei.com,
 sudeep.holla@arm.com, zhangfei.gao@linaro.org, will@kernel.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable PASID for PCI devices that support it. Since the SSID tables are
allocated by arm_smmu_attach_dev(), PASID has to be enabled early enough.
arm_smmu_dev_feature_enable() would be too late, since by that time the
main DMA domain has already been attached. Do it in add_device() instead.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 51 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 50 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 88ec0bf33492..3ee313c08325 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2633,6 +2633,49 @@ static void arm_smmu_disable_ats(struct arm_smmu_master *master)
 	atomic_dec(&smmu_domain->nr_ats_masters);
 }
 
+static int arm_smmu_enable_pasid(struct arm_smmu_master *master)
+{
+	int ret;
+	int features;
+	int num_pasids;
+	struct pci_dev *pdev;
+
+	if (!dev_is_pci(master->dev))
+		return -ENOSYS;
+
+	pdev = to_pci_dev(master->dev);
+
+	features = pci_pasid_features(pdev);
+	if (features < 0)
+		return -ENOSYS;
+
+	num_pasids = pci_max_pasids(pdev);
+	if (num_pasids <= 0)
+		return -ENOSYS;
+
+	ret = pci_enable_pasid(pdev, features);
+	if (!ret)
+		master->ssid_bits = min_t(u8, ilog2(num_pasids),
+					  master->smmu->ssid_bits);
+	return ret;
+}
+
+static void arm_smmu_disable_pasid(struct arm_smmu_master *master)
+{
+	struct pci_dev *pdev;
+
+	if (!dev_is_pci(master->dev))
+		return;
+
+	pdev = to_pci_dev(master->dev);
+
+	if (!pdev->pasid_enabled)
+		return;
+
+	master->ssid_bits = 0;
+	pci_disable_pasid(pdev);
+}
+
 static void arm_smmu_detach_dev(struct arm_smmu_master *master)
 {
 	unsigned long flags;
@@ -2841,13 +2884,16 @@ static int arm_smmu_add_device(struct device *dev)
 
 	master->ssid_bits = min(smmu->ssid_bits, fwspec->num_pasid_bits);
 
+	/* Note that PASID must be enabled before, and disabled after ATS */
+	arm_smmu_enable_pasid(master);
+
 	if (!(smmu->features & ARM_SMMU_FEAT_2_LVL_CDTAB))
 		master->ssid_bits = min_t(u8, master->ssid_bits,
 					  CTXDESC_LINEAR_CDMAX);
 
 	ret = iommu_device_link(&smmu->iommu, dev);
 	if (ret)
-		goto err_free_master;
+		goto err_disable_pasid;
 
 	group = iommu_group_get_for_dev(dev);
 	if (IS_ERR(group)) {
@@ -2860,6 +2906,8 @@ static int arm_smmu_add_device(struct device *dev)
 
 err_unlink:
 	iommu_device_unlink(&smmu->iommu, dev);
+err_disable_pasid:
+	arm_smmu_disable_pasid(master);
 err_free_master:
 	kfree(master);
 	fwspec->iommu_priv = NULL;
@@ -2880,6 +2928,7 @@ static void arm_smmu_remove_device(struct device *dev)
 	arm_smmu_detach_dev(master);
 	iommu_group_remove_device(dev);
 	iommu_device_unlink(&smmu->iommu, dev);
+	arm_smmu_disable_pasid(master);
 	kfree(master);
 	iommu_fwspec_free(dev);
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
