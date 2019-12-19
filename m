Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E5112673B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 17:35:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u1JSV41gilAGIyt+yI/g4FOsUdh5V3Hp4bAI8FHtR5A=; b=BZrRw8EHqlfxgW
	CQehV4SnlD8vlMx/agHVayzJpPGXHLgogbdRzaFDdPAA/6/GG+nGehtX7OvEtfG1Vbau1tuO+4uWN
	AsWYZfRL2auL1BS+M5Ndfw9tKYV2ZtkCqiF6sFkkeTUPYy1rGPeZjCYmln9n/6x0ln7KQHPR4Id6L
	YfV2jr1s38l4VeJAmsxsBC5j71Q7LfHveK+rntjAM9Z6AyoQOWuhx8FKJPzUAkwBxGvp8nzmGIKp1
	zbMb5E8h4nH1gnJAuLcu1CQAakEul3vymEIWC/WNuVp5zoU1V+NN59Jh7I802I4oCnN6k0rxg5i/V
	1zL76In2sj4ogFl7gSlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihylp-0003Qp-3z; Thu, 19 Dec 2019 16:35:25 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihyiA-0000DY-Sg
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 16:31:40 +0000
Received: by mail-wr1-x443.google.com with SMTP id d16so6593115wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 08:31:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DFKSWV5x7hWib4ywLyYZ2Xpzoe8h6HBPQg/y9idEIyA=;
 b=hH3b80WjL1UfLkeRj1KaYK2xXE9kCJqYv3IfxG/t0piRVkIEPEUriaWxmUbpRUG4Fq
 1k4YH7bs2VDmawOY4Ebix453yuxAxC2sbnROIZRwLQvY7OvLOXgFy/TmXEfK8P7l47eN
 dX7k8lSRFzJO+MKenvWY8EegeAUWz+s7gbOrYX00KG2aT3ygF3N+B7D30eheZ3koHxzj
 uDhVQVW0qwmeuvx00tfSyjjW4lZx7I/dbMTo3eCCRLmzgO3m1oH86DGHt1HFdggdqAHd
 DzIYrIar+5lr7sDIBSRuf4W1WoYmC8U0q2tRT6n3rfDQY1FOLTQqyNkw6XyKGZTogK8O
 81MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DFKSWV5x7hWib4ywLyYZ2Xpzoe8h6HBPQg/y9idEIyA=;
 b=lzNVHvwwJV0kvfsfN5hHiUru916TLpus1nWUt0oDnBva17PyyYsvec2xAIru1WKcbX
 20UIJdNhJjtOzFMuoMUJD7Z75RhuaF/laJYgrszEVEdxkyNe+fi56RgTk/sMVpR6LMdu
 xvU+Khg0uAnt1SRvAraipOAvE/qrB6BSoGt+NJX3+2wWpyMJvV/HixTypacbL9H+vPRw
 uKU+Zwu+XKerx8pMGPEYAk6xYxn19J/IUai/aGoRqAAQO+uNyuLX+SOo8h4TuOl0O8WR
 nCAN29Irds7NGkgEpXaZ2P/gyQ8oJjVMxqKcO/6p7BJX+WfLoQFeLrqCJ5UBlQe47u76
 iAMQ==
X-Gm-Message-State: APjAAAW7VfTM3WrcVXRdA5QJjZPOHkZaPh4nWQRz7cTrpSmHHnlFCBt7
 aNxbJnHMlxT1l/2PEGTFgUnJuw==
X-Google-Smtp-Source: APXvYqyRkRT8Nl9uMCu8TDEXSE0TrK+jCYgWkOFDWo74ajAHonUbBJuugZCeMz0UhO+iHDiRitfiHQ==
X-Received: by 2002:a5d:640d:: with SMTP id z13mr10506261wru.181.1576773096482; 
 Thu, 19 Dec 2019 08:31:36 -0800 (PST)
Received: from localhost.localdomain (adsl-84-227-176-239.adslplus.ch.
 [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id u22sm7092068wru.30.2019.12.19.08.31.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 08:31:36 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v4 13/13] iommu/arm-smmu-v3: Add support for PCI PASID
Date: Thu, 19 Dec 2019 17:30:33 +0100
Message-Id: <20191219163033.2608177-14-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219163033.2608177-1-jean-philippe@linaro.org>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_083139_186040_7043AD81 
X-CRM114-Status: GOOD (  15.35  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 sudeep.holla@arm.com, bhelgaas@google.com, zhangfei.gao@linaro.org,
 will@kernel.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable PASID for PCI devices that support it. Since the SSID tables are
allocated by arm_smmu_attach_dev(), PASID has to be enabled early enough.
arm_smmu_dev_feature_enable() would be too late, since by that time the
main DMA domain has already been attached. Do it in add_device() instead.

Tested-by: Zhangfei Gao <zhangfei.gao@linaro.org>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 55 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 54 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index e62ca80f2f76..8e95ecad4c9a 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2644,6 +2644,53 @@ static void arm_smmu_disable_ats(struct arm_smmu_master *master)
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
@@ -2852,13 +2899,16 @@ static int arm_smmu_add_device(struct device *dev)
 
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
@@ -2871,6 +2921,8 @@ static int arm_smmu_add_device(struct device *dev)
 
 err_unlink:
 	iommu_device_unlink(&smmu->iommu, dev);
+err_disable_pasid:
+	arm_smmu_disable_pasid(master);
 err_free_master:
 	kfree(master);
 	fwspec->iommu_priv = NULL;
@@ -2891,6 +2943,7 @@ static void arm_smmu_remove_device(struct device *dev)
 	arm_smmu_detach_dev(master);
 	iommu_group_remove_device(dev);
 	iommu_device_unlink(&smmu->iommu, dev);
+	arm_smmu_disable_pasid(master);
 	kfree(master);
 	iommu_fwspec_free(dev);
 }
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
