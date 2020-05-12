Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAD41CF135
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t+ES/2a+rBj55caqVDhqtDRwq6zxntRdEmWBHhrNOpU=; b=QGAPkMJSLyTQ9Mkm+kJmwih6qL
	aZIhCA804bUiuzWhfF5xOVBFtsZJI8cn/3zNzm/YbApe6TiipFbkJOLJT/bpgyAlwE2oRuwO2KrVm
	HsLx79Wj6G8JS70zfSq9gpsw+b1Q3nslirpnntDsgw12bv2ujKxonNmUcdrAKK7geYUSU6WcmvT1+
	uzCATe7abDsM1/5NR7qXs4CJM1rhdBGDoM21wrBlQAm1Ti3oGVWz1rhuT1XNN+3oa9V/fJgftdv1a
	XwsNPzaPOnT6MjI1TAJ6I1YVlfFfRLmh80xp9vac9wDypabh1GESSJs6IzYdsXeJtIV+6GiTtnGqG
	DQTdWhtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQwi-0003dg-4u; Tue, 12 May 2020 09:11:28 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQnA-0002Uf-FB
 for linux-arm-kernel@bombadil.infradead.org; Tue, 12 May 2020 09:01:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:Content-Type:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=BArEnwlZV6yXcbVCJZm10TtidFE3Koqpc+04N057bYI=; b=nLhdnqueT//WC/rfla7FHCcq6b
 RciivdvkW7ATh7nDa8FDTrT5Q5387ANRZ2NvzgpBYo5Xyov1R9OToXowsT6kpOmBupFS/kW68GIAw
 ZgJZPEbWsdlSMPeUoh+DvVd3OO7bNqld0R9PX65+iz8XrEKQ/mVPF4J56FIkuAy6P/V2YJ2PSxnk+
 uNUh4237Tb1MRA7toiQ9EzfFDM/5ePTqGbnM/Nb7531+hqvmUmnU2InOa52y2LwD04YwbGrkyjglQ
 PfCzrzK9IDPGsSABjkCCyxpp0lG8vlDyC8n8JB1wEmuq5oxoZhO+ZF15pHYzFRO4zUqYoqwJtNAYP
 a4Hkr4FA==;
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQn5-0004WV-Gb
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:35 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090128euoutp029ece98f78f75ef38874c92ca374d5f49~OPF0Cggim0523105231euoutp02h
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090128euoutp029ece98f78f75ef38874c92ca374d5f49~OPF0Cggim0523105231euoutp02h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274088;
 bh=BArEnwlZV6yXcbVCJZm10TtidFE3Koqpc+04N057bYI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TCJGbQsufbbvzgUKGojWZ/NMRdRmmO6fayzjE+MXhJE9ckxDKLXldC5LsS0NwCe92
 G/Vku+kfIyLI0TiXMJSLmZ/SE2RQ2Wqb6WOP7Uf0EYjtAAXMPa+AxL/qAyGFqv4Z8p
 lEgSM3LeHEX3XAQw7Kkz8JLexVt0eAoMBstuTl5c=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090128eucas1p27fe6fe11596863115806d57d4e3a87ea~OPFzxT5Bd1372813728eucas1p2e;
 Tue, 12 May 2020 09:01:28 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id A6.32.60679.8E56ABE5; Tue, 12
 May 2020 10:01:28 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090128eucas1p2cf31bfdca3b096585ba9f2741ef08ce0~OPFzb9Eku2110421104eucas1p2O;
 Tue, 12 May 2020 09:01:28 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090128eusmtrp1a81d3b11ff6134e7f5d1e37fb26ae025~OPFzbKWPm0183401834eusmtrp12;
 Tue, 12 May 2020 09:01:28 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-d9-5eba65e8f74e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 68.03.07950.7E56ABE5; Tue, 12
 May 2020 10:01:27 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090127eusmtip14b6982a0ff8e934c7db2200583cbc90a~OPFy6Z7r31181011810eusmtip1v;
 Tue, 12 May 2020 09:01:27 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 34/38] misc: fastrpc: fix common struct sg_table related
 issues
Date: Tue, 12 May 2020 11:00:54 +0200
Message-Id: <20200512090058.14910-34-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTURzn3Hu3XcXZbS520EhaKJXko/xwwdKEPlxKeuEnwcfUi1pOZddH
 huHwEbp8TvOVmqig+cjyrUNsQzebMJ+JPURFkTVTAx/gI2vzan77/X+P/++cw8FRwQDHHo+K
 iadlMZJoMdca69bujl0z0v1B7vVGIZlr+IyQf5RaHvmxrI1D/u0uRMnp7Q0umV7XxiXfNQ8j
 ZM2gF7k1vYiQ7UszHHKqv5JLtg7N8Uj172XObT7VUt0CqP09JaAGdmowqmdngUMNVrXwqPlX
 OoTqqE+lvh8uoVTRbAOgVF/lXCqvswlQm+0XHtoEWN8Mp6OjEmmZm3eIdeSIqQuNyxY80zYW
 Y3JQcEYBrHBIeMLCfCOqANa4gGgE8I1eCdhhC8CpsTkOO2wCmNW5zT2JZKfVI6zQAGDVQsZp
 ZGW5C7W4uIQHVKwpjhJCIhPAkVwbiwklTAisrszmWAQ7wh9qB9Q8C8YIJ7gv/4JYMJ/whvKd
 oeM6R9j84dPRUiszP//2ALMsgoSeBzdrizHWdAeO/2o6DthBk66Tx+LzcLQo5ziQDuCioZXH
 Djnm66WVAdblBX8Y9sxp3Hy+K7Ct342lfeFaq55noSFhC2fXzlpo1AyV3aUoS/Nh1ksB63aG
 Fbr3/2vV45MoiymoUJmO33EYQE2vBisAjhWnZTUANAERncBII2jmegyd5MpIpExCTIRrWKy0
 HZg/1eihbqsX9B+EagCBA7EN3929L0jAkSQyyVINgDgqFvIzoswUP1yS/JyWxQbLEqJpRgMc
 cEws4t+o/RkoICIk8fRTmo6jZScqglvZy0FOtKQndap8KWo0ySe/yku/futSx2O/8gn/dbnU
 eFFIuQRezsusVaka9nZX933vMaLcRr/clJmJ8uIHxklRsPSbwKE0xFDqXOLiFZCz2uetU50L
 9Yi975xCrvhKN+Kzwmwb/FdeiOaRoQTlvM/4ob71ruG1Z8kjpyemwGD1cJ0YYyIlHldRGSP5
 B2crIfpQAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xu7ovUnfFGezgs+g9d5LJ4u+kY+wW
 G2esZ7X4v20is8WVr+/ZLJoXr2ezWLn6KJPFgv3WFl+uPGSy2PT4GqvF5V1z2CzWHrnLbnHw
 wxNWB16PNfPWMHr8/jWJ0WPvtwUsHtu/PWD12D93DbvH/e7jTB6bl9R73P73mNlj8o3ljB67
 bzawefRtWcXo8XmTXABPlJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamSvp1N
 SmpOZllqkb5dgl7GiVdbmQs6hSqOrZjC0sA4gb+LkZNDQsBEorNpCVMXIxeHkMBSRonfZ66w
 QiRkJE5Oa4CyhSX+XOtigyj6xCjx/eVNNpAEm4ChRNdbiISIQCejxLTuj+wgDrPAJyaJI9dO
 g1UJCwRJvFw7jwXEZhFQlfjdcJUJxOYVsJNo+HaEDWKFvMTqDQeYQWxOoPj9+X/A6oUECiUe
 XX3LMoGRbwEjwypGkdTS4tz03GIjveLE3OLSvHS95PzcTYzAqNl27OeWHYxd74IPMQpwMCrx
 8HYY7YwTYk0sK67MPcQowcGsJMLbkgkU4k1JrKxKLcqPLyrNSS0+xGgKdNREZinR5HxgROeV
 xBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamBs9csTUfGN9CrfMj38
 kdii24cSUt3Dt3tcMbl6tn7VszyObX4Cz658XTdBMM9wjc0vmznKyrmJr1+4THm/eG6rdpvt
 tFlCnE2nVy5bvK7OjKdmGaOi4snK0wIVTd8+Ks8qkrhlO7PO5onfqaSXf7cEPl55t1316+Kb
 9Qu1So1fsxTtVrjlFdmoxFKckWioxVxUnAgAqkItvLACAAA=
X-CMS-MailID: 20200512090128eucas1p2cf31bfdca3b096585ba9f2741ef08ce0
X-Msg-Generator: CA
X-RootMTR: 20200512090128eucas1p2cf31bfdca3b096585ba9f2741ef08ce0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090128eucas1p2cf31bfdca3b096585ba9f2741ef08ce0
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090128eucas1p2cf31bfdca3b096585ba9f2741ef08ce0@eucas1p2.samsung.com>
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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
---
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
---
 drivers/misc/fastrpc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
index e3e085e..0a3e02aa 100644
--- a/drivers/misc/fastrpc.c
+++ b/drivers/misc/fastrpc.c
@@ -518,7 +518,7 @@ static struct fastrpc_invoke_ctx *fastrpc_context_alloc(
 
 	table = &a->sgt;
 
-	if (!dma_map_sg(attachment->dev, table->sgl, table->nents, dir))
+	if (!dma_map_sgtable(attachment->dev, table, dir))
 		return ERR_PTR(-ENOMEM);
 
 	return table;
@@ -528,7 +528,7 @@ static void fastrpc_unmap_dma_buf(struct dma_buf_attachment *attach,
 				  struct sg_table *table,
 				  enum dma_data_direction dir)
 {
-	dma_unmap_sg(attach->dev, table->sgl, table->nents, dir);
+	dma_unmap_sgtable(attach->dev, table, dir);
 }
 
 static void fastrpc_release(struct dma_buf *dmabuf)
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
