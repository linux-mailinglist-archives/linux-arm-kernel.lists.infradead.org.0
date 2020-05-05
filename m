Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5E11C515C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 10:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fF78EksFkJtl0YJqhtWnHcH6yQw+VJF8QpQIz8TUwbM=; b=by1HG72cfEzcXrkEmU3hZdfSGN
	4fdPhCAQT3izeh+Z3FVrSXVVKQd1j4J9+TkgdNVdEearKVnBbAf7zG4nKpsS2ki7XhOQFlJk02z0F
	9qGI4lzUzIFS9sMxQzZjute78CYP6MMMWD3wOzzj1o/CkMuTvCgVrg8OVUdiHObsX612+JbrLhKwL
	ujIVbjIgMMVKo5kGxqqNWUWPzI62pMuhP5VI1FG7qIkNgRAaxWLFIcqUANeEzIVSp0LCgwNrbt3qQ
	CDh5NgmbWzOOaDLG+eRs2LvqKKE0f75t7piElnSjzULLXgcl9wPtv8tAhaW/gw8cf04L6GUg1E0jz
	5H17Xj7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtKR-0000Tf-4R; Tue, 05 May 2020 08:53:27 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtDs-0000dh-5l
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 08:46:42 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084638euoutp01c5480aef79f440348f1f8c3c60f5b854~MFX3IiT7D0319103191euoutp015
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  5 May 2020 08:46:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084638euoutp01c5480aef79f440348f1f8c3c60f5b854~MFX3IiT7D0319103191euoutp015
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588668398;
 bh=IYleu1TD92dIEWVtvs80X8f4Hh3zY8IGoKg3d/K8K5Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jRuuBaalKiD4DX2IGTa8cxnoXFXe3YHgUYZydy7VPXLpKjuJp0QPpm1z2w62k3ghn
 czLHPhMB/dgRPYevjGu2rzsst0COdTh4/LmGZszX7AyXGircLBVhZlfOCGfkEUjT5I
 NVID7tYOQUxEwAg3U8s0Bxj//TqT475NPoPDEDwg=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200505084638eucas1p2f64e6e9e159f32f6a5075d0f6fe56f6d~MFX22A1302337523375eucas1p2A;
 Tue,  5 May 2020 08:46:38 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 8B.CF.61286.EE721BE5; Tue,  5
 May 2020 09:46:38 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084637eucas1p2c6d4b880698e8db97a8a9468692befe1~MFX2ekOHW1058410584eucas1p26;
 Tue,  5 May 2020 08:46:37 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084637eusmtrp10bd85c1ae40dc41b984d18a142bc75ac~MFX2d2rLe0969509695eusmtrp1D;
 Tue,  5 May 2020 08:46:37 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-bd-5eb127ee01b8
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 70.24.08375.DE721BE5; Tue,  5
 May 2020 09:46:37 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084637eusmtip141ccbb722e7764196913fe16c0e77997~MFX15Hfo30686606866eusmtip1O;
 Tue,  5 May 2020 08:46:37 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 23/25] rapidio: fix common struct sg_table related issues
Date: Tue,  5 May 2020 10:46:12 +0200
Message-Id: <20200505084614.30424-23-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURSGvTOd6bQwOBQSrkUhKVEjRpbowyQoLvFhTHwwPhg0EagygrEt
 0AIC0YALRmohFFBI3dAoSymyyKIsURBathRDRUEhgiUSCRQEZNEIMhnAt+/85/z3Pzm5BCpp
 wKTERVUcq1bJFTJcLKg1L1n3OHZWhgYUZhN0hrUDob8Z+1G6Mr8co1dq9Sj94dcUTpeUtiF0
 wZsgeu7DCEJX2T9itK3+AU6XtQ4J6bs9CyjdPD2KHSIZ0yMTYJrmCwTMa8OQkNFN3MSYuvlh
 jPl6x4IwL5+lMF+W7SiT018EmIaBVJzJrDYCZrbK64TzGfH+CFZxMYFV+weHi6NKyvRIzMDm
 RGPHe0EqyCa1QERAah+0P+xEtUBMSKhiAEeL0hG+mAOw/ZoD8MUsgAZ9Dli35P19gvGNIgCN
 5nxswzJzP0vITeFUINROanGO3am01bcynDlGKQcCW2d9OXajjkNdbgnGsYDaDhduTqwyQZBU
 MDTVKfgwb1ha8RblWLQq23sHcS4LUlYhfFRvWtvoKPxTnC7k2Q2OW6rXeCvsytEJeMMNAEes
 ZUK+0AFou56/5g6Cg9bfOJeMUrtgeb0/Lx+G5oxPAk6GlAvsn3Tl93eB2bV5KC+T8PYtCT+9
 AxosLzZim9/3ojwzcGB0Eufv0wZgdWOXMAt4G/6HFQBgBB5svEYZyWoCVexlP41cqYlXRfqd
 j1ZWgdUv1bVsmXkFfvWeawEUAWTOZMhseagEkydokpQtABKozJ0sXKwIlZAR8qRkVh0dpo5X
 sJoW4EkIZB7k3qc/zkqoSHkce4llY1j1ehchRNJUkHY6V7psqEECpizG/oJ3WZFOGfknF50W
 leHHbLHTxiM9rpUhK+pun7jdeF8MXS8VdXvKXMY6pVUHyfHG2APft91P2rJpJibM4WU2xw43
 6bW24SV9YtqFku4+YcSpz95jRlOEqKUh4Pm9K/YaWebj9p8Y2WhL9mlN2X1VN+awygSaKHmg
 L6rWyP8BKu1GI04DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xu7pv1TfGGez/qWPRe+4kk8WjVTeY
 LTbOWM9q8X/bRGaLK1/fs1msXH2UyWLBfmuLL1ceMllsenyN1eLyrjlsFmuP3GW3mHr+O7PF
 wQ9PWB14PdbMW8PosffbAhaPnbPusnv0vGlh9dj+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJexsq1E5kKbvJXrDp5gaWBcRJvFyMnh4SAicT0vwtZuxi5OIQEljJKdF49
 wgKRkJE4Oa2BFcIWlvhzrYsNougTo8T19ulMIAk2AUOJrrcQCRGBTkaJad0f2UEcZoFvTBKT
 lt5iA6kSFvCR6JmyEmwUi4CqxPeWN0A2BwevgJ3Emu05EBvkJVZvOMAMYnMChR9fugPWKiRQ
 KPHh/HfWCYx8CxgZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgRGzbZjPzfvYLy0MfgQowAH
 oxIPb8Tn9XFCrIllxZW5hxglOJiVRHiX/dgQJ8SbklhZlVqUH19UmpNafIjRFOimicxSosn5
 wIjOK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAKC9wImTvmqdq
 Nscb4zNXJJnoSZze5/Sp9sWs13vCzu732OT2WH3ZlD3M73YeOhycIV/gdLHzc9fXtBmHP69M
 untffKl6a7JX46etvcrcznymB9g72s5JHvR4+/wXr87v23MdHIwYf1tVGpwJW7vOMM6pfet7
 U4PMFoMaoweRSrdvmTy/n2ejpcRSnJFoqMVcVJwIAEZ4Vb+wAgAA
X-CMS-MailID: 20200505084637eucas1p2c6d4b880698e8db97a8a9468692befe1
X-Msg-Generator: CA
X-RootMTR: 20200505084637eucas1p2c6d4b880698e8db97a8a9468692befe1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084637eucas1p2c6d4b880698e8db97a8a9468692befe1
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084637eucas1p2c6d4b880698e8db97a8a9468692befe1@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_014640_357733_9DB90092 
X-CRM114-Status: GOOD (  14.53  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The Documentation/DMA-API-HOWTO.txt states that dma_map_sg returns the
numer of the created entries in the DMA address space. However the
subsequent calls to dma_sync_sg_for_{device,cpu} and dma_unmap_sg must be
called with the original number of the entries passed to dma_map_sg. The
sg_table->nents in turn holds the result of the dma_map_sg call as stated
in include/linux/scatterlist.h. A common mistake was to ignore a result
of the dma_map_sg function and don't use the sg_table->orig_nents at all.

To avoid such issues, lets use common dma-mapping wrappers operating
directly on the struct sg_table objects and adjust references to the
nents and orig_nents respectively.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v3 00/25] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread: https://lkml.org/lkml/2020/5/5/187
---
 drivers/rapidio/devices/rio_mport_cdev.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/rapidio/devices/rio_mport_cdev.c b/drivers/rapidio/devices/rio_mport_cdev.c
index 4029637..df7dba8 100644
--- a/drivers/rapidio/devices/rio_mport_cdev.c
+++ b/drivers/rapidio/devices/rio_mport_cdev.c
@@ -574,8 +574,7 @@ static void dma_req_free(struct kref *ref)
 	struct mport_cdev_priv *priv = req->priv;
 	unsigned int i;
 
-	dma_unmap_sg(req->dmach->device->dev,
-		     req->sgt.sgl, req->sgt.nents, req->dir);
+	dma_unmap_sgtable(req->dmach->device->dev, req->sgt, req->dir);
 	sg_free_table(&req->sgt);
 	if (req->page_list) {
 		for (i = 0; i < req->nr_pages; i++)
@@ -927,9 +926,8 @@ static int do_dma_request(struct mport_dma_req *req,
 				xfer->offset, xfer->length);
 	}
 
-	nents = dma_map_sg(chan->device->dev,
-			   req->sgt.sgl, req->sgt.nents, dir);
-	if (nents == 0) {
+	ret = dma_map_sgtable(chan->device->dev, req->sgt, dir);
+	if (ret) {
 		rmcd_error("Failed to map SG list");
 		ret = -EFAULT;
 		goto err_pg;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
