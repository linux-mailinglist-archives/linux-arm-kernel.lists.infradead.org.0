Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8CD1248AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 14:43:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/DpdQZDLWn/jSv8wHdjsq2a8KVYh3vVT2oaEnMMBQM=; b=bekNE8OxkYbDZn
	DdTgN3A0Q5OcJ2kS6W/NYdL4x1sxcvwLVy2eAtQFAVVF11pnwkjbNGQTSKvS5434f0rdQIYjswvAb
	Q1GGJldAvviCvA54aqCTJhCxS6sEAbSKyRytbrxlKOjj6lpBds47XxzhIjLUW7LIZBPiXCFCMBp/k
	zMA5pXeSMWcFc9Q1U99r6G8eDeSeg5dDHq5i54WHZUOo6B3vCU5zdHo0VofRV+jDVSbetKpP18S9R
	mF7OQ9rGprrHp5IMFdh5iUaHyiNcdAVS5YtfOiArCqd0A91F0EFF6VCROxRk1JpzQ0ryX0azE/wmk
	bSVe11B+eB10LHk5Ppjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZbZ-0000XB-Jd; Wed, 18 Dec 2019 13:43:09 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZai-0008Oi-HG
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 13:42:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id q9so1882005wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 05:42:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZKV3MGTA/2/bfoWX89xXRBHVgU6rKIgrBLKBmEiF8i0=;
 b=lfRSQKT2ByflthOsB87RU7Gv/2PvSlciEuSa+25UiwhrLnL0iHnn4+2G+tmdPp6eIi
 8hHBOM9wp0okgjScFvYx5MLMnZCEA1TJeR39OBixx1o2ZnuxowVkjoeoO2DDOM4mt8ji
 fsCW3642Geo5wK1ektqMm7d3ZJxUKDc6qwCIiDzcnm+LMdzaYs+qxHNzNlZLqVXDSfKG
 DbkTv0PbLwZweD1bhIX0ug+7Z9kb9qmyACSOGMFISjfDtNe9DeJxvIQUmtd5xZ7N2Tgq
 CBX1HNtqdjmwRk/3NrQefKgfSxDTLW8img+98wK2TfAwYs6tSKsZBZzWgROCMNUri9KQ
 EIyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZKV3MGTA/2/bfoWX89xXRBHVgU6rKIgrBLKBmEiF8i0=;
 b=jk0Lk/TYd6z9QJU/4wWKh7MPcePQERW4OSS/TdyBn68k6VmyPxhYfk3gExKHOq6ZxM
 NiG60qa1YdsO8Lu4BPqEzDtPF2g8VBI/xtHuHv1stFQ3BaOM8NFQHallJSUtFH+QQKfh
 OvUxxkSdybuv+SjJiwSglK33fJ6tJsqbPyyaUe/YsJXC6TXwSuAZNiPB3kG43gxSi21l
 w0ZCTyd+n/vaR831m+rcZQm8vwFZYoa8GD6WlyBRtMTbsg01hMmyi8Of2gYEhuR+gAuV
 u9W8B0KfINK76ar50MAARIUZ26aIwH8sAIppTd+zobNQKthNZ5o0dSLFohRluPETovNv
 y5Ug==
X-Gm-Message-State: APjAAAXbLnKtUvu6+kEdGPDq8Jf7Ia/pRO8zKDiUrsGUdwLK69koVN6T
 nM0Px8kdxInv2YiNg+vUrFg=
X-Google-Smtp-Source: APXvYqxmdcdJB1mXOevGjXDjzCqOvxzn0AuQ1Uyb5JkQ9iCe5BgU+bDq2ZCvGwKiujMBqMzfvOdIJQ==
X-Received: by 2002:a1c:f213:: with SMTP id s19mr3619567wmc.42.1576676535246; 
 Wed, 18 Dec 2019 05:42:15 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id j130sm2640695wmb.18.2019.12.18.05.42.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 05:42:14 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH v3 2/5] iommu: arm: Use generic_iommu_put_resv_regions()
Date: Wed, 18 Dec 2019 14:42:02 +0100
Message-Id: <20191218134205.1271740-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218134205.1271740-1-thierry.reding@gmail.com>
References: <20191218134205.1271740-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_054216_711521_20EC4722 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Christoph Hellwig <hch@infradead.org>, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Use the new standard function instead of open-coding it.

Cc: Will Deacon <will@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>
Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/iommu/arm-smmu-v3.c | 11 +----------
 drivers/iommu/arm-smmu.c    | 11 +----------
 2 files changed, 2 insertions(+), 20 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index effe72eb89e7..7f5b74a418de 100644
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
+	.put_resv_regions	= generic_iommu_put_resv_regions,
 	.pgsize_bitmap		= -1UL, /* Restricted during device attach */
 };
 
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 31ad3fe9a6d1..7a5978bbeca8 100644
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
+	.put_resv_regions	= generic_iommu_put_resv_regions,
 	.pgsize_bitmap		= -1UL, /* Restricted during device attach */
 };
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
