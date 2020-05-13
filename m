Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2FA1D1582
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MF6cliRODgUcC3ERibLzhgBbNENA38TY1vicKciTf5o=; b=KCU5ve7YkLKwKLujf7X9p2BHnY
	4iKl9Sn74rg81AneZ6hYBUFeQNatGCZke3CGabQZlpVqrToEJUG6wyyXjB/mFHhjlql5hu1Hi+Fht
	cqyTDzfhkytbiHrRzLGlDHPVjbcyQqXvnwKNHl0gF1EK4SgsS7eEfNYfHeEn5rWEwQ22hf4viQi69
	mQlqt6cRjEC+XZ0VHOkYKPi1E0O/N3usWNJlubq0fXaQ3ITN9MpFgIVt57VuS7CRACSJzdEMzn+yu
	GJynJQObB9l/RPjfmuNnPM/jPmGVEaFMFmUT+zxSzGpjDUm2ORf1s3k24oy96ixZvGHlUZIVzVIjS
	qXdhphVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrY3-0005eL-9I; Wed, 13 May 2020 13:35:47 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVQ-0001OC-1A
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:08 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133302euoutp0149b88057e4162f2b11a29f9ab97233b5~OmcNTHvnU2196321963euoutp01b
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133302euoutp0149b88057e4162f2b11a29f9ab97233b5~OmcNTHvnU2196321963euoutp01b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376782;
 bh=Y3Ut1ToGHUzDuHty6PKvQvWWCbWEQibieCAmIQZoNYY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Zna+bq8f4F1yKKhjhy6IiKT5tqvfOylN6Dd+VCCoc4cc0VYJ/OUvdXL5UZg4eW4qE
 MkATLuCZh/xvTkTvw1FZao3M0x3Pjbm9pI6bm1NhOHz2zHuF3idsqc1MdHQG9yeSVM
 ZBdpkiuopSsDwOh4uzRdmmxgYF94e+LTbzmGaVtE=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133302eucas1p2d79ae1c80ae6d1dba237b1505033373b~OmcM65dzq0359403594eucas1p2T;
 Wed, 13 May 2020 13:33:02 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id DF.C8.60698.E07FBBE5; Wed, 13
 May 2020 14:33:02 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133301eucas1p28c059d25e488ed5ec10feb8f414a1af2~OmcMooeKf2972529725eucas1p26;
 Wed, 13 May 2020 13:33:01 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133301eusmtrp11a8f6059fe0dd13159bee8d29db5dee6~OmcMn5gIh1011910119eusmtrp1y;
 Wed, 13 May 2020 13:33:01 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-b8-5ebbf70edf04
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id B3.37.07950.D07FBBE5; Wed, 13
 May 2020 14:33:01 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133301eusmtip1afa7a07517696ee6065475ad21a65ac3~OmcL-x7aM0693306933eusmtip17;
 Wed, 13 May 2020 13:33:01 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 08/38] drm: armada: fix common struct sg_table related
 issues
Date: Wed, 13 May 2020 15:32:15 +0200
Message-Id: <20200513133245.6408-8-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfSxVYRzHe845997j5tpxKU9U5m610bwN22leqq21kz968Yc/VHRwhsV1
 dy/CWq5ECCOzMCFZyut1s1t5u2/lZsr7hCimbJiX8rZaqXsd9N/n932+3+f727MHR4VKji0e
 JY5jpGI6WsTlY6qun33OFpttwW5KlQWZ29uNkM3FTRzyr6oAJYfXl7nk87q3CFmp9ibXhqcR
 UjkzwiGHWsu4pK6oA5ANbyZ5pHblK+e0OVVfXg+ooZEBlOrYqMSolxtTHOrLfQNCvahOoT5t
 zaBU4WgNoNrG5Fwqr6UWUKvKo5f2B/F9wpnoqARG6up3nR/5aFCJSHIOJS4YUoEcjFtnAzMc
 Ep6wJX8MzQZ8XEg8A7C17x6XHdYAVKvuIiaXkFgFUN4YtJso38jaMdUA+EFXwdtLbD4u2E5w
 CXeYvZjNNbE1kQ7gu1xzkwklNAjMWFrYNlkRAfB9jgIzMUYcg5mzGp6JBYQPnCxRoGydPaxT
 aLbZjPCF8xNqzHQRJDp5sLJEi7Cms7C6aJ7LshWcN7TwWD4MewpzdgJpAE73NvDYIQfAoTvF
 gHV5w4neX8Y0btzPETa1urLyGZg18BQzyZCwgKOLliYZNeID1UOUlQUwM0PIuo/DUkPjXq22
 f3Bnfwqqqyo47AvpAdSq+9F8YF/6v6wSgFpgw8TLYiIYmYeYuekio2Nk8eIIl7DYGCUw/qSe
 LcP6K9D5O1QHCByIzAVTH9uChRw6QZYUowMQR0XWggtNRkkQTiclM9LYEGl8NCPTATscE9kI
 PKrmrgmJCDqOucEwEka6e4rgZrZyYOkeR7a/tm3lL59XJHZp/LfaQ+0DLjZ4+nv5epR5VU2K
 6+0CVujxcuUfidstxzwnsVCb9jngambghF7fnfIt+VLfj33TB5ynHMSSk70pWLzDKfURW8V3
 hVVeSEH65Sup55aKZjNg+3xzmH7h9twG9SREfZA+0b1c5Tfd1y6XBIowWSTt7oRKZfQ/Tb2g
 k0UDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xu7q833fHGVxptrDoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZnFo6l5Gi7VH7rJbHPzwhNWB
 x2PNvDWMHpevXWT22PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HNo2/LKkaP
 z5vkArij9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S
 9DLmXtrEVNAjWfH6eCNjA+MtkS5GTg4JAROJed862boYuTiEBJYySqya94kRIiEjcXJaAyuE
 LSzx51oXVNEnRomuhinMIAk2AUOJrrcQCRGBTkaJad0f2UEcZoFjTBILf31kAakSFgiQ+Ntx
 gw3EZhFQleh4doAdxOYVsJG4O3MDM8QKeYnVGw6A2ZwCthKv7uwH6xUSyJfYu3gf2wRGvgWM
 DKsYRVJLi3PTc4uN9IoTc4tL89L1kvNzNzECY2TbsZ9bdjB2vQs+xCjAwajEw2txa3ecEGti
 WXFl7iFGCQ5mJRFev/VAId6UxMqq1KL8+KLSnNTiQ4ymQEdNZJYSTc4Hxm9eSbyhqaG5haWh
 ubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQZGr+nS7pItDGyZTr/fMJxsNlnvU/rh
 2edzvLXGD0WuqF38e/G+3upTj+qcZctk7FXOZRidqXrlntzRI7WF24Z7YQrD7xN7pXmDAy+2
 Rrcyb311SeJk+QG+fT+OXH5ht7WWx+fDx/ZlG9TqTmhvd1Ddy5L9VUpmv1R39k/1JuFw8xxu
 34/tNb+UWIozEg21mIuKEwFSansSpwIAAA==
X-CMS-MailID: 20200513133301eucas1p28c059d25e488ed5ec10feb8f414a1af2
X-Msg-Generator: CA
X-RootMTR: 20200513133301eucas1p28c059d25e488ed5ec10feb8f414a1af2
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133301eucas1p28c059d25e488ed5ec10feb8f414a1af2
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133301eucas1p28c059d25e488ed5ec10feb8f414a1af2@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063304_209225_4EBF11D3 
X-CRM114-Status: GOOD (  14.38  )
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Russell King <linux@armlinux.org.uk>,
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
 drivers/gpu/drm/armada/armada_gem.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_gem.c b/drivers/gpu/drm/armada/armada_gem.c
index 976685f..0d61da5 100644
--- a/drivers/gpu/drm/armada/armada_gem.c
+++ b/drivers/gpu/drm/armada/armada_gem.c
@@ -395,7 +395,7 @@ int armada_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 
 		mapping = dobj->obj.filp->f_mapping;
 
-		for_each_sg(sgt->sgl, sg, count, i) {
+		for_each_sgtable_sg(sgt, sg, i) {
 			struct page *page;
 
 			page = shmem_read_mapping_page(mapping, i);
@@ -407,8 +407,8 @@ int armada_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 			sg_set_page(sg, page, PAGE_SIZE, 0);
 		}
 
-		if (dma_map_sg(attach->dev, sgt->sgl, sgt->nents, dir) == 0) {
-			num = sgt->nents;
+		if (dma_map_sgtable(attach->dev, sgt, dir, 0)) {
+			num = count;
 			goto release;
 		}
 	} else if (dobj->page) {
@@ -418,7 +418,7 @@ int armada_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 
 		sg_set_page(sgt->sgl, dobj->page, dobj->obj.size, 0);
 
-		if (dma_map_sg(attach->dev, sgt->sgl, sgt->nents, dir) == 0)
+		if (dma_map_sgtable(attach->dev, sgt, dir, 0))
 			goto free_table;
 	} else if (dobj->linear) {
 		/* Single contiguous physical region - no struct page */
@@ -449,11 +449,11 @@ static void armada_gem_prime_unmap_dma_buf(struct dma_buf_attachment *attach,
 	int i;
 
 	if (!dobj->linear)
-		dma_unmap_sg(attach->dev, sgt->sgl, sgt->nents, dir);
+		dma_unmap_sgtable(attach->dev, sgt, dir, 0);
 
 	if (dobj->obj.filp) {
 		struct scatterlist *sg;
-		for_each_sg(sgt->sgl, sg, sgt->nents, i)
+		for_each_sgtable_sg(sgt, sg, i)
 			put_page(sg_page(sg));
 	}
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
