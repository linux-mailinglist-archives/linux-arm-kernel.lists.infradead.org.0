Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0E915C8E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:54:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ooF9JeORS8eY/OIkrbQw54NCoSDeEPJvXujMy/Iviv4=; b=DfHN+2G+G6SDh6
	6rNNRQpuQ9X1j4uLGvgv/2zvepEF6PGF3cZzCYD4gBCxO9HXzbrrJMa/s8XlYav56N9E1CrR/EYIL
	1SpcKNay+BpD/OEG/l9DdE6vbmi/lE5ynSj/eOpCsyecV2c3wILbyA4vVe4nBSgrlfVe00cQ3laoz
	VuR907vPJRafIRZXEtfBGncHTd8r5IXQaDJMLSqQTp+zn1pj7d88scrRCZbtZTCC0GmZtMpvjYacd
	apuNoK+RBd+JjAHGW21EQ+9/RGes++K+Ksng1fyrThHzNlcQ1wCz3CNQwZNcbbAUQ8NqR5G7Muql+
	berVtPFb973GoVQzdQ5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Hke-0007ZD-Li; Thu, 13 Feb 2020 16:54:08 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Hio-0005uq-4T
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:52:15 +0000
Received: by mail-wm1-x343.google.com with SMTP id a9so7544813wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U26fffvgwp71+SNBZes7kN68yqENzqleBMzpKeSvYfk=;
 b=Iz+vmyg7ylIYn6p7q9yd68KiPD4WwU9BkBaQerkI2NZdwzP5RRGj2wGHMVtCtezAPj
 u9bwehyH/NAlF9xyvFYYt9G82ostbC0FdUsO6U9xm/GVk0pYppfITCABiL8OFgK4KdC2
 VSZYeLfzQQvXfnC5qPGdZHw1KHNVOQSizYQ6Pgc6n8542Kng0v8keVX+xH1LbP7xSSpg
 uIi6TMeDA0Kv/w5GdtWY083xSiqHItXR9sT7EPm3ixtOzf66CJlPNnc4N/CWisrWmkjI
 Ybt5zO3XS7dRVC8RKFKepqhMG7zvG3xAiFjhjBL1ATOBv5o4hB54Wk8Nh2QMNFzB8P5f
 ppFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U26fffvgwp71+SNBZes7kN68yqENzqleBMzpKeSvYfk=;
 b=IPnwGXwflFzuRyHhILDmLGCgecP1lU5VIATFczd5iTlIIK7AVcFXW9kRVLZ/OIq0uR
 06PJhiBhBZluurSiMxVfabOa0TP239wo4bVWQt411AtQxSwHQZJGOuJQ+cnYfXcLLOpu
 hIrdDSDi1xBUhYhGfXO2ntuAILmm3njwN5tMaKq86HXobjz2AOA18Ncw/IbpFkmiOLKY
 gt1WbA7bNDpfV8sn7u6lryOrhsZJ0PckPJ9200ovFhrRa7fNOEdGtP6fUuJp7erBChbK
 2YOQdgG6ccy7Lp9ivU5hCoFcPR9nCFMBkccT1CpyPVcbRoCKGegcWCXRsimg+Q9i79Rz
 XFdw==
X-Gm-Message-State: APjAAAWrADU0uSKiiM53VkyH9hp4SLHUjbU635ahlt/VAVP3QeEn+CNf
 yH0XLypOto+Rd+jg5xnzrQhwFg==
X-Google-Smtp-Source: APXvYqwEOVyFHf6MJNfobIBMxCR5I4cYgsgZ8hgKlRwEfXmjyl79QF77D1oEmVHeHNVbhhjKa0kvHw==
X-Received: by 2002:a7b:cc81:: with SMTP id p1mr6550304wma.62.1581612732115;
 Thu, 13 Feb 2020 08:52:12 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id y6sm3484807wrl.17.2020.02.13.08.52.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:52:11 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org,
 lorenzo.pieralisi@arm.com, joro@8bytes.org, baolu.lu@linux.intel.com,
 linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org
Subject: [PATCH 07/11] iommu/arm-smmu-v3: Use pci_ats_supported()
Date: Thu, 13 Feb 2020 17:50:45 +0100
Message-Id: <20200213165049.508908-8-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213165049.508908-1-jean-philippe@linaro.org>
References: <20200213165049.508908-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_085214_243006_E20EAD24 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: mark.rutland@arm.com, frowand.list@gmail.com, corbet@lwn.net,
 liviu.dudau@arm.com, sudeep.holla@arm.com, rjw@rjwysocki.net,
 guohanjun@huawei.com, amurray@thegoodpenguin.co.uk, robin.murphy@arm.com,
 dwmw2@infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new pci_ats_supported() function checks if a device supports ATS and
is allowed to use it.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 034ad9671b83..bd2cfd946a36 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2577,26 +2577,14 @@ static void arm_smmu_install_ste_for_dev(struct arm_smmu_master *master)
 	}
 }
 
-#ifdef CONFIG_PCI_ATS
 static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
 {
-	struct pci_dev *pdev;
+	struct device *dev = master->dev;
 	struct arm_smmu_device *smmu = master->smmu;
-	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(master->dev);
-
-	if (!(smmu->features & ARM_SMMU_FEAT_ATS) || !dev_is_pci(master->dev) ||
-	    !(fwspec->flags & IOMMU_FWSPEC_PCI_RC_ATS) || pci_ats_disabled())
-		return false;
 
-	pdev = to_pci_dev(master->dev);
-	return !pdev->untrusted && pdev->ats_cap;
+	return (smmu->features & ARM_SMMU_FEAT_ATS) && dev_is_pci(dev) &&
+		pci_ats_supported(to_pci_dev(dev));
 }
-#else
-static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
-{
-	return false;
-}
-#endif
 
 static void arm_smmu_enable_ats(struct arm_smmu_master *master)
 {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
