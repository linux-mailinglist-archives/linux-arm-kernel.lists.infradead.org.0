Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 586711DE764
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 14:57:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MqIJxRpZEk3tHL7u28ou6HHhR/N7D0W4yVuXv0dO8jc=; b=QLYTgqgOGO6Pj7rQjoDulfpP/L
	/g/k+4uxAJrHYQCOqnPrRRljidY/gFiOaW2v3gDoQSgchpf7aMlTrzVoSCyeHcFUioWJxbbSDoQlg
	jbe31mlFDQSRBi5H13S09t8s+2z0mE/q0OlRP/bnUMb06Tt5KOZa/wFBr1Rsy5b/augTIa/vMZ0TH
	6AcvKUL7ecr3hB22m0sS7DLY7DIKYox1OPUB8kyMJ7hYXVsfSj2OrtpE/Eke6j1HxihaSKXDkAUGF
	08It+tfMaxJkFH1yKMCfZNpSXPGRrCGMc6NfcmXxLvWPNeGkBgu9fbWKwzWvH//PZipoKZq3liixu
	7dse12yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc7En-0000tx-Jg; Fri, 22 May 2020 12:57:21 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc7Ee-0000tL-Nn
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 12:57:14 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200522125709euoutp01fdda60de748f51c7cb3632310f449951~RWwc2Inma2889728897euoutp01G
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 12:57:09 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200522125709euoutp01fdda60de748f51c7cb3632310f449951~RWwc2Inma2889728897euoutp01G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590152230;
 bh=YNTaZW2eCrOBB+/EZo2VHocehjAUUuW398emjA1vya4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=s8y14ezWQp/obQT5eQzlHBx2D6Ufr/neV8oEDj4QmWuKnIp4m5g7xix59W6ecmC7N
 T/nvlIAf/rGSuF7c0Ti7mHHY3RlU0vsLq6Ckm1BJuAlLy2TKWKVYz0sK3Dutt+bWO8
 j/Kn/oVcRQpDbsN2pVw4bZHwV4KrnWb/mSs6tuA8=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200522125709eucas1p2c9cc74a5e6327f14ff2fec8d00997ac0~RWwcNyFI80249702497eucas1p2n;
 Fri, 22 May 2020 12:57:09 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 58.BE.61286.52CC7CE5; Fri, 22
 May 2020 13:57:09 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200522125708eucas1p233b80b0741f087a84d47f24b6d91985f~RWwbxlE_S0903009030eucas1p2y;
 Fri, 22 May 2020 12:57:08 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200522125708eusmtrp2ce3887019627c346b790bcbe15a7947f~RWwbwTwIw1358513585eusmtrp2R;
 Fri, 22 May 2020 12:57:08 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-6f-5ec7cc252cc0
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 3E.42.08375.42CC7CE5; Fri, 22
 May 2020 13:57:08 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200522125708eusmtip1f843fc2153bbac42a292dde233075588~RWwbEtm5i3030830308eusmtip1G;
 Fri, 22 May 2020 12:57:08 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 39/38] drm: xen: fix common struct sg_table related issues
Date: Fri, 22 May 2020 14:56:52 +0200
Message-Id: <20200522125652.18435-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513132114.6046-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSWUwTURTNm5m2A2lhLChPMIKNmGAUJPIxCUowGjN+GCQxxBhBqkxYpIAt
 rYIfEEAgpRCEDwgg4gbYssm+uLCIxUgGWSSgRTajghCwQFmMVIap+HfuWd65uXk4Kn7Bc8TD
 o2JpeZQ0UsK3xhrfrvcdde3VBx0bNdmSmcw7hHyeX80jzY33UHJoZYFPPtN1I2TJa29yeWgS
 IWunh3nkYGsRn6x8MyYgF3ULPLJj8SuPXK3PRXxFVEVxBaAMT1sA9dJUglFNpgkeNZ6hR6i6
 JwnU581plModKQNU1+IQRrWNJvKprHotoJZq918QXrY+EUJHhqtouYdPsHVYkXEKi9kgbmf9
 mkcSQYGNGuA4JLzgj5azamCNi4lyANM0sxg3LANY+qXQMiwBONdbg6iB1XbC/KkZ5YQyABt0
 hfydiKmsFLAuPuEJ1fNqPovtibsA9mQKWRNKrCGQKe0RsIId4Qcfd+RsBzDCFaZWt2EsFhEn
 YRHzG+XqnKGupn0bW23xxoZ1HvsQJBgB1LYsCzjTGbhmnsA4bAdn9fUWfh80tzxAuEAygJNM
 pYAbNAAOJuUDzuUNDcwGn70HSrjB6lYPjj4F+yaSUe5MNnBkfhdLo1swpzHPQotgeqqYcx+C
 BfqqndqODwOW/SmY1tVmOVc2gNrMfiQbOBf8LysBQAscaKVCFkorPKPoW+4KqUyhjAp1vx4t
 qwVbf+r9pt7YDFYGrnUCAgcSoYho1QeJeVKVIk7WCSCOSuxFD227g8SiEGlcPC2PvipXRtKK
 TuCEYxIH0fFHM4FiIlQaS9+g6Rha/k9FcCvHRIAFCjGlMHXmSsJg3rqmZpbRaMTdScOB5y6t
 1+WQU2NU8ccn5r1ZQcHO8VW9PqXnIwwZvuW946tNpp+ky528g6fz5+r+9Dn5Od484hWGvPLP
 Kw9w2/OdSVUdkDh57k4x1Fz0D8hua9d+S+jyu48CXbBLpSo9i5b1+xvDUyIKiiWYIkzqeRiV
 K6R/AfS9l3RPAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xu7oqZ47HGfxYoGPRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFh9Wv2e1OPjhCavF
 9y2TmRx4PdbMW8PocWfpTkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj8MfrrB4
 7L7ZwObRt2UVo8fnTXIBPFF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2
 NimpOZllqUX6dgl6GXM+PWIp+CVQ0ffxLVMD4yy+LkZODgkBE4n/t3YwdzFycQgJLGWUmNe4
 mgkiISNxcloDK4QtLPHnWhcbRNEnRolVp5+zgSTYBAwlut5CJEQEOhklpnV/ZAdxmAX+MUmc
 2LsdbJSwgK/EsrUfwDpYBFQl2tbvZgGxeQVsJeac+80MsUJeYvWGA2A2J1D809afYKuFBGwk
 1rbOYZvAyLeAkWEVo0hqaXFuem6xoV5xYm5xaV66XnJ+7iZGYNxsO/Zz8w7GSxuDDzEKcDAq
 8fDu2H48Tog1say4MvcQowQHs5II70L+o3FCvCmJlVWpRfnxRaU5qcWHGE2BjprILCWanA+M
 6bySeENTQ3MLS0NzY3NjMwslcd4OgYMxQgLpiSWp2ampBalFMH1MHJxSDYxqyz02X2Ts7561
 6b280cSlX37ILbB+toZpbzjXEcP7Vb+yA57YdfYbz6/qPLRV++U3sbovi0QvnOXQfax5806o
 k6ziy2m3J3YfT3jE4iD45fShHMe5+j8tlK+YPGu0tKtN6XT24HMOjeafW/Jk/7sb09ZwyU67
 7cB6d8oXjwOux5o80tp1eSuUWIozEg21mIuKEwHG6J9ksQIAAA==
X-CMS-MailID: 20200522125708eucas1p233b80b0741f087a84d47f24b6d91985f
X-Msg-Generator: CA
X-RootMTR: 20200522125708eucas1p233b80b0741f087a84d47f24b6d91985f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200522125708eucas1p233b80b0741f087a84d47f24b6d91985f
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <CGME20200522125708eucas1p233b80b0741f087a84d47f24b6d91985f@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_055712_974648_25394F39 
X-CRM114-Status: GOOD (  15.33  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/

This patch has been resurrected on Oleksandr Andrushchenko request. The
patch was a part of v2 patchset, but then I've dropped it as it only
fixes the debug output, thus I didn't consider it so critical.
---
 drivers/gpu/drm/xen/xen_drm_front_gem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xen/xen_drm_front_gem.c b/drivers/gpu/drm/xen/xen_drm_front_gem.c
index f0b85e0..ba4bdc5 100644
--- a/drivers/gpu/drm/xen/xen_drm_front_gem.c
+++ b/drivers/gpu/drm/xen/xen_drm_front_gem.c
@@ -215,7 +215,7 @@ struct drm_gem_object *
 		return ERR_PTR(ret);
 
 	DRM_DEBUG("Imported buffer of size %zu with nents %u\n",
-		  size, sgt->nents);
+		  size, sgt->orig_nents);
 
 	return &xen_obj->base;
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
