Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC2A1CF149
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kv864SgumK1tQS7xWYpkClQoGGsS7A0ZyWOfTV/f5HE=; b=b6ZvbX69CYPBgqlSgfwI0pauBQ
	Rppd8wET2/fjELkt1oTBRXXtsIhcuAhFsoMn/N7apa5A3duyDDOiVqr4GsoIheCUIYIsKcAgdATvP
	kH0dW+NGC7GoxmRM2lJb9maYVD8zVIcfcPjo+AgWUFjgI7BNqGS3FCGKU5HFMnvLh74XC8owhDVCN
	BA+SrPqmev65LSMAUGXqbdDYxwdHodPTYo56sjE2WBzs4kEy9qcttF1svr159KG50HKtYqNeT8jka
	QKkvEY+tTmqdIvgH+c+f3YbjjQDQLc5PIYiNNFEtc6jjR5anEBE++aLaCN1edxjh12u0JqDWEOiDr
	fZweDkTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQzi-0008Oa-Rz; Tue, 12 May 2020 09:14:34 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQnI-0002a3-IC
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:54 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090130euoutp027ff159a8245207a1ad2ae52070cb8a9b~OPF1x3vDW0482404824euoutp028
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090130euoutp027ff159a8245207a1ad2ae52070cb8a9b~OPF1x3vDW0482404824euoutp028
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274090;
 bh=iwqRA9IvBA5qQavTtN7IR44wij+dBMBZyJPEuCzIDiE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=b2ll6vqMSYmUcasvZ7VDmEXKlVWs8C+0jIarYXcSX/ot50IHeukwvnvpbPWXfzeQR
 bL2jCAkimTsh2szqRK6D9YhNkuey3uVV0cMo5nWN9nT0812r4lr3C4eI/f9FntFE77
 a49wlkFSmsGPPcqkE8mEpaHNqsmH48+H1WCV9YZQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090130eucas1p2897fb3e554831018d8d3e374c3c0d8e3~OPF1bW0cU2669826698eucas1p2q;
 Tue, 12 May 2020 09:01:30 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id EA.32.60679.AE56ABE5; Tue, 12
 May 2020 10:01:30 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090129eucas1p24fa7e83acb8cde494f71ca5694279401~OPF1K2gSn0961809618eucas1p2x;
 Tue, 12 May 2020 09:01:29 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090129eusmtrp2483d9a5cf050f3efa891592bc516305d~OPF1KE-1n0472704727eusmtrp2b;
 Tue, 12 May 2020 09:01:29 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-e5-5eba65eab4c4
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B2.55.08375.9E56ABE5; Tue, 12
 May 2020 10:01:29 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090129eusmtip182420fa16f115009ac06b2958ce7d00e~OPF0lpsRC1352513525eusmtip1S;
 Tue, 12 May 2020 09:01:29 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 37/38] media: pci: fix common ALSA DMA-mapping related codes
Date: Tue, 12 May 2020 11:00:57 +0200
Message-Id: <20200512090058.14910-37-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSaUhUURiGO3OXuS5j11HwaJIwaaCQW0E3FMmIuj/6kS2EQdaYN5Wc0WZc
 MqRGcx0X0sCN0ElEc0tnNJcp05F0UtPcMMXd8YcKmjZqaKI53sn+Pd/7vd95z/k4BMJvw+yI
 UHEkIxELwwS4KdrYtf39zDKjDnCvmSaozP5uDqXMr8Wo/cZshBrZ/IlTFVWdHGqwYAqlFG1e
 1MbIHIdS6UYxalj9Bqcy6j5gVM2XKS5VptrlUJq1BeyiBV1dVA3o1i0FSqsq03C6aWsWo2fS
 tRy6vvQFPbGnQ+jXY+WA/jguw+mshkpA61Un6Z5NPfe6+V1T7yAmLDSakbj5PDANmdBrsAg5
 fJquLERkYN1aDggCkudg67ijHJgSfPIdgD05kwhbbADYVbZoLPQAZm+lAjkwOZzQtSYBtlEO
 4PQnBXY0UiJbPHThpAeUr8hxA1uTSQB+zTQ3mBAyC4H1WfmHJivSD1bMpKEGRkkn+Kt3iWNg
 HukD1+V6hI1zgFV17YdscqDPFO+irD7Eha2TgSxfhoNKBZdlK7isbTCyPdxvKeYYgiH5EsC5
 /houW2QAOJyQb3yQF5zs38EN60BIZ1irdmM34wuXq2+zaAHHViwNZuQAcxrzEFbmwdRkPnvG
 aViofX+UqhkYMt6ehqvjjcZldQKo1/1BXgGHwv9ZCgAqgQ0TJRUFM1JPMRPjKhWKpFHiYNeH
 4SIVOPhWvXvajWag3g3sACQBBOY8d/eWAD4mjJbGijoAJBCBNS8x9EDiBQljnzGS8PuSqDBG
 2gFOEKjAhne2ZOkenwwWRjKPGSaCkfzrcggTOxmIk0WcP24Vovq2cIyfa/sk4bdNZF7KjSJd
 fptj+8C2WXOi02pf3C2ZpUv8zDVuclmpd5ZaQ8c/GnW+MjVBXvJP2UFK5ufRcovn/KvlyuSE
 PlWuL7z5WTsrrlGrF8HatJlfTIg/Xv2221PnWrB2qufOBXtsd6NjtEnkQ9v+2CIFqDRE6OGC
 SKTCv8NFiCtSAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMIsWRmVeSWpSXmKPExsVy+t/xu7ovU3fFGSy7YGzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllcnHmXxWLBfmuLL1ceMllsenyN1eLyrjlsFj0btrJarD1yl91i
 2aY/TBYHPzxhdeDzWDNvDaPH3m8LWDw2repk89j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k5zHqa+f2QN4ovRsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQybn8+yFrQJVHRvXEWcwPjR5EuRk4OCQETicd7Wxm7GLk4hASW
 Mkp0v5rAApGQkTg5rYEVwhaW+HOtiw2i6BOjxJ2z98CK2AQMJbreQiREBDoZJaZ1f2QHcZgF
 pjFLLGx8zgZSJSzgL7HmeA8TiM0ioCrx6fRLMJtXwE7iY9dnZogV8hKrNxwAszmB4vfn/wHb
 ICRQKPHo6luWCYx8CxgZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgRG0LZjPzfvYLy0MfgQ
 owAHoxIPb4fRzjgh1sSy4srcQ4wSHMxKIrwtmUAh3pTEyqrUovz4otKc1OJDjKZAR01klhJN
 zgdGd15JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBkZ9vWJFyWb3
 iMudHjO2Ltn8zmP3ogXLczyLpflsTvEevzptkR3DpTnOUrtb7i/LfDXrzN8pdpsntd7fJTn7
 bb1Rc6/jMytxp2dMW3bVRu++WdQx9+vK7Bdlm87fe32nkH+TdFpOb4Vl43zDqE23NQJ2Hncs
 +jTPoTb9ttdhs4UGOqYrLZfvShFSYinOSDTUYi4qTgQAgDAZQ7YCAAA=
X-CMS-MailID: 20200512090129eucas1p24fa7e83acb8cde494f71ca5694279401
X-Msg-Generator: CA
X-RootMTR: 20200512090129eucas1p24fa7e83acb8cde494f71ca5694279401
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090129eucas1p24fa7e83acb8cde494f71ca5694279401
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090129eucas1p24fa7e83acb8cde494f71ca5694279401@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020145_407713_69A4E1B1 
X-CRM114-Status: GOOD (  13.99  )
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
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
called with the original number of entries passed to dma_map_sg. The
sg_table->nents in turn holds the result of the dma_map_sg call as stated
in include/linux/scatterlist.h. Adapt the code to obey those rules.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
---
 drivers/media/pci/cx23885/cx23885-alsa.c | 2 +-
 drivers/media/pci/cx25821/cx25821-alsa.c | 2 +-
 drivers/media/pci/cx88/cx88-alsa.c       | 2 +-
 drivers/media/pci/saa7134/saa7134-alsa.c | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/pci/cx23885/cx23885-alsa.c b/drivers/media/pci/cx23885/cx23885-alsa.c
index df44ed7..3f366e4 100644
--- a/drivers/media/pci/cx23885/cx23885-alsa.c
+++ b/drivers/media/pci/cx23885/cx23885-alsa.c
@@ -129,7 +129,7 @@ static int cx23885_alsa_dma_unmap(struct cx23885_audio_dev *dev)
 	if (!buf->sglen)
 		return 0;
 
-	dma_unmap_sg(&dev->pci->dev, buf->sglist, buf->sglen, PCI_DMA_FROMDEVICE);
+	dma_unmap_sg(&dev->pci->dev, buf->sglist, buf->nr_pages, PCI_DMA_FROMDEVICE);
 	buf->sglen = 0;
 	return 0;
 }
diff --git a/drivers/media/pci/cx25821/cx25821-alsa.c b/drivers/media/pci/cx25821/cx25821-alsa.c
index 3016164..c40304d 100644
--- a/drivers/media/pci/cx25821/cx25821-alsa.c
+++ b/drivers/media/pci/cx25821/cx25821-alsa.c
@@ -193,7 +193,7 @@ static int cx25821_alsa_dma_unmap(struct cx25821_audio_dev *dev)
 	if (!buf->sglen)
 		return 0;
 
-	dma_unmap_sg(&dev->pci->dev, buf->sglist, buf->sglen, PCI_DMA_FROMDEVICE);
+	dma_unmap_sg(&dev->pci->dev, buf->sglist, buf->nr_pages, PCI_DMA_FROMDEVICE);
 	buf->sglen = 0;
 	return 0;
 }
diff --git a/drivers/media/pci/cx88/cx88-alsa.c b/drivers/media/pci/cx88/cx88-alsa.c
index 7d7acee..3c6fe6c 100644
--- a/drivers/media/pci/cx88/cx88-alsa.c
+++ b/drivers/media/pci/cx88/cx88-alsa.c
@@ -332,7 +332,7 @@ static int cx88_alsa_dma_unmap(struct cx88_audio_dev *dev)
 	if (!buf->sglen)
 		return 0;
 
-	dma_unmap_sg(&dev->pci->dev, buf->sglist, buf->sglen,
+	dma_unmap_sg(&dev->pci->dev, buf->sglist, buf->nr_pages,
 		     PCI_DMA_FROMDEVICE);
 	buf->sglen = 0;
 	return 0;
diff --git a/drivers/media/pci/saa7134/saa7134-alsa.c b/drivers/media/pci/saa7134/saa7134-alsa.c
index 544ca57..398c47f 100644
--- a/drivers/media/pci/saa7134/saa7134-alsa.c
+++ b/drivers/media/pci/saa7134/saa7134-alsa.c
@@ -313,7 +313,7 @@ static int saa7134_alsa_dma_unmap(struct saa7134_dev *dev)
 	if (!dma->sglen)
 		return 0;
 
-	dma_unmap_sg(&dev->pci->dev, dma->sglist, dma->sglen, PCI_DMA_FROMDEVICE);
+	dma_unmap_sg(&dev->pci->dev, dma->sglist, dma->nr_pages, PCI_DMA_FROMDEVICE);
 	dma->sglen = 0;
 	return 0;
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
