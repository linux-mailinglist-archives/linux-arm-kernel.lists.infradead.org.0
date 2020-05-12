Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7069F1CF129
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:09:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5PUpnKhQNmEgrHZx3dJKF298Zz1I6E6IKAJUNesjMYw=; b=rUdHzRQW59q0KuYyQegxbQ2rid
	dWgs65xVcNEAy/Zo5iebSo2alWJy62AkZznccgvMMPJie+hyQ/VNn/f7Fi2PCamyHmjEjq+V7JVdK
	JwWeaTJylHhj8GNMDPFDT4WJchZXOCetpA1PsICTLYNuJqHoCk55Kpeft/rh9HPCQzhNXvCd4+EFD
	Py+xHjbx3LUUZxs4xZzcDick8yxWW46VTxgNHFE2H9yc9KkjaE2UuA8oxDb536j0PNVbb6n1v5IkD
	nVnB9rfcATGyevjleweC7c5HTXvWf3c9jDR5ltD2sRBfFbk98SrsiqBXMz+XetYSTWaBDYAI5m41U
	Y2jeLwhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQup-0001o5-5k; Tue, 12 May 2020 09:09:31 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQn5-0002Qr-83
 for linux-arm-kernel@bombadil.infradead.org; Tue, 12 May 2020 09:01:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:Content-Type:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=H5Wuqd3IhdfxTrxlIPJVjW9wUYL7V9eCxWvieLv/Ae4=; b=lUT25f89iS50fcMQoxyW09Ca/u
 rIYVNYFYUlIVO7fxcGTbuwemehhcvFJv5+d77PraWxpoflaaWDsbrYuXXjwM5mAIYRpHNFpYsHdX/
 4E+XGXXbxVO0id6NVvX4sUZykLtXWcwBe16W43qZdup2Eezks0DFA5LYmYg+lxja1ctXX1BAO8r5F
 etdbwJzJRMrPS99IuNOHiN5r5+SvvSnDNwoG1ox+JVJIfUbpWxd2zmXpC6wrWBxQslJ0k/eFYX2BM
 irMFPQvGEB+z3dhCHskXbvUNA3UgSGgm3hLENL+QiOEU9vFyNs3Q74IJBF5CG6i6V2buM8Wos0tce
 qwJY4SQA==;
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQn1-0004V3-No
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:29 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090120euoutp02411349a46815b68ef28db1ec2c7e6670~OPFszjafe0453404534euoutp02U
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090120euoutp02411349a46815b68ef28db1ec2c7e6670~OPFszjafe0453404534euoutp02U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274080;
 bh=H5Wuqd3IhdfxTrxlIPJVjW9wUYL7V9eCxWvieLv/Ae4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eM/LZmOv65Mv8hGdFr5kBcYefZK/T6fvJV7P99FY89ipK6iPB0U0IBl7xasCo58Sn
 F7fTLe0yKQgAl8eWpcf4uH7wdZX7FmP9dFdWpMdCE5o+Lq+dQQ49xzYc82vHahU4x9
 QZM1EjZBhGcSFcmWzHXLc1LDu2maGD583gx85XY4=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090120eucas1p13ccfe06058a4a1cf34195a93eebcd2f4~OPFsj5kiE0080100801eucas1p1f;
 Tue, 12 May 2020 09:01:20 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 94.67.61286.0E56ABE5; Tue, 12
 May 2020 10:01:20 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090120eucas1p28cc382480b2e3298b59fb6bf5ffde80b~OPFsPfCnV2180321803eucas1p23;
 Tue, 12 May 2020 09:01:20 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090120eusmtrp29e638fa3d1d94c26652cbc0f1b430c27~OPFsNe7ZW0472704727eusmtrp2M;
 Tue, 12 May 2020 09:01:20 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-89-5eba65e014b4
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 55.45.08375.0E56ABE5; Tue, 12
 May 2020 10:01:20 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090119eusmtip101ec658c19ed9a44edfdfb44d4ca5c32~OPFrk7kXF1148011480eusmtip1Y;
 Tue, 12 May 2020 09:01:19 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 22/38] drm: rockchip: fix common struct sg_table related
 issues
Date: Tue, 12 May 2020 11:00:42 +0200
Message-Id: <20200512090058.14910-22-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTcRjG+e9cdlxOTlvkq4XFYqWS1rIPJ5R1QeRAX4qEIMxaeVLJqWzT
 UghXmtlSMYsuo9LMKDXTZmy66GbpEmOWylKs1DSWpmXqFK22XKfLt9/zvO/L8/DnT2GSR0Qg
 lZyq4zSpqhQZKcLNrXMdYQOcNX79zWE5U2RvEzD3LtURjMd8FmO6XV9JpqqmRcB4PnwmmKul
 x5jyx5HMdPeggDENOQimy3qFZCYHPBhT+/ydkHk6MUxs8WPvXLuD2Icz5ThrmRkg2P4zNgHb
 UJnD9rmHMPZczy3EPujVk+xP42OcLb5fjViL4xrGTpmCdvjuEUUlcCnJmZxmnXK/KGnWbiPS
 R4OOWkoLhHrkCDAgHwrojXD6WQNmQCJKQt9GYM3v/COmERS/byJ5MYXAWdRD/D0ZrvmA84Nb
 CIbcn8h/JzdLcpF3i6QVYBg3kF5eQp9E8KLI18sYfQGDaleMl6V0LJh7OnAv47QcrEPXBQZE
 UWJaCc6XO/mwFVBT/wTzss+C3V/2A+f9TiF8KUznORrm+uoQz1IYtd0X8rwcPE1lAm83oHMR
 DNprhbwoRNB14tKfi0h4a58nvcEYHQJ11nW8vRW+O4y/+wDtBz3ji/n6flBqvojxthgK8iX8
 9mow2u7+i336qhPjmYVRqwPxz9OCoH3YRpSgFcb/YeUIVSN/LkOrTuS0ilTuSLhWpdZmpCaG
 H0xTm9DCr2p32yYbkavzQDOiKSTzFRdsaIqXEKpMbZa6GQGFyZaI85IXLHGCKiub06Tt02Sk
 cNpmtIzCZf7iiIqRvRI6UaXjDnNcOqf5OxVQPoF61MidcVp6XwtGVs5lrUreUhISjI2dv6EY
 cxXU5s3N+G0edMdmNpyKnc03KXdX6+KYOI9826PKjbqlP6IKA5ir09JQfWv7rFKaG/EqeM18
 /LeyRXuPF+qdHvmbjqTxqRTRBGQr6u/lh0345GwKW3v546Fdk66Y2sw2eYUDosuqtstwbZJK
 EYpptKpfn9yiw1EDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsVy+t/xu7oPUnfFGSz4x2XRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMln8f/Sa1WLupFqLBfutLb5cechksenxNVaLy7vmsFl8evCf2WLt
 kbvsFgc/PGF14PNYM28No8febwtYPLZ/e8Dqcb/7OJPH5iX1Hrf/PWb2mHxjOaPH7psNbB5/
 Z+1n8ejbsorRY/u1ecwenzfJBfBE6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZ
 mSrp29mkpOZklqUW6dsl6GV8P3ecteCVXMX2SR3sDYzXJLsYOTkkBEwknqx+xNLFyMUhJLCU
 UeLzxinMEAkZiZPTGlghbGGJP9e62CCKPjFKnGv6C5ZgEzCU6HoLkRAR6GSUmNb9kR3EYRaY
 xyyxfNVhpi5GDg5hgSCJ+fcSQRpYBFQldj1eCBbmFbCTeH4mEGKBvMTqDQfAFnMChe/P/8MC
 YgsJFEo8uvqWZQIj3wJGhlWMIqmlxbnpucWGesWJucWleel6yfm5mxiBsbPt2M/NOxgvbQw+
 xCjAwajEw9thtDNOiDWxrLgy9xCjBAezkghvSyZQiDclsbIqtSg/vqg0J7X4EKMp0E0TmaVE
 k/OBcZ1XEm9oamhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoFR3mK7hH6y
 yDou3nvVO7dMjXxgMccgubFYIZGDUVfj1T+LI2K9U9n+5bg/FFeX+stz9HGxlutr4YK8G3Oj
 ruyxqWZuKTUvW6qgwabn/df8dv2vFz3/BI5/ED33tjolW1r0fsF+VnHZOzI3Hk/5c/p8UJ/F
 D+OEuXlXNwVFGvO/Vk1+fkRyUocSS3FGoqEWc1FxIgCVrMwwswIAAA==
X-CMS-MailID: 20200512090120eucas1p28cc382480b2e3298b59fb6bf5ffde80b
X-Msg-Generator: CA
X-RootMTR: 20200512090120eucas1p28cc382480b2e3298b59fb6bf5ffde80b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090120eucas1p28cc382480b2e3298b59fb6bf5ffde80b
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090120eucas1p28cc382480b2e3298b59fb6bf5ffde80b@eucas1p2.samsung.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
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

To avoid such issues, lets use a common dma-mapping wrappers operating
directly on the struct sg_table objects and use scatterlist page
iterators where possible. This, almost always, hides references to the
nents and orig_nents entries, making the code robust, easier to follow
and copy/paste safe.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 21f8cb2..566557b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -36,8 +36,8 @@ static int rockchip_gem_iommu_map(struct rockchip_gem_object *rk_obj)
 
 	rk_obj->dma_addr = rk_obj->mm.start;
 
-	ret = iommu_map_sg(private->domain, rk_obj->dma_addr, rk_obj->sgt->sgl,
-			   rk_obj->sgt->nents, prot);
+	ret = iommu_map_sgtable(private->domain, rk_obj->dma_addr, rk_obj->sgt,
+				prot);
 	if (ret < rk_obj->base.size) {
 		DRM_ERROR("failed to map buffer: size=%zd request_size=%zd\n",
 			  ret, rk_obj->base.size);
@@ -98,11 +98,10 @@ static int rockchip_gem_get_pages(struct rockchip_gem_object *rk_obj)
 	 * TODO: Replace this by drm_clflush_sg() once it can be implemented
 	 * without relying on symbols that are not exported.
 	 */
-	for_each_sg(rk_obj->sgt->sgl, s, rk_obj->sgt->nents, i)
+	for_each_sgtable_sg(rk_obj->sgt, s, i)
 		sg_dma_address(s) = sg_phys(s);
 
-	dma_sync_sg_for_device(drm->dev, rk_obj->sgt->sgl, rk_obj->sgt->nents,
-			       DMA_TO_DEVICE);
+	dma_sync_sgtable_for_device(drm->dev, rk_obj->sgt, DMA_TO_DEVICE);
 
 	return 0;
 
@@ -350,8 +349,8 @@ void rockchip_gem_free_object(struct drm_gem_object *obj)
 		if (private->domain) {
 			rockchip_gem_iommu_unmap(rk_obj);
 		} else {
-			dma_unmap_sg(drm->dev, rk_obj->sgt->sgl,
-				     rk_obj->sgt->nents, DMA_BIDIRECTIONAL);
+			dma_unmap_sgtable(drm->dev, rk_obj->sgt,
+					  DMA_BIDIRECTIONAL, 0);
 		}
 		drm_prime_gem_destroy(obj, rk_obj->sgt);
 	} else {
@@ -476,15 +475,13 @@ struct sg_table *rockchip_gem_prime_get_sg_table(struct drm_gem_object *obj)
 			struct sg_table *sg,
 			struct rockchip_gem_object *rk_obj)
 {
-	int count = dma_map_sg(drm->dev, sg->sgl, sg->nents,
-			       DMA_BIDIRECTIONAL);
-	if (!count)
-		return -EINVAL;
+	int err = dma_map_sgtable(drm->dev, sg, DMA_BIDIRECTIONAL, 0);
+	if (err)
+		return err;
 
 	if (drm_prime_get_contiguous_size(sg) < attach->dmabuf->size) {
 		DRM_ERROR("failed to map sg_table to contiguous linear address.\n");
-		dma_unmap_sg(drm->dev, sg->sgl, sg->nents,
-			     DMA_BIDIRECTIONAL);
+		dma_unmap_sgtable(drm->dev, sg, DMA_BIDIRECTIONAL, 0);
 		return -EINVAL;
 	}
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
