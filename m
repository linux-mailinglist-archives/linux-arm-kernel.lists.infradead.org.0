Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9C01248AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 14:44:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nOepnT8vZMhKU+23E2CvTZNF2kgCXzgBAIcJ2cQQYDQ=; b=r2I5/3RjQQpJ/6
	VmR/sdpiicyq6Ggb9ZU7GQmLsoNCgOKrA4cIWiUMeV6WYP7xY3CrFdU5hldfN4KcVA3wvsXXQ9LsZ
	pV4bm2QOP2NBCkAUI3HZ5wpbFGAQjYCmsHqDSEsHCVvVCtUBSbwFh7J0yPHU926Xoxryefk40q5C/
	k0CfyBRfpj1n1eN/1h9wqvOcthQNEb4NhIk96AlCV+ikMjuye/OlyetBmn9dhCnZn2wnvNvLqAxpP
	EeogrBQNjNJKr3i+louz4uipSJAERVVO5nrQqlwSc6N7hn9OLspOTmCMATEsJodTqXWEhlS0rgeNs
	ja3w3618woiSw1jGydVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZcO-0001Ff-J7; Wed, 18 Dec 2019 13:44:00 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZan-0008Tr-NR
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 13:42:24 +0000
Received: by mail-wr1-x444.google.com with SMTP id d16so2328176wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 05:42:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bI3H7fJjyT7cwzCxHkg0RoSKkE9h3LIoHk3spnZ/1k8=;
 b=ZEeDzlSAHcJKgSJOBltLwZ4gctZ6heHgw5D7C16qSZBk0BcEIRlw39Zy3UGuZ5UuhO
 PUkGJ+hbZ8GuYnGixq5JfQcbK9y3iacQnUbN45Dj83R2TbSGfhv8hxmkZnTY9dQhjmBt
 pLk01WPXEkN5usMHdmfX2wqWXb9nuXp7+6uOdVviLBNEtMIwl+bjUWAvisdSjbPCSkb2
 myvcPvaDT+lDArGcX3+Vcpd/20s6Anoh6oTnsULQhHWClvkwIMrVWERJAp7Cos8HgvNw
 U+DuKeNl9frs6LPgcheIIcwph6gsYFw+Kj1z4PNBcVkJWdlNdrqclvlakWsrSaiKxn4X
 fjbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bI3H7fJjyT7cwzCxHkg0RoSKkE9h3LIoHk3spnZ/1k8=;
 b=lVPLJ6fVntitEEiPlQnLJZUXcfcvqF/WBWTHs06cIZ9Dn4PTJo3J8/B89K1GAOjuOy
 YvpWz2zwXPqik4F5tzBkLWoqlTS3W3D6ON45Advt/tsmx7nA+6H/gFkjRFbjOCVq5qTW
 VRtQWob6e7IfxjuaIVQe6AC0g46RqDZclY1F4elBGSsOP5P3SUaYGI1QltVQgAupuMKI
 94ogvCJ/atWmnYTsLhpIpMmTQ+Ra3fOiaT+U1F9IGECSryHewWrUli2TcN4eQIJNSLyn
 gn11pltY92zKFeMqn7Hk/M2CWLHFx1qRxPNq4v8Fozjud6rfM2FjpMAhZejqR/gDDZtf
 BeXQ==
X-Gm-Message-State: APjAAAWRm+eexYbHImu+vK8ZAkLS7+zexu3yAPuWGUPPYWzK62J5P9ms
 z12eaf3qSYjNEs5HaNfkPBI=
X-Google-Smtp-Source: APXvYqxraiIdHwEwu7ywFCdkxr9EHQN/eL8hSbyjl1Dfiv6tPoPwpVi8bvtLx2DxzSSf+A+feHN7FQ==
X-Received: by 2002:adf:f8c8:: with SMTP id f8mr2853607wrq.331.1576676540324; 
 Wed, 18 Dec 2019 05:42:20 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id e16sm2547391wrs.73.2019.12.18.05.42.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 05:42:19 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH v3 5/5] iommu: virtio: Use generic_iommu_put_resv_regions()
Date: Wed, 18 Dec 2019 14:42:05 +0100
Message-Id: <20191218134205.1271740-6-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218134205.1271740-1-thierry.reding@gmail.com>
References: <20191218134205.1271740-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_054221_785543_FEBE8E3A 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc: virtualization@lists.linux-foundation.org
Reviewed-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/iommu/virtio-iommu.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
index 315c7cc4f99d..cce329d71fba 100644
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
+	generic_iommu_put_resv_regions(dev, &vdev->resv_regions);
 	kfree(vdev);
 
 	return ret;
@@ -932,7 +924,7 @@ static void viommu_remove_device(struct device *dev)
 
 	iommu_group_remove_device(dev);
 	iommu_device_unlink(&vdev->viommu->iommu, dev);
-	viommu_put_resv_regions(dev, &vdev->resv_regions);
+	generic_iommu_put_resv_regions(dev, &vdev->resv_regions);
 	kfree(vdev);
 }
 
@@ -961,7 +953,7 @@ static struct iommu_ops viommu_ops = {
 	.remove_device		= viommu_remove_device,
 	.device_group		= viommu_device_group,
 	.get_resv_regions	= viommu_get_resv_regions,
-	.put_resv_regions	= viommu_put_resv_regions,
+	.put_resv_regions	= generic_iommu_put_resv_regions,
 	.of_xlate		= viommu_of_xlate,
 };
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
