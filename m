Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B791BBF32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TPea47FNISI6SrKq/6oyG3tngRC6BAj3iSJU7unTrf8=; b=P7mdUloRCAvitpWThsdQrngGWx
	bHWhsi2uSFFufawneTdnkN5vFnXNQuPZO6T3OlAlfmndlWZYtW+JVGwKZQThuhpuEbymp3kyJvaUk
	rGEmk/PVPanqcqSuYcpIwZL68SVkYjHfgnq1LaBhnbLF5NoskJJQ6U4xt0zCiGPii4VV4Y6z1mCqT
	vC5Swgd2KcCOc4YNY5wNS6US0vtCrfHYtDB2SeO6d9kL8UkeKQO2UnLxX/KVwL2L6B5GC5OtzlRkq
	UD/N77921dW3EFO8X66LGmOk4hiXaMMYM4njWDyOdsW5m+cxIC6oFu5IftLH0MJUbjRRaa92ORfnw
	sGTjP9Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQCo-0006R2-VZ; Tue, 28 Apr 2020 13:23:23 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQA1-0004cY-RQ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:20:32 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132028euoutp0278d560c196a7f024016dc90964175d03~J-l80ETtR2985029850euoutp02a
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:20:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200428132028euoutp0278d560c196a7f024016dc90964175d03~J-l80ETtR2985029850euoutp02a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588080028;
 bh=aKlVh1Yd+e6H8/Pcigy35hvIVmgdGLEAjejUfzy0WpY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fzAeGV6lJTMygUOd1IFpVJSZ6HWWFzngW7HBGaXcc2VQooyjr5It6M5Cgdmso9VVC
 iKcn1Hxc37Xv2d61mH5nvcqh8XrYEB/GhVx9V+m8NhQQqyeH1ni2b2vkeVEa4mt+0e
 m9h+m7hbXU/PpRK4F3hZxe+muvCWiwbTmYbgPUNk=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200428132028eucas1p1dee8e65442d128c6217e586827484277~J-l8hUjaz3055730557eucas1p1Y;
 Tue, 28 Apr 2020 13:20:28 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 95.C1.60679.C9D28AE5; Tue, 28
 Apr 2020 14:20:28 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200428132027eucas1p1a045e89a0058ccff3ea94d1da2236af7~J-l8BOAzr3057830578eucas1p1Q;
 Tue, 28 Apr 2020 13:20:27 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200428132027eusmtrp1b8816ccb4cde4d447caa4a031d06fa5b~J-l8AjGCn1743317433eusmtrp1z;
 Tue, 28 Apr 2020 13:20:27 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-9a-5ea82d9c9b9d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 7E.96.08375.B9D28AE5; Tue, 28
 Apr 2020 14:20:27 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132026eusmtip2dabf1824e2aabc8f7023ced4cd9531a2~J-l7ZkcxN1116911169eusmtip2W;
 Tue, 28 Apr 2020 13:20:26 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [RFC 09/17] drm: panfrost: fix sg_table nents vs. orig_nents misuse
Date: Tue, 28 Apr 2020 15:19:57 +0200
Message-Id: <20200428132005.21424-10-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSaUhUURiGO3PnLjM6dhslDyYZAwoFbil0yRKTgvvDIvwVQdakN8d0RplR
 U6NyydJxHcUFc0M0x91cJnEpNcstzFKGEfc1Ms1IUxSXZrya/973/Z7ve+FwCETYjloQfrJg
 Ri4TB4gwPlfzafOLba6t2suhLAalkgZ6OVRJTRROvcmuQanozj6M2tOoEGr47wpGlVV85FCv
 Uus5VOF7F2pteJpD1c1qUWqoORejqrrGcarj9xxK9Y2v4m7H6cr8SkC3rRdy6TFtK0a/XZ9C
 6cmEbg5dX/yMHt2dReh0XSmgW0YiMTq5oRzQq3Wnbxrd5l/yYQL8Qhm5ves9viSzdx4EqU3C
 vi5s4JFgz0gJeAQkneHieBSiBHxCSKoBjNqe5LBmDcCMguQDswpgQtQA53ClcWsaZQelAC53
 rR+tjDb2cA0URjpC5bISM2gzMhbAniRjA4SQGgTOlXbhhoEp6QH/ZKbsay5pDRvzpvYXBKQr
 3JnRcdk6K1hR244YNE+fl8zMY4ZDkNTicGSyWm8IvbkKNTNyljeFi90NOKstYX96IpflYwCc
 HqjCWZMI4FB0NmApFzg2sLV/CCHPwppmeza+AjPylgB73wTqlk8YYkQv0zRZCBsLYNwLIUvb
 wJzu6v+1HYPfDhAaTrfeYN9HBeBEQR6aCqxyjroKASgH5kyIQurLKM7LmEd2CrFUESLztfMO
 lNYB/b/q3+1eawLN2/c7AUkAkbGg1ljtJUTFoYpwaSeABCIyE8xIXnsJBT7i8AhGHnhXHhLA
 KDrBKYIrMhc4Ff24IyR9xcGMP8MEMfLDKYfgWUSC0iVt/Zr1rV91J9MdzLKafFY9mmSh3+Mu
 VlekTBAC/89TEsyhqMKm0HRe/cHpulJs9GQnbbQFz47oi7d0K3Z/Hqudr35X7v3YXrrZ5q96
 +cM1RSpxc1dJHvQEXru88nBQu3FmOTYFOsc3e+b/tNV1eK7w+p2PrSyAIezC0zLvMBFXIRE7
 nkPkCvE/gk01dlMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xe7qzdVfEGUx7rGDRe+4kk8XS9Y3s
 FhtnrGe1aDp0is3i/7aJzBZXvr5ns1i5+iiTxewJm5ksFuy3tvhy5SGTxabH11gtLu+aw2ax
 9shddouDH56wWpy6+5ndgd9jzbw1jB57vy1g8bhzbQ+bx/ZvD1g97ncfZ/LYvKTe4/a/x8we
 k28sZ/TYfbOBzaNvyypGj8+b5AK4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQypp18yliwgq/i4rPv7A2M/7m7GDk5JARMJLb+esjaxcjFISSw
 lFFi++v3TBAJGYmT0xpYIWxhiT/Xutggij4xSsx9v4sFJMEmYCjR9RYiISLQySgxrfsjO4jD
 LHCAWaL7/EmwUcICPhKfpvWzg9gsAqoSW+c+YAOxeQXsJP4+usECsUJeYvWGA8wgNidQfOmj
 p0A1HEDrbCUut+ROYORbwMiwilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzB+th37uXkH46WN
 wYcYBTgYlXh4N/CsiBNiTSwrrsw9xCjBwawkwvsoY1mcEG9KYmVValF+fFFpTmrxIUZToJsm
 MkuJJucDYzuvJN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVAOjmO+h
 vMNHf57kjn+/XGGxnQpbEr+mvF31zfqj08TfLP+ka3fAz139+Kxl++dyXv3zIS/ngkNi6u/z
 E5UuM+gdPF+7eNaE7jPP5u6zOWw7izVLyl7nQZhcf+ANq5RTcm8iYrfJ+UsXapvrfXSbdldV
 sGs+0/NjKn56S9bKTZiyL+HCtiJxwcN3lViKMxINtZiLihMBY2oseLUCAAA=
X-CMS-MailID: 20200428132027eucas1p1a045e89a0058ccff3ea94d1da2236af7
X-Msg-Generator: CA
X-RootMTR: 20200428132027eucas1p1a045e89a0058ccff3ea94d1da2236af7
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132027eucas1p1a045e89a0058ccff3ea94d1da2236af7
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132027eucas1p1a045e89a0058ccff3ea94d1da2236af7@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_062030_038452_3C4B29CE 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Documentation/DMA-API-HOWTO.txt states that dma_map_sg returns the
numer of the created entries in the DMA address space. However the
subsequent calls to dma_sync_sg_for_{device,cpu} and dma_unmap_sg must be
called with the original number of entries passed to dma_map_sg. The
sg_table->nents in turn holds the result of the dma_map_sg call as stated
in include/linux/scatterlist.h. Adapt the code to obey those rules.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/gpu/drm/panfrost/panfrost_gem.c | 3 ++-
 drivers/gpu/drm/panfrost/panfrost_mmu.c | 4 +++-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_gem.c b/drivers/gpu/drm/panfrost/panfrost_gem.c
index 17b654e..22fec7c 100644
--- a/drivers/gpu/drm/panfrost/panfrost_gem.c
+++ b/drivers/gpu/drm/panfrost/panfrost_gem.c
@@ -42,7 +42,8 @@ static void panfrost_gem_free_object(struct drm_gem_object *obj)
 		for (i = 0; i < n_sgt; i++) {
 			if (bo->sgts[i].sgl) {
 				dma_unmap_sg(pfdev->dev, bo->sgts[i].sgl,
-					     bo->sgts[i].nents, DMA_BIDIRECTIONAL);
+					     bo->sgts[i].orig_nents,
+					     DMA_BIDIRECTIONAL);
 				sg_free_table(&bo->sgts[i]);
 			}
 		}
diff --git a/drivers/gpu/drm/panfrost/panfrost_mmu.c b/drivers/gpu/drm/panfrost/panfrost_mmu.c
index ed28aeb..2d9b1f9 100644
--- a/drivers/gpu/drm/panfrost/panfrost_mmu.c
+++ b/drivers/gpu/drm/panfrost/panfrost_mmu.c
@@ -517,7 +517,9 @@ static int panfrost_mmu_map_fault_addr(struct panfrost_device *pfdev, int as,
 	if (ret)
 		goto err_pages;
 
-	if (!dma_map_sg(pfdev->dev, sgt->sgl, sgt->nents, DMA_BIDIRECTIONAL)) {
+	sgt->nents = dma_map_sg(pfdev->dev, sgt->sgl, sgt->orig_nents,
+				DMA_BIDIRECTIONAL);
+	if (!sgt->nents) {
 		ret = -EINVAL;
 		goto err_map;
 	}
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
