Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 967931C5164
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 10:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/tQkiM/KS7AywclmmyY88LySIowhzoxOJe6T24DR00o=; b=K0pDOY22U9uRpQBTpJS64VRxtp
	o3s9/pAYk3Paj7rFSfJh6Y84eX8hufugw5KkAMbydURNw/EVhoaxk2SD/qIIBg7ff+DjaaRaPgndF
	jmC6/nmzMzx7m4WrtYY4IUWMm5bDoMlAVzGOj7FGvHtbOGTdShG/RLl5PAFIMfkpqtYyUpr7JT5Sv
	+iGLjDr63ioE0F8twu7a40Jz3VXX71OCTUd03eBeL8rFigJvA70Uiv4zgTHqhOpCK2e0G8F0Yh9po
	v8Ptk+CB2XQvY+rktLobiov6t0h5xIARwZtzlbqoOYnlepN4Bxg0wkgFdw6bIGsIpIB+J0ff5sIm3
	Mh8mlkrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtLK-0001Rc-TH; Tue, 05 May 2020 08:54:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtDz-0000mr-RC
 for linux-arm-kernel@bombadil.infradead.org; Tue, 05 May 2020 08:46:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:Content-Type:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=2O1dDvBYCdh6BPLh387jv2UbKzqeI6gCytCumofPH4Q=; b=J7k6+9NNAsm+FwAhEgErT4jnzj
 TRYZgI7T1fORE/4/c9dYMcYk9bEvTLJMqFq4+uVuZVMvzZhVXVDmHnL0+5IQgYWmnAIr8nlpA7Fkt
 zfurJ8qgxJUtNQIxF0jhLa0Umq+Zfo9oEfUVJxvqtfc2BG/pItBXASXc0LCOkPG/jwMwp/HBFWlXG
 b2KuIOU+n+VxGW7LP0aVWfuJKpvHu0gMzMJhrp4/tKMxnYoLdsNIPkBoztKlneodvsi32cRGOc4c8
 sYCeVPVGdHTo8a+TvWZpEuK87i8PYckH7YCKwOoAlrfPb7fah1pzGcDetf8uBAF+cmDUAh/CuaxYo
 JXH6u7uA==;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtDu-0005Hj-DP
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 08:46:46 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084639euoutp010d87174316df81d43357bf060fb3bd26~MFX4Mf-uj0374703747euoutp01e
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  5 May 2020 08:46:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084639euoutp010d87174316df81d43357bf060fb3bd26~MFX4Mf-uj0374703747euoutp01e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588668399;
 bh=2O1dDvBYCdh6BPLh387jv2UbKzqeI6gCytCumofPH4Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XA/QgjysUxHcGWz9IvJh5dw/hVYOAhN47VJujHy+fR1sZHonbvdVZgjHwDONvJGEq
 /nQTH3s4RJ33VRWmBdTgzLN0NeBdocxvM8Un1Lt2lm/P1p3j2boG8lt+301vNjz0bt
 /D43D815rQEDEjCNXkvgTLpsvgqAkvlFL0630tgE=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084639eucas1p173a8284f2be074a153c2404e7f655dbd~MFX33JwHZ2423024230eucas1p1K;
 Tue,  5 May 2020 08:46:39 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 27.11.60698.FE721BE5; Tue,  5
 May 2020 09:46:39 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084638eucas1p2d4add214063543248d81c0977e3f1823~MFX3e70vA0589305893eucas1p2K;
 Tue,  5 May 2020 08:46:38 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084638eusmtrp100d54f7ca6d5967537629b8f97c7a226~MFX3eOdJ50942509425eusmtrp1e;
 Tue,  5 May 2020 08:46:38 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-57-5eb127ef2573
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id F3.31.07950.EE721BE5; Tue,  5
 May 2020 09:46:38 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084638eusmtip135ec21b69c87a6f86b3072ab66aaeb78~MFX27jDnJ0686606866eusmtip1P;
 Tue,  5 May 2020 08:46:38 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 25/25] media: pci: fix common ALSA DMA-mapping related codes
Date: Tue,  5 May 2020 10:46:14 +0200
Message-Id: <20200505084614.30424-25-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRju27nsODY5TcEPC42BiV10YuQhSwqMDkSQ/ekiLaceVHJTdtTS
 kCxZ5LxkWnlJxMQ0ndfNSyheNvKWubyhRoqa/khLlOY0RbTNo/bveZ/3ed7n4eMjELEBcyYi
 lbGMSimPkuACtKl7w3R62b1eJh3+bU9lmPp4VH1eLUbtNL1EqFHLMk5VaLt41FD+FEoVd/hR
 q6OzPEo3N4ZRIy2FOJVe14hR1Z+m+FSZbotHGVbmsYv2dFVRFaDb1opRWleZitPNazMYPZ3W
 w6P1pY/p79tzCJ0zUQ7o1m/JOJ3ZUAlos86F/mwx868L7wjOhzFRkfGMyss/WBAxMG5CY8ad
 Hhb3qdFk0OGoAXYEJM/AhYplXAMEhJj8AOCv6SaEG1YBLB1o4XGDGcAn71Z4+5afmWOAW5QD
 uP6mDT+wzPa2YjYVTnpDzZIGt2FHUg1gb4bQJkLITATqM/OAbeFABsLuxfbdsyjpBi2vu1Eb
 FpH+cOvPGsLFuUJtXecutrPyc8OTu2mQHObD5IwZnBMFwNEN857BAS72NPA5fBT256SjnCHF
 Ws9UzeeGdABHnnI1IOkHJ02b1kuEtZ8HrG3x4uhLcLC7j2+jIWkPJ5YO22jECrObchGOFsHn
 z8Sc+jgs6Kk5iDUMDu9JaKhuceUeqAtAfaMOzQKuBf+zigGoBE5MHKsIZ1gfJfPAk5Ur2Dhl
 uGdotEIHrB+rf7vH8hG0b4UYAUkAiVB0y1wrE2PyeDZBYQSQQCSOorK/dTKxKEyekMioou+p
 4qIY1giOEKjESeRTsnBXTIbLY5n7DBPDqPa3PMLOORmkCGtuT92kjilrcoKMuOmKzzVPbLXh
 kCLplODVSkCrtNV9KWvW14EudJsLufHoi/QHcdZuJzyNFKpj00yBlhfaXEN2c2LGquFykTa6
 flCqye+sKFyfz52v0yddOCfzGJK+vZpSEvy+Pn3B/NV3M5RNHRHKnF2IzeD45bCgk0YJykbI
 vU8gKlb+DzuMqDFUAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xu7rv1DfGGdy6ZGrRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllcnHmXxWLBfmuLL1ceMllsenyN1eLyrjlsFj0btrJarD1yl91i
 2aY/TBYHPzxhdeDzWDNvDaPH3m8LWDw2repk89j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k5zHqa+f2QN4ovRsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQyzl4/x1JwXbxiwclWlgbG/SJdjJwcEgImEi/6rjGC2EICSxkl
 5jRXQ8RlJE5Oa2CFsIUl/lzrYuti5AKq+cQocab/DQtIgk3AUKLrLURCRKCTUWJa90d2EIdZ
 YBqzxMLG50AZDg5hAX+JrjtuIA0sAqoSX6ceA2vmFbCT+PPpGzPEBnmJ1RsOgNmcQPHHl+6w
 QVxUKPHh/HfWCYx8CxgZVjGKpJYW56bnFhvpFSfmFpfmpesl5+duYgRGz7ZjP7fsYOx6F3yI
 UYCDUYmHd8PX9XFCrIllxZW5hxglOJiVRHiX/dgQJ8SbklhZlVqUH19UmpNafIjRFOioicxS
 osn5wMjOK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXA6N0Yt7zI
 OdP+vit/V94TgaYHBw/y8z1MeNvfLKL97+ZM/VpH2/Kb4fMi33H3Pvpw6fU1E2lvQ743ryd9
 4HhyXLW60anTeX3X4ewMBXHpqcafGY3SLLm3hO+5ImIg0/vbdyGrG5NK3rUehcRJbx4xGWcZ
 CK6enSEjFDvlrwAnm7Tzup2MV6cosRRnJBpqMRcVJwIAa5fl0bQCAAA=
X-CMS-MailID: 20200505084638eucas1p2d4add214063543248d81c0977e3f1823
X-Msg-Generator: CA
X-RootMTR: 20200505084638eucas1p2d4add214063543248d81c0977e3f1823
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084638eucas1p2d4add214063543248d81c0977e3f1823
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084638eucas1p2d4add214063543248d81c0977e3f1823@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_094642_674144_B53DF0D0 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -7.1 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-7.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
For more information, see '[PATCH v3 00/25] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread: https://lkml.org/lkml/2020/5/5/187
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
