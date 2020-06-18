Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C2C1FF80E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:52:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eLvLxFKwpJYyjKoUR9K+CtYjV0i1hNPAKOg2B2brdMc=; b=WXHMr8TgcUmUZ0+wgXRGsbNOui
	zJKJ2TbuCmBRizn6j6HBNrkkkfcdLKKHN5Y/7ZBq0gBwDz6IZenkBqeCGlH0oVU3Gm4DRcgKeM1+J
	1qbRAYLuYmwIGHtLo0F7JBvvlwOV5zrryR9JbpMMTqoc2J8g2YEEilIUTjgGDsjTpSVrA3zWCr165
	gl7ZPoNRQPtmDFc3htkveCGQML9d//doiAcc6TK6c0YkON1aIhS/gHM2uRJXldtwP7EyM1t5jdbIL
	8GILiGYUharK/UOhkW4JgS/aqIcLr8O1FP2D7I+6+bK9DVPFcHQff5PwSK9jATc6NDgiOeoTggsuv
	PDgwosgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwpW-0001H0-Ra; Thu, 18 Jun 2020 15:51:54 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwef-0004LR-Jz
 for linux-arm-kernel@bombadil.infradead.org; Thu, 18 Jun 2020 15:40:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:Content-Type:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=i9tfBl9XK1ZIcmVNmOj760Z4Av4MmZkmEeWSykU107Y=; b=ki9ZGq1ky/OVuaMEFmtAxED/aX
 iXMuPeGXqpuFM5RR/Fa7hAwU6ZJhwJk/n3PGXE4aWv41SkhxB2dL9EHormYsgWc+C02GbRyblxeaB
 BWDUsyKO+di0ggH3Onv9PtYQdyYetHLK1urhtr1WPDVG9m+qObVvDArN09jvjZryrHfaXg/h3eefU
 hTq2/p7G8/ZbZajVh/q1tJzThk9ttbWERzj+aVSWCHWKzK1UIM3wOeCbBpjgtpQfor+eWO2v+cJaJ
 UCCcx8SfBj7qa9j2DaWZaxj3Pq32uCtSTeBzQ7HJJTyu/m7YvEtJq50SKgLGwp1DLR4NHmu3h/9XH
 5YtBdHPA==;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwed-0007t0-34
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:39 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154037euoutp011d3271ade03e820fd40065fda8ae0c60~ZrZ4jD2gM1844818448euoutp01O
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154037euoutp011d3271ade03e820fd40065fda8ae0c60~ZrZ4jD2gM1844818448euoutp01O
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494837;
 bh=i9tfBl9XK1ZIcmVNmOj760Z4Av4MmZkmEeWSykU107Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TARY4sUojzLB0Iwdq+ZXJA0YN3z7Pug1Y/4Cs5L9WUhy+idSywHr6abboYmzGXFW+
 D3wEYL4J/oaV7Rp6Bzq00qqBNfRw+VDET5PvQqeepDgwS+P/HlsntOC7jiDKnGa82O
 sYWEKhzjfcEkaXU/d+G73Oe5A4y+NTikzZCYyCfM=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154037eucas1p162bd4bce5ff25284dc35a3b750373f07~ZrZ4YCBn21545815458eucas1p1m;
 Thu, 18 Jun 2020 15:40:37 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id FB.1F.61286.5FA8BEE5; Thu, 18
 Jun 2020 16:40:37 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154037eucas1p19a60af169ef9c272b9d1eecf589f6627~ZrZ4Bn1_B1545815458eucas1p1l;
 Thu, 18 Jun 2020 15:40:37 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154037eusmtrp2e1d1f0ddf5441e208cc3e8e1afc41c0b~ZrZ4A_iTP0370403704eusmtrp2w;
 Thu, 18 Jun 2020 15:40:37 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-f2-5eeb8af57b24
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 78.FE.08375.5FA8BEE5; Thu, 18
 Jun 2020 16:40:37 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154036eusmtip1fb60c40ddcb27db26c518640dc3aacde~ZrZ3a9J5Z0742307423eusmtip1Y;
 Thu, 18 Jun 2020 15:40:36 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 33/36] samples: vfio-mdev/mbochs: fix common struct
 sg_table related issues
Date: Thu, 18 Jun 2020 17:39:54 +0200
Message-Id: <20200618153956.29558-34-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRjuO2fn7GjOjpvgh0nGIsnAGxUeUMTMH4cKuv0oBC8zDypuuja1
 FCRTFzK1NDNNLC0E865zzktKOdQlmpcpy0umov7QoYY6sUma2yn79zzP+7zP873wESi/BXMm
 YuMTGVm8SCzEbTma/l8jHialMcy79J07lTc8gFDNJY0YdaApQKkJ0wZOVdf2IVTFJz+qrOgB
 pR58A6jtiQWEUi0aMGq8swyn6ntnuVTPzyUskEfXva0DdPdOBYdu25nH6LkcHUK3VD6mZ/YX
 UbpwsgrQH6fScTovcx2nn6lrAL2lOnXzeIitfxQjjk1mZF4BEbYxexoVV1rp8Gi6PSEdNNsr
 AUFA8iKcrwpUAluCT34AcKm8msOSbQDzVrU4S7YAVGv6MCWwsW4MVOpRdlAF4N5GNnq0krE8
 iltcOOkDlWtKK3YkFQB+ybOzmFDSgMC13+vWKAEZAfWmSivmkGfhXFkNYsE8MgAOPM/B2TpX
 WNv0GbVgm0N9UKfALEGQ1HJhxVAZwl4RDL+1oqxfAFd1ai6LXeBBRznC+jMBXBiu57IkF8Dx
 jBLAuvzg92EzbglCSXfY2OnFypfhzKtpLptvDyfXHCwyeghfaIpRVubB7Kd81u0GS3UNR7U9
 o/q/z6Hham+R9RQ+WQDgSAueD1xL/3dVAFADnJgkuSSakfvEMw895SKJPCk+2vN+gkQFDr/S
 4L5usx2Y9JFaQBJAaMcLvGsM42OiZHmKRAsggQodeUFfB8P4vChRSiojSwiXJYkZuRacJDhC
 J96F9yuhfDJalMjEMYyUkf2bIoSNczroNt+OG+1o8hGPFRnRW/5TY0OOBwvBsy6hpzPPtc0c
 w38sh6f2GnyvKN2WpVncrq6NEKwYO9mflTtuZphLuVpkZa/1xtVrL8ndFLP0db1CIvCG+Y2+
 Z5bvnNj0bfDfuFeoSDMJnlCl3rtBxm6P/fWt4rTIIUNzd6ZICJ0414UceYzI5zwqk4v+ALRX
 GcFGAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKIsWRmVeSWpSXmKPExsVy+t/xu7pfu17HGZxYLWbRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9tMWdqocWW03MZLb5cechksenxNVaLy7vmsFmsPXKX3eLg
 hyesDrwea+atYfTY+20Bi8f2bw9YPe53H2fy2Lyk3uP2v8fMHpNvLGf02H2zgc2jt/kdm0ff
 llWMHp83yQVwR+nZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJal
 FunbJehl/N62ib1giWDFrR35DYwb+boYOTkkBEwkTi65xNzFyMUhJLCUUeLC9H3MEAkZiZPT
 GlghbGGJP9e62CCKPjFKPLo3mw0kwSZgKNH1FiIhItDJKDGt+yM7SIJZ4B6TxN51fl2MHBzC
 AnEST0+BhVkEVCXuz1nFBGLzCthJnOzvZoNYIC+xesMBsMWcQPHTx1vBFgsJ2Eo8/9DGNoGR
 bwEjwypGkdTS4tz03GJDveLE3OLSvHS95PzcTYzAKNl27OfmHYyXNgYfYhTgYFTi4X0R8jpO
 iDWxrLgy9xCjBAezkgiv09nTcUK8KYmVValF+fFFpTmpxYcYTYGOmsgsJZqcD4zgvJJ4Q1ND
 cwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjDNCV88xOhK1dtqtd3p1c/RW
 1HUGTYi8FZc783pN96+0qub/YddXfs0JeHXlfvnWqjZ2Xo66CbeuzfAq6LoicuVD5/ZMF5+r
 ZxoKZNjVfuwxXpiTKCivzDx9JVf0tFnRDyXXfPjzNOKHRXR17fqjHuvXO2iGtN9vO1deKc4+
 4ZWu398liUarGJVYijMSDbWYi4oTAZpEzByoAgAA
X-CMS-MailID: 20200618154037eucas1p19a60af169ef9c272b9d1eecf589f6627
X-Msg-Generator: CA
X-RootMTR: 20200618154037eucas1p19a60af169ef9c272b9d1eecf589f6627
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154037eucas1p19a60af169ef9c272b9d1eecf589f6627
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154037eucas1p19a60af169ef9c272b9d1eecf589f6627@eucas1p1.samsung.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
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
Cc: kvm@vger.kernel.org, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Kirti Wankhede <kwankhede@nvidia.com>,
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

To avoid such issues, lets use a common dma-mapping wrappers operating
directly on the struct sg_table objects and use scatterlist page
iterators where possible. This, almost always, hides references to the
nents and orig_nents entries, making the code robust, easier to follow
and copy/paste safe.

While touching this code, also add missing call to dma_unmap_sgtable.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 samples/vfio-mdev/mbochs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/samples/vfio-mdev/mbochs.c b/samples/vfio-mdev/mbochs.c
index 3cc5e5921682..e03068917273 100644
--- a/samples/vfio-mdev/mbochs.c
+++ b/samples/vfio-mdev/mbochs.c
@@ -846,7 +846,7 @@ static struct sg_table *mbochs_map_dmabuf(struct dma_buf_attachment *at,
 	if (sg_alloc_table_from_pages(sg, dmabuf->pages, dmabuf->pagecount,
 				      0, dmabuf->mode.size, GFP_KERNEL) < 0)
 		goto err2;
-	if (!dma_map_sg(at->dev, sg->sgl, sg->nents, direction))
+	if (dma_map_sgtable(at->dev, sg, direction, 0))
 		goto err3;
 
 	return sg;
@@ -868,6 +868,7 @@ static void mbochs_unmap_dmabuf(struct dma_buf_attachment *at,
 
 	dev_dbg(dev, "%s: %d\n", __func__, dmabuf->id);
 
+	dma_unmap_sgtable(at->dev, sg, direction, 0);
 	sg_free_table(sg);
 	kfree(sg);
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
