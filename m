Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DD01D1644
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:46:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Yzjvn8SCOrkGJAO/yIfcpPpgA5OZRjLxTCdw/L9a/4M=; b=T7y/V9nRyG72395uAVu7QEdlic
	iS5hqL+0L2KWs9K4Er+dvH3HW4YkHjmPpJGoT9vTYhVV/wMfEUw8EIKKJ85HVMZSH6zuJuKyer3We
	GEcYvlAuUS12qFyOdydJOIFDj5/g48JTom4HQkIahBDHuFftZ9/ezyCwbpR1GBrsoQw/KNNtkf0o7
	5SXIc2t+29c6MXEpTRkRQrWM9B4R1lWtC94pUo2ffYNDIfVNyTvLJtCbtBoxDaVGWTRcVSf3iVuZg
	8rI1iEdPDx5u5ge+b7AFQxVZQfllD4Ix8eIbaW+2ZsesGlRxUFZb/cUY7ubW67SIxZXIMXQhfcdse
	ZKtU9VXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrho-0002IT-Dx; Wed, 13 May 2020 13:45:52 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVn-0001lu-I9
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:32 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133324euoutp026a097aff47612420615d6f2338263315~Omchi11G43219432194euoutp02S
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133324euoutp026a097aff47612420615d6f2338263315~Omchi11G43219432194euoutp02S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376804;
 bh=4Z3VX9b95pVvmo5Br0ewCVmZiro3PYcbGcBRCw5/dy0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cYmrTQQOJQJYIxLbJOjPRjT9kBusZQNHJQBiSPgPHs/jpKQUf8agJzNoBWzwpY1IY
 fC4VkozQemM4WeoUyvG1roOv2ofSd5giJkVaW6SmMFPnBp+B/1X0Oq4yiffK9UfGYa
 /JbRDd0MyqdQQCzALACo3pidCdqOFiFtqAm7zPW4=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133324eucas1p142c8a86befd97cefee286cdf022951dc~OmchRgFjH0785407854eucas1p1H;
 Wed, 13 May 2020 13:33:24 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id FB.D5.61286.427FBBE5; Wed, 13
 May 2020 14:33:24 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133323eucas1p1519f5901d2a4ee85b781fcc36e9601f7~OmchAzpyr2351423514eucas1p1e;
 Wed, 13 May 2020 13:33:23 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133323eusmtrp10172f55b09fa88e4e962360e4035a246~OmchAHACf1050610506eusmtrp1h;
 Wed, 13 May 2020 13:33:23 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-89-5ebbf724c6de
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id BF.47.07950.327FBBE5; Wed, 13
 May 2020 14:33:23 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133323eusmtip16dd11117bccd96d7b870b4e361de6129~OmcgSp9Av0693306933eusmtip1N;
 Wed, 13 May 2020 13:33:23 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 36/38] samples: vfio-mdev/mbochs: fix common struct
 sg_table related issues
Date: Wed, 13 May 2020 15:32:43 +0200
Message-Id: <20200513133245.6408-36-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRzGeXcuOy5Pnabgi0XS0MgolxR6RMtCPxxSog+BEKWuPKjpvOw4
 TSFamRVTlyahmZqYoum8tmZoeSudpZmpmddqaBcFzbxikbbtaH37vc//eXj+78tLIGIdZk+E
 R8WxiihZpAQXofqO1Z4DjiuNgQfrnwnp9J5XAro2pxqj1/WZCD2w9AOnH1W0C+jCZk86724s
 revKB/TigFFA100MYnR/Qx5OV74cF9Ktc5PYMZLRFmgB83y5EGXqlz9jzKdUg4B5XHyFGV2b
 QJisoVLANA6rcCY9eRZnNLpywCzU7Tq15YzIK4SNDI9nFdKjwaKwOVUHHmMUX2pSr2AqMLRN
 DawISB2GbzsaUDUQEWKqDEDN12HAHxYBbJyoxs0uMbUA4Id7bpuJd92ZQt5UCuCgdgHhTaZE
 WruPmXHKFapn1JawLZUCYGe6tTmAUIMCOPNnFjMPbKhg2F3ZLjQzSjlBo0FrYZI6Aq+maIR8
 mwOsqGmxFFiZ9OmxZpTXm4Sw8D7Jsy+8XXsT49kGTht0G9mdsCsrzXI3SCUDaOypFPKHNAD7
 r+UA3uUJx3p+mVYlTOs5w+oGKS8fh9/XZ1GzDKmtcGhmu1lGTHhHn43wMglv3RDz7j0w11D1
 r7a1tw/hmYFF+qmNx3oBYElOAZIBHHL/lxUCUA7sWCUnD2U51yg2wYWTyTllVKjLhWh5HTD9
 pa41w/xTsNR3vg1QBJBYk/RIY6AYk8VzifI2AAlEYkuerDZJZIgsMYlVRAcplJEs1wZ2EKjE
 jjxUNHVOTIXK4tgIlo1hFZtTAWFlrwJ2MSspfWpdgPe2Ip94Zzf6Y2cpuBjB/Xbxl/bimQEt
 vW7eSbspqV/o5GvdqKEk/qej/k1lnWeNJtVPOuK/JBStFjx0yC/2SKqNPZu57p4aNMoNP/AY
 VZ52KXNwytqvRqtOXM4p8bV9r1//In8yn6Fq+TaeUER2el3P7l1yd98rQbkwmes+RMHJ/gIq
 KpNhRwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xu7rK33fHGUyYq2fRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9tMWdqocWW03MZLb5cechksenxNVaLy7vmsFmsPXKX3eLg
 hyesDrwea+atYfTY+20Bi8f2bw9YPe53H2fy2Lyk3uP2v8fMHpNvLGf02H2zgc2jt/kdm0ff
 llWMHp83yQVwR+nZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJal
 FunbJehlfGg4xlbwUKhiX9d31gbGG/xdjJwcEgImEhfPTGTvYuTiEBJYyihxas4EVoiEjMTJ
 aQ1QtrDEn2tdbBBFnxglNp1+xQ6SYBMwlOh6C5EQEehklJjW/REswSxwj0li7zo/EFtYIE7i
 0K0+JhCbRUBV4uHxNWA1vAK2Eo2tfewQG+QlVm84wAxicwLFX93ZzwJiCwnkS+xdvI9tAiPf
 AkaGVYwiqaXFuem5xUZ6xYm5xaV56XrJ+bmbGIGRsu3Yzy07GLveBR9iFOBgVOLhtbi1O06I
 NbGsuDL3EKMEB7OSCK/feqAQb0piZVVqUX58UWlOavEhRlOgoyYyS4km5wOjOK8k3tDU0NzC
 0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA+M0pa8bnhzbMbOm4AFTgdZ+9dam
 VLsem4M/q0U/OCiZTbbPm3K+yuCF3cyoZqFv/b//PK3LcP6hlGVSHplUPnFPgwOv6pK9KYIv
 WPWyLmU4ikxd6vRWQSE2mvWbWmLkhLhb+2xkA1+mrcuTYxXZzJ+1VPbT4mUtL47FSu85cUho
 WcNFjktNXkosxRmJhlrMRcWJAIhhNxSqAgAA
X-CMS-MailID: 20200513133323eucas1p1519f5901d2a4ee85b781fcc36e9601f7
X-Msg-Generator: CA
X-RootMTR: 20200513133323eucas1p1519f5901d2a4ee85b781fcc36e9601f7
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133323eucas1p1519f5901d2a4ee85b781fcc36e9601f7
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133323eucas1p1519f5901d2a4ee85b781fcc36e9601f7@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063327_816406_4B190F30 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
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
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
---
 samples/vfio-mdev/mbochs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/samples/vfio-mdev/mbochs.c b/samples/vfio-mdev/mbochs.c
index 3cc5e59..e030689 100644
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
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
