Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCCA20073A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WICffEp1FF6nsNmP0XdRiXjpdNeZhILpnPr6eSzu5Uk=; b=c+PX7cEeTSvqVnS6zESWjzriEt
	ThoJzLViP08JS6YMvNNcZchhe1Tjn2DEqBGLUlUjU3EW6lZfu4bgCxY+uyQ4LI0q5zyZpvyTlOKXz
	Y7/KfW9JYz6pvv/anCiZUQ77qrrMv3U0Lyla25OTdIymFGydV3tBPv3fzkqru7oNW/+woERQRbd7Q
	iPhzFZqVqq9FwQXS93HfLaaSPcuqUiwMx7pSxUUaDU8vQreJzadrdKAv+82KornJR3A+lvcNM/wI0
	tMh7/vCvXXJPWrl1HvJlTutkwWdRCSgmn7gZyXh1qSMRFdUXKae8rcra8wuFsjRz1hndIakd/JyBU
	OC/3gGug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEZX-0002p2-TV; Fri, 19 Jun 2020 10:48:35 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEOd-0005S6-I1
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:37:22 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103718euoutp02097fb648c632638420e601ae4b73bcef~Z66U6L3fp2414424144euoutp02M
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 10:37:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103718euoutp02097fb648c632638420e601ae4b73bcef~Z66U6L3fp2414424144euoutp02M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563038;
 bh=kbdu9i1ky3V53J/j8HYin75jAIlE4fk1hTbkVYKJ63U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PkhlVHiwuHRDEPR8a7DMxV/vkFHYaYq5GmLTOy+IWabYkf3ccmY4uT0daHnh2h8QJ
 DavZ5rjMtr0i4ALRae9ByRTGcjNcybGkGJh4ZDgs5+jKyowGjRjyx/ihVzgp+Kf8V+
 UW6tfPv/V0U7J999yS58PrKzDs3RYM9AJsB7Hvp0=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103717eucas1p16ab7c2ffb497df81e0ba7cb3b0e94535~Z66Uo58DX0707907079eucas1p16;
 Fri, 19 Jun 2020 10:37:17 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id DD.AC.06456.D559CEE5; Fri, 19
 Jun 2020 11:37:17 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103717eucas1p23b82366794c92cc70c0492e4ca29c4a1~Z66UVJBgV3081530815eucas1p2q;
 Fri, 19 Jun 2020 10:37:17 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103717eusmtrp17dc57f25e3f104e3f0d1614b794a5593~Z66UUgR861007310073eusmtrp1L;
 Fri, 19 Jun 2020 10:37:17 +0000 (GMT)
X-AuditID: cbfec7f2-809ff70000001938-7b-5eec955d1587
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 8B.1B.06017.D559CEE5; Fri, 19
 Jun 2020 11:37:17 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103716eusmtip2ff83f555562d537185bd2efa44a6cf30~Z66TrirXr0247402474eusmtip2h;
 Fri, 19 Jun 2020 10:37:16 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 35/36] media: pci: fix common ALSA DMA-mapping related codes
Date: Fri, 19 Jun 2020 12:36:35 +0200
Message-Id: <20200619103636.11974-36-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTURzHObu78zqdXOfroJIwSixMkx7cMMRC6IJEGdILZs28qTRfu86y
 kkTLnE7NTHyiyyzzrfOZYjotZ1kjVMxSKdGKOU3xBZrMNu+0/z7f3/f7O9/D4WAIvwV1xMIj
 YylJpEgs4HDZrf3rmoPC3LmgQ4rf7kSG5j2LaMyvR4mt1myEGFld4BCV1e9YhKLbm1gZmWIR
 yulRlBjuKOYQ8oYWlKh9O2lGvFRusgjV4gzqyyNrSmoA2bWmYJPKKhmHbFv7gZLf09Ussqn8
 Pjmun0bInLEKQHZ+TeSQmc1VgFxW7jlncYV7IoQSh8dREk+fa9ywX3mv0eg5+9stOj2SCLQ2
 acAcg/gR+CbvD0gDXIyPvwJQtd7DYsQKgKXLGpNYBrBv4Tm6szLxYtFkVADYVpmK7q5k5hZs
 pzi4F0ybT+MY2RZ/COBAhqUxhODTLKioHzUYGGaDB8CNImdjho3vg8/kK8DIPNwHDvTLTW0u
 sLqhBzGyuWGue6AyzfvNoLrhKMN+8G9BoxnDNnBW3WxiZziYI2cbeyGeDOCUptaMEXIAh5Py
 AZPyhhOaje0LIfh+WN/haUSIn4TJWn8GreDYvLUxjBjwSWsewox5MDWFz5zhCgvVdbutqs9D
 CMMk7Nb8ND1PNoCjfaXoY+BS+L9LAUAVcKCkdEQoRXtFUrc8aFEELY0M9bgeFaEEhs80qFcv
 tYPVoeBegGNAYMnzvagL4qOiODo+ohdADBHY8k59Ggzi80JE8XcoSdRViVRM0b3ACWMLHHiH
 y7RCPh4qiqVuUlQ0JdlxWZi5YyKw8lehZ3kT+cIvl5emUzeyZPSILL3YtjRZ7Fo2WXQjMOmS
 sGQcSRi3P6+TfkvaCJ/tlKF2W3vd1XeDZZtaSncc5WcHWNT1DpyxMj99IavQK0Dvlu0WkqqI
 ac/8kNKF2vnik+hHcaaT37z1MSx45l5T4KOnCVnxTUDYF70WUy5g02EirwOIhBb9A3JOGzNI
 AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xe7qxU9/EGWzvlrLoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZtGzYSurxdojd9ktlm36w2Rx
 8MMTVgdejzXz1jB67P22gMVj06pONo/t3x6wetzvPs7ksXlJvcftf4+ZPSbfWM7osftmA5tH
 35ZVjB6fN8kFcEfp2RTll5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSW
 pRbp2yXoZTybvpO14I1YxdbX/5gbGF8KdzFyckgImEjcWfqBqYuRi0NIYCmjxPeXP9kgEjIS
 J6c1sELYwhJ/rnWxQRR9YpSYPGE6WBGbgKFE11uIhIhAJ6PEtO6P7CAOs8BrJonWXWuAMhwc
 wgL+EtOv5II0sAioSizs+cIIYvMK2EmcONYDtUFeYvWGA8wgNidQ/HXLQbC4kICtxPIF75kn
 MPItYGRYxSiSWlqcm55bbKRXnJhbXJqXrpecn7uJERgr24793LKDsetd8CFGAQ5GJR7eFyGv
 44RYE8uKK3MPMUpwMCuJ8DqdPR0nxJuSWFmVWpQfX1Sak1p8iNEU6KiJzFKiyfnAOM4riTc0
 NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cBY/GGb0mMhFpbbvpf2BS5f
 meIilXgp/nLFx/4PjJuETwhHrhaQUV1qOnnVbwX2IAFFUb2i71y/XZ781ey8+KFoj7SB5Wm+
 vuUf/KpnxIV7uM47u1113T7/Df4Jh583NgptDP+pajsveYnBn7vPViyVX+hs9TMtaPKKRSnB
 3AuXn7CoXzT16vN1SizFGYmGWsxFxYkAE+qwkqsCAAA=
X-CMS-MailID: 20200619103717eucas1p23b82366794c92cc70c0492e4ca29c4a1
X-Msg-Generator: CA
X-RootMTR: 20200619103717eucas1p23b82366794c92cc70c0492e4ca29c4a1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103717eucas1p23b82366794c92cc70c0492e4ca29c4a1
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103717eucas1p23b82366794c92cc70c0492e4ca29c4a1@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033719_759724_0EDDCD1A 
X-CRM114-Status: GOOD (  13.66  )
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
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
 drivers/media/pci/cx23885/cx23885-alsa.c | 2 +-
 drivers/media/pci/cx25821/cx25821-alsa.c | 2 +-
 drivers/media/pci/cx88/cx88-alsa.c       | 2 +-
 drivers/media/pci/saa7134/saa7134-alsa.c | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/pci/cx23885/cx23885-alsa.c b/drivers/media/pci/cx23885/cx23885-alsa.c
index df44ed7393a0..3f366e4e4685 100644
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
index 301616426d8a..c40304d33776 100644
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
index 7d7aceecc985..3c6fe6ceb0b7 100644
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
index 544ca57eee75..398c47ff473d 100644
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
