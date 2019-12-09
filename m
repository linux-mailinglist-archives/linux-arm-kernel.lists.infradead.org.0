Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15238116F97
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KeqLRP+V77Bd8Xre8g/FtZZUWcVGwNXGMOEd1ALcTbE=; b=JiPqE3iRxEMp+E
	xMCO1ECByIx9L8F2Rv2LzDKbAufEMg/J6IGtl1JrpRxrxHx02rbrysFmU25MXeKi/rHZs5p8lVwBo
	DrU3vsLTEjFLWCDyFOsEjCT6pZ2sr20Cm192sBOG86I5s90pbov1GHQ8j0OY3bzREmiVMl/Ng9g0A
	giYUqvyP89r62A8cOewHI2Lel5kv4n2qgsFj9Tvqg8A6v6M6mzRbXQWvf27tE2tiycZyVzF+Ynz/j
	i2vuC6fC6gwv7pt7DK0EkRwr/Gi7RVcwksf1A6l3+YYsOqcRIFY388Bu5bDW23QXeuL/IWLItgCKX
	vVvzLbuhB27mq+lBunKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKNX-0008QN-QT; Mon, 09 Dec 2019 14:51:15 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKMe-0007cw-DT
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:50:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id b6so16546235wrq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 06:50:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=I3aVjWdLXvLOfDvHl+80UOXgd4T3MYRIvZkx/WAfvow=;
 b=XYdOxD2z70YIt3ZS9joDPOLCuZDMHOr+p5n+49OM1+kg4Yc/Hxhrk5rkXDN4vE8qEl
 dQYNDkBLp/eGMnRMlGljZnwMFHJV+E147Pvt2Acjoc+c+81H012A8L14Uy5ZN4+i/SKl
 7S7a4eteQjj9rVp7uX9smhSTLH0jqehZdOB940kVbuSiI6RoMRiax35WQ9KxsrlYUPbA
 jR0uSuV6tFMZKWuZNPY+UDm8OcIR95YPafvM7+wGa4ufN5NPyemPAjtFMtXmyYtnGVyM
 RHD4FmCCnCamgojLAXcDcLT6ZJRRZ68IGI393N4Aa7h9N1Sv9zUIJ6OA4cVV8XXMeg//
 tdtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I3aVjWdLXvLOfDvHl+80UOXgd4T3MYRIvZkx/WAfvow=;
 b=iG85/Z0yq4p5ATjDNYgv0YLKllpfDFijfWjdASAw5aCDHhOUrRldSOqwNlizF3dQU5
 UMJk2+72O9u0I2ozE1JMxsWJVAPwnB12D9cGk6oVZr8jXCD4aYztv8xdStrP5fShdBWX
 QXQGjDAJdIiKq+1wB9kET6FpQGNBM01Shq2y7v3rL7FkZW5KyIv6mkIE9g9475t+T4B2
 iPRdUp7aJ/RJN5qY3T+gOrgxADke0xWcDkO6WFP/reXWT9C2IitzU+Xq4Uy36L0T9Hqe
 v6dZFYF9X1fzGW7RTGwAvcnKdPE9+PrCDulQGKXrTd9zB1mSq3rR3yVMyQ3pBrV82F1b
 W2kA==
X-Gm-Message-State: APjAAAXSehWSdQddP9SIqWw/U9ykKTExpZFD2b4Dp1Ts/JcV69/tnMNC
 T4rXKhiqnacY6q+seUMyUVw=
X-Google-Smtp-Source: APXvYqyzb+Gr3fnT6bZnw6Qeyd7z43gdd6oakIDoqaNzca4I3GYvDjohjO+w8mvyuTBM2hpMZlM+/Q==
X-Received: by 2002:adf:dd8a:: with SMTP id x10mr2615868wrl.117.1575903018924; 
 Mon, 09 Dec 2019 06:50:18 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id x17sm27547138wrt.74.2019.12.09.06.50.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 06:50:17 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH v2 4/5] iommu: intel: Use iommu_put_resv_regions_simple()
Date: Mon,  9 Dec 2019 15:50:06 +0100
Message-Id: <20191209145007.2433144-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191209145007.2433144-1-thierry.reding@gmail.com>
References: <20191209145007.2433144-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_065020_559227_B65B167A 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

Cc: David Woodhouse <dwmw2@infradead.org>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/iommu/intel-iommu.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index 0c8d81f56a30..480f424f6a47 100644
--- a/drivers/iommu/intel-iommu.c
+++ b/drivers/iommu/intel-iommu.c
@@ -5752,15 +5752,6 @@ static void intel_iommu_get_resv_regions(struct device *device,
 	list_add_tail(&reg->list, head);
 }
 
-static void intel_iommu_put_resv_regions(struct device *dev,
-					 struct list_head *head)
-{
-	struct iommu_resv_region *entry, *next;
-
-	list_for_each_entry_safe(entry, next, head, list)
-		kfree(entry);
-}
-
 int intel_iommu_enable_pasid(struct intel_iommu *iommu, struct device *dev)
 {
 	struct device_domain_info *info;
@@ -5995,7 +5986,7 @@ const struct iommu_ops intel_iommu_ops = {
 	.add_device		= intel_iommu_add_device,
 	.remove_device		= intel_iommu_remove_device,
 	.get_resv_regions	= intel_iommu_get_resv_regions,
-	.put_resv_regions	= intel_iommu_put_resv_regions,
+	.put_resv_regions	= iommu_put_resv_regions_simple,
 	.apply_resv_region	= intel_iommu_apply_resv_region,
 	.device_group		= pci_device_group,
 	.dev_has_feat		= intel_iommu_dev_has_feat,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
