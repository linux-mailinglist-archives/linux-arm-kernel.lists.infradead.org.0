Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C5B1CF148
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5h42AdFg5uJSp7/Cc8Zvvvbc6EjQw4l80SvICGsJb3w=; b=WIBEoIqHN+cYoe6nmnr5v1lrjC
	kEJNRiCzMPkVA/B3G1atbECtOafxSiVrE26MnkqtmE+K+lDl7T3isIO+iEwgE98sbkU9TAXV1hFWM
	PFgfSG8WvjqnRDaGoow9lXrY6URR24KZdnNBySe31iAPxy3vKBfRnMmkwDM2c3ZldIsxR3BL92XBA
	7mlhHNXV5m6MvTZtPCPl3TQNBKWjeWqmsXkLoxGRVbhyEvdDYUcdUATftRwMDRe3aAC996lN+UStf
	ShgkK2aPrFEChn0jcqQuaxHq3HXJEmNlypSce9gwnJkFYuWUhqg4wTQUMSgTjWtrxoZRz83CXBUmN
	pRVs1wtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQzT-00086m-44; Tue, 12 May 2020 09:14:19 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQnA-0002Uc-SW
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:51 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090129euoutp021144ff99cad061489d36eb034a33946f~OPF1MBBF50533205332euoutp02L
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090129euoutp021144ff99cad061489d36eb034a33946f~OPF1MBBF50533205332euoutp02L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274089;
 bh=E1NfBBxSojUDLapgMB8Y02kKeGolZNH/an6hkCuIGIw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=j++GxhxxYfM+r97XJyq3crmV1wh9UHsrUuYP5jz3KXE0uNJs18EY/ymxDbrZHSJc0
 90/79NoA5mByXgeBL8Lc+TlVx5AFpjovZhhMJuC9QLjJvcQi3RxOQd9MtM6QdIBNS3
 Olx/BkrKLEOJHSiwyniJdAY5X4y1iMpUthxgjTx4=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090129eucas1p2e54bcc15c8de5a27e05eb20ec668d4ef~OPF06qyG02180321803eucas1p2C;
 Tue, 12 May 2020 09:01:29 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 3F.67.61286.9E56ABE5; Tue, 12
 May 2020 10:01:29 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090129eucas1p2e67c8a9adafb202970a59c3412cd887a~OPF0orOhz2661826618eucas1p2n;
 Tue, 12 May 2020 09:01:29 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090129eusmtrp1cc27ec6d1a740863c5c174195c999886~OPF0n7TdP0188101881eusmtrp1f;
 Tue, 12 May 2020 09:01:29 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-b4-5eba65e97ca9
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id AC.03.07950.9E56ABE5; Tue, 12
 May 2020 10:01:29 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090128eusmtip14ace71a0d963c54a40acb63ce54fcc29~OPF0Csyzt1181011810eusmtip1w;
 Tue, 12 May 2020 09:01:28 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 36/38] samples: vfio-mdev/mbochs: fix common struct
 sg_table related issues
Date: Tue, 12 May 2020 11:00:56 +0200
Message-Id: <20200512090058.14910-36-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrCKsWRmVeSWpSXmKPExsWy7djPc7ovU3fFGXyerWTRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9tMWdqocWW03MZLb5cechksenxNVaLy7vmsFmsPXKX3eLg
 hyesDrwea+atYfTY+20Bi8f2bw9YPe53H2fy2Lyk3uP2v8fMHpNvLGf02H2zgc2jt/kdm0ff
 llWMHp83yQVwR3HZpKTmZJalFunbJXBlHGvkLLglVDG9o5+tgfEyfxcjJ4eEgInE3NVTWEBs
 IYEVjBIr7ll0MXIB2V8YJZaffcYO4XxmlHi9dCkTTMfMl/uhEssZJT6/fMIM13J0/RRGkCo2
 AUOJrrddbCC2iEAro8SJXh6QImaBa0wSb/++Y+1i5OAQFkiQWP+aG6SGRUBV4lnXNLBeXgE7
 idYFzewQ2+QlVm84wAxicwLF78//wwIyR0LgELvEm3MXmSGKXCRa1v6HOk9Y4tXxLVDNMhKn
 J/dANTQzSjw8t5YdwulhlLjcNIMRospa4s65X2wgFzELaEqs36UPEXaUeHvyKBNIWEKAT+LG
 W0GQMDOQOWnbdGaIMK9ER5sQRLWaxKzj6+DWHrxwCeo0D4lDX+axQQLoKKPEnrMvmCcwys9C
 WLaAkXEVo3hqaXFuemqxYV5quV5xYm5xaV66XnJ+7iZGYFo6/e/4px2MXy8lHWIU4GBU4uHt
 MNoZJ8SaWFZcmXuIUYKDWUmEtyUTKMSbklhZlVqUH19UmpNafIhRmoNFSZzXeNHLWCGB9MSS
 1OzU1ILUIpgsEwenVANj38EnC+87sVhn8htIVHO7zDLco1Jz2cp2+T0Z3wMPdG+deLL81INN
 DD9jVe26uD0FcmfNUOXVz8049rFQ+bpJ7dnPqsJcHoViXKFe5hMK1eO3hW3uilv528p9QmWO
 s+6LVSf3ty8+cOHMQp/Dh881aRzf80/EO/fO6SaOmrO6v38+nqnLy1ahxFKckWioxVxUnAgA
 Y96ihUcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKIsWRmVeSWpSXmKPExsVy+t/xu7ovU3fFGazp5bfoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2mDO10GLL6bmMFl+uPGSy2PT4GqvF5V1z2CzWHrnLbnHw
 wxNWB16PNfPWMHrs/baAxWP7twesHve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObR2/yOzaNv
 yypGj8+b5AK4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstS
 i/TtEvQyjjVyFtwSqpje0c/WwHiZv4uRk0NCwERi5sv97F2MXBxCAksZJf5P2ccOkZCRODmt
 gRXCFpb4c62LDcQWEvjEKLHmRiGIzSZgKNH1FiTOxSEi0MkoMa37I1gzs8A9Jom96/xAbGGB
 OIkT+1eBDWIRUJV41jWNEcTmFbCTaF3QDLVMXmL1hgPMIDYnUPz+/D8sEMsKJR5dfcsygZFv
 ASPDKkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMAo2Xbs55YdjF3vgg8xCnAwKvHwdhjtjBNi
 TSwrrsw9xCjBwawkwtuSCRTiTUmsrEotyo8vKs1JLT7EaAp01ERmKdHkfGAE55XEG5oamltY
 GpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYJx4rCTj8sS0OqO3sY+XX356vPtV
 +PfVNmcmXtL+4rhp4V3D43yL8y6y1G/bs1vnzNRSkz7267tSP8g1fWK4dWlhyGLx5t981sGM
 RYLqTEdC1TJbFVyUGZXNnm8+Ncd8ue18Z9ddc9lOn/658dK6i/5+oT8fCPXtPdpQ/bN9f6rs
 KYuAJXZcakJKLMUZiYZazEXFiQCA1aSZqAIAAA==
X-CMS-MailID: 20200512090129eucas1p2e67c8a9adafb202970a59c3412cd887a
X-Msg-Generator: CA
X-RootMTR: 20200512090129eucas1p2e67c8a9adafb202970a59c3412cd887a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090129eucas1p2e67c8a9adafb202970a59c3412cd887a
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090129eucas1p2e67c8a9adafb202970a59c3412cd887a@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020137_815019_62626513 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
---
 samples/vfio-mdev/mbochs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/samples/vfio-mdev/mbochs.c b/samples/vfio-mdev/mbochs.c
index 3cc5e59..f2c62e0 100644
--- a/samples/vfio-mdev/mbochs.c
+++ b/samples/vfio-mdev/mbochs.c
@@ -846,7 +846,7 @@ static struct sg_table *mbochs_map_dmabuf(struct dma_buf_attachment *at,
 	if (sg_alloc_table_from_pages(sg, dmabuf->pages, dmabuf->pagecount,
 				      0, dmabuf->mode.size, GFP_KERNEL) < 0)
 		goto err2;
-	if (!dma_map_sg(at->dev, sg->sgl, sg->nents, direction))
+	if (dma_map_sgtable(at->dev, sg, direction))
 		goto err3;
 
 	return sg;
@@ -868,6 +868,7 @@ static void mbochs_unmap_dmabuf(struct dma_buf_attachment *at,
 
 	dev_dbg(dev, "%s: %d\n", __func__, dmabuf->id);
 
+	dma_unmap_sgtable(at->dev, sg, direction);
 	sg_free_table(sg);
 	kfree(sg);
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
