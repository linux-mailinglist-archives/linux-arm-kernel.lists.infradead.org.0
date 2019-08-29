Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C75A1824
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CvKbnLMAB56WX/qwLS/xG7CS6oA2p+QnNnDRoHtlO98=; b=n4sb6DHg5Z2MQU
	RlUF8gwhzDyhoMe4xmxatPw+wO6CTSU2lm2j0de/t2RNyAxFzEHX5Uq7G/CvHY2JP11LLlZEfJvbE
	pXxRZBYQyPMrgEm7Jgj3/ZZNXJRk9u0jHj+JXv4z8OdLsUTp4LWu1fzXsWBFf24tJriLeSDYc81ck
	jhdZB5HS3amFOXeH3RMFFa8xl6ig/Q252o62FEswZtWkWdwwobA1xXPJt31UkJoXELlhE5I0dn283
	jc8e5RFqUj9uW0Ap3pOtBBHOodZV5pBwYg2Vl1YbiCAeRZ0gP/j/Yvtl12HgaceLHjvCLNGpThy+b
	h5evxe8SGq9XqNDZI3nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ISz-0001TC-Qe; Thu, 29 Aug 2019 11:19:50 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IRI-0000FH-Q8
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:18:06 +0000
Received: by mail-ed1-x544.google.com with SMTP id t50so3670547edd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cjixq+s7ZD6fFiV9g8QRBxU/OWNAVY/P4LPyIACEzEM=;
 b=djC2H5JFeHWERoQFSNo6K1Buv/HAY/zdTZ/Vy9BLHhv70G1BP5aEHIemdlQWFvLK0t
 3RSHU3+QDvVjBRH6rmndTQFisShBSy2rXVQU/0CyVBy93HiUWngryqj8oTbKIdj6Vnpz
 sNXUippKE5z0M2ZtM+fW6KuMBLAdoZNiZD6qsjd/JWY1vRPgY0j28/rH0E6Idert9w7d
 sS2fZojsKu+F+CaN8iGeU4WiMl20abUTFNRMZ2XUCm9qApaELu6NPAdSB6YiqFtgC0ZA
 1lVSgZoDWeqEdOzemcXFc9s7dX1wZPrqyNfi+GQQTYnagocsIo/CfeeTtfPlcX3yRrKD
 +5dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cjixq+s7ZD6fFiV9g8QRBxU/OWNAVY/P4LPyIACEzEM=;
 b=p4yJOlg0mdgYsyoljLAz5corazcavYaumdTz0Vm8/v0q7sIqRk16fQyDtJe0XI1q/J
 EAPn6KJuhKGH5x2Dv6oogObmS/If1wn+Q2gKDSzOsXAIZoQ+h4//7iGKnXgHqeK0ZZ2J
 woCpzPDwiAsQibBd+DWjKLGe63jVmcIkI1pTvl1AdWshPWjetGSoTAp9P16LR+ntCf7+
 mXP/1No/cCqpMkcwwi8NYN+NUcqhsyFdFx3+1Ohbrph7YxP4HKjk47M2bzetFChzUZjB
 qyfdJgNisNcak5zXsAGb+iHfvO5N6fR2/0qfr/4ReTjRUroXn8VXOC4+Llv8p282Edhx
 U2HQ==
X-Gm-Message-State: APjAAAWl136/tpJlyfN+IhNnnjk+c0POj7rw/wCU/8NOLbq/LSEv2Esc
 unADMZ632kTjh90hpyOUJP0=
X-Google-Smtp-Source: APXvYqwZIsELufro/apZKANBvYbuav5XunBjAgaDShMq6vd+vYkJ2aickX4Wp+WCq2PXzJ9kM5tq1A==
X-Received: by 2002:a50:9401:: with SMTP id p1mr8952979eda.189.1567077483603; 
 Thu, 29 Aug 2019 04:18:03 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id y9sm388439eds.49.2019.08.29.04.18.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 04:18:02 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH 5/5] iommu: virt: Use iommu_put_resv_regions_simple()
Date: Thu, 29 Aug 2019 13:17:52 +0200
Message-Id: <20190829111752.17513-6-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190829111752.17513-1-thierry.reding@gmail.com>
References: <20190829111752.17513-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_041804_947619_4A00B202 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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

Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc: virtualization@lists.linux-foundation.org
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/iommu/virtio-iommu.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
index 3ea9d7682999..bc3c7ab7f996 100644
--- a/drivers/iommu/virtio-iommu.c
+++ b/drivers/iommu/virtio-iommu.c
@@ -838,14 +838,6 @@ static void viommu_get_resv_regions(struct device *dev, struct list_head *head)
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
 
@@ -915,7 +907,7 @@ static int viommu_add_device(struct device *dev)
 err_unlink_dev:
 	iommu_device_unlink(&viommu->iommu, dev);
 err_free_dev:
-	viommu_put_resv_regions(dev, &vdev->resv_regions);
+	iommu_put_resv_regions_simple(dev, &vdev->resv_regions);
 	kfree(vdev);
 
 	return ret;
@@ -933,7 +925,7 @@ static void viommu_remove_device(struct device *dev)
 
 	iommu_group_remove_device(dev);
 	iommu_device_unlink(&vdev->viommu->iommu, dev);
-	viommu_put_resv_regions(dev, &vdev->resv_regions);
+	iommu_put_resv_regions_simple(dev, &vdev->resv_regions);
 	kfree(vdev);
 }
 
@@ -962,7 +954,7 @@ static struct iommu_ops viommu_ops = {
 	.remove_device		= viommu_remove_device,
 	.device_group		= viommu_device_group,
 	.get_resv_regions	= viommu_get_resv_regions,
-	.put_resv_regions	= viommu_put_resv_regions,
+	.put_resv_regions	= iommu_put_resv_regions_simple,
 	.of_xlate		= viommu_of_xlate,
 };
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
