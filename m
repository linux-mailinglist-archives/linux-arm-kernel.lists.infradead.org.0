Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DC2116F9A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:51:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GuSQEl9batQ04riZ/eFUKvIMhS7BMxChDSFrcEGWOlM=; b=MeE2AKzBvkFSfh
	5ZsgCxsAfT5CsoT4T0GSS6RfuVEQv4SshOcbKax1CbeWLUasgiv9eBZIDm4abEtVWoBXYblC7pW+N
	XUERb+mHkvW+keD8GtWSLAm6weaRBYp7peb/42MJ+QvyePyO7TB8R8fmFtuoiGqbOnHlV1oiyeCW2
	wv6B4F/LOmu67JOhbqFPfa8rsRiaUfoQg6oUOsd/P2g3wC9T+Wcz+QlUEbv+9b0uXN2UePPDBGoMv
	2wSUFmD96F8YvLMkrYquqB4NpVbLXOqwiSnwFKQeCto8LCCsyDdYavv9KaZ1czhCKZ1d5LSpua3mj
	iXyHUK8wSTAVT9jcAYkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKNm-0000De-VO; Mon, 09 Dec 2019 14:51:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKMg-0007ff-9u
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:50:23 +0000
Received: by mail-wr1-x441.google.com with SMTP id t2so16562395wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 06:50:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v6i9DrODxvVzc7sEu1n26IoTawSzw3EOrGL5427sW0Q=;
 b=qMW40Glimuk8RCsOpQuJ/pexDlbz4FJLVtFyjhBvedGJfjxS4yJweoEhUs42NkR8ym
 ceaQO7flrjft3Ema57FQ4RUg5SaisdUyht8l2r3bp27a3Yqvf9KqWMFIb5hcuQD0MDck
 6aTI0aVh5Kx5Gs/FBgPYx3Vvu043B0vg+XvmlVjhhNE/JHmgzKamOdPGvIxNv21VtyoU
 YBqmv46iNclra+yjNW58pyG8B0uXyXVQM2HgfWVZlMvZMgNNKD8zTu5wRNc6W7Fsb2oH
 sL+3hR/RGv9m+EYzbye8FGIEJijiVk6ee10zp4cGSW8cLTfwtxrCZ41IRcihwAKbQ30G
 xo6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v6i9DrODxvVzc7sEu1n26IoTawSzw3EOrGL5427sW0Q=;
 b=pdZjpSxkFoDRH+45IVIesglLNGs+wN71w/OhyJAFnc2K4kfUriLhrZPr7luvbcmTEj
 6Jv+qH6Mnz9eI5yC05A90CAKLmIb/lNQJY78vtf00x3HTRBo90WqOECDOK/QCO5IYHpz
 tqE1eGGhxejVxV7Sc0r9dbF2Fme7FBmdgVvdUO1ZLyqcHzOXYy3oFDJVxPcapJtxyQZT
 YH/p1+WATER36qf4Gy9qDZi6nnNCUN1zICyV3ZjpuRFkdGmtadT5dWkcB7xXcf9J9R+h
 qD4/tcBFCZr/dR+W8Bn5z3Xn6+0atLyJ8f0wEdW5NByBrErhlCFa3tpH4tvSzkf4510D
 MJ3g==
X-Gm-Message-State: APjAAAWkq9pI0XG7direni1ZAAK1mVJjFwr6omtylSEqbSu/SLO91atQ
 oXToyCvAEzueQ4jQw+qrSxU=
X-Google-Smtp-Source: APXvYqycPV9EZHFU8VN58XAVcMErrL4NDZbeMSU6cPaHd0nxxJDiVJbBvYMs0iBbchsEY0d1dIwJOQ==
X-Received: by 2002:adf:f6c8:: with SMTP id y8mr2576924wrp.167.1575903020783; 
 Mon, 09 Dec 2019 06:50:20 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id a16sm26990396wrt.37.2019.12.09.06.50.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 06:50:19 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH v2 5/5] iommu: virtio: Use iommu_put_resv_regions_simple()
Date: Mon,  9 Dec 2019 15:50:07 +0100
Message-Id: <20191209145007.2433144-6-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191209145007.2433144-1-thierry.reding@gmail.com>
References: <20191209145007.2433144-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_065022_412480_3825C781 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc: virtualization@lists.linux-foundation.org
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
Changes in v2:
- change subject prefix to 'iommu: virt:' to 'iommu: virtio:'

 drivers/iommu/virtio-iommu.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
index 315c7cc4f99d..834e56a28d4d 100644
--- a/drivers/iommu/virtio-iommu.c
+++ b/drivers/iommu/virtio-iommu.c
@@ -837,14 +837,6 @@ static void viommu_get_resv_regions(struct device *dev, struct list_head *head)
 	iommu_dma_get_resv_regions(dev, head);
 }
 
-static void viommu_put_resv_regions(struct device *dev, struct list_head *head)
-{
-	struct iommu_resv_region *entry, *next;
-
-	list_for_each_entry_safe(entry, next, head, list)
-		kfree(entry);
-}
-
 static struct iommu_ops viommu_ops;
 static struct virtio_driver virtio_iommu_drv;
 
@@ -914,7 +906,7 @@ static int viommu_add_device(struct device *dev)
 err_unlink_dev:
 	iommu_device_unlink(&viommu->iommu, dev);
 err_free_dev:
-	viommu_put_resv_regions(dev, &vdev->resv_regions);
+	iommu_put_resv_regions_simple(dev, &vdev->resv_regions);
 	kfree(vdev);
 
 	return ret;
@@ -932,7 +924,7 @@ static void viommu_remove_device(struct device *dev)
 
 	iommu_group_remove_device(dev);
 	iommu_device_unlink(&vdev->viommu->iommu, dev);
-	viommu_put_resv_regions(dev, &vdev->resv_regions);
+	iommu_put_resv_regions_simple(dev, &vdev->resv_regions);
 	kfree(vdev);
 }
 
@@ -961,7 +953,7 @@ static struct iommu_ops viommu_ops = {
 	.remove_device		= viommu_remove_device,
 	.device_group		= viommu_device_group,
 	.get_resv_regions	= viommu_get_resv_regions,
-	.put_resv_regions	= viommu_put_resv_regions,
+	.put_resv_regions	= iommu_put_resv_regions_simple,
 	.of_xlate		= viommu_of_xlate,
 };
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
