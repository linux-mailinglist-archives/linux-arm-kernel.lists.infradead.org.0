Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9571818B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:49:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ba1ruBPv5POhKWqgGa7YXbqL4Jn57ahJGBMyoZ8RaeM=; b=cp6tuCA4Ssrj+z
	MIT9spA6m1eZ71v3YCuAk9MJz09c/A7YN/fiI2bXc9euhhDl+T2U0MM/CvMZPQWSgBUvk30+onm6i
	VqtXUcMcoNJxiNSJLIiq+hbeCSAaHKB1TgyVv+TBJVMb4Xf/muD5DzCYb21wcAaeqxa3LAID1HtQA
	58eo6mEE8wGh8SfPmXFuep2e1VeeBwk+64oQMlI3LlNg5LfUV+UkN8BWH7ysL8l6Mj+Ri8oWRpRak
	4Nba3ZDXUp8ef5FoOTPL4KDoADaP71uwe7KXxG+5shYCwDJYc4I4rAZHjVxBU2ceVl/v9bHN9hCCo
	qpV8m77RDucVJVETTOVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0ng-0001xN-Lk; Wed, 11 Mar 2020 12:49:28 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0lQ-0008B8-3E
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:47:09 +0000
Received: by mail-wm1-x342.google.com with SMTP id a132so1947261wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vyt9EDLxonGbKc5hM6CKEH9sOA1tej8/GhDoeiFUKak=;
 b=ncgLdDhr1gsVmIKw0dva+fqrHBQurcK9VYJtWgeUva4PerBGhsr2pO3ugJ/2qoFzaL
 hJ4cpZqdwse98rHFRyhh1g1lpITEsUbmEXhQo14D6537GZNYohNkAXM780pcNZSb6KAY
 6YqQE0NBgJonQ1nQlVKvn8bzE+AGBtBekekgeJreU6AC+TPDfd2fFmNjvuSWoHZX43Ry
 ycWRsDcIClqWML7JkEMoUZWYnKJQj1wPDd/+M0iMm5rk9co3czS3fC1sA0RLqEeZboYU
 T6doJ9QG51osk860+l0/4JjAXGMjw8oJNmZwtUNWzuT4CqYVbatdc707pG60eCDpap2S
 DLjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vyt9EDLxonGbKc5hM6CKEH9sOA1tej8/GhDoeiFUKak=;
 b=juPpL0ArxcTTnEdoyud1bzkQIjQBYmRVUVrMoyN4prlMG58ngRL4rTkZRj44Vd1P//
 rUH0kQGw7q2kPl+FFF3kDW2iv6K5Nox1/DQpr8MHS4GAntIa2UvRwT+jKw40j/khHGLu
 RGAW8wNKInAwxcrRJZkRc3xil1gCSSyJGhUAfovVk8OmQ7t5lg/1keakrSd1OG4ZiyWm
 +BYzgH2xQMVOOHEwwHJZ+LU9phw+0LtjYHpe8jyqmf6eqbMpJgERExa8t/jdGLBM3ZHs
 JOlJ5j/dx41GsfEsmOUGxfOW3bfl7NJu89Ug1B3nXxTiobWfj6PpnX5LpBIKpR3ZlTtN
 e74g==
X-Gm-Message-State: ANhLgQ1UEo3V/sF+3lrgpDYmFMHhdAX5MWpikkLfBU6sMy2aQAc4c9NO
 Xqd7lZsNcyZu8iGw6DcYrrZHkw==
X-Google-Smtp-Source: ADFU+vuoGCMDLfkq5/GJN/4qTM7pYDQ3Wyic8sIgmIFqGMqHRI8BaekbHLoblPdIpK3Uqq6CChtTAg==
X-Received: by 2002:a1c:a908:: with SMTP id s8mr3841957wme.133.1583930825087; 
 Wed, 11 Mar 2020 05:47:05 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id c2sm8380020wma.39.2020.03.11.05.47.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:47:04 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org, joro@8bytes.org,
 baolu.lu@linux.intel.com, sudeep.holla@arm.com, linux-doc@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v2 08/11] iommu/vt-d: Use pci_ats_supported()
Date: Wed, 11 Mar 2020 13:45:03 +0100
Message-Id: <20200311124506.208376-9-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311124506.208376-1-jean-philippe@linaro.org>
References: <20200311124506.208376-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_054708_199703_8F16AF5B 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, Jean-Philippe Brucker <jean-philippe@linaro.org>,
 lorenzo.pieralisi@arm.com, frowand.list@gmail.com, corbet@lwn.net,
 liviu.dudau@arm.com, rjw@rjwysocki.net, guohanjun@huawei.com,
 amurray@thegoodpenguin.co.uk, robin.murphy@arm.com, dwmw2@infradead.org,
 lenb@kernel.org
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
index 6fa6de2b6ad5..17208280ef5c 100644
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
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
