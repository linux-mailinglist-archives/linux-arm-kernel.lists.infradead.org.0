Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC7A1FF873
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 18:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lJeLUnsOVbVIR1soIM9K/1PTvsfr2jYJVKuldfnFCnI=; b=XCjvmIFcgxMiU2LPBz1izSHXcv
	Kw4rIB5kx2DTR3MkpiJtgCzbMheuKZZK28Quii8T4XxqgxZlLSirjLmHWX36TnqoHvblq6s+wS+Dx
	gMPgRsxelJPpUSKShMraepRcWJuPNi+NLrdTnbn/xxovbHsssX7WoiNB76gHpiO1tMB0biWdVuLIs
	SE7tIqZ415ZKo/HSKP55CT5dCL3lK24vP9x2jP/6YmkIdg0geWWixejou8/x7PRG/p0GNZI2TljF/
	wvo0/lVjRnN4Ffor9ECMUAwSKQ0Ga078JtYvqwArr9eqJKHz8qbt0aoK1tqAxvUlCI8HC4ppOj37b
	M12AVo4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwyp-0005Az-VX; Thu, 18 Jun 2020 16:01:31 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwyh-00056t-Dk
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 16:01:25 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618160121euoutp0197fa387a22f8212b7ed51a4994a12d64~Zrr_r6Uyp0238302383euoutp01x
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 16:01:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618160121euoutp0197fa387a22f8212b7ed51a4994a12d64~Zrr_r6Uyp0238302383euoutp01x
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592496081;
 bh=Q6nmdHxiLcADSmmOczfWQ1kCLD9EfF+zt7aqe3afHuk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FaM4R6h/1wQ2+FHQCJnS7+FathW2IZKJjpwutCurOEg6h45s7KLfV7Gpv51DBCUup
 J7rCIfYl4j/tVGm0/T1Xyaf7YJXYSpd8kl9PaWTVA0yImIhugXhe481W8IxYVS49g9
 xmbuS//EvQcHWZjeWKifhd7Ag7HEsXetzGhrbmEU=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618160121eucas1p25152fd9c21e6f800fe9f095d79056daa~Zrr_Wk0ia2423724237eucas1p2B;
 Thu, 18 Jun 2020 16:01:21 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 5A.52.60698.1DF8BEE5; Thu, 18
 Jun 2020 17:01:21 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618160120eucas1p20b771c3b6dc06549c7f4a4d569c3e0ec~Zrr98WwZc1444214442eucas1p2T;
 Thu, 18 Jun 2020 16:01:20 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618160120eusmtrp19b1f7bc59472a1a799da9bbde8edea03~Zrr97nA460376803768eusmtrp1W;
 Thu, 18 Jun 2020 16:01:20 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-8e-5eeb8fd1154a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B4.E0.08375.0DF8BEE5; Thu, 18
 Jun 2020 17:01:20 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200618160119eusmtip2b6913e0a93ea45b7293f1adb592e0866~Zrr9SQydu3011030110eusmtip21;
 Thu, 18 Jun 2020 16:01:19 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 36/36] drm: xen: fix common struct sg_table related issues
Date: Thu, 18 Jun 2020 18:01:11 +0200
Message-Id: <20200618160111.3045-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTURzm7O5uV3Nym8IOKgoLgwQ1M9YFH1go3b+0PwIha7rypqKbsunK
 CvKRj5aPfKGZ1Qxf+X6smZqllm6yWpoPtAw1g3w0lJzTLDS3a/bf932/7zvfOT8OhnBfog5Y
 jCSRkkpEcXyWNVM99EvvPpq/Ijyu2kKJXP0wg2gra0GJXXUBQoxvrLKIZw2DDEL52ocwjs8z
 iPaFSZQY665gEU1vv7CJtYZVlOhf+4YSm6oiRgCHbHzcCMiZ6i5A9pqUTLLTNIeSs/c0DLKj
 6jb5eWcBIYumagH5Zm2cSfZMp7DIPFU9INfbnc/ZXLD2jaTiYuSU1NM/wjq6V5HFSMizvV46
 mg5SgOGQAmAYxE/Cd/VBCmCNcfE6AOc3qtg0MQKYP6hk0WQdwK9LKXvEypLo/D0F6EEtgN+7
 PjAPIj/qjYjZxcK9oMKgsCTs8QwAtbk2ZhOCbzGgvkbLNg/s8BCYWlJnCTBxV1ij1FkwB/eF
 LTMrKF3nAhta+yy6Fe4PdZoM1HwQxPVsmKldQmhTIOxcN7FpbAeXNap97AR1RTlMOpC+9zx9
 E5smOQCOpZUB2uUDZ/TbLPM+EPwYbOn2pOXTsHioD6XXZAunDIfNMrIHC9WlCC1zYHYml3Yf
 heWa5oPa/pGP+1cjobaydH+pBQAaFidZ94FL+f8yJQD1gEclycRRlMxbQl3zkInEsiRJlMeV
 eHE72PtTuh3Nxgvw6s/lAYBjgG/DWTy/IuSiIrksWTwAIIbw7Tln3uuEXE6kKPkGJY0PlybF
 UbIB4Igx+TyO99OlS1w8SpRIxVJUAiX9N2VgVg4pICIQGAOC56Sb7md9gyrzhKkNwlO7bab+
 R/JbMcHO8k9d2ppQTmx/XLzT8JGb8rCHjuH5RE/qT9OD6cxWQUsejwirdK14oveLHLnTszzh
 1pw9LxE8LRS0dcwuq65GxyanPbe7q145kbo25BfCq1ZOFWQ184p3xKG9E9uCkovhlXymLFrk
 5YZIZaK/qYRK+08DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xe7oX+l/HGeyYpGbRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFh9Wv2e1OPjhCavF
 9y2TmRx4PdbMW8PocWfpTkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj8MfrrB4
 7L7ZwObRt2UVo8fnTXIBPFF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2
 NimpOZllqUX6dgl6GXu72pkK+vgqpl9sZmxgfMvdxcjJISFgIrH99w3GLkYuDiGBpYwSt5c1
 sEMkZCROTmtghbCFJf5c62KDKPrEKPHt7iYmkASbgKFE11uIhIhAJ6PEtO6P7CAOs8A/JokT
 e7eDVQkL+Eocf7iXDcRmEVCVWLbgNDOIzStgI7H+zmuoFfISqzccAItzCthJnD7eChYXErCV
 eP6hjW0CI98CRoZVjCKppcW56bnFhnrFibnFpXnpesn5uZsYgXGz7djPzTsYL20MPsQowMGo
 xMP7IuR1nBBrYllxZe4hRgkOZiURXqezp+OEeFMSK6tSi/Lji0pzUosPMZoCHTWRWUo0OR8Y
 03kl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhjbVuhEzl6UNU/i
 eVq+64SElclV7bJ3Tc+FbT302Gmj5pdNVZMWxnnM1GZQS9qTyyGvEbT84ctn70XF3Kdv7w6t
 eXWAb1t1TMrcDsfgtwvLvlx+qJwk/kDq7fs3T95/v6cY7mZef3vDTRmp4AlTj7a8EwlL/fmS
 71BQFp9t6wdTQWWbmLrqy5OVWIozEg21mIuKEwG7wX5nsQIAAA==
X-CMS-MailID: 20200618160120eucas1p20b771c3b6dc06549c7f4a4d569c3e0ec
X-Msg-Generator: CA
X-RootMTR: 20200618160120eucas1p20b771c3b6dc06549c7f4a4d569c3e0ec
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618160120eucas1p20b771c3b6dc06549c7f4a4d569c3e0ec
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618160120eucas1p20b771c3b6dc06549c7f4a4d569c3e0ec@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_090123_671716_93C6ABBA 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
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
 David Airlie <airlied@linux.ie>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Daniel Vetter <daniel@ffwll.ch>, xen-devel@lists.xenproject.org,
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

Fix the code to refer to proper nents or orig_nents entries. This driver
reports the number of the pages in the imported scatterlist, so it should
refer to sg_table->orig_nents entry.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Acked-by: Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>
---
 drivers/gpu/drm/xen/xen_drm_front_gem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xen/xen_drm_front_gem.c b/drivers/gpu/drm/xen/xen_drm_front_gem.c
index f0b85e094111..ba4bdc5590ea 100644
--- a/drivers/gpu/drm/xen/xen_drm_front_gem.c
+++ b/drivers/gpu/drm/xen/xen_drm_front_gem.c
@@ -215,7 +215,7 @@ xen_drm_front_gem_import_sg_table(struct drm_device *dev,
 		return ERR_PTR(ret);
 
 	DRM_DEBUG("Imported buffer of size %zu with nents %u\n",
-		  size, sgt->nents);
+		  size, sgt->orig_nents);
 
 	return &xen_obj->base;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
