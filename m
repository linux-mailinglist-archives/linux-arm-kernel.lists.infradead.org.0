Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 748731DB850
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 17:33:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zUupkLICtR/dVQ8nAOJCc8YzIf301K8ZDIJgQVp2nNw=; b=bJgxlBgxOqnR5G
	EK8Ppx13FE6gI7e3WRpRStLu50Gm/NTrTgTKjdOKmYyy7Dv8wckfyfGoAAjNo80SX2Wnnyt+/eML7
	0Gn+wZ/vDaLmaKZanfCkyMO3rDCBkq7PqpHEd6qkIcPy7nm0GJR7g9rJORTkj6G/333JmCSM+zG+s
	VY1dngO8cVJvcyakDhmZsFScrTiILbVVfptYu4rZXnpCGXHulZ5PPA5eb1+BZG+dE+srRNzVVshC7
	o5/2YwLPvw8tHELwSHYTfbR65ZU6MzUDLBaDNhLjdU2/vJ6tAh2AZ4+xxOU7AmZiMJqq4OoPmyl/p
	toQD3bDh56hqfHaAoazQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbQis-0002Uk-4s; Wed, 20 May 2020 15:33:34 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbQiB-0001yN-7W
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 15:32:52 +0000
Received: by mail-wr1-x441.google.com with SMTP id k13so3626520wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 08:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1nOz9oJXJsBp0Pv8EAcijkkig9a/lDsRyH7fIHxuOyo=;
 b=NyfejZCyR749KuE+DWatqT6qWazMYFpQkVMGIdQXHn3J9NmjJ+p1lFrfTPgP0PVC1H
 J8UNAuCs6RSyO3blMwd6v8lsOM3dURZd9wwpYa/wafLuX9jxQrbUpAkNZ9qtjNrsb0GZ
 LgNprtlWLpVp/y9LR+luDthYcxWiTrK/pgxia+qcHs50IrUG8Li1TDTGzxpQ5aEPqDKk
 GZvkHBgYHD/Fwr/1k3LLSVABNaq3XRgGFSVGt6eww19sznOZORIHGMgZTvKpQe+Jf2kg
 shRdICnzO1febMCpv2zSlcrwr61fsX2iokq8z6WZ4PviE/lwxB7hsTooqBrRk+8CEoZG
 K4hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1nOz9oJXJsBp0Pv8EAcijkkig9a/lDsRyH7fIHxuOyo=;
 b=mqKkhJpXfSd1TwaQc/at14fxovg0iBS5ICYQBVvecPYQCySECpS/Fpl9hsXd7VnDwP
 t4jlplFcSaVet2u9YXI7AV3/CYqa0SEsMdGA32XMhChYTNKu/MRNvE15rPKfibgAzEtA
 iNmDnCpVGBHIVgeheEOXXc9Omdw1XvtlOb83hamzVxh80QjrzY4cgSwOEByLfqnuzX05
 X1/KdwWh1lrXufrQt9rOZoX+ZTB8kXkJYUjiPIQ3GIfpf4GrPIZN5z8cW/zQVJ7iy2G3
 xpFPbgvQ1KkaAvPoM0jc02P/C0U86ku7U+kH4zaK4fLsBqXT3OKHahAGrwCCk3RNUKTz
 B8tQ==
X-Gm-Message-State: AOAM532hQDpXoBSdSkHAUqLPTJPQ2v6irRGDvpk+30O0NCF/c+t/Ur8P
 wrHrhzE06/XHtlp5WdcWK4E/+g==
X-Google-Smtp-Source: ABdhPJx59HlfNOzaBiKhlFJ/pYv623nu18Wd7KEcgzKhucQcQE/H44ghrIVuFl4DIUQ5qDA5jAQU/g==
X-Received: by 2002:a5d:684f:: with SMTP id o15mr4463346wrw.89.1589988769690; 
 Wed, 20 May 2020 08:32:49 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id 5sm3395840wmd.19.2020.05.20.08.32.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 08:32:49 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, joro@8bytes.org, bhelgaas@google.com
Subject: [PATCH v2 3/4] iommu/arm-smmu-v3: Use pci_ats_supported()
Date: Wed, 20 May 2020 17:22:02 +0200
Message-Id: <20200520152201.3309416-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200520152201.3309416-1-jean-philippe@linaro.org>
References: <20200520152201.3309416-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_083251_270708_94F6B17D 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, ashok.raj@intel.com,
 will@kernel.org, hch@infradead.org, alex.williamson@redhat.com,
 robin.murphy@arm.com, dwmw2@infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new pci_ats_supported() function checks if a device supports ATS and
is allowed to use it.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 82508730feb7..c5730557dbe3 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2652,26 +2652,20 @@ static void arm_smmu_install_ste_for_dev(struct arm_smmu_master *master)
 	}
 }
 
-#ifdef CONFIG_PCI_ATS
 static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
 {
-	struct pci_dev *pdev;
+	struct device *dev = master->dev;
 	struct arm_smmu_device *smmu = master->smmu;
-	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(master->dev);
+	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 
-	if (!(smmu->features & ARM_SMMU_FEAT_ATS) || !dev_is_pci(master->dev) ||
-	    !(fwspec->flags & IOMMU_FWSPEC_PCI_RC_ATS) || pci_ats_disabled())
+	if (!(smmu->features & ARM_SMMU_FEAT_ATS))
 		return false;
 
-	pdev = to_pci_dev(master->dev);
-	return !pdev->untrusted && pdev->ats_cap;
-}
-#else
-static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
-{
-	return false;
+	if (!(fwspec->flags & IOMMU_FWSPEC_PCI_RC_ATS))
+		return false;
+
+	return dev_is_pci(dev) && pci_ats_supported(to_pci_dev(dev));
 }
-#endif
 
 static void arm_smmu_enable_ats(struct arm_smmu_master *master)
 {
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
