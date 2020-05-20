Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA031DB851
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 17:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7H45z8WKYgbPmIK26BwILKLSpx0/JsUn2KQohcemhOU=; b=FpxN+aXLt21LGt
	diQqsa4oYs3aecMvTkZwkVy6vWcfHOa5/IBo0IU32f3DoHGC/Gi/ZYDm21fpTgiKlRa5GyAvvxEpQ
	+mXDOXbU5gTdRHu23zcX62Go3d5dNz8GBEou4kx/xV3irpUKofe0xi6pguWAZzk5wfYT377kr+n1/
	ulTBXKVT+4AId7cXmKQ/7NOTcvx/drZDXBPyftqrxBx2hVCNtGeeDMIJapd9FHIeztaOA4UXgaBQz
	s6JiHlscHJigZov4+gzu7DwgKRxLeGXl6Rqmkfc2669HKiegK2McsIbZefKp3LaU06MAYGwgNWhY9
	FLLrLwQM5OduCpCmCVqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbQj8-0002gk-Qp; Wed, 20 May 2020 15:33:50 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbQiC-0001yj-4J
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 15:32:53 +0000
Received: by mail-wm1-x343.google.com with SMTP id w64so3338747wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 08:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eyFn3P2XuGvmapYpvmXsfPpBpNlu7lMJiAWRzcy1I5I=;
 b=NvU+y8H/jAu6fTaZt01RqQqQcfHxhpgoN7+p0ux0i2Oq8yrHojsDIuAB1TDQoB7+iq
 ItCOMqP2wSggzqlVIvwuENI+1I2x5hp/8KvEOK36fICyUOgEwdk1sU//8q4oFoHeszEL
 BjRnMOgCnxRQZfH1h/SzPX0XXFn0xr9ecwlyA3hfQ3L1x2hVGSIVAuixez9uag+O1VRD
 8S3YP14a5TWEbLnBlF1XfAlBGpRgTaQFWpOUGdRaSTHZZpZIUudxfyNrbORahZXopfyb
 4eORiSCbkfAw18940CBJ5bBrPzAuTN+maYvUXW9TdE5VklVvU4/z8GEpTB+189e5Em1Q
 8TaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eyFn3P2XuGvmapYpvmXsfPpBpNlu7lMJiAWRzcy1I5I=;
 b=KzvJ4nkG4EpdoUmgSIcBomhup+Mz5ZHZWaYwqMbbF4JP2BgeEO0CxjGiak3KuUQlON
 78LC6drJUhCemLY+MP0GOrT8xSvpODNDkKi6uLz3ODDDfmKCwkMvCX41ARhZwzbN1ieT
 WOqaWxhbwP5AMUzw/Qx2FTnFEZBanVaoYEadG7OcEoEPnNTmM4Xs6bbpHeZPo+VFHc6F
 GQnWQuUSz/vmPD4bWHAabrasfsy7uqKmyAtetu8fx+mACKLtFXpKKYvh9qE8bmxClKXL
 3uoPY3kt5wj4lF1ZUKabjFQUilUT0GiTF2qkkzGoVmJa3SOvSeKvo7/MEnVe9Yp51gKk
 CfGg==
X-Gm-Message-State: AOAM530b18TKYdyNurJJu6b+Kkc+UEZspRqk3KiVo9FRSg3/qGvc9Ie4
 kRCxEnYMvvrzbk0zfhQMqvCcoQ==
X-Google-Smtp-Source: ABdhPJwbawWEUkv2F66a8ndXGjiaJL6hn5qsqFZxdvvcUCO97AbeEjdJDdTC3ZxjJG51qbTRERgXqA==
X-Received: by 2002:a1c:9ac3:: with SMTP id c186mr5149217wme.150.1589988770732; 
 Wed, 20 May 2020 08:32:50 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id 5sm3395840wmd.19.2020.05.20.08.32.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 08:32:50 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, joro@8bytes.org, bhelgaas@google.com
Subject: [PATCH v2 4/4] iommu/vt-d: Use pci_ats_supported()
Date: Wed, 20 May 2020 17:22:03 +0200
Message-Id: <20200520152201.3309416-5-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200520152201.3309416-1-jean-philippe@linaro.org>
References: <20200520152201.3309416-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_083252_168586_27FF3742 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

The pci_ats_supported() helper checks if a device supports ATS and is
allowed to use it. By checking the ATS capability it also integrates the
pci_ats_disabled() check from pci_ats_init(). Simplify the vt-d checks.

Acked-by: Lu Baolu <baolu.lu@linux.intel.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/intel-iommu.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index 0182cff2c7ac..ed21ce6d1238 100644
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
