Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA990129A3B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 20:01:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=duqkxJPhLkI8Gc+gBClDGaQAZCKFPdjSnCMbpbkxRkc=; b=b6prE+Y4obMUjIXMK/Uvv4a6CZ
	JTb/aF+8cAc7E/Q/25WpRjxINJOSTXAesXLCtqQHi0aAEaIB2GBzoF4aXTIcwx5Df7Q3EQSaQ6wID
	Y5KTIatN+0JNtWF2XIGewCzmKQoIeKUrazZmgJnqPH98PzzZ4HAp0FC9aI9rSsFvZTwsXVfnRPsFT
	bUdlEkLbtBrMm9X9lgC2brIgg0dJ4GALrE2XRdLrpsyN2yL3Ikbz/C3dUczmM42e4QQNxA3y2bmk0
	yciLFYvc7m/hYriMsYn9RqJbyfLFEX1CgDPqOd6yIYmGHIFmdGPCtr8lWKtcN+Of5OhJQs33d6uq3
	6b+Qzf0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijSxL-0005E8-6s; Mon, 23 Dec 2019 19:01:27 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijSvV-0002aY-AL; Mon, 23 Dec 2019 18:59:34 +0000
Received: by mail-pj1-x1043.google.com with SMTP id bg7so142291pjb.5;
 Mon, 23 Dec 2019 10:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CulQ2ExP6GUQxiub5iNVhoHCStywwXMifBLq7s/S0pk=;
 b=H2OtLypZu26xwRAoHkfmTQ6dLHQpJJ15epMWHv3JdQQs1xiDmnIbBvdX5p8SoP63NR
 rrDwAR1ojV5CKjmV4nursw0hSVhDYhezg4aNZc5/7bKtI/xLNTNVESyeUS1ReQ8QUzXY
 UjlHZSp+USG1XCS3YJhbCo1epwt7/p+HAmwZbHV1DoyKW2mpH2yxt1RhlPTT+H9cqBOw
 AY8x17GodBM0jTcLq3+6EoR945XlFBUaoGwXYyPAfUphbu5u0bI6unawWUIQHMkgTvTe
 PovOlROY679qDH1MfZR1zkp55JOxaXvP4G4yILAA2rFEV19iB/YsqSyFWlKbgPCqziiM
 1imA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CulQ2ExP6GUQxiub5iNVhoHCStywwXMifBLq7s/S0pk=;
 b=NjRWxmoIt9pjwoXsVmBy1rGXshpuRUyptZH55nzcoNW9PPoLEpizisRKNCu2Jnbt8T
 KPGCNBoY1E2ICn69tJT/EhkHBteYFR3NZiiEFFnnNA5AFzu1LcJSr2r6GahOIfAa4DVB
 9v7ZlCJSaY1owOO/WFk53mgzHO2UYk6lWd3rPYei2mFaYWdeTXwBrji+Z3HZ+IyVay29
 o9U9yzfOyLdzwvkCtsSJbgF9nhtnxRVkpJZzmnkhTc4BMp5pXv5HBSBCRTQknjv/nQLA
 ILe3xzyl+7k/JTDlpSdQw5PL7GbzkTTluyuM63/+s5AR/oJAIwYEaKdyxSR2wns2+PWQ
 +Aew==
X-Gm-Message-State: APjAAAWuv/UW/4qo9HQNNYCUUSWl94IIOuESWVet1sFfcWY1CR0fRhAR
 nsl94/+i4+ENfplEqz9ly6Y=
X-Google-Smtp-Source: APXvYqzeiLM4mhrhwEk4S029shHvVfQZIjFYMq3cAbFIsqix9vo2bHpZaR9lUgguOerS7aVYGUejXg==
X-Received: by 2002:a17:902:74c5:: with SMTP id
 f5mr30567441plt.229.1577127572024; 
 Mon, 23 Dec 2019 10:59:32 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id a19sm209212pju.11.2019.12.23.10.59.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 23 Dec 2019 10:59:31 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: m.szyprowski@samsung.com, joro@8bytes.org, kgene@kernel.org,
 krzk@kernel.org, matthias.bgg@gmail.com, agross@kernel.org,
 bjorn.andersson@linaro.org, robdclark@gmail.com, heiko@sntech.de,
 mst@redhat.com, jasowang@redhat.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 virtualization@lists.linux-foundation.org
Subject: [PATCH 5/6] iommu/mediatek: convert to devm_platform_ioremap_resource
Date: Mon, 23 Dec 2019 18:59:17 +0000
Message-Id: <20191223185918.9877-6-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191223185918.9877-1-tiny.windzz@gmail.com>
References: <20191223185918.9877-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_105933_582218_8F03E0E9 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/iommu/mtk_iommu_v1.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
index e93b94ecac45..3d6bb08b2a54 100644
--- a/drivers/iommu/mtk_iommu_v1.c
+++ b/drivers/iommu/mtk_iommu_v1.c
@@ -553,7 +553,6 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 {
 	struct mtk_iommu_data		*data;
 	struct device			*dev = &pdev->dev;
-	struct resource			*res;
 	struct component_match		*match = NULL;
 	struct of_phandle_args		larb_spec;
 	struct of_phandle_iterator	it;
@@ -573,8 +572,7 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 		return -ENOMEM;
 	data->protect_base = ALIGN(virt_to_phys(protect), MTK_PROTECT_PA_ALIGN);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	data->base = devm_ioremap_resource(dev, res);
+	data->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(data->base))
 		return PTR_ERR(data->base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
