Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C6A1D160F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:42:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QYuwX2BC0i0rtM3f0RMkZ9aJz7aNIaZ4sR3OyFtu2Aw=; b=rNFxQJcmJGGLywaw5TEG2UgYnG
	UfSGdjspJcYpGQMY9Y0HdDaic0VasaTFVhwxQ2Dk9a1R80k1xP1dGot0raFZZp3x1+mtktZQ9wgtO
	Jpz5/KszwQ3uNz3GD+1zRC3yYBhzoXnxYXi+7Q492pje6Hsn9Aa3wioD0l4jV1Z/pDTVTrrV+873/
	6RC7bs6BT+7NDXo7wib3tb8KhKTJOYq0JCcMTJIlcXyuiEi4ckLA8Zjy5LVMDckZd3xFGkWa6ot1S
	EWsmFNjXAcZ3ZNVBAIyW4o2jcyrPEkuWAjefNYGGzP/OANI6B6rqkodnHp77RzZ4y/7DEkxJhN3wE
	W06ohTlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYreY-0005RZ-AZ; Wed, 13 May 2020 13:42:30 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVe-0001d8-2K
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:27 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133316euoutp010e5a2b74c7e457d45de2103a87517661~OmcaQTZWv2140621406euoutp01Y
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133316euoutp010e5a2b74c7e457d45de2103a87517661~OmcaQTZWv2140621406euoutp01Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376796;
 bh=zHca1NE8qMe+26SevrIwGNo5LJP1ioPh+8qZtbsUY3k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hh4eyhqGy8GYx/NhcywQKpa/K0Q59bCWp4RfLbgOgrKSiJCg+PBEbozxA9eUhM2dL
 7c4zZ0m3AyAA//hscb20Nmn1WKhvki22aR+Q1o6D0XBQ+ghYDoo1NALva6K5Ur1CYe
 gK+cR1gJIxBHm2SP8EEw6YNHWf1xsngoVmLTKImY=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133316eucas1p1f998faa8565c32d75dac09c3c496202e~OmcZ8hHC92351423514eucas1p1X;
 Wed, 13 May 2020 13:33:16 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 70.11.60679.C17FBBE5; Wed, 13
 May 2020 14:33:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133315eucas1p17499a099b78c332b30911345c3963368~OmcZb2iUF0608106081eucas1p1D;
 Wed, 13 May 2020 13:33:15 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133315eusmtrp1356aa7bd065b7d5d74e01340e1c9e086~OmcZbJ2G61011910119eusmtrp1Y;
 Wed, 13 May 2020 13:33:15 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-5d-5ebbf71c9ca6
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id CE.1A.08375.B17FBBE5; Wed, 13
 May 2020 14:33:15 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133314eusmtip1bdc76c1c17eeadb4dbf5f06fcfed5b5a~OmcYt3rTk3222032220eusmtip1A;
 Wed, 13 May 2020 13:33:14 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 26/38] drm: vmwgfx: fix common struct sg_table related
 issues
Date: Wed, 13 May 2020 15:32:33 +0200
Message-Id: <20200513133245.6408-26-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGKsWRmVeSWpSXmKPExsWy7djPc7oy33fHGTz6zGvRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVq8OXKM0eLyrjlsFmuP3GW3OPjhCavF
 51PH2Bx4PdbMW8PosffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR9+WVYwe
 nzfJebyb/5YtgDuKyyYlNSezLLVI3y6BK2P2r6SC0xIVvxbYNzAeF+li5OSQEDCR+P9qClsX
 IxeHkMAKRonDzf3sEM4XRoneO/dYIZzPjBLvPj1ghGlpfDoZKrGcUWL2zzcILS9+L2ICqWIT
 MJToetvFBmKLCLQySpzo5QEpYhb4xyQx+e8ssCJhgSCJv+t6wcayCKhKnJj8HCzOK2ArseHP
 NGaIdfISqzccALM5geKv7uxnARkkIXCIXeL66ttQRS4SKz7PhbpPWOLV8S3sELaMxOnJPVAN
 zYwSD8+tZYdwehglLjfNgOqwlrhz7hfQrRxA92lKrN+lDxF2lGh4vIAdJCwhwCdx460gSJgZ
 yJy0bTozRJhXoqNNCKJaTWLW8XVwaw9euAR1mofEuRU/oCF8mFHi0cEulgmM8rMQli1gZFzF
 KJ5aWpybnlpslJdarlecmFtcmpeul5yfu4kRmJpO/zv+ZQfjrj9JhxgFOBiVeHgtbu2OE2JN
 LCuuzD3EKMHBrCTC67ceKMSbklhZlVqUH19UmpNafIhRmoNFSZzXeNHLWCGB9MSS1OzU1ILU
 IpgsEwenVAMj+3zjB3fqVaPCyyyORFw9uTQn7f4sS+cVc0VOMR1ceVDh76naejGR609z7Saz
 xxQmefm9f+QqtE1339FpZi+tZS63OVZ5NKkt2SJkf3b6kbMXPb/v9DmjoRHYwB52Uv/5R01H
 0d9yH/8ZfVvyeO6nC8ufatQEdejx5ltULX2o0dPYtNtx/uEzSizFGYmGWsxFxYkAn7DBTEkD
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xu7rS33fHGXzZqGbRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVq8OXKM0eLyrjlsFmuP3GW3OPjhCavF
 51PH2Bx4PdbMW8PosffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR9+WVYwe
 nzfJebyb/5YtgDtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL2P2r6SC0xIVvxbYNzAeF+li5OSQEDCRaHw6mbWLkYtDSGApo8SLGe8YIRIyEien
 NbBC2MISf651sUEUfWKUON2xD6yITcBQoustREJEoJNRYlr3R3YQh1mghVli75t/bCBVwgIB
 El+nzmIHsVkEVCVOTH7OBGLzCthKbPgzjRlihbzE6g0HwGxOoPirO/tZQGwhgXyJvYv3sU1g
 5FvAyLCKUSS1tDg3PbfYUK84Mbe4NC9dLzk/dxMjMFK2Hfu5eQfjpY3BhxgFOBiVeHgtbu2O
 E2JNLCuuzD3EKMHBrCTC67ceKMSbklhZlVqUH19UmpNafIjRFOioicxSosn5wCjOK4k3NDU0
 t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAON8y9Pn7G26vt2YleE2ad3XD
 hSeHQ8OTLa6X8sw4yb7LRu3s5mjjWNUNhd+FXq+VXfVcfF9eqoLVjJuv380+fCtzgvlsR66d
 XWfeqqRYaUQbP2qwN+7MLxXQ+t5w5uFD6dA36oyqN31+7L8jr/Cv8s25Er+Vi97a8BxhYDV6
 /+qeG+PqQFc+diWW4oxEQy3mouJEAFsCtqKqAgAA
X-CMS-MailID: 20200513133315eucas1p17499a099b78c332b30911345c3963368
X-Msg-Generator: CA
X-RootMTR: 20200513133315eucas1p17499a099b78c332b30911345c3963368
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133315eucas1p17499a099b78c332b30911345c3963368
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133315eucas1p17499a099b78c332b30911345c3963368@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063318_283867_1AEFE69E 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Thomas Hellstrom <thellstrom@vmware.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
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

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Acked-by: Roland Scheidegger <sroland@vmware.com>
---
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c b/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c
index bf0bc46..49ed6ad 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c
@@ -362,8 +362,7 @@ static void vmw_ttm_unmap_from_dma(struct vmw_ttm_tt *vmw_tt)
 {
 	struct device *dev = vmw_tt->dev_priv->dev->dev;
 
-	dma_unmap_sg(dev, vmw_tt->sgt.sgl, vmw_tt->sgt.nents,
-		DMA_BIDIRECTIONAL);
+	dma_unmap_sgtable(dev, vmw_tt->sgt, DMA_BIDIRECTIONAL, 0);
 	vmw_tt->sgt.nents = vmw_tt->sgt.orig_nents;
 }
 
@@ -383,16 +382,8 @@ static void vmw_ttm_unmap_from_dma(struct vmw_ttm_tt *vmw_tt)
 static int vmw_ttm_map_for_dma(struct vmw_ttm_tt *vmw_tt)
 {
 	struct device *dev = vmw_tt->dev_priv->dev->dev;
-	int ret;
-
-	ret = dma_map_sg(dev, vmw_tt->sgt.sgl, vmw_tt->sgt.orig_nents,
-			 DMA_BIDIRECTIONAL);
-	if (unlikely(ret == 0))
-		return -ENOMEM;
 
-	vmw_tt->sgt.nents = ret;
-
-	return 0;
+	return dma_map_sgtable(dev, vmw_tt->sgt, DMA_BIDIRECTIONAL, 0);
 }
 
 /**
@@ -449,10 +440,10 @@ static int vmw_ttm_map_dma(struct vmw_ttm_tt *vmw_tt)
 		if (unlikely(ret != 0))
 			goto out_sg_alloc_fail;
 
-		if (vsgt->num_pages > vmw_tt->sgt.nents) {
+		if (vsgt->num_pages > vmw_tt->sgt.orig_nents) {
 			uint64_t over_alloc =
 				sgl_size * (vsgt->num_pages -
-					    vmw_tt->sgt.nents);
+					    vmw_tt->sgt.orig_nents);
 
 			ttm_mem_global_free(glob, over_alloc);
 			vmw_tt->sg_alloc_size -= over_alloc;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
