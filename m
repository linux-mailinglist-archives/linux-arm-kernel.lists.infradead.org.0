Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 075DB2006EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:42:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZHS8d0V12zZR34ieY1t1qNlU/wjoWpo6SxnUDvOd81U=; b=gxAh1H6aeO6YHsaR9x5mMJdpSe
	XApCqV78sJxTliwpvFGzM/melrEfexaCnWrx/KHma9MvVjEffmi00Hbba0pGAgnz3Kmh8OMiLjqpc
	9Mxx3NbxrLUbanLA8ZwZozNsJ8KVPdS54yB7mq39fIdI+fwWRCotPd62F4I4wV9lHLowIHYa9EznV
	c2PVC/Vex04+XjF0GdfsJh8rpWDFFvmNOU1mDN6OhLuPla0ZEiY3vKO9JaxDI7LJsQ0x59Ou8m+Ld
	F4kcUvAgHCbx624czl+Zp2Xph991j0LqPaALdylUAXyjyzC1CTyt3WcSzOn2X91ZXm/uj73Tome5A
	sV2ApoAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmETd-0003Qo-CR; Fri, 19 Jun 2020 10:42:29 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEOP-0005D6-JX
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:37:07 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103704euoutp01d66dcdb3aacfc11377d3f21d7c5637c6~Z66Hzh68M1680716807euoutp01g
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 10:37:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103704euoutp01d66dcdb3aacfc11377d3f21d7c5637c6~Z66Hzh68M1680716807euoutp01g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563024;
 bh=O2c3Dg/Bmu5P4+TijqQ9XUF6ALcxyDRv7MgKZ032jSw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oAicH595/j6lu0c+Izu1sw2j6do3ADPc0r6BEb6bw8L3uTIru/JD0YMvFJuGRWylz
 wJ3/MjXLwQbls/uUvn8PPbbD9f0LRAYkHoI36V9AR6okImnxR8rD04kaWO1Fon4y4C
 de8AjPGtbXTQmUqwv6Len2mwzXtW/ZsNV+CLNDjk=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103703eucas1p2a6de3403444cc76831be949c86929684~Z66Hi9qP42888828888eucas1p2g;
 Fri, 19 Jun 2020 10:37:03 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id EE.9C.06456.F459CEE5; Fri, 19
 Jun 2020 11:37:03 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103703eucas1p14faa1cec371efb0bf98ae696d58da64d~Z66HGfl-L0704707047eucas1p1z;
 Fri, 19 Jun 2020 10:37:03 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103703eusmtrp1f65f59b8394a616b7eefe3893e8956ec~Z66HF6dJU0959609596eusmtrp1D;
 Fri, 19 Jun 2020 10:37:03 +0000 (GMT)
X-AuditID: cbfec7f2-7efff70000001938-50-5eec954f1632
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 0B.0B.06017.F459CEE5; Fri, 19
 Jun 2020 11:37:03 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103702eusmtip2c9a66de0fc7e6b67e7cf74d72c0fd427~Z66GcUi2h3164531645eusmtip2X;
 Fri, 19 Jun 2020 10:37:02 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 15/36] drm: omapdrm: fix common struct sg_table related
 issues
Date: Fri, 19 Jun 2020 12:36:15 +0200
Message-Id: <20200619103636.11974-16-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEKsWRmVeSWpSXmKPExsWy7djP87r+U9/EGXRu1LboPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12i4MfnrBarJ9/i82B
 x2PNvDWMHnu/LWDx2P7tAavH/e7jTB6bl9R73P73mNlj8o3ljB67bzawefRtWcXocfzGdiaP
 z5vkArijuGxSUnMyy1KL9O0SuDJWP2tmL/gsXDFxRm0D4yKBLkZODgkBE4n1vd0sXYxcHEIC
 Kxglll+bBOV8YZRonfqVDcL5zChxeNNeVpiW7dNAbJDEckaJ/10b2OBa9n+aCVbFJmAo0fW2
 iw3EFhFoZZQ40csDUsQscIhJYkvrVRaQhLBAsMSCVd3MIDaLgKrE4+unwGxeATuJHVeXM0Gs
 k5dYveEAWJwTKP665SDYagmBfewSv8/vYoQocpFov34cqkFY4tXxLewQtozE6ck9LBANzYwS
 D8+tZYdwehglLjfNgOq2lrhz7hfQrRxA92lKrN+lDxF2lOie8Y0RJCwhwCdx460gSJgZyJy0
 bTozRJhXoqNNCKJaTWLW8XVwaw9euMQMYXtITJr6kgkSQhMZJU5PmcY0gVF+FsKyBYyMqxjF
 U0uLc9NTiw3zUsv1ihNzi0vz0vWS83M3MQJT0ul/xz/tYPx6KekQowAHoxIPr0P46zgh1sSy
 4srcQ4wSHMxKIrxOZ0/HCfGmJFZWpRblxxeV5qQWH2KU5mBREuc1XvQyVkggPbEkNTs1tSC1
 CCbLxMEp1cA4/X3wj1ajxqW8nx8erv6z4YqufuLP30s8/f/PWbdE0/jzVdapZ1pFD/ObH707
 c5WaaN3UA2+/LzM3+e/oelB5TTibzxy7L7f97Zu+ijRUuPTNPnRNrMFUgeXvbDZHxY3f7BNP
 5hvY7L77WCtnYlDUHpFJvxK+RMzl1vui+7bg+4zN+x6eznaxUGIpzkg01GIuKk4EAC8cT6RF
 AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsVy+t/xe7r+U9/EGXx/y2XRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBH6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW6dsl
 6GWsftbMXvBZuGLijNoGxkUCXYycHBICJhLbp+1l7WLk4hASWMoocef5IhaIhIzEyWkNrBC2
 sMSfa11sEEWfGCWef7zDDpJgEzCU6HoLkRAR6GSUmNb9kR3EYRY4wSRxb+98RpAqYYFAiV3/
 f4ONZRFQlXh8/RQziM0rYCex4+pyJogV8hKrNxwAi3MCxV+3HARbLSRgK7F8wXvmCYx8CxgZ
 VjGKpJYW56bnFhvpFSfmFpfmpesl5+duYgRGyLZjP7fsYOx6F3yIUYCDUYmH90XI6zgh1sSy
 4srcQ4wSHMxKIrxOZ0/HCfGmJFZWpRblxxeV5qQWH2I0BTpqIrOUaHI+MHrzSuINTQ3NLSwN
 zY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwpp2PEJnK2JXRcLB+5ttv2z03He3l
 8ohR1+kV3P5cklXFpEpW0uvKcbkerQLtazYxBV16ndcK1y4UUBS+yBRycjHTqb+mN8qXl4dl
 n22bb2F3SknvlEqPcN7SP7vPWsYfjck8kbbtQoTersKnbltfZGUeZfuxx2Uuj5ZfavHVvhyJ
 Jbu9395TYinOSDTUYi4qTgQAYsARaaYCAAA=
X-CMS-MailID: 20200619103703eucas1p14faa1cec371efb0bf98ae696d58da64d
X-Msg-Generator: CA
X-RootMTR: 20200619103703eucas1p14faa1cec371efb0bf98ae696d58da64d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103703eucas1p14faa1cec371efb0bf98ae696d58da64d
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103703eucas1p14faa1cec371efb0bf98ae696d58da64d@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033705_796121_65420CA2 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Documentation/DMA-API-HOWTO.txt states that the dma_map_sg() function
returns the number of the created entries in the DMA address space.
However the subsequent calls to the dma_sync_sg_for_{device,cpu}() and
dma_unmap_sg must be called with the original number of the entries
passed to the dma_map_sg().

struct sg_table is a common structure used for describing a non-contiguous
memory buffer, used commonly in the DRM and graphics subsystems. It
consists of a scatterlist with memory pages and DMA addresses (sgl entry),
as well as the number of scatterlist entries: CPU pages (orig_nents entry)
and DMA mapped pages (nents entry).

It turned out that it was a common mistake to misuse nents and orig_nents
entries, calling DMA-mapping functions with a wrong number of entries or
ignoring the number of mapped entries returned by the dma_map_sg()
function.

Fix the code to refer to proper nents or orig_nents entries. This driver
checks for a buffer contiguity in DMA address space, so it should test
sg_table->nents entry.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/gpu/drm/omapdrm/omap_gem.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/omapdrm/omap_gem.c b/drivers/gpu/drm/omapdrm/omap_gem.c
index ff0c4b0c3fd0..a7a9a0afe2b6 100644
--- a/drivers/gpu/drm/omapdrm/omap_gem.c
+++ b/drivers/gpu/drm/omapdrm/omap_gem.c
@@ -48,7 +48,7 @@ struct omap_gem_object {
 	 *   OMAP_BO_MEM_DMA_API flag set)
 	 *
 	 * - buffers imported from dmabuf (with the OMAP_BO_MEM_DMABUF flag set)
-	 *   if they are physically contiguous (when sgt->orig_nents == 1)
+	 *   if they are physically contiguous (when sgt->nents == 1)
 	 *
 	 * - buffers mapped through the TILER when dma_addr_cnt is not zero, in
 	 *   which case the DMA address points to the TILER aperture
@@ -1279,7 +1279,7 @@ struct drm_gem_object *omap_gem_new_dmabuf(struct drm_device *dev, size_t size,
 	union omap_gem_size gsize;
 
 	/* Without a DMM only physically contiguous buffers can be supported. */
-	if (sgt->orig_nents != 1 && !priv->has_dmm)
+	if (sgt->nents != 1 && !priv->has_dmm)
 		return ERR_PTR(-EINVAL);
 
 	gsize.bytes = PAGE_ALIGN(size);
@@ -1293,7 +1293,7 @@ struct drm_gem_object *omap_gem_new_dmabuf(struct drm_device *dev, size_t size,
 
 	omap_obj->sgt = sgt;
 
-	if (sgt->orig_nents == 1) {
+	if (sgt->nents == 1) {
 		omap_obj->dma_addr = sg_dma_address(sgt->sgl);
 	} else {
 		/* Create pages list from sgt */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
