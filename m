Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B966D1D4B84
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:49:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWmM/VBgE8iK8ujEmsjyglsj9RDVuwzHdUCv07wO/vg=; b=Qs3Fg06z9fPcRE
	/VIr8/YWFJ2o/P48kniX3z+A6h2xOM6B1dPqYrTbPmZNkoZoI3LP0xTAhjHSpURI4vgIJgWsaG1Dd
	YFGKrsV1z5vInWN4fzwpbM573z7lz4wzTSPJnpdaco7aR95Cr3b4p8BjDdHWhbED7LtkKLjoIoQn3
	v9m+XbVLsHqwOHtYq/D7o7UXnF63cNQwwdNgIz0d9jIxbHWTdYnJKc43VfcdxXq2t2MV+pLOSmA4l
	mEVkb8vFh70sFRwHsj81NqiKU3BHN9FOzOIUiegtw0gSy/xUddvJIab7+8Ozc1CZ5hJxDpivJ6kce
	PKX19+GmtJULj5xl/vDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXuR-0000zA-UT; Fri, 15 May 2020 10:49:43 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXtL-0008QL-Ex
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:48:39 +0000
Received: by mail-wm1-x344.google.com with SMTP id g14so16512237wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 03:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MQtP8fzJz2WKoMPMUWscfluDC7EhkHyxwXwDt+F/8Xo=;
 b=PXoZE6nGzWzeAjrZVC4Q8qDDJTcc+HjmAowWP2rxhAIl1x1saIXWkTrkuPyrwa3NHP
 yrSv8e2Hjy2yjlQ/runzqAADNByuuHASzKQn8JA/1UhZgEWKA+p+jj27buLk3nW/ROpD
 BPr61cO2ih0JqRMJtrloloi8lbgPItEok935Uw5/8hRNcmgMeRL6CftHv+yKS3l+s4WU
 iESxSPLqBjOeOA1KNZ7Y8/xjV9pWdJuANUQ8ZqvPc6wo+18lh8W3H7PofN1Gy/QF9Qth
 9hzcKT3MJdHAOaU/4IZQhzr/TKH/vkQjAFAtWKUVxBt4zMkvFJDnNIrBHa8WoNQEbB+/
 SUHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MQtP8fzJz2WKoMPMUWscfluDC7EhkHyxwXwDt+F/8Xo=;
 b=eW5uxyv52LJOuKZTdxOqkJJBoa3yvTHuOuQWWau+NyEACHtddfUKZawTS14+tB7y3o
 QN41F2iaaIAVEZXH/bGFJ7o0j78Nn6f1QIsF2K4Ou8kyApgJEr99+CV+3xVjw2LK+3rV
 tw2y/PnpE+4yC9NuofOLvyRX4gq+JjSSlsXyNiesfaKOTbLlkKIr3Pd6h4rahVrq+ems
 vk7lHbtcQQqRorON6QLH7LpUv+89bdNr8K+jhAEnxyj9vFfoezy7f78rUHewXP/KNjzR
 Ul6/0Ryn4dYowB745lj9N6LV4yp33ZDs3mzX8M20QIWLr2g2I/vvMS4oAzsdpzcI/w0b
 iMJg==
X-Gm-Message-State: AOAM533YGrDRqFMK459mssbLudp4FMw9lGQ7h+Irv9BcGGc5qYw658nw
 c2c1tSycpsntFcuTx877L3KvTg==
X-Google-Smtp-Source: ABdhPJxehzJSSp1pQ/plR94V1b9IyYmarD9UuBiSu3T4yL++xWMNQCc3xOjcNEKwI82yKNouA7z5hw==
X-Received: by 2002:a1c:7e4f:: with SMTP id z76mr3410526wmc.177.1589539714209; 
 Fri, 15 May 2020 03:48:34 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id h27sm3510392wrc.46.2020.05.15.03.48.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 03:48:33 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, joro@8bytes.org, bhelgaas@google.com
Subject: [PATCH 4/4] iommu/vt-d: Use pci_ats_supported()
Date: Fri, 15 May 2020 12:44:02 +0200
Message-Id: <20200515104359.1178606-5-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515104359.1178606-1-jean-philippe@linaro.org>
References: <20200515104359.1178606-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_034835_508114_B690D6A9 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, ashok.raj@intel.com,
 will@kernel.org, alex.williamson@redhat.com, robin.murphy@arm.com,
 dwmw2@infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pci_ats_supported() helper checks if a device supports ATS and is
allowed to use it. By checking the ATS capability it also integrates the
pci_ats_disabled() check from pci_ats_init(). Simplify the vt-d checks.

Acked-by: Lu Baolu <baolu.lu@linux.intel.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/intel-iommu.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index 0182cff2c7ac75..ed21ce6d123810 100644
--- a/drivers/iommu/intel-iommu.c
+++ b/drivers/iommu/intel-iommu.c
@@ -1454,8 +1454,7 @@ static void iommu_enable_dev_iotlb(struct device_domain_info *info)
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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
