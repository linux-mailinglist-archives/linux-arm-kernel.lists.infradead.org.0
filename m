Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3597E1E4A69
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:38:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4BJ/8qK6slJ2ZNrUUYR7RATGAtEqw3fTLHIsXfqam/U=; b=PUO
	CLUrBjACUpk+1ABv+ghI9dPsdG/7mFniWpR/kiQC3Jk3h+bgRq+CpgY4pa7oraqYTbLDIktzS2WJa
	JzADA6pcWJmjfGrd2igD3XwTUm9sCKWHVRis9fNZzpRjdTzFP08fQwUk90dyCqHdMXlrzNEGls0i5
	vokBuidaYAZ2kpOosMryjffJKO2SaatdfdTzW8CHMITBK/MScoIGEwGiIay97aGHFi9J7Q68mHVQB
	sgiGpvgkt9lpfMk4eflPJF/4A+Ox2BSd8Z6Q4ybDlPVhsqXXcoFKOWE8D0z/251eCIbHTWjL8/Sed
	uPaVInQO70seo8ZKORyJHur8M0pDA2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdz45-00087m-Cd; Wed, 27 May 2020 16:38:01 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyWn-0006dw-9z
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 16:03:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id j16so12108649wrb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 09:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=KFKU2FIEXjR2LVGipQU8OJxGYrMEcKfupZbFBx9PZZY=;
 b=B2e2R9PE8ZAp1sDLI7S8lrsjRfkvo6x+EJYJrJz0c/qJQagKVvvmzFan3qz6GVfd6w
 ZKbl/Y4xcQche/y9+bbZ5lOKaV7q9ddkacdSC40vxtQbuTw+sN+TPTU7MPDWmrXxy9ax
 3iBMFvXs8pOm6kAt7e6x61xsyeX0RxXmUKZn4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KFKU2FIEXjR2LVGipQU8OJxGYrMEcKfupZbFBx9PZZY=;
 b=gKoFFkv6ynHfvjJUR9C8YPK5q4D9VbFKBXUWbq2Hsiczjv2YTLcY0RgaOeDtQpY68N
 sh57yIspw20K5DvEABLLG9pAikRf7ZdRHBPmKWZpqN5LnhMp8PLPzXSkjPNfbWGZxmuO
 dU5GsVHFLWIeKvk0sQYnUuWBiLlP+M8qtuspELNwcusUx+g26evLs0ncfKTvvlaIiUmw
 SngQmZhohvPsT3hLsnI+tBWkRXeNMMT5MAvMD4ReRC2s5Uox9pQs+Sl7pi3zteBAuFLy
 34B+7FO7zpYVedHvYXtWLc3N4jbSHdnMM0fhcV6DjotEe/UG+2JArjHosZnbO/5lH3hc
 VtyQ==
X-Gm-Message-State: AOAM5317Z6jvdwfDOphlqty8WsvPnGXtmiNX25n47W7JD/WfgPmg3flE
 oPMJOG1Wz3bUyqHISCBosw2+RA==
X-Google-Smtp-Source: ABdhPJy6zYyWagZxKoXwDNe6/zG4VwLJq8RxTRFygqpQIc/E1CTTwd97wcehZx5+4rvjGpKll243Ug==
X-Received: by 2002:adf:ee47:: with SMTP id w7mr19715593wro.171.1590595413899; 
 Wed, 27 May 2020 09:03:33 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id t185sm3166536wmt.28.2020.05.27.09.03.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 27 May 2020 09:03:33 -0700 (PDT)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>
Subject: [RFC PATCH] iommu/arm-smmu: Add module parameter to set msi iova
 address
Date: Wed, 27 May 2020 21:33:18 +0530
Message-Id: <1590595398-4217-1-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_090337_457470_A1574C03 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Srinath Mannam <srinath.mannam@broadcom.com>,
 iommu@lists.linux-foundation.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch gives the provision to change default value of MSI IOVA base
to platform's suitable IOVA using module parameter. The present
hardcoded MSI IOVA base may not be the accessible IOVA ranges of platform.

Since commit aadad097cd46 ("iommu/dma: Reserve IOVA for PCIe inaccessible
DMA address"), inaccessible IOVA address ranges parsed from dma-ranges
property are reserved.

If any platform has the limitaion to access default MSI IOVA, then it can
be changed using "arm-smmu.msi_iova_base=0xa0000000" command line argument.

Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
---
 drivers/iommu/arm-smmu.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 4f1a350..5e59c9d 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -72,6 +72,9 @@ static bool disable_bypass =
 module_param(disable_bypass, bool, S_IRUGO);
 MODULE_PARM_DESC(disable_bypass,
 	"Disable bypass streams such that incoming transactions from devices that are not attached to an iommu domain will report an abort back to the device and will not be allowed to pass through the SMMU.");
+static unsigned long msi_iova_base = MSI_IOVA_BASE;
+module_param(msi_iova_base, ulong, S_IRUGO);
+MODULE_PARM_DESC(msi_iova_base, "msi iova base address.");
 
 struct arm_smmu_s2cr {
 	struct iommu_group		*group;
@@ -1566,7 +1569,7 @@ static void arm_smmu_get_resv_regions(struct device *dev,
 	struct iommu_resv_region *region;
 	int prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;
 
-	region = iommu_alloc_resv_region(MSI_IOVA_BASE, MSI_IOVA_LENGTH,
+	region = iommu_alloc_resv_region(msi_iova_base, MSI_IOVA_LENGTH,
 					 prot, IOMMU_RESV_SW_MSI);
 	if (!region)
 		return;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
