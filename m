Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A148C1CF134
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=24NzpaK/Ckp9CqxeS52CQDAuwEt5RIkQkWgpRJHVWT4=; b=MWfQRS7eOJsUGB9YN8FzE18/L6
	snePykCU0nR/U87bjvnzQCwtDGdq+tP01yc4pniXUMr0Qw9L/hSpyMvTFNMZVBKAUKeE+7G8B+JJT
	g/nNaHuu9kVHtX7a9p7nXnGHf6bcrCtNcJdbRWNf4lvLsuy/3Zbh+GmXenfJwoNvA3LtkF544W0nY
	R68S1XtXWfQoX9wlIdRAn0VR7V+mqPgGgg5SKmG9LW1bnGMTspBF5uXTBYA077uc0aa9xdgXziLR+
	x0S0xNAKaGnqXlPwWRJi+eckvhba2EbIQhD6ssJ2e96tjsZ+6wpiTW9nc52rgoUY50OjVCgi5QZfT
	lDHi3Aug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQwS-0003Lz-JT; Tue, 12 May 2020 09:11:12 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQmz-0002Jg-F1
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:34 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090123euoutp025e38e57a7be68fcca30ce576153abd0f~OPFu7p4Zp0455404554euoutp02L
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090123euoutp025e38e57a7be68fcca30ce576153abd0f~OPFu7p4Zp0455404554euoutp02L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274083;
 bh=4XCLDjcTmVzIeuA5W79fINov16Hwxa67M3axrKJlg5U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Qqt9va7KXcvyHsvHFH7dczvmNz5WtokcU2BHawMRahRjGAkN1cga2UfogO4gSvrB6
 IMvbd9GiunVJs9TjCRJEltLwz+4jTjQ9D3gHn4fTs0DMAsgeNKs6oMGvVy54PBGS+Z
 vvuNtzWLoSYs84SH+IuAjToQIxNknHqA/7mWbr1I=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090122eucas1p261bda11ecce3f0986a08dd7a66c45daf~OPFuqO2qs2664426644eucas1p2e;
 Tue, 12 May 2020 09:01:22 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id F0.32.60679.2E56ABE5; Tue, 12
 May 2020 10:01:22 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090122eucas1p155db33deb51b4bbc34c0a012e4a7361d~OPFuY736x1182811828eucas1p1H;
 Tue, 12 May 2020 09:01:22 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090122eusmtrp1cda9124151a91853171a8b98db77cc03~OPFuYOyYf0188101881eusmtrp1U;
 Tue, 12 May 2020 09:01:22 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-c2-5eba65e22014
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E1.03.07950.2E56ABE5; Tue, 12
 May 2020 10:01:22 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090121eusmtip12477076dd64f37cd14e4b1fc4ce7b421~OPFtwX24C1181011810eusmtip1q;
 Tue, 12 May 2020 09:01:21 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 26/38] drm: vmwgfx: fix common struct sg_table related
 issues
Date: Tue, 12 May 2020 11:00:46 +0200
Message-Id: <20200512090058.14910-26-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKKsWRmVeSWpSXmKPExsWy7djP87qPUnfFGcx/bGLRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVq8OXKM0eLyrjlsFmuP3GW3OPjhCavF
 51PH2Bx4PdbMW8PosffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR9+WVYwe
 nzfJebyb/5YtgDuKyyYlNSezLLVI3y6BK+PVnXfMBackKq7/lWxgPCbSxcjJISFgItH7dxtT
 FyMXh5DACkaJ5ysbGCGcL4wSx7eeY4NwPjNKtO9oBSrjAGtparaFiC9nlNh/6wsTXEfrhE1s
 IHPZBAwlut52gdkiAq2MEid6eUCKmAX+MUlM/juLCSQhLBAk0bRiK1gRi4CqxOuvl1hANvAK
 2EncvCoBcZ+8xOoNB5hBbE6g8P35f1hA5kgIHGOXaL14hRmiyEXib083G4QtLPHq+BZ2CFtG
 4vTkHqiGZkaJh+fWskM4PYwSl5tmMEJUWUvcOfeLDWQzs4CmxPpd+hBhR4n/e7cxQ7zMJ3Hj
 rSBImBnInLRtOlSYV6KjTQiiWk1i1vF1cGsPXrgEdZqHxIXlP9ghAXQUGFpnnzJPYJSfhbBs
 ASPjKkbx1NLi3PTUYqO81HK94sTc4tK8dL3k/NxNjMDEdPrf8S87GHf9STrEKMDBqMTDa2Cw
 M06INbGsuDL3EKMEB7OSCG9LJlCINyWxsiq1KD++qDQntfgQozQHi5I4r/Gil7FCAumJJanZ
 qakFqUUwWSYOTqkGxu0rL01OXKw/u7Pg9zTVgJ5YpQCticcev3tbaPyh+NPvE2vWmb5+Njfp
 kHF1XO/pt5xB5euFub8qLP37funWBIPMulkhdrkf2vxay/3fGHO0pMxXXnjh/cLL2+Kfclx9
 +/7Zf8tTvm+ii/ldZlol9FYxzRVsPG7HusBzlu259avvLj2oNEfL9L4SS3FGoqEWc1FxIgBg
 0/iQSAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsVy+t/xu7qPUnfFGUzqkbPoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC3eHDnGaHF51xw2i7VH7rJbHPzwhNXi
 86ljbA68HmvmrWH02PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HNo2/LKkaP
 z5vkPN7Nf8sWwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl/HqzjvmglMSFdf/SjYwHhPpYuTgkBAwkWhqtu1i5OIQEljKKNFwq4Wpi5ETKC4j
 cXJaAyuELSzx51oXG0TRJ0aJO/sfMYIk2AQMJbreQiREBDoZJaZ1f2QHcZgFWpgl9r75xwZS
 JSwQIPF54h2wUSwCqhKvv15iAVnNK2AncfOqBMQGeYnVGw4wg9icQOH78/+wgNhCAoUSj66+
 ZZnAyLeAkWEVo0hqaXFuem6xkV5xYm5xaV66XnJ+7iZGYJxsO/Zzyw7GrnfBhxgFOBiVeHg7
 jHbGCbEmlhVX5h5ilOBgVhLhbckECvGmJFZWpRblxxeV5qQWH2I0BbppIrOUaHI+MIbzSuIN
 TQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwnmV5v4r/mf1+p/j319+n
 bZnOlp++b1m+6VTH+0a2m302vnn/eOc05b8Sh2z5pk/8EjFrvsnadGPP25WHFusVH2BSNY8x
 OvBigw67oP/cNH2elacuhwur/Iro3CLic0Oq3qVIsWjdL6GoUP25M/eYT9jAbV48+esdiwcu
 6TesNmjEP5POP1x3WImlOCPRUIu5qDgRAJndOeSpAgAA
X-CMS-MailID: 20200512090122eucas1p155db33deb51b4bbc34c0a012e4a7361d
X-Msg-Generator: CA
X-RootMTR: 20200512090122eucas1p155db33deb51b4bbc34c0a012e4a7361d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090122eucas1p155db33deb51b4bbc34c0a012e4a7361d
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090122eucas1p155db33deb51b4bbc34c0a012e4a7361d@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020126_381828_C72CA508 
X-CRM114-Status: GOOD (  15.94  )
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
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
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
