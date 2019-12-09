Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AAF116F92
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:50:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+SJyxlBmyQi28oDda2Nmvf9npN/GJsDLqBEv3AvaVo=; b=ka/Z/8Vd8KIHSi
	3IoP6ThMwR/rbkpjxAOG7cWuVBH5wyY6uAm8OlUS/bo0XMTjDxVtPKEk0iaHF1D8flBVJDyK3wFKS
	AU0/GlWWZ5ZGfEWaiRAdWtpDDmLotATnZ5VNZkncurIHa0qdmjSwHzGh0PTj8rmX00Bl9NZs5AIdL
	Q6VqouDZM+tN7YIwiabNYLTNDeo3WIFkFiUvoyziWrRvwYBa9YaHmR/UV/bzGOtwqoV8l93xWc9xF
	hOAvTmsIq8CgyUfWXTLvNyKWGhi7SWK5HSZVsscQY8xS5H69nPHFE++O2MZCa7+ScKp9JJJ4lLkO2
	WBjFXg08X7jCjmSXOa2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKN4-0007xW-T4; Mon, 09 Dec 2019 14:50:46 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKMa-0007Xj-7x
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:50:17 +0000
Received: by mail-wr1-x444.google.com with SMTP id d16so16479200wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 06:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=irY1spgwK2zJfffTq8hx9QkgkytRwMbw4YTsIN/qTSs=;
 b=p+zUhOwB6ukKqHU1wRnWzmuH1Syry5ctKEBh4K/KnTuMWlFphp+kHl1BAjCMzE8bUn
 JbitSWNYgIJs1Er1uTZ1En5urRIyaOTjdzHSFqWqc6PNayKiJfVSjxdVCnuENRIsqGdZ
 x29ePNxjRxb7+2m0SLIjPgfiL35pn/FNg8zbhtqmtSzgVLotzYNhu0j9rT6izICcYOJ9
 D7obuCApHHIprX+PvKaHEOuN3f94riINTAds1kDs95ws/34M1XPS33udUgaQs9ZdlhvB
 NUixRBi/sfBfmORbHV3VsUJ8qvyPKTYy5ife5AH6b1OYstx8p1mmh3N3omkpyvpvw+1X
 W/nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=irY1spgwK2zJfffTq8hx9QkgkytRwMbw4YTsIN/qTSs=;
 b=SdAkfqC5JWbXLpnmUEySRvK3Tp7iM+YjQIV/eJkgDX83QSmCT4hr2ln2eTsEBEjkgr
 W8rFpYvhTpnRF1xZSc6kwHhGs0jRC40GJcXFMutRtlN21pAZK5G+Qm+xCH9uiG0lLB4t
 aJQSsZMorcGfK3fqPbWPXIkm6IGyqgunzj19LeP1DrPoNHf6/in7wjlXxBU3YiwtdGad
 o/sDQ78F0YLBzptEbRAkNChaYNfKFmXTQ01XoH2kNGSRSkH7TAO4ZTNhrkx1bnMVHnCV
 5JdjLdw4AjOUyHcVeZCSd6NN28DuFA6QjJgdJ2oxfvwiMvGTHqHz4wLqawaBXMan8abt
 xNpQ==
X-Gm-Message-State: APjAAAXb77g458GI7sbmjXOiocZoPGMnoZ5k4A08KDlbd+A19seFv+5t
 YYPPOF9q0t7InhxILVlnOYg=
X-Google-Smtp-Source: APXvYqwsN0YOpBRkErf/6RtkAtfpULTvJ5FiPJAY1U9wSh3s2TnoIO21C8Ievdu6ssFmIdevGhFIbA==
X-Received: by 2002:adf:f508:: with SMTP id q8mr2587731wro.334.1575903014734; 
 Mon, 09 Dec 2019 06:50:14 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id g9sm27179539wro.67.2019.12.09.06.50.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 06:50:13 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH v2 2/5] iommu: arm: Use iommu_put_resv_regions_simple()
Date: Mon,  9 Dec 2019 15:50:04 +0100
Message-Id: <20191209145007.2433144-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191209145007.2433144-1-thierry.reding@gmail.com>
References: <20191209145007.2433144-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_065016_322782_29A5AD66 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Christoph Hellwig <hch@infradead.org>, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, David Woodhouse <dwmw2@infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Use the new standard function instead of open-coding it.

Cc: Will Deacon <will@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/iommu/arm-smmu-v3.c | 11 +----------
 drivers/iommu/arm-smmu.c    | 11 +----------
 2 files changed, 2 insertions(+), 20 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index effe72eb89e7..eebf6086080f 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2710,15 +2710,6 @@ static void arm_smmu_get_resv_regions(struct device *dev,
 	iommu_dma_get_resv_regions(dev, head);
 }
 
-static void arm_smmu_put_resv_regions(struct device *dev,
-				      struct list_head *head)
-{
-	struct iommu_resv_region *entry, *next;
-
-	list_for_each_entry_safe(entry, next, head, list)
-		kfree(entry);
-}
-
 static struct iommu_ops arm_smmu_ops = {
 	.capable		= arm_smmu_capable,
 	.domain_alloc		= arm_smmu_domain_alloc,
@@ -2736,7 +2727,7 @@ static struct iommu_ops arm_smmu_ops = {
 	.domain_set_attr	= arm_smmu_domain_set_attr,
 	.of_xlate		= arm_smmu_of_xlate,
 	.get_resv_regions	= arm_smmu_get_resv_regions,
-	.put_resv_regions	= arm_smmu_put_resv_regions,
+	.put_resv_regions	= iommu_put_resv_regions_simple,
 	.pgsize_bitmap		= -1UL, /* Restricted during device attach */
 };
 
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 31ad3fe9a6d1..d1aef07bb784 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1576,15 +1576,6 @@ static void arm_smmu_get_resv_regions(struct device *dev,
 	iommu_dma_get_resv_regions(dev, head);
 }
 
-static void arm_smmu_put_resv_regions(struct device *dev,
-				      struct list_head *head)
-{
-	struct iommu_resv_region *entry, *next;
-
-	list_for_each_entry_safe(entry, next, head, list)
-		kfree(entry);
-}
-
 static struct iommu_ops arm_smmu_ops = {
 	.capable		= arm_smmu_capable,
 	.domain_alloc		= arm_smmu_domain_alloc,
@@ -1602,7 +1593,7 @@ static struct iommu_ops arm_smmu_ops = {
 	.domain_set_attr	= arm_smmu_domain_set_attr,
 	.of_xlate		= arm_smmu_of_xlate,
 	.get_resv_regions	= arm_smmu_get_resv_regions,
-	.put_resv_regions	= arm_smmu_put_resv_regions,
+	.put_resv_regions	= iommu_put_resv_regions_simple,
 	.pgsize_bitmap		= -1UL, /* Restricted during device attach */
 };
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
