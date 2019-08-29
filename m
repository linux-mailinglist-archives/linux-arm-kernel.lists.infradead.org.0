Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA17A1815
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:19:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=67moJxgmArT/C1+rCOHyCK6evmXG0LYpOo9YMKpy1sc=; b=m2VTQTNFvW1QgI
	vMcBSl+JRNU5H4/9VvofBQw/XptpWpRfEbsvDIKNB2lDBHm0RWtssBI6OcC2p1U/TbR6bFJ5vl2Ro
	32aqXTDmwVNU+Ws93yFlDO+XcEUiKp8e7Yi7bCPX5K/JCU2aHGnGOwwP3jw7DJP7dpFMMobpIawqG
	WoiLtF5S7KClczWwL+1Mh/B5ZjIMPDTNDSCkepP7Wogws2ooDNitYCRO+57FdmaHdBU1+A3Th1fa+
	njjZ/xL/c0+2AKPAQvJElnS1HzXuUuL4VG1kRmie21ZW3tJ7uJ3wurVjpRaRWgXi84k2iQt5ypnaJ
	P/dxyExMfm3AHfG56jRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ISh-0001Bf-Fd; Thu, 29 Aug 2019 11:19:31 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IRG-0000Cy-T9
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:18:04 +0000
Received: by mail-ed1-x542.google.com with SMTP id s49so3676036edb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zCsgPCFvt5f0JhV5AAX71J7KrOE6T7Mwp2HnksazGlw=;
 b=o9IDb9wxTMVYl4Pw8eOl4MN8lrxcZAgdJUKaGojaGYK4aXQr34VjDZVfYu/QzbxvqH
 jcCWwyi0BumBzhg17grPUPMX9d7OIgI5av0bWjFUbC977dHLo8th+91iEI5NqBvmCODo
 2I3V9bM1lkU74SfOvgyAH+sAwFQaQIwE71r0I8lfv/K+OUYHnZS9/sjDBKzPpsDxCoCn
 WgY397r5bRinjlufn59iqnqRz6E+fEu4qAdIk6TUiefpKTyqVSbCUYkNOe3WtgxV1IBt
 qYjcwXUI9MXenjs8NrD+DbvJhsyZkQBDBJupkrQjvHkmXTxgcdrcmmtuR0K+kKiHNVj1
 gkmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zCsgPCFvt5f0JhV5AAX71J7KrOE6T7Mwp2HnksazGlw=;
 b=eGiprkfwu5NdiWXLZn93yTnarTbWqh1zV70BbERKG9O22eOuKC/XCdyKCAZ4YI+vhn
 Q+9uO83ZYMr5MaCk4gQIp+4DSzpDMNvwHzUyAuyoLdh+0S8/msJ3vQgODeN7uQ70HN5c
 LsYzhblB+AXiSBG0JosMjNmbc5GtMwf7TrT5G/VS3q3mHasKz6dLeIDn+/HWm2xYwRY5
 JcGc6J0F2k45ZeKPsfop4GYwZWXMvo2p+rMWhHu6bWklWrjytYUxIxd4dw48QszLVvko
 WURfkhtxx1nSWo2NvcaqbixHJHekf0c5xteeikt2FXoo/SlMU1ymHaKWted+WTOA2GSH
 Emdw==
X-Gm-Message-State: APjAAAWkFpRDIFiYCa67EV4844sQYEiOzwNmIjxSIZc9UEuYgY/jmW1f
 Qc/VuWtK+c0TKa2ZkRvI5zk=
X-Google-Smtp-Source: APXvYqwM8CVbq0FXN38b8oxKuaYKC/x8VDD3uqRU7eQrkpe6K2cwtpE+e448Jg8Ofr+6OyhLfBDXpw==
X-Received: by 2002:a17:906:6bc4:: with SMTP id
 t4mr7875881ejs.256.1567077481688; 
 Thu, 29 Aug 2019 04:18:01 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id n93sm215670edc.5.2019.08.29.04.18.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 04:18:00 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH 4/5] iommu: intel: Use iommu_put_resv_regions_simple()
Date: Thu, 29 Aug 2019 13:17:51 +0200
Message-Id: <20190829111752.17513-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190829111752.17513-1-thierry.reding@gmail.com>
References: <20190829111752.17513-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_041803_186928_F511ACE3 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
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

Cc: David Woodhouse <dwmw2@infradead.org>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/iommu/intel-iommu.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index 4658cda6f3d2..2fe5da41c786 100644
--- a/drivers/iommu/intel-iommu.c
+++ b/drivers/iommu/intel-iommu.c
@@ -5386,15 +5386,6 @@ static void intel_iommu_get_resv_regions(struct device *device,
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
@@ -5629,7 +5620,7 @@ const struct iommu_ops intel_iommu_ops = {
 	.add_device		= intel_iommu_add_device,
 	.remove_device		= intel_iommu_remove_device,
 	.get_resv_regions	= intel_iommu_get_resv_regions,
-	.put_resv_regions	= intel_iommu_put_resv_regions,
+	.put_resv_regions	= iommu_put_resv_regions_simple,
 	.apply_resv_region	= intel_iommu_apply_resv_region,
 	.device_group		= pci_device_group,
 	.dev_has_feat		= intel_iommu_dev_has_feat,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
