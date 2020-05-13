Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 781C21D163D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8eLccbCNYoNzt+T7/eqeHseu6q+joRzUDnOyppWJpRw=; b=fkPTrOhEs3hFLyRm0hRAg+Aqx6
	UpjeqdXMgVHrgjv4UwnpUJ9petMw/pr4At5Z6ai1NUFZAHVbQJ8rd1tf4Xim4hi2quLGaUUg+uY2m
	YMhgZI2CbXClzzlPz52tubOOIVsQYDAZZrBn78FbQlRJvUqn7o2BklOoG2p/yiI1VfCGYJCXiNzan
	zIulVvE08M44gfdKbAjQ8gv3hbhZJAfvypGaHJ+d8+1TkZxWRodM85OvInWMso0Dc3QodOwrJqyT/
	76uhDzeRP4/ITx8Rf7weLQL+QM+7LbSdpMSeCF7qFSDgfvc7UrTiacK8hnXIbq3lkWDXx5jWHL9r7
	tC26xrEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrhH-0007ew-S1; Wed, 13 May 2020 13:45:19 +0000
Received: from casper.infradead.org ([90.155.50.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVr-0001qm-6X
 for linux-arm-kernel@bombadil.infradead.org; Wed, 13 May 2020 13:33:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:Content-Type:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=hOzGkgpVRp2q9xhBCeReDI8efbS4p6KRDxcNYVfdqtg=; b=DlhX3j+aNScWeI+h4rdJzH2Oib
 Mumtx5/QQ8Fvn1SQddZr1AL5qtOeoAmoMo2gvTsjN8tq8f6sY+/HgzCejeVPyaZ0692zktwJ+RTG7
 4K/kKwzZrnqd6c+cO0vzjbnTP5RFXtXZQ3g0gtC66Rfc+rnxbN2+j4bje0Zklwa3boLVowRdo2QNm
 TDKb+jptNkzZMpg4odH6Y4RvuEL0sMqvuA7QX7EE3gzf2h9puTmOZ6CyqEBiALSZ6HEQyGxEeeQrj
 pNSJ2vnmmkqN3x5AHsE6lR9tY63cFhH3Y+OqdOyMnhG9gj1FVsMId9QBYp1qPP7mvieTKOi/OQ4IG
 m2a3KA0w==;
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVk-0006UC-5u
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:29 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133323euoutp02b04a6be37924fbcf976d1bd635fe19d1~Omcge17Cw0033500335euoutp02n
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133323euoutp02b04a6be37924fbcf976d1bd635fe19d1~Omcge17Cw0033500335euoutp02n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376803;
 bh=hOzGkgpVRp2q9xhBCeReDI8efbS4p6KRDxcNYVfdqtg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d1QCE1dbOu9qpg2J5H3w2QFe5aAyLvIF/UO3TcglgArXlWv1MlRUbV9oct3H9FLPk
 1Vye7s+r+KLtx54gWEDQk4osqg73tclkx2tTLYvfr9auEPYw3OH56tK+Yqphm90qDi
 v83XRLSFc1l1vBEIvQGGxwVtbrhWcW6nfm9KmwUE=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133322eucas1p2dbe519154c03fde5530af20217ac43de~Omcf9-RMn1009610096eucas1p2Y;
 Wed, 13 May 2020 13:33:22 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 9A.D5.61286.227FBBE5; Wed, 13
 May 2020 14:33:22 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133322eucas1p19b55463a3926b7c1459034f2b02969f8~OmcfkTlCl2350723507eucas1p1I;
 Wed, 13 May 2020 13:33:22 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133322eusmtrp13bf97a83c6a7a5b8cd4399e120fb1623~OmcfjpEg_1050710507eusmtrp1Y;
 Wed, 13 May 2020 13:33:22 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-84-5ebbf722cea0
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 76.2A.08375.227FBBE5; Wed, 13
 May 2020 14:33:22 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133321eusmtip1eb9262652eba999cc1b5ed2ab52d1b40~Omce42SCY0693306933eusmtip1M;
 Wed, 13 May 2020 13:33:21 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 34/38] misc: fastrpc: fix common struct sg_table related
 issues
Date: Wed, 13 May 2020 15:32:41 +0200
Message-Id: <20200513133245.6408-34-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTURzHObu7u9ex5W0KHqwUJiZGqcOCS1oUhN0IIkIDDbWZ1we6Kbtq
 2T+JYrj5Sk0ydSpqWD7STM3U8Jk6hysfmK80tbQUK3y3zNq80/77/j7n8zu/H4eDI6IW1BoP
 lUfRCrk0XMzjcxu6f+lOiDeb/Vymkx3JVJ2GQ/7J7MbIFznVKPm3IQMhh9d/8MiEkmoe+azi
 LYcsanUj14ZnOGTt3AhKDjXl88iqro8Y2f7zM3pOSFUWVALqtz4TUG82irjUq41PKNWqrsSo
 6eQeDvWy9B41sTOHUFmjZYBqHovjUWl15YBarbW5KvDhuwfS4aExtML57E1+SG68HotMF935
 ujWBxoGH5ipghkPiJExefI2oAB8XEU8B7J+fx9hiDcCmgXTAFqsA9mV0Ynstbcokk1UGYIm2
 F9lvGZ4tQo0Wj5BA1bKKZ8yWRCKAvakCo4QQixxYkK/clSwIT5jfWGOQcJxL2MOq1SAjFhJn
 4GzCEoedZgsratoQYzYz8MXJVq7xHkjoMFi80M9jpQtw6ks3wmYLuNhTZ1r1MNRmpZgaEgCc
 0VVhbJEC4FB8DmAtNzip0+9ugRCOsLrJmcXnoWpdzzFiSByAo8sHjRgxxMyGRwiLhTDpvoi1
 j8Lcnuf7Y9vfD5rWoWDXE6XpGTsBrN8c5D4Atrn/hxUBUA6s6GhGFkwzEjl924mRyphoebDT
 rQhZLTD8Ke1Oz0ojWB8M6AAEDsQCITne7CdCpTFMrKwDQBwRWwqvVBuQMFAae5dWRPgrosNp
 pgMcwrliK6Fr8TdfEREsjaLDaDqSVuydcnAz6zhgU/H4e5DttYBVv16vzaqNi14Owa6ppbZY
 UHOYJv/yBwEarWz0sTte4xEbC2e9004PSS75ZjFrfeqggfHrWdpw837obZ5IukTWF2aEZWuW
 7CSeY+7beQteNxQr6nRBWOn4VosDMZE9kjd6PWrK44hmu9DT2t/uVGO22l7v9m5OzGVCpJJj
 iIKR/gOYlM9tTwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xu7pK33fHGXTu5rPoPXeSyeLvpGPs
 FhtnrGe1+L9tIrPFla/v2SyaF69ns1i5+iiTxYL91hZfrjxkstj0+BqrxeVdc9gs1h65y25x
 8MMTVgdejzXz1jB6/P41idFj77cFLB7bvz1g9dg/dw27x/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJexqymX+wF/UIVL37cZm1gnMLfxcjJISFgInGgs4O9i5GLQ0hgKaPE6iXH
 2SASMhInpzWwQtjCEn+udbFBFH1ilDi39TM7SIJNwFCi6y1EQkSgk1FiWvdHsFHMAp+YJI5c
 Ow02SlggSGLulElMXYwcHCwCqhJrP6eBhHkFbCUeNb9mgtggL7F6wwFmEJsTKP7qzn4WEFtI
 IF9i7+J9bBMY+RYwMqxiFEktLc5Nzy021CtOzC0uzUvXS87P3cQIjJptx35u3sF4aWPwIUYB
 DkYlHl6LW7vjhFgTy4orcw8xSnAwK4nw+q0HCvGmJFZWpRblxxeV5qQWH2I0BbppIrOUaHI+
 MKLzSuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwGlhOrvJftebF
 40Qrl6Jn7UtSFiheqSgUNH0pcI57z5MPJdEFXQuWhnc59W6oTjv1WVdUuqWzaJXGHJ3tM5Pf
 PtvadmdVMYvus5Y1NStyDpb8u+jqaM3naZr2xFD3weSFp9JbOJP/Sb6v2LFF9ymratK9q6L3
 fkxUyPV97eX7k8V+n2/fM76ZSizFGYmGWsxFxYkAFhuED7ACAAA=
X-CMS-MailID: 20200513133322eucas1p19b55463a3926b7c1459034f2b02969f8
X-Msg-Generator: CA
X-RootMTR: 20200513133322eucas1p19b55463a3926b7c1459034f2b02969f8
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133322eucas1p19b55463a3926b7c1459034f2b02969f8
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133322eucas1p19b55463a3926b7c1459034f2b02969f8@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_143324_704307_6CCED52D 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -7.3 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-7.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
---
 drivers/misc/fastrpc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
index e3e085e..0b5b927 100644
--- a/drivers/misc/fastrpc.c
+++ b/drivers/misc/fastrpc.c
@@ -518,7 +518,7 @@ static struct fastrpc_invoke_ctx *fastrpc_context_alloc(
 
 	table = &a->sgt;
 
-	if (!dma_map_sg(attachment->dev, table->sgl, table->nents, dir))
+	if (!dma_map_sgtable(attachment->dev, table, dir, 0))
 		return ERR_PTR(-ENOMEM);
 
 	return table;
@@ -528,7 +528,7 @@ static void fastrpc_unmap_dma_buf(struct dma_buf_attachment *attach,
 				  struct sg_table *table,
 				  enum dma_data_direction dir)
 {
-	dma_unmap_sg(attach->dev, table->sgl, table->nents, dir);
+	dma_unmap_sgtable(attach->dev, table, dir, 0);
 }
 
 static void fastrpc_release(struct dma_buf *dmabuf)
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
