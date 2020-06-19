Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC96200739
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RTPL1oTSLLICf7j1pwkR8qtMNCHvFMOehFsvjMYTmh4=; b=fJ9pl118bsicSAhTXzVLpzCG7P
	vT1W8s2SK7TxFXETn3HyJrxtV7EqMfpp4U4/3Qc0ArRzYQRR1Qa92WFfq3Vx5dO8gvtmCVqYXeeBh
	b95a25PIO5Dco8qaLTdJoPoJf2pF9xbnkidLklZft9l6jPXK9evx6lTLIX0QAbbJqavc7q+tvHmKT
	+1ouzr06fMR9zMNqTATXFtPmHlPsC15VuYcarztnIhQ0TcQ2xr0GhyAtrr86ltfj3HHhAWeNnvOTr
	E9wJlKTwizE5Xfwg4SvMs5NxVl//ySd2NO6YWZG9EINc2pRjEWV14gdINMxueKcTxsYPst3AJkz5r
	Ob8Rf4pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEZA-0002d5-TJ; Fri, 19 Jun 2020 10:48:12 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEOc-0005RD-Na
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:37:21 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103717euoutp01d113fa7e388a42b9736500ac681f45a8~Z66T94fi-1900119001euoutp01L
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 10:37:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103717euoutp01d113fa7e388a42b9736500ac681f45a8~Z66T94fi-1900119001euoutp01L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563037;
 bh=mzLIyVTZpzYfnKpa4gX5M1szjJk3Wzuil/t51kYHhjU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OgTkirsddpsb6k4dUnD21tj8nHE5nc9lB4wxDqLGxxLTxWioLXMEE0HdzVYxYd1jy
 bY1101TBRZ4M+qShbyUL0gYrbMSjVT9lrIZ/jQSBMuum+crCCspzE2EubeMXXT1D6q
 mi9y/rYTVvIbSaEl/KoXbQQaO1wL0Nxn/NHObi0s=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103716eucas1p162a56c5b084f03b07a1e1f00fe2e53d7~Z66TgIjHe0704707047eucas1p1C;
 Fri, 19 Jun 2020 10:37:16 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 20.AD.05997.C559CEE5; Fri, 19
 Jun 2020 11:37:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103716eucas1p1b7c50f7b421fb29829050b9355e3e644~Z66THeSaL0706007060eucas1p14;
 Fri, 19 Jun 2020 10:37:16 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103716eusmtrp19beba6ed65a603a1c08b57cb53ea06b1~Z66TG3meQ1007310073eusmtrp1I;
 Fri, 19 Jun 2020 10:37:16 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-12-5eec955c60c9
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C9.1B.06017.C559CEE5; Fri, 19
 Jun 2020 11:37:16 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103715eusmtip298b27b150d32f56203c96b474d54e50a~Z66Sd2Ghv0111401114eusmtip2P;
 Fri, 19 Jun 2020 10:37:15 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 33/36] rapidio: fix common struct sg_table related issues
Date: Fri, 19 Jun 2020 12:36:33 +0200
Message-Id: <20200619103636.11974-34-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRjm27nsuJydpuCHVsIiQclrEYc0yZA43SCoP5qXlh7vOtucZf5w
 6LRYGi0RdUhoCJrXvKSls1SsKeYUNZ2ppBmaec15wZma85j9e573fZ73efj4CETQhNkQEbHx
 jCRWFC3EeWj9p40eJ//suUBX/Ywdlanr5FDfS/UIVZ1bhVE79SqEGlhdxKlXZR85VMEHD2pl
 YIJD1UwOYlR/Yz5OVbSPcansnnWEal36gV3g0+UvygHdvFaA0u/UY1w6Y06B0Q1r4xj97YmW
 Q9cWJdMj25MInaUvBnTTsBynn9aVAtpQc/yGuR/PM4SJjkhgJC5ed3jhQ9OdnLgBwYNajRyT
 g67DSmBGQPIMXDcMcZSARwjIEgCbc8b3yQqAhpIanCUGAEe38rj/LLUNGxi7KAZQ2dENDixr
 hTOoSYWTblA5r8RN2IpMA7Aj09yEEXKBA9sNjiZsSV6DlcbNvasoeRLmbc7sXiUIPukF6zQo
 G2YHy163ICZstjueVbTuBUNSx4XbKW0IK/KBut40jMWW8Je2br/pUdiVlYGyhlQAJ3QVXJZk
 ANifkgtYlQcc1RlxUzJCOsCqRhd27A3fpGv2CkHSAurnj7D9LeDz+hyEHfPh43QBq7aHam3l
 QWxrb99+NRp+nZzdfywVgLmFy/gzYKf+H1YAQCmwZmTSmDBG6h7L3HeWimKkstgw52BxTA3Y
 /VJd29qVt6Dxz902QBJAaM7/eWs2UICJEqSJMW0AEojQin+xuytQwA8RJT5kJOIgiSyakbYB
 WwIVWvNPv5wJEJBhongmimHiGMm/LYcws5GDattB76lpK1wV1PIZr31/0789ams1NGl5RDzc
 qR5yvnxOvLy0Q/ks+vbhc4WeqCzclTjrpWpeKZMrkpNcnL4Izes3ppPpSHWrOO56ZLBDYWL0
 lXn7qUcJRQG/85e5J3gL7saGdn3CvaRL7orQqw3MqfOpt/0OtRwzNvsqHFI0QlQaLnJzRCRS
 0V/Z4WygTgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xe7oxU9/EGaw9y27Re+4kk8WjVTeY
 LTbOWM9q8X/bRGaLK1/fs1msXH2UyWLBfmuLL1ceMllsenyN1eLyrjlsFmuP3GW3mHr+O7PF
 wQ9PWB14PdbMW8PosffbAhaPnbPusnv0vGlh9dj+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJexvXnJ5kKrghVbN7TwNrAeJq/i5GTQ0LARGLz9p+sXYxcHEICSxklFrxc
 xQKRkJE4Oa2BFcIWlvhzrYsNougTo8STqbeYQBJsAoYSXW8hEiICnYwS07o/soM4zALfmCQm
 Lb3FBlIlLOAjse7Xb3YQm0VAVWLm75dAYzk4eAXsJLbsgdomL7F6wwFmEJsTKPy65SDYZiEB
 W4nlC94zT2DkW8DIsIpRJLW0ODc9t9hIrzgxt7g0L10vOT93EyMwarYd+7llB2PXu+BDjAIc
 jEo8vC9CXscJsSaWFVfmHmKU4GBWEuF1Ons6Tog3JbGyKrUoP76oNCe1+BCjKdBNE5mlRJPz
 gRGdVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qB8ZDlDLNfl/Vb
 LtQHx95bLzf16aGWb5W6a0WSlVZslUqR8pv/5Hb7bqcoizWCWifeHBMJX20W/aD/fPwttzCt
 hOkxTxr+vbvBzjXntFpFSe2isLlnij9dsXbeHzhH6Olnx/7Luf2fuB3uHe2pnFD1p/pG/rSI
 G9bF2+frBTws8N81jU2HRzakQImlOCPRUIu5qDgRAL+/YhqwAgAA
X-CMS-MailID: 20200619103716eucas1p1b7c50f7b421fb29829050b9355e3e644
X-Msg-Generator: CA
X-RootMTR: 20200619103716eucas1p1b7c50f7b421fb29829050b9355e3e644
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103716eucas1p1b7c50f7b421fb29829050b9355e3e644
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103716eucas1p1b7c50f7b421fb29829050b9355e3e644@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033718_999259_6FA29679 
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
index 451608e960a1..98c572627c8c 100644
--- a/drivers/rapidio/devices/rio_mport_cdev.c
+++ b/drivers/rapidio/devices/rio_mport_cdev.c
@@ -573,8 +573,7 @@ static void dma_req_free(struct kref *ref)
 			refcount);
 	struct mport_cdev_priv *priv = req->priv;
 
-	dma_unmap_sg(req->dmach->device->dev,
-		     req->sgt.sgl, req->sgt.nents, req->dir);
+	dma_unmap_sgtable(req->dmach->device->dev, &req->sgt, req->dir, 0);
 	sg_free_table(&req->sgt);
 	if (req->page_list) {
 		unpin_user_pages(req->page_list, req->nr_pages);
@@ -930,9 +929,8 @@ rio_dma_transfer(struct file *filp, u32 transfer_mode,
 				xfer->offset, xfer->length);
 	}
 
-	nents = dma_map_sg(chan->device->dev,
-			   req->sgt.sgl, req->sgt.nents, dir);
-	if (nents == 0) {
+	ret = dma_map_sgtable(chan->device->dev, &req->sgt, dir, 0);
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
