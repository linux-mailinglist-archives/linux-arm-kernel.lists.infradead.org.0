Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1941FF7F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Dxtt0kCaNekcLPt7kRKydDnXI7SrbBnucIkRC8suf2I=; b=XE6onGKcti4XDH3Y8bd01tyWtR
	Q+KpHGxX5lnAw2/xqN4FVaxfuCfRNTr2rxXMcqcl5DChZ0nC+XlUT0ytt/WhL0XniyHUjpPTI7EQI
	67W98rV5CvPNtm/qFgidJ4yInCJMU/OQGc/xo67I5iJDkspaO6VnaJCp0w4E5MbrZxSoUCMNt18d7
	1Ugq+5iHvi3wCg++xrHrZfrrcvGg6eTrQyG92XcvYkB3ABu9l8i+cY41qGsl6acM0R9/LmWcUWXbj
	QEMwXMjJtnbK3CEz81w4ujhHEB4idJWUebjNeygOtZKaw5DZK3jMrdIdfF+UkTn/qsF23a5i2dwCW
	T48mpUXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwnM-0005UC-Eo; Thu, 18 Jun 2020 15:49:40 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwec-0004Qm-TY
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:40 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154037euoutp02ad26d1f21c922296f37d6c3ea659c5dd~ZrZ4Eevni1314513145euoutp02f
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154037euoutp02ad26d1f21c922296f37d6c3ea659c5dd~ZrZ4Eevni1314513145euoutp02f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494837;
 bh=OvCxUp7SgRwr5TUCDUwK7Z+A0eC9Tek8fa3ny1UHTu8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UkBISgi6YiNUIQdqFSI66G8LwRBlswfVHP7y03V3tK3e2RWMUSG3rvTZYKNR4aioI
 MYCBwQy3uStCNIuLwI51B8UZuUgqbwlM/EKsfbGmHyU+QFh6Sfq5zOTVKqqCWg4lG1
 OgysHNYAKghKY2wSvJDJ6BtE/cZBIBFKNfn8IPIE=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154037eucas1p294cc10f6a9de9197d871fe4865ba2770~ZrZ3yMloI0608706087eucas1p2i;
 Thu, 18 Jun 2020 15:40:37 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id AF.60.60698.5FA8BEE5; Thu, 18
 Jun 2020 16:40:37 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154036eucas1p2d98ca6915b554409e1f02114657680c0~ZrZ3dLwWS2502725027eucas1p2I;
 Thu, 18 Jun 2020 15:40:36 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154036eusmtrp176da250126154f0fe35847270b22b968~ZrZ3ckvAX2230622306eusmtrp1P;
 Thu, 18 Jun 2020 15:40:36 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-4d-5eeb8af5f443
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C3.F9.07950.4FA8BEE5; Thu, 18
 Jun 2020 16:40:36 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154036eusmtip12d9ee033aebbcd19d8922ddba869445d~ZrZ20Mxgp2806328063eusmtip1J;
 Thu, 18 Jun 2020 15:40:36 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 32/36] rapidio: fix common struct sg_table related issues
Date: Thu, 18 Jun 2020 17:39:53 +0200
Message-Id: <20200618153956.29558-33-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRzGeXfO2c7E6XEKvqgkLBIU1MSCA6bdJA/Rhz6EgpA58+T90uYs
 I1JMpeYUL5m2pIaI5l3n8JZ5S5tuOE3FS2leJpaZlne0sDbPtG+///M+z/v8z+HFEX47ZodH
 xCbQolhhtIBthjZ92NO5bktXgk7nLqFklm6ARS5UTiJkQ1EdRv5tykXIse2fbLKiqo9FKjq9
 yK2xeRap1I9j5GhbMZus6Z3hkAVDuwjZ/WsRu8Cjql9VA+rdjgKlWuUzHEr2Iw2jmnfmMGo2
 U82iGkuTqc8HeoTKnywH1NupFDaVraoE1KbyxHXzQLNzoXR0RCItcvcJNgtX7bYh8SP8+92q
 HE4KGLCUAi4OiTNw+HklJgVmOJ94A6B8qNM0bAGo0ZehzLAJYN/vUeQoMjD10eQqB3B1W8M6
 juj39lGji014QOmqlG1kGyIdwP4scyMjxBoL9m66GNmauAYnXi4BI6PEKbikNF7ExXmED2xY
 Wze1OcKq+q5D5hp0rTr9sBkSGg6ca6kAjMkXvm/J4jBsDb+rVSZ2gNp8GcoEHgM4r6vhMIMM
 wNHUIlPaC07r9g2r4ob1nGFdmzsjX4T768vAKEPCAk6uWjEfYAHzmgoRRubBJxl8xu0E5era
 49ru4RHT/hScyxwDzA/KBXCuT4nmAEf5/zIFAJXAlpaIY8JosWcsfc9NLIwRS2LD3G7HxSiB
 4U1pD9TbLaDjT0gPIHAgMOd9u7ESxMeEieKkmB4AcURgw7s0qA3i80KFSQ9oUdwtkSSaFvcA
 exwV2PI8S5Zv8okwYQIdRdPxtOjolIVz7VJAKjcyzfIg2bWgSBIsXJbkzHSpvDtKN+9mbzxM
 3B+/sujcib7ImDqLPWsuVNs7Vmd+Ov90IqG9urFk6U7Uo/76WSoyD2gUC8W+/r5VHY5u0zNd
 J1N7ra7WfAnwk3b7hzgEfN1TybasEwL9LnvTtlreRt7r2ukyJ5aPbXFA4KCsVYCKw4UeLohI
 LPwH0u7Izk8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xu7pful7HGay9oW3Re+4kk8WjVTeY
 LTbOWM9q8X/bRGaLK1/fs1msXH2UyWLBfmuLL1ceMllsenyN1eLyrjlsFmuP3GW3mHr+O7PF
 wQ9PWB14PdbMW8PosffbAhaPnbPusnv0vGlh9dj+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJexpbvu5gLLglVHNwygb2B8SR/FyMnh4SAicTJmxdZuxi5OIQEljJKbJy8
 ihkiISNxcloDK4QtLPHnWhcbRNEnoKIlTWwgCTYBQ4mutxAJEYFORolp3R/ZQRxmgW9MEpOW
 3gKrEhbwkbg++xkjiM0ioCrxbNMpJhCbV8BOYuO7j1Dr5CVWbzgAZnMCxU8fbwVbLSRgK/H8
 QxvbBEa+BYwMqxhFUkuLc9Nzi430ihNzi0vz0vWS83M3MQLjZtuxn1t2MHa9Cz7EKMDBqMTD
 +yLkdZwQa2JZcWXuIUYJDmYlEV6ns6fjhHhTEiurUovy44tKc1KLDzGaAh01kVlKNDkfGNN5
 JfGGpobmFpaG5sbmxmYWSuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoYmb766F24/vuazAm1
 GRM2srGtXWxc+nrCDttODfXr7yq+/lI+dvL2pJDbP42uCs06/kxWXeR0h/exjAsisZ69bLMX
 6Py3DmYI+5A7OUD27sbtdU3+50Nebix4YuK4XSHrYvudMxUOvlm6vs8zap6Z7GJa+rv5aofS
 cw7v19dbHr3i3uUV4fl5jxJLcUaioRZzUXEiADA6F3WxAgAA
X-CMS-MailID: 20200618154036eucas1p2d98ca6915b554409e1f02114657680c0
X-Msg-Generator: CA
X-RootMTR: 20200618154036eucas1p2d98ca6915b554409e1f02114657680c0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154036eucas1p2d98ca6915b554409e1f02114657680c0
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154036eucas1p2d98ca6915b554409e1f02114657680c0@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084039_187721_641C4ADA 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Alexandre Bounine <alex.bou9@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matt Porter <mporter@kernel.crashing.org>,
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
 drivers/rapidio/devices/rio_mport_cdev.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/rapidio/devices/rio_mport_cdev.c b/drivers/rapidio/devices/rio_mport_cdev.c
index 451608e960a1..a33cc1b6beb2 100644
--- a/drivers/rapidio/devices/rio_mport_cdev.c
+++ b/drivers/rapidio/devices/rio_mport_cdev.c
@@ -573,8 +573,7 @@ static void dma_req_free(struct kref *ref)
 			refcount);
 	struct mport_cdev_priv *priv = req->priv;
 
-	dma_unmap_sg(req->dmach->device->dev,
-		     req->sgt.sgl, req->sgt.nents, req->dir);
+	dma_unmap_sgtable(req->dmach->device->dev, req->sgt, req->dir, 0);
 	sg_free_table(&req->sgt);
 	if (req->page_list) {
 		unpin_user_pages(req->page_list, req->nr_pages);
@@ -930,9 +929,8 @@ rio_dma_transfer(struct file *filp, u32 transfer_mode,
 				xfer->offset, xfer->length);
 	}
 
-	nents = dma_map_sg(chan->device->dev,
-			   req->sgt.sgl, req->sgt.nents, dir);
-	if (nents == 0) {
+	ret = dma_map_sgtable(chan->device->dev, req->sgt, dir, 0);
+	if (ret) {
 		rmcd_error("Failed to map SG list");
 		ret = -EFAULT;
 		goto err_pg;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
