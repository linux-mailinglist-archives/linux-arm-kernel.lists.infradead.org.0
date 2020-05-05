Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D9B1C515A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 10:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0FrhC8y9/jEviaT86Hes55YhNPpLo5Gmi5Ot/pVw9Xw=; b=YyAgtHfeLt1WTPRaT+n+EFgBTn
	F4iIWId/7isXVo0mc9jUf+uwmHcHvtfjrWGHgD/uU9jSjtjb3fnZsxW9Bizr/+FhU2CTvGvIgsGrf
	l3RgS85UaNfAFIVTqLj3V+EwrHTg7b76/VLAHHjtA4bVhOXUgXc/PEmbhuNPEo3PLH9l5al2mYdc7
	JzOBLi8ocUhtXJ/BJZKbAygt9+6FqeEQvYqWBkKQtYNP614WDOk7nfdr4Kjfuo/RKsPnDPl4xfSif
	7ZdmFSNiKBBmFvced0Ui2/c/rQ4qRdPIuxPF6QCCmfhKSQK+jz4EhtWb4qzq7U9nBDijxF2iZGv0q
	eUeIS3dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtK9-00008U-FZ; Tue, 05 May 2020 08:53:09 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtDr-0000co-B8
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 08:46:41 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084637euoutp01f5122bdd61784753f421d0752903b62e~MFX2htYEd0374703747euoutp01b
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  5 May 2020 08:46:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084637euoutp01f5122bdd61784753f421d0752903b62e~MFX2htYEd0374703747euoutp01b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588668397;
 bh=wQWCLDgkzEAKWWbFtPWbi4gxIoOTq7jQENUDLHFuvtE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hqrtFKC/DV46JYa5bMO8aVUf4sTM0xCC9982EG/gbk4HU/kvS5BHsxgxOuBQidRsS
 ro8kSWcA+socYkSU7NXXdcddsZHcN1M9spoXYUvqXj/W/LJ04GTQdeqk2qJGzzfkBw
 f8NBI4o0N3jbaP7p8H0s2UF21P68dDzGBC6/KamQ=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084637eucas1p1297f42df3c287917c2c0544c7e16b4d6~MFX2SMuf32430724307eucas1p13;
 Tue,  5 May 2020 08:46:37 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 8A.CF.61286.DE721BE5; Tue,  5
 May 2020 09:46:37 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084637eucas1p20390fa3c010bde00e438cce1b48d209c~MFX18i2791348613486eucas1p2o;
 Tue,  5 May 2020 08:46:37 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084637eusmtrp156559f615bad8ffc826c55f36f635cd2~MFX175TQi0969509695eusmtrp1C;
 Tue,  5 May 2020 08:46:37 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-ba-5eb127eda261
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E1.31.07950.DE721BE5; Tue,  5
 May 2020 09:46:37 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084636eusmtip1c82086af8bba62a51d3ac39d5c0e7684~MFX1WUA2u0521305213eusmtip1I;
 Tue,  5 May 2020 08:46:36 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 22/25] misc: fastrpc: fix common struct sg_table related
 issues
Date: Tue,  5 May 2020 10:46:11 +0200
Message-Id: <20200505084614.30424-22-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfUgTYRzHee52t/NlcZ2CTxZJgywl38joyJKiovOPMkzCiqyVhy+5KTu1
 lKSRGDVfMC0yUxnTpfk2nbLClPmSLl8xHdOYUWYYaqvwrTSyNi/tv8/v+8Lvx8NDoFQr5k7E
 ypJYuUwSL8YdBfru5UEf666GSH910Q46Z7AHoX/ndwvphkItRv/R30dp0+I3nM4o0+L0s+ou
 hFYZgugF0wRC6ybNGD3SXIzTta/eCen275+wwyKmprQGML9W8gHTuqQSMM+XPmCMoaRGyLzP
 MiJMY/ktxrI6iTIFYxWAeflWgTO5TVWAmddtP+183vFgFBsfm8LK/YIvO8Y0DCwLE6dEN/RD
 eagC9DgpgQMByUBoHnuIK4EjQZGVAE7OqgE/LABo6ez/N8wDqOivE6xXqnpqBbxRAeDnriXh
 RuVj/RSwp3AyACqtStzOrmQmgK9znO0hlJxBYGnxPcxuuJDhsP2NGrGzgNwJLT2GNV1EBsP2
 mWmMX+cBq+vbUDs72PTJ4fG1ayHZK4RzjzUIHzoGK0cXcJ5d4IyxScjzNthXkC3gCxkATgzW
 CvkhG8CR24WATwXB8cEVW5uw3ecFtc1+vHwEmr8OYXYZkpvgmHWzXUZtmK9/hPKyCN69Q/Fp
 T1hkrNtY2z40jPLMwPkWA8q/UBeAo1YNlgc8iv4vUwFQBdzYZE4azXIBMva6LyeRcsmyaN+r
 CVIdsH2qvlXj3AuwOHylA5AEEDuLIua1kRQmSeFSpR0AEqjYVfT0Z30kJYqSpKax8oRL8uR4
 lusAWwmB2E20Vz19kSKjJUnsNZZNZOXrLkI4uCtAGjeWHhcSUu49GuDQGxGqtezTeXqdKVP5
 6M3yLVl7xhOT+08eeuAv8w7jTilM1ZlhnmfVndWam+WNIZaBXKrDYmLJH+eCVko9oj32Bx6P
 qv1yYdVJ7d6G+CykU7O7E5+YjmpK/GZOaGRllFdSZoVVkq4Ut6jDVYYDPiY8NE4s4GIkAd6o
 nJP8BVF1RjhQAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xu7pv1TfGGRz5zGXRe+4kk8XfScfY
 LTbOWM9q8X/bRGaLK1/fs1k0L17PZrFy9VEmiwX7rS2+XHnIZLHp8TVWi8u75rBZrD1yl93i
 4IcnrA68HmvmrWH0+P1rEqPH3m8LWDy2f3vA6rF/7hp2j/vdx5k8Ni+p97j97zGzx+Qbyxk9
 dt9sYPPo27KK0ePzJrkAnig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07
 m5TUnMyy1CJ9uwS9jI1nf7IXPOOt2HZhAnMD40nuLkZODgkBE4lVJ9eydDFycQgJLGWU6Pux
 jBkiISNxcloDK4QtLPHnWhcbRNEnRokb33awgSTYBAwlut5CJEQEOhklpnV/ZAdxmAU+MUkc
 uXYarEpYIEji7NlzTCA2i4CqxO2T+8HG8grYSRx89RJqhbzE6g0HwFZzAsUfX7oD1iskUCjx
 4fx31gmMfAsYGVYxiqSWFuem5xYb6RUn5haX5qXrJefnbmIExs22Yz+37GDsehd8iFGAg1GJ
 h3fD1/VxQqyJZcWVuYcYJTiYlUR4l/3YECfEm5JYWZValB9fVJqTWnyI0RToqInMUqLJ+cCY
 ziuJNzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwNgu/CScU/HPrP+b
 8mJYTxhv/WifKa14eI5QTXGof8wdBSG1QCMd+8dKPHvnb1+fovBsCn/VWS5ZpSs7/JqrJ9j+
 PvxHT2aboU9au8LMulj2C5b/FeVDWnzf1B67zRXgbyE1+QU7g4ruTPXA7c8Wbtp83ePL6vo4
 i7A2uZAnb/feM7QImOznoMRSnJFoqMVcVJwIABoHAhCxAgAA
X-CMS-MailID: 20200505084637eucas1p20390fa3c010bde00e438cce1b48d209c
X-Msg-Generator: CA
X-RootMTR: 20200505084637eucas1p20390fa3c010bde00e438cce1b48d209c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084637eucas1p20390fa3c010bde00e438cce1b48d209c
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084637eucas1p20390fa3c010bde00e438cce1b48d209c@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_014639_597284_570CFF6B 
X-CRM114-Status: GOOD (  13.58  )
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
