Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7B815C8E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:54:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7pXk9HzLUFA/g8j8YopmTuQZGYPWnx9tPD6MQyDK42g=; b=JtkXXjEZ6IRWLP
	5wjkUnYpnTZ/aznqaExgzVnR8ok+DFO44YIbS1gAbEKEePtAN5A6E07kJhxGSQfgXhyY+8jW1KvIj
	tZSLZItKaMpUbpq1z0qL9D/AAhBCv9QXPYQ/uYRsvuN5uS2lZSoYCWhGz7umkXnJg3+iSIR9ywsUl
	wF2CDPiQ9aoah3GEGsNmIyiC9AnM09A6hAOtJygHQHYzFV9p2dMhlG+rlXuG0/PRaq35aRzlKlHdq
	9czObz3VvOBFZqAjMGbYNFWzeEu4/8sC3IWM1GRora+UhcYI4mHlt74NZvkDyEYZ9im2xkgyK4lCZ
	L+yJKgLlqLnbPag1Bujw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Hkr-0007ot-1j; Thu, 13 Feb 2020 16:54:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Hip-0005vj-BR
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:52:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id b17so7570208wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:52:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0vxAgnwgCi5tQ5T4tG4I38wvW8TUR4SKTYQ5b+iyeZ4=;
 b=rI28DsCSktD93OGWztli5kHgpw2K88deSfarovudDtCGLfZder9iNg0E10dhs9fZpk
 eFTsc3Fn6EAr9ouNGbiVBRkKPPK69q7RPGGtMBnyQCpqnyYvLAyAZqdIG/GIsLmqRzzi
 12LIcEDQwvb3OQl7giRwQQNgiq+VK/5XXRBsF1abm2y1vArf+0wGRt0YpzwOshhxB9zM
 Ix4415qok1sXN1TmaKBbTV/JM8kQC5iCIQJ1JAAK2NX29bDiYAkyRr6OEhmiVI8n9MLc
 mqbryRMGESOmDUg+tOlIH5s27bZYFv0z5XJC5YvNUltOxU5Eij2jAeBJnEveZ7p4bVI3
 Dzyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0vxAgnwgCi5tQ5T4tG4I38wvW8TUR4SKTYQ5b+iyeZ4=;
 b=c/X+rxdzy3ypkW8jdWmZvgiJuAASxE7jo88ICdMvU3PwmUL6zWmqqyMsAYqf0zQZRV
 it5IAm3h8bPlhLbBCdi3teRKHxoM3/5hpZuirU4UFR+ahPUFrxO9xHVx2UmOwq0O247J
 CCrgbjvY2Td/sFQgLHj6mcEpPtFWrBo8nE7RGRyRFVNMFVcpeNG9b4cWrk/zEBqLbx0e
 2fyTnG6A9iGAKXBU+4rXrqzDblPheY/3LyAZ4RXvGWwjakRBGHxVwqbs4cIidEm3gRIa
 CbJSTLtePe3QFTomNC2Za7Z5kWZhmsRtugAuzkb87L1+GmQAE9PCgPcT0xIL71Ibya6S
 o+nQ==
X-Gm-Message-State: APjAAAXYIrNbZDlz9mudZjV2dqafUec7xwqVmaT//QJ5GmEnLkrNFCoZ
 U7eRhNCA2nE5RaMv3wgIMP2jvA==
X-Google-Smtp-Source: APXvYqya188D5MEbRkey+kBb9V0Qc0uxPc2c2lngtBX0mBG9/xBeCp7D0V/fZbJc3uSzBYe3p4UBoQ==
X-Received: by 2002:a7b:c5d9:: with SMTP id n25mr7111336wmk.65.1581612733245; 
 Thu, 13 Feb 2020 08:52:13 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id y6sm3484807wrl.17.2020.02.13.08.52.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:52:12 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org,
 lorenzo.pieralisi@arm.com, joro@8bytes.org, baolu.lu@linux.intel.com,
 linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org
Subject: [PATCH 08/11] iommu/vt-d: Use pci_ats_supported()
Date: Thu, 13 Feb 2020 17:50:46 +0100
Message-Id: <20200213165049.508908-9-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213165049.508908-1-jean-philippe@linaro.org>
References: <20200213165049.508908-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_085215_421151_8B0C53DD 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

The pci_ats_supported() function checks if a device supports ATS and is
allowed to use it.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/intel-iommu.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index 9dc37672bf89..668f1b99111b 100644
--- a/drivers/iommu/intel-iommu.c
+++ b/drivers/iommu/intel-iommu.c
@@ -1449,8 +1449,7 @@ static void iommu_enable_dev_iotlb(struct device_domain_info *info)
 	    !pci_reset_pri(pdev) && !pci_enable_pri(pdev, 32))
 		info->pri_enabled = 1;
 #endif
-	if (!pdev->untrusted && info->ats_supported &&
-	    pci_ats_page_aligned(pdev) &&
+	if (info->ats_supported && pci_ats_page_aligned(pdev) &&
 	    !pci_enable_ats(pdev, VTD_PAGE_SHIFT)) {
 		info->ats_enabled = 1;
 		domain_update_iotlb(info->domain);
@@ -2611,10 +2610,8 @@ static struct dmar_domain *dmar_insert_one_dev_info(struct intel_iommu *iommu,
 	if (dev && dev_is_pci(dev)) {
 		struct pci_dev *pdev = to_pci_dev(info->dev);
 
-		if (!pdev->untrusted &&
-		    !pci_ats_disabled() &&
-		    ecap_dev_iotlb_support(iommu->ecap) &&
-		    pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_ATS) &&
+		if (ecap_dev_iotlb_support(iommu->ecap) &&
+		    pci_ats_supported(pdev) &&
 		    dmar_find_matched_atsr_unit(pdev))
 			info->ats_supported = 1;
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
