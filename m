Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4D620072C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9T1h3ZIXK63/9VtNKPmdnN9Azdxu8UpSI3INX4aVAoo=; b=JvZknmBBVlB2GUkEGQYNGY9hDd
	5bOsXPl119zwHMY6bdkSsFum6x694CV0OVuyz+RUo5Y5WCHlbPTZwb9LsXQJL7f3eJL0O6aFHIWqQ
	qHmpzNW3xJaPkleGqTYAswnZh6f3Efpn37UXVYgSrQEymFS76iitdgUr6lOhcsGX4hsjXL2jRZfrU
	oQ4TzDT5e+X0APwhYOTvsjb4b6ZDpMIivYyyDlesuo6kBQAnwcWcex7UZUNCufr9/kUAdANFVUG6X
	rV7HgQyYnQY1v4bobRLJpev1PZspq5IjpT6yMSplPpjRlPJ+65n7mH1pr7fwHDZahDKAE0Fi4fxMl
	k+JrjD/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEXg-0001Bt-8K; Fri, 19 Jun 2020 10:46:40 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEOW-0005Kp-7m
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:37:14 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103710euoutp02691c7c950154e4507ba052fb44430b3e~Z66OCC8bg2372823728euoutp02f
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 10:37:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103710euoutp02691c7c950154e4507ba052fb44430b3e~Z66OCC8bg2372823728euoutp02f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563030;
 bh=KttQx/p+NwMYqZeVMMA/mdxDyA5P7MIUmLy+qtaSi8Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RzVwOmNjTGd4ySElcOMb4faJhJt7GwRrHtUfllCqXDfMFPBeXjTNomdOkHtwFXlDv
 QlrspxBexZJDD5Y0yiuW4F+5CDABhZ3NGjA6Q/vuB0e2Xyw8uJhmYNhN5JP+nU8DGd
 6vuqUgeWfloTSbFdFL0fW2UPMDWJFNc1zIaTwU3I=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103710eucas1p1b26b19044fdf0ab23ddf00e8af5dac02~Z66NuxP790706007060eucas1p1v;
 Fri, 19 Jun 2020 10:37:10 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id B6.9C.06318.6559CEE5; Fri, 19
 Jun 2020 11:37:10 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103710eucas1p1873c8ebb37e6717a5864c31d10b50efd~Z66NYik2Q0708007080eucas1p16;
 Fri, 19 Jun 2020 10:37:10 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103710eusmtrp1e00a23e8c33180e37d7e2e5e3c29611b~Z66NXlFAw0949709497eusmtrp1h;
 Fri, 19 Jun 2020 10:37:10 +0000 (GMT)
X-AuditID: cbfec7f5-371ff700000018ae-79-5eec955600b0
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B9.EA.06314.5559CEE5; Fri, 19
 Jun 2020 11:37:09 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103709eusmtip229150f3f49532456da9435edbf1b0eb1~Z66Mp5_mW0244902449eusmtip2r;
 Fri, 19 Jun 2020 10:37:09 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 25/36] xen: gntdev: fix common struct sg_table related
 issues
Date: Fri, 19 Jun 2020 12:36:25 +0200
Message-Id: <20200619103636.11974-26-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMKsWRmVeSWpSXmKPExsWy7djPc7phU9/EGTQ+ErPoPXeSyWLjjPWs
 Fhent7JY/N82kdniytf3bBYrVx9lsliw39pizk0jiy9XHjJZbHp8jdXi8q45bBZrj9xltzj4
 4Qmrxfctk5kc+DzWzFvD6LH32wIWj+3fHrB63O8+zuSxeUm9x+1/j5k9Jt9Yzuhx+MMVFo/d
 NxvYPD4+vcXi0bdlFaPH+i1XWTw+b5IL4I3isklJzcksSy3St0vgylh/4xJLwUmxivdbdrM0
 MG4R6mLk4JAQMJFYspSni5GLQ0hgBaPEk5OLmCGcL4wSzxfuYYdwPjNKbJ3/EijDCdYxc8cZ
 qMRyRol9rc8Y4VoObd/DBlLFJmAo0fW2C8wWEWhllDjRC7aEWaCbWWLq2lWsIAlhgSCJm1dO
 gRWxCKhKbO5ZyQ5i8wrYSdz5fZ4VYp28xOoNB8BWcwLFX7cchIrfY5f4810fwnaRuHz5EhOE
 LSzx6vgWdghbRuL05B4WkMUSAs2MEg/PrWWHcHoYJS43zWCEqLKWuHPuFxsoOJgFNCXW79KH
 hIyjxLb2JAiTT+LGW0GQYmYgc9K26cwQYV6JjjYhiBlqErOOr4PbevDCJWhgeUjsOreIFRI+
 ExklWk81sE1glJ+FsGsBI+MqRvHU0uLc9NRi47zUcr3ixNzi0rx0veT83E2MwKR1+t/xrzsY
 9/1JOsQowMGoxMP7IuR1nBBrYllxZe4hRgkOZiURXqezp+OEeFMSK6tSi/Lji0pzUosPMUpz
 sCiJ8xovehkrJJCeWJKanZpakFoEk2Xi4JRqYLwT/ipGNpPvOOvPqRvf2Om+fMrheqTk+OfG
 C8VibYFHdjT12zinPnt5S9z5gpPui09HrGU2tn/UeelfGLT7f2/Wx1UJe1i93Zz4Juf4H9t4
 0XnOgjrZozxr3wcv5vrRua7b7lkg5x1ZkZ87Z6Vw8PrwVSzXXB2rHTnN7F16wevZ62Iue7w/
 lKXEUpyRaKjFXFScCAAwPjcEVgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xe7qhU9/EGTx5bmnRe+4kk8XGGetZ
 LS5Ob2Wx+L9tIrPFla/v2SxWrj7KZLFgv7XFnJtGFl+uPGSy2PT4GqvF5V1z2CzWHrnLbnHw
 wxNWi+9bJjM58HmsmbeG0WPvtwUsHtu/PWD1uN99nMlj85J6j9v/HjN7TL6xnNHj8IcrLB67
 bzaweXx8eovFo2/LKkaP9Vuusnh83iQXwBulZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqln
 aGwea2VkqqRvZ5OSmpNZllqkb5egl7H+xiWWgpNiFe+37GZpYNwi1MXIySEhYCIxc8cZ9i5G
 Lg4hgaWMEhd+LmWESMhInJzWwAphC0v8udbFBlH0iVHi2KUTbCAJNgFDia63EAkRgU5GiWnd
 H8FGMQtMZpZ4tvo6UxcjB4ewQIBEX2MVSAOLgKrE5p6V7CA2r4CdxJ3f56E2yEus3nCAGcTm
 BIq/bjkIFhcSsJVYvuA98wRGvgWMDKsYRVJLi3PTc4sN9YoTc4tL89L1kvNzNzEC42jbsZ+b
 dzBe2hh8iFGAg1GJh/dFyOs4IdbEsuLK3EOMEhzMSiK8TmdPxwnxpiRWVqUW5ccXleakFh9i
 NAU6aiKzlGhyPjDG80riDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1
 MAYtmJk782PZ2r5F3zsVHNIjv+Yu3Xu89pmp2/9nkfUX1sz6tKHq/P6wz6erXv9b7VFlqM9l
 4nT46qrvrT8vHhLTU3jNlHIgfafeCYFoj0/u7udYuO96SC4qVv/55vWEKb7di+ZOETjhp6Nv
 vzb50zlu4+NFZgyz0iPcC1ZvnXRq6WKeLcDQiVNiKc5INNRiLipOBABev5EouQIAAA==
X-CMS-MailID: 20200619103710eucas1p1873c8ebb37e6717a5864c31d10b50efd
X-Msg-Generator: CA
X-RootMTR: 20200619103710eucas1p1873c8ebb37e6717a5864c31d10b50efd
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103710eucas1p1873c8ebb37e6717a5864c31d10b50efd
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103710eucas1p1873c8ebb37e6717a5864c31d10b50efd@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033712_461310_FD648D19 
X-CRM114-Status: GOOD (  15.42  )
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
Cc: Juergen Gross <jgross@suse.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 xen-devel@lists.xenproject.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
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
Acked-by: Juergen Gross <jgross@suse.com>
---
 drivers/xen/gntdev-dmabuf.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/xen/gntdev-dmabuf.c b/drivers/xen/gntdev-dmabuf.c
index 75d3bb948bf3..ba6cad871568 100644
--- a/drivers/xen/gntdev-dmabuf.c
+++ b/drivers/xen/gntdev-dmabuf.c
@@ -247,10 +247,9 @@ static void dmabuf_exp_ops_detach(struct dma_buf *dma_buf,
 
 		if (sgt) {
 			if (gntdev_dmabuf_attach->dir != DMA_NONE)
-				dma_unmap_sg_attrs(attach->dev, sgt->sgl,
-						   sgt->nents,
-						   gntdev_dmabuf_attach->dir,
-						   DMA_ATTR_SKIP_CPU_SYNC);
+				dma_unmap_sgtable(attach->dev, sgt,
+						  gntdev_dmabuf_attach->dir,
+						  DMA_ATTR_SKIP_CPU_SYNC);
 			sg_free_table(sgt);
 		}
 
@@ -288,8 +287,8 @@ dmabuf_exp_ops_map_dma_buf(struct dma_buf_attachment *attach,
 	sgt = dmabuf_pages_to_sgt(gntdev_dmabuf->pages,
 				  gntdev_dmabuf->nr_pages);
 	if (!IS_ERR(sgt)) {
-		if (!dma_map_sg_attrs(attach->dev, sgt->sgl, sgt->nents, dir,
-				      DMA_ATTR_SKIP_CPU_SYNC)) {
+		if (dma_map_sgtable(attach->dev, sgt, dir,
+				    DMA_ATTR_SKIP_CPU_SYNC)) {
 			sg_free_table(sgt);
 			kfree(sgt);
 			sgt = ERR_PTR(-ENOMEM);
@@ -625,7 +624,7 @@ dmabuf_imp_to_refs(struct gntdev_dmabuf_priv *priv, struct device *dev,
 
 	/* Now convert sgt to array of pages and check for page validity. */
 	i = 0;
-	for_each_sg_page(sgt->sgl, &sg_iter, sgt->nents, 0) {
+	for_each_sgtable_page(sgt, &sg_iter, 0) {
 		struct page *page = sg_page_iter_page(&sg_iter);
 		/*
 		 * Check if page is valid: this can happen if we are given
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
