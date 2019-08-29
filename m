Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D20A1806
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3hav3p8retOJ2uK/SLpGIDCKzla63M/tq1UMUbPr94=; b=gzFOcycUkNlgF3
	W1cNfFOhNBRy/5pBxmnDk18cYsOkU04l4UIQlU/ptv4lGIUoBqeKdB7SGSLxdOYeuswavuRpDNBHh
	ncc6AFv0FeL+xKVmXPe/kRyjNyf3J0SRvjEb3TeBVaSsubklbvBa7VU9I9GvCE/oukaz6CUBIKjR8
	URLeeGHzoQhslusaP9/M5qd1a842WwVJncTYleo+pPtEvGBiuCJ0vwVDIr6gnBoU72JfpcPIO2GYG
	NwAFwlz1p5U6JeBSfjVAVsbpA2p8eHtBY5NvkdCt1/4iq/ATpTZeEU7D1xMARlhYXVKMbk2I5YtTK
	pKzOlbphD9vdMf9H+Vyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IS6-0000gE-DE; Thu, 29 Aug 2019 11:18:54 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IRD-000090-Ls
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:18:01 +0000
Received: by mail-ed1-x543.google.com with SMTP id s49so3675851edb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZPwojxlU3nxe6avL7T6Kd+AiQv8fk2jxvTTMYnp3skk=;
 b=CwfkK4ETEP5Hjh9QDuS6TY8Zo1PblcXa0lLRqegtpq7duQS5I26xq3pXBoOFnPi2tG
 XaNV9J47CQol+jzq805c8oHpg2VKPiUCG8XFl92B896nXi25dv7UVJlG+t6gIkLbHtn2
 VJxyhp5iE0eKfTjlyYOu8g79oIoKs4shF8KUMOg+HI1VgN7Dk29/xyiEETnMEbzMMRL0
 kegcbUw+PE+pZCw6y5c9KevaDR38GrS/fuezIeSXkIm3drhO71yJPIbzsyG32SwwKqiw
 psBbXLRQ1JhWblSmzkl9QZS3D+YUW2ud/KYL/ZXqWkj0oLI1dLhoRP1YkP+QNXG3C/go
 hFeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZPwojxlU3nxe6avL7T6Kd+AiQv8fk2jxvTTMYnp3skk=;
 b=s8Gsxx82/0fJPwrmXYinWSegggAzOOrdCm5Jc2QtSrqYPC55vfnAj2yJpTJBWQrjhG
 0FI06Beh+kU7WrE2Lg7L8/+crlKihrbINMcCUkI2nO9a6REb8imWLqjVUaLcCOZo83z7
 ByAR8uv17gTbFTr5WIVD6dRPx252KllqegTDTNwMIGStRT2lbpb0CXDClfffotRKyEwh
 rc3YGXH95UHZpofLGhTttM7FXiiNU0jW/5sHRMtSP/OBC+MHOxajvrU4SIpTNIcbeN0d
 SdbYQfjZIXkEHV/O8zKOU8VQfqJ9XRiSlWuSWkVzPglcZZTOR0zkT8wYXt3X+JjIe6Da
 8AVg==
X-Gm-Message-State: APjAAAXahA7G0OopJ4hCq/XH+3vAdM/jVDXIpMzhMFY2aYUWTY9EIEvr
 qrUzgv3IM/1pN6wpkIuBDvA=
X-Google-Smtp-Source: APXvYqwhGrTdOk/7PuuuqUH1gZ7ETsG0eQQUr9Q9On3z0eSdlzFD2qFPam7txyGlB05pcntKt+cdoA==
X-Received: by 2002:a50:e601:: with SMTP id y1mr2804885edm.221.1567077478117; 
 Thu, 29 Aug 2019 04:17:58 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id y20sm334424ejp.60.2019.08.29.04.17.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 04:17:57 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH 2/5] iommu: arm: Use iommu_put_resv_regions_simple()
Date: Thu, 29 Aug 2019 13:17:49 +0200
Message-Id: <20190829111752.17513-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190829111752.17513-1-thierry.reding@gmail.com>
References: <20190829111752.17513-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_041800_010401_B52EC3AE 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, iommu@lists.linux-foundation.org,
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
index 0ad6d34d1e96..b3b7ca2c057a 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2263,15 +2263,6 @@ static void arm_smmu_get_resv_regions(struct device *dev,
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
@@ -2289,7 +2280,7 @@ static struct iommu_ops arm_smmu_ops = {
 	.domain_set_attr	= arm_smmu_domain_set_attr,
 	.of_xlate		= arm_smmu_of_xlate,
 	.get_resv_regions	= arm_smmu_get_resv_regions,
-	.put_resv_regions	= arm_smmu_put_resv_regions,
+	.put_resv_regions	= iommu_put_resv_regions_simple,
 	.pgsize_bitmap		= -1UL, /* Restricted during device attach */
 };
 
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index d6fe997e9466..e547b4322bcc 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1724,15 +1724,6 @@ static void arm_smmu_get_resv_regions(struct device *dev,
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
@@ -1750,7 +1741,7 @@ static struct iommu_ops arm_smmu_ops = {
 	.domain_set_attr	= arm_smmu_domain_set_attr,
 	.of_xlate		= arm_smmu_of_xlate,
 	.get_resv_regions	= arm_smmu_get_resv_regions,
-	.put_resv_regions	= arm_smmu_put_resv_regions,
+	.put_resv_regions	= iommu_put_resv_regions_simple,
 	.pgsize_bitmap		= -1UL, /* Restricted during device attach */
 };
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
