Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A3119A98F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 12:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Na8SufBTyJmL8Ij5en0r6yBPdgrma0mD9fbn+Ki05sA=; b=jXs
	iywOjDliqV9bYAyg9NMJvaJ3fcFebuxqRZxSU1wMGHfTCg1BLpxxg0NVCoNonH98oKG4Ft9sYJ/Ig
	Nhxk8ZE5LAxTUVHgpOPTtCAc9evZ0gX9KgWlauSSziEGOvu287Yiu3MCfnXHVXLEpLLKQZ4IFrdBC
	dWCNHxBRbFC93iHbg/g9PxK7wI7AeHZ+8lxhoUvgyMTltijHzWtCikTO9hVtoob14pO8NrhdAQWsr
	Zb4pl1+vkf9q51o5IEneFipjDt8OVqbJbYTH8FcVqvA4iZzJj4h0behcEN3ChYB2ZA4UofR+80U1M
	5H/tVmsrpHEQGjypCKFD4winiDqN1WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJab9-0003rJ-Qx; Wed, 01 Apr 2020 10:27:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJaas-0003lF-1F
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 10:27:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 722E11FB;
 Wed,  1 Apr 2020 03:27:30 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 239CC3F52E;
 Wed,  1 Apr 2020 03:27:29 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Alex Williamson <alex.williamson@redhat.com>,
 Cornelia Huck <cohuck@redhat.com>
Subject: [PATCH] vfio: Ignore -ENODEV when getting MSI cookie
Date: Wed,  1 Apr 2020 11:27:24 +0100
Message-Id: <20200401102724.161712-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_032734_131872_C7D4792B 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kvm@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 iommu@lists.linux-foundation.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When we try to get an MSI cookie for a VFIO device, that can fail if
CONFIG_IOMMU_DMA is not set. In this case iommu_get_msi_cookie() returns
-ENODEV, and that should not be fatal.

Ignore that case and proceed with the initialisation.

This fixes VFIO with a platform device on the Calxeda Midway (no MSIs).

Fixes: f6810c15cf973f ("iommu/arm-smmu: Clean up early-probing workarounds")
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Acked-by: Robin Murphy <robin.murphy@arm.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>
---
 drivers/vfio/vfio_iommu_type1.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/vfio/vfio_iommu_type1.c b/drivers/vfio/vfio_iommu_type1.c
index 9fdfae1cb17a..85b32c325282 100644
--- a/drivers/vfio/vfio_iommu_type1.c
+++ b/drivers/vfio/vfio_iommu_type1.c
@@ -1787,7 +1787,7 @@ static int vfio_iommu_type1_attach_group(void *iommu_data,
 
 	if (resv_msi) {
 		ret = iommu_get_msi_cookie(domain->domain, resv_msi_base);
-		if (ret)
+		if (ret && ret != -ENODEV)
 			goto out_detach;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
