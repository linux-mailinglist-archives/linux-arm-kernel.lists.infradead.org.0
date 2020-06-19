Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86804200717
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:45:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yC0baFMZNVfFaAc0QFMHaGColNFxhYJEDx5r4j26RVs=; b=kepAHAc1DVOFis8o2cCibY2Tep
	DmGuS8Dh+MHAJ0DM7Jcly2BNK+XuB1rCOPf1pPJog9mcKuEcNp9vPLnX+KAHB82i55s9dGhGm6nN0
	Ci9XDd8yfHavEX6Ii5Nxy2en8yQJvXXjGhNMTWcQ73ve9LbsDTnUu9sKc5JEH0Mp06E3CxQFkoxCH
	VbGQV5ocS8QawwEWTC1MfSYJEui0K/ZHpjePWPb21Y+rhWxjQjaS3nei/eREJs4KVzNkJhL/jB9l+
	rkQdGp0g+daojPCbY0pMvRuGAuFTIk/iFkZqg4D/8PWX5aQt3kLdMwhbF3cfvqUjYH3GQegqeJIFE
	ZY+G2lMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEW3-0005sX-Lo; Fri, 19 Jun 2020 10:44:59 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEOU-0005IY-Ma
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:37:12 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103709euoutp01ccd72fe3b581d6bf6dea69e6a5bdbdbb~Z66MkCO6L1896418964euoutp01E
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 10:37:09 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103709euoutp01ccd72fe3b581d6bf6dea69e6a5bdbdbb~Z66MkCO6L1896418964euoutp01E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563029;
 bh=JYSuV/X7Iq6Np2NNRKIL4EU8XZWM2woWhDUr1+VfApo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=imFDpD0mfOjAwu7LhzDF3dK25XcCTCsX+MNxwallHxAZ0U3nK3t4n2DCJewyvdYgA
 V6zUuxYkiV4KjSEjzZHCAUkI/ADBGMFoRsnDIhlSxRpDGf92pbKu89CeFUvK12SrN2
 pGXyKxUsKYadbyCiNh74SiZITe++mfW1fHqA596M=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103708eucas1p25d569a3ec93e3c5820c85efc4a2a9704~Z66MU8EqH1691016910eucas1p2A;
 Fri, 19 Jun 2020 10:37:08 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 99.9D.05997.4559CEE5; Fri, 19
 Jun 2020 11:37:08 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103708eucas1p230ca99e915e759bc0e93cd844c91b311~Z66MCvAPT2888828888eucas1p2p;
 Fri, 19 Jun 2020 10:37:08 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103708eusmtrp1d5e2caf48e4b7e049f4152b025863c12~Z66MCGLp40949709497eusmtrp1d;
 Fri, 19 Jun 2020 10:37:08 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-f7-5eec9554b36b
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A1.1B.06017.4559CEE5; Fri, 19
 Jun 2020 11:37:08 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103707eusmtip28e525a8905d6ccea6dc0ac791343f768~Z66LbZHa70244902449eusmtip2q;
 Fri, 19 Jun 2020 10:37:07 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 23/36] drm: vmwgfx: fix common struct sg_table related
 issues
Date: Fri, 19 Jun 2020 12:36:23 +0200
Message-Id: <20200619103636.11974-24-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGKsWRmVeSWpSXmKPExsWy7djP87ohU9/EGXw8aWzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVq8OXKM0eLyrjlsFmuP3GW3OPjhCavF
 6k5HB16PNfPWMHrs/baAxWP7twesHve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObRt2UVo8fn
 TXIe7+a/ZQvgjuKySUnNySxLLdK3S+DKaG5uYC+YIF7xufcLSwPjIuEuRk4OCQETibN7drF2
 MXJxCAmsYJRYt+8JlPOFUeLEj2Y2COczo0TD48/sMC2X7u2HqlrOKLFy+x2Elr0L17CCVLEJ
 GEp0ve1iA7FFBFqBZvXygBQxC/xlkrj0eBJYkbBAkMSvPZ1AYzk4WARUJfr3gh3FK2An8fzh
 WSaIbfISqzccYAaxOYHir1sOgi2TEDjELjH7yFMWiCIXiVMHnrNB2MISr45vgTpVRuL05B4W
 iIZmRomH59ayQzg9jBKXm2YwQlRZS9w594sN5ApmAU2J9bv0IcKOEhsvLmYGCUsI8EnceCsI
 EmYGMidtmw4V5pXoaBOCqFaTmHV8HdzagxcuMUPYHhJvN9xihATQRGAwvlrHOoFRfhbCsgWM
 jKsYxVNLi3PTU4uN8lLL9YoTc4tL89L1kvNzNzECU9Ppf8e/7GDc9SfpEKMAB6MSD++LkNdx
 QqyJZcWVuYcYJTiYlUR4nc6ejhPiTUmsrEotyo8vKs1JLT7EKM3BoiTOa7zoZayQQHpiSWp2
 ampBahFMlomDU6qBUXzDgxrL+tsNZbF3ngoHGsnNvWNc3l97f7ennFFX3Vqx94LyNXN/B8Zk
 W0aKXTcSb1N4yNqWFF1mc4Q7Nbk7vjvaJmDmlun7FmqVmu8LVpyptmOec8S0aa0yl4pme3vr
 ztyiualVvKmo76Jr6E2VvNnpfFcjH9TMXeRtwMq749PcWYbP9ZiVWIozEg21mIuKEwESs3Y4
 SQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsVy+t/xe7ohU9/EGWz5oWTRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVq8OXKM0eLyrjlsFmuP3GW3OPjhCavF
 6k5HB16PNfPWMHrs/baAxWP7twesHve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObRt2UVo8fn
 TXIe7+a/ZQvgjtKzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxL
 LdK3S9DLaG5uYC+YIF7xufcLSwPjIuEuRk4OCQETiUv39rN2MXJxCAksZZQ4/+c4K0RCRuLk
 tAYoW1jiz7UuNoiiT4wSB49OAEuwCRhKdL2FSIgIdDJKTOv+yA6SYBZoZpY4/7IWxBYWCJD4
 fOQ1UJyDg0VAVaJ/L9hmXgE7iecPzzJBLJCXWL3hADOIzQkUf91yEGy+kICtxPIF75knMPIt
 YGRYxSiSWlqcm55bbKRXnJhbXJqXrpecn7uJERgn24793LKDsetd8CFGAQ5GJR7eFyGv44RY
 E8uKK3MPMUpwMCuJ8DqdPR0nxJuSWFmVWpQfX1Sak1p8iNEU6KaJzFKiyfnAGM4riTc0NTS3
 sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cC4qkHoZszCrXx6FiotsSyN85rr
 vrvFyJyboNofei/6rl7Cuztv44JdZ5/1maWT+qVYuGqii6T85yqGDe/r1+y1X9xi0u5RtkNk
 gXHDZ4tJrn8zO5oTOVdUyH6On1Ty6NOCgyy3X0Zx75tgPvGd3r4vC9bMmGo6TZ5rr8uLRUtu
 6LE4KCYwdVorsRRnJBpqMRcVJwIAJj6XtakCAAA=
X-CMS-MailID: 20200619103708eucas1p230ca99e915e759bc0e93cd844c91b311
X-Msg-Generator: CA
X-RootMTR: 20200619103708eucas1p230ca99e915e759bc0e93cd844c91b311
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103708eucas1p230ca99e915e759bc0e93cd844c91b311
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103708eucas1p230ca99e915e759bc0e93cd844c91b311@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033710_899347_E1088768 
X-CRM114-Status: GOOD (  14.61  )
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
 David Airlie <airlied@linux.ie>, Roland Scheidegger <sroland@vmware.com>,
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
 drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c b/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c
index bf0bc4697959..861c383c9780 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c
@@ -362,8 +362,7 @@ static void vmw_ttm_unmap_from_dma(struct vmw_ttm_tt *vmw_tt)
 {
 	struct device *dev = vmw_tt->dev_priv->dev->dev;
 
-	dma_unmap_sg(dev, vmw_tt->sgt.sgl, vmw_tt->sgt.nents,
-		DMA_BIDIRECTIONAL);
+	dma_unmap_sgtable(dev, &vmw_tt->sgt, DMA_BIDIRECTIONAL, 0);
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
+	return dma_map_sgtable(dev, &vmw_tt->sgt, DMA_BIDIRECTIONAL, 0);
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
