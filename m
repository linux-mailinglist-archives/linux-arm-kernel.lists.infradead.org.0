Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B1B1C5131
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 10:48:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dZk/p97FSgPvmJ1yi0A/ZewjobRqCTPZ8AGYKZY1j9g=; b=Sa094Sx9cbjP+py6mTmBA/Ccxo
	B9qCzXXKhC5vvGCAuX183USOUa7FoKn9OAEn4Gmj59SwFB3SxnROXT/vE2vu4yqvEbS98A/tcen4d
	QYoZhRw+FR1qYMERSYCJELWa0DkT1zJqMtfwi+P0qM8y755esMSC2M2+KxDbDYuNus8bBo/mCDv8q
	4X1XxmMQnsxL8aEXRVQlJg7QW1lgLKtpuypbM3KCUhkG0PJ5d4Y5be8XMYKC3F3i4tmwuJHv/apWT
	HR6Aqsa6L84qjTc7NkJe+Bf97xHQXdM9CFJKjjS1VtvE4vCF3XxuoTkbMqKG9BQfT6XovqOXfhwCU
	h5SASpZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtFu-0002Yt-OD; Tue, 05 May 2020 08:48:46 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtDj-0000U3-Ou
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 08:46:34 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084630euoutp016b9b59d5124d3814722c3c8d31da123e~MFXvgHVTT0326103261euoutp01f
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  5 May 2020 08:46:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084630euoutp016b9b59d5124d3814722c3c8d31da123e~MFXvgHVTT0326103261euoutp01f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588668390;
 bh=RAL/kVrQn3ABTB/9OyAXiXBaS4eDpAUEBvBDOAmejTs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AcddHW2Ku3Lm0RPoZWCmo5mzLoTTjxm8ofDgWZ9TT2kSkVQ3dYkANqwrsPzg+X6Bc
 TCFtI8TzMjj/qcKa3d/6xePxbte76j5Mw4+Qgyt03gSLm+TjtD860Rw99yzz0v4asO
 H7eMkI7wGF3VFsP3c4a23PcGClRqJQ6XUl/FZWPM=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084630eucas1p1cb2107de9a66d414e9041526ee473613~MFXvUFf5x2422924229eucas1p18;
 Tue,  5 May 2020 08:46:30 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 9E.01.60698.6E721BE5; Tue,  5
 May 2020 09:46:30 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084629eucas1p23d2d6a53451e67e2b0a3544eb696008b~MFXu05eIF1948219482eucas1p2Q;
 Tue,  5 May 2020 08:46:29 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084629eusmtrp124d65a6a9a9d8be703fa6427f75aa98a~MFXu0Isly0942509425eusmtrp1D;
 Tue,  5 May 2020 08:46:29 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-38-5eb127e692ea
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 57.14.08375.5E721BE5; Tue,  5
 May 2020 09:46:29 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084629eusmtip1a56cd20ec71b7a3ecae72184bf9fc36e~MFXuRtPEk0686606866eusmtip1J;
 Tue,  5 May 2020 08:46:28 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 10/25] drm: panfrost: fix common struct sg_table related
 issues
Date: Tue,  5 May 2020 10:45:59 +0200
Message-Id: <20200505084614.30424-10-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRzGe89tZ+LsOA1fNAxGJZaXRKMDhiX04RB9iBCMSGvlSU23bCct
 /dJIM52amtFFKzSs2bxPWV4rtblUtFArr3nNamRFm6YSs52O2bff/3mf5/+8vLwkKm3F3clY
 5QVWpZTHywgHzNC5/Np3zqs2ctfcCEHn9HUhdO2dapxeNeSj9ODCd4J+Um5E6OLnwbR1cAqh
 9TPvcHqg6R5BV74cF9GrLQ0iuu3HLE5fr+wn9kuYigcVgGkYLwVM62Ixxuh1mQTzdHESZyay
 TAhTV3qZGbXNoEzBkBYwzcNqgrlerwOMRe952PGYw94oNj42iVX5h5x0iDGXGEFCrvSSJc+E
 q8H9jRogJiEVBJtqWxANcCClVBmAj/LTcGGwAljYqEWFwQJgr/Yu/i/yLevXWkQLoK3DANYj
 091tgHcRVADUzGsInl2pqwC+ynHkTSg1i8Chpcq/q1yoMKjRmEU8Y9Q2qFv8hPEsoUJgWo4Z
 CHVbYHnNC5RnsV2f6R8j+EWQ6hbBioU6TDAdgB36XkRgF2g21YsE3gx7CrIxIZAK4FRfpUgY
 sgEcuHJnrSIYjvWt2NeS9vt5w+omf0EOhW9HLSJehpQTHJp35mXUjjcMt1FBlsCMdKng3g4L
 TVXrtW1v+lGBGai7MbH2qEYAx01qLA9sKfxfVgyADrixiZwimuUClexFP06u4BKV0X6nzyn0
 wP6pemymhQbw7PepdkCRQOYoOWqpjpTi8iQuWdEOIInKXCWPl2oipZIoeXIKqzp3QpUYz3Lt
 wIPEZG6SwIdfIqRUtPwCG8eyCazq3ylCit3VIHMxnTOqrTv3THuHdRWdiLfuKziu7rMe+rC8
 EjQ1MmSzNZ+/ObXhSPiw9UxnvuK7z0hwbJn4Z7TnwblS6cnVjSlV5nDXiN1JJUzL+8ZG32uG
 MHO2c8D07OSu1LyvuUomtNPDZ6Loc9RWr/w4Rf14pzjcCXGRNN2qv3225mOGdtOSDONi5AE7
 UBUn/wMce5yEUAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xu7pP1TfGGfy8rmzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFv/37GC3OPjhCatF
 39pLbA68HmvmrWH02HF3CaPH3m8LWDw2repk89j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJexquFRxkL+oUqPk84ztrAOJe/i5GTQ0LAROJd93emLkYuDiGBpYwSO7s7
 GSESMhInpzWwQtjCEn+udbFBFH1ilJjbOYsdJMEmYCjR9RYiISLQySgxrfsjWIJZ4A2TxKWr
 ESC2sECQxKaGVrBJLAKqEqu+PWcBsXkF7CRael9BbZOXWL3hADOIzQkUf3zpDhuILSRQKPHh
 /HfWCYx8CxgZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgRGzbZjPzfvYLy0MfgQowAHoxIP
 b8Tn9XFCrIllxZW5hxglOJiVRHiX/dgQJ8SbklhZlVqUH19UmpNafIjRFOioicxSosn5wIjO
 K4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAKLBEP/e4ZvpVuzvr
 ko6ZP8j6OrkvlVO52mOj1YS+uLpLJ1KyLs5+Mvf/9YMVgVtE/x4PNNnKqGg1MZIj3i5x1tpV
 yxeaPA0SlQ2yLbYqfJf8vf7F8x+ur/1fHkhh0omvFPH6fZC1R/ZAz2/LnZ1z49PvFpawid90
 SFM8e0BqWoVL9r3wXIMeJZbijERDLeai4kQAAmqGlbACAAA=
X-CMS-MailID: 20200505084629eucas1p23d2d6a53451e67e2b0a3544eb696008b
X-Msg-Generator: CA
X-RootMTR: 20200505084629eucas1p23d2d6a53451e67e2b0a3544eb696008b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084629eucas1p23d2d6a53451e67e2b0a3544eb696008b
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084629eucas1p23d2d6a53451e67e2b0a3544eb696008b@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_014632_031690_D6E75C71 
X-CRM114-Status: GOOD (  14.74  )
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
Cc: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
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
 drivers/gpu/drm/panfrost/panfrost_gem.c | 4 ++--
 drivers/gpu/drm/panfrost/panfrost_mmu.c | 5 ++---
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_gem.c b/drivers/gpu/drm/panfrost/panfrost_gem.c
index 17b654e..95d7e80 100644
--- a/drivers/gpu/drm/panfrost/panfrost_gem.c
+++ b/drivers/gpu/drm/panfrost/panfrost_gem.c
@@ -41,8 +41,8 @@ static void panfrost_gem_free_object(struct drm_gem_object *obj)
 
 		for (i = 0; i < n_sgt; i++) {
 			if (bo->sgts[i].sgl) {
-				dma_unmap_sg(pfdev->dev, bo->sgts[i].sgl,
-					     bo->sgts[i].nents, DMA_BIDIRECTIONAL);
+				dma_unmap_sgtable(pfdev->dev, &bo->sgts[i],
+						  DMA_BIDIRECTIONAL);
 				sg_free_table(&bo->sgts[i]);
 			}
 		}
diff --git a/drivers/gpu/drm/panfrost/panfrost_mmu.c b/drivers/gpu/drm/panfrost/panfrost_mmu.c
index ed28aeb..9926111 100644
--- a/drivers/gpu/drm/panfrost/panfrost_mmu.c
+++ b/drivers/gpu/drm/panfrost/panfrost_mmu.c
@@ -517,10 +517,9 @@ static int panfrost_mmu_map_fault_addr(struct panfrost_device *pfdev, int as,
 	if (ret)
 		goto err_pages;
 
-	if (!dma_map_sg(pfdev->dev, sgt->sgl, sgt->nents, DMA_BIDIRECTIONAL)) {
-		ret = -EINVAL;
+	ret = dma_map_sgtable(pfdev->dev, sgt, DMA_BIDIRECTIONAL);
+	if (ret)
 		goto err_map;
-	}
 
 	mmu_map_sg(pfdev, bomapping->mmu, addr,
 		   IOMMU_WRITE | IOMMU_READ | IOMMU_NOEXEC, sgt);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
