Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E665915BC7C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 11:15:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZkCLzdeTVmklZps9hRjYqlHQnout3kE6IZ+RpkdsARc=; b=BpHrQ+xP9IVPj2
	5t5iA88dkFsy88SrLNovU9EzJjOxSXSpnwj2mUhHYJeb3BTzr7K2xPcv+INmwXBfhXtxHRenP/mjA
	u3etBuqHlK+XOjl5u0/UJRBBjGQcgssQpen8uvH0kvPOV0X7Tyc3VnSe5WRnwAqR04j/c5rlvdp+d
	rF2YSMepT+8+K0faN32AmIU7Ka01Gpq+phVChlKLhYxySVcUg63/e9RP9b1qwj3acSPr4zChGEkyU
	2DX7MR5S3I8aB6tOUh3CrKNiW/plVUkI9GwPCz4YJ1n8KYzDREILpd071ZFUZdAGtKb0nlBNiRMyE
	bEwBQwfy/WSwhU9FDZqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2BWk-0003P7-BV; Thu, 13 Feb 2020 10:15:22 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2BWB-0002yx-29
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:14:49 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so5921664wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 02:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L9Q0qcxnkV13c6MhKRP3gkBpAW/Xjj6KTCyBYPPUbo8=;
 b=LiIOnGXo+1V5X4BBKECkUfbWR73U9DnrPU1pNO8cxMgeZIEroezVjURh8NbYtZC3Uq
 7g/McoLvPT54IaXv77TmDcfIz9XkxAJW0y/z+aaNhUtd4yleQcmOkWDjKc+9fIE3IkBi
 RZXmj77XMU7r3GLU5vVtyisnlRaHZmAxriLxL2nbxuw8BT7TE1h96cCAssdBa6IEbqsW
 jOI1Mx55wwplBlekHQLSW1xsreMKFUSXkAPbX95yhKcIdBpMO1v3o67YP/vyON5z8zES
 B6UfwVZ4qNdFptn9nc3ekb8wOL0wtrcKHNjknbmM7g6ZNbKbrXjBehtJ9yCmd0ifVMIL
 BghQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L9Q0qcxnkV13c6MhKRP3gkBpAW/Xjj6KTCyBYPPUbo8=;
 b=g9sNowl2PCdr5RttJaLc6jM+HRAgoGRTMLE1hAheIhMgug+NvX5tRILsHmwoktEiee
 HvW8YE5CEMEDHWM/FXQc8a0Z6RTXO5rqEEI8mT51vv9EWH28pKFCDDP0bvqizMj8Zeny
 05yLDtDh6tPk/IAOwKSdFSJylcbViRe5JQSR7l02LelCbCbtsOQOnC2amcf4pcvsZr6J
 JFOpQF2iOZLHpZWU/sR9zkrXSxRa8sAM+yIxD8xG4J0XP3UPcM9BhhjwWxjZtMHO5EPh
 V4TCQ7ijdoAKm/wnut5TOCa2eTuxeyUBpY/eLGrQWnY7kthI5Z8/CEu3jQW5nd6ZlUHe
 /b+A==
X-Gm-Message-State: APjAAAXOwAJBtB11RhlV3zyfSxpB7N/tVCnXOwXyz6ia2v8GjFVLJKum
 itdp2jdyhlrclm6YTUdC3TsjyA==
X-Google-Smtp-Source: APXvYqwSxpKXbSMy45Iflgb/oggW3gSVdZ3l436ykNIVtfT1vHBYjdOvlXejPjzPm37riWjiclruZg==
X-Received: by 2002:adf:edd0:: with SMTP id v16mr20491760wro.310.1581588885858; 
 Thu, 13 Feb 2020 02:14:45 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id y131sm2428059wmc.13.2020.02.13.02.14.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 02:14:45 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, will@kernel.org, bhelgaas@google.com
Subject: [PATCH 2/4] iommu/arm-smmu-v3: Add support for PCI PASID
Date: Thu, 13 Feb 2020 11:14:33 +0100
Message-Id: <20200213101435.229932-3-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213101435.229932-1-jean-philippe@linaro.org>
References: <20200213101435.229932-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_021447_099904_91668D91 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: zhangfei.gao@linaro.org, joro@8bytes.org, robin.murphy@arm.com,
 jonathan.cameron@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable PASID for PCI devices that support it. Initialize PASID early in
add_device() because it must be enabled before ATS.

Tested-by: Zhangfei Gao <zhangfei.gao@linaro.org>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 62 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 61 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index aa3ac2a03807..6b76df37025e 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2628,6 +2628,53 @@ static void arm_smmu_disable_ats(struct arm_smmu_master *master)
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
+		return -ENODEV;
+
+	pdev = to_pci_dev(master->dev);
+
+	features = pci_pasid_features(pdev);
+	if (features < 0)
+		return features;
+
+	num_pasids = pci_max_pasids(pdev);
+	if (num_pasids <= 0)
+		return num_pasids;
+
+	ret = pci_enable_pasid(pdev, features);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to enable PASID\n");
+		return ret;
+	}
+
+	master->ssid_bits = min_t(u8, ilog2(num_pasids),
+				  master->smmu->ssid_bits);
+	return 0;
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
@@ -2831,13 +2878,23 @@ static int arm_smmu_add_device(struct device *dev)
 
 	master->ssid_bits = min(smmu->ssid_bits, fwspec->num_pasid_bits);
 
+	/*
+	 * Note that PASID must be enabled before, and disabled after ATS:
+	 * PCI Express Base 4.0r1.0 - 10.5.1.3 ATS Control Register
+	 *
+	 *   Behavior is undefined if this bit is Set and the value of the PASID
+	 *   Enable, Execute Requested Enable, or Privileged Mode Requested bits
+	 *   are changed.
+	 */
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
@@ -2850,6 +2907,8 @@ static int arm_smmu_add_device(struct device *dev)
 
 err_unlink:
 	iommu_device_unlink(&smmu->iommu, dev);
+err_disable_pasid:
+	arm_smmu_disable_pasid(master);
 err_free_master:
 	kfree(master);
 	fwspec->iommu_priv = NULL;
@@ -2870,6 +2929,7 @@ static void arm_smmu_remove_device(struct device *dev)
 	arm_smmu_detach_dev(master);
 	iommu_group_remove_device(dev);
 	iommu_device_unlink(&smmu->iommu, dev);
+	arm_smmu_disable_pasid(master);
 	kfree(master);
 	iommu_fwspec_free(dev);
 }
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
