Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 665BF1D1638
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HArcCKbfNObnaUhtzXustIYxjB3Y0+88mSC4saPFBoQ=; b=BwHXlDVgZvhPMilNR3loN+CazO
	YUeuToKEQPO5gH4N49is0TsFO/KTq5cdZ//bxMc3pspMHnu59gm1xAsuKPA6nu5jdGsw/JEv/wz5t
	aG0GTe1yuoM1e9xt5VpgZmtXKEP2attpUpTk+kg5omSFT0Nhri4SQNzTa1ETxopqHHko3NfMWKcSo
	M4lxr+uke6K6Dxav3bYKoWk+P4pVkw1riBZAZvpjCZkP7cNml7c0ay8/kKil5rnkADjm9XgCTqdNu
	+ZDtgG6/0hhiN8QzvTH3IfXLvBII5eiqSHejEueeSSgLj4YNPe4I+ibigPOQxJDyPP8cAyp2nOxLM
	cc8PO7rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrgm-0007Nq-N2; Wed, 13 May 2020 13:44:48 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVn-0001n4-UM
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:32 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133325euoutp0137053479a7771d84c6ba32b68435bfe1~Omcid8a4S2196321963euoutp017
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:33:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133325euoutp0137053479a7771d84c6ba32b68435bfe1~Omcid8a4S2196321963euoutp017
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376805;
 bh=vazhLbBFeBfCMmXGmU9SyqWVzV61/EYfNXSyQFwWX60=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=t6OWEL3oAAP6MKLigohfRj18mA1iVSeQ2UvOkZufhp2vXEiakv/co/1SEyhZN4ZGV
 jJ4aJJr+Dwval3uY7V9/mvgOVhhMrGhE608ey5Quc9+/ER1TMYiL7euED8NxNNb0m+
 ktp9wjSs4UhLuR7c2FMohGvSKWq0ctdjj488BkdU=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133324eucas1p2ee28c7c8b40096d69e61ccb40869df42~Omch_6t3M0359403594eucas1p23;
 Wed, 13 May 2020 13:33:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id B5.E8.60698.427FBBE5; Wed, 13
 May 2020 14:33:24 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133324eucas1p25dc380046c516ca8f07677ed14f93e63~Omchmc1d82378623786eucas1p2K;
 Wed, 13 May 2020 13:33:24 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200513133324eusmtrp2b236c8e390a3dcbb4effa40b7a2b4706~Omchld4Np1338613386eusmtrp2x;
 Wed, 13 May 2020 13:33:24 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-09-5ebbf724383e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C8.2A.08375.427FBBE5; Wed, 13
 May 2020 14:33:24 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133323eusmtip151829cf8f1691cbe8793eb3d45b0170f~Omcg8hyPy3222032220eusmtip1I;
 Wed, 13 May 2020 13:33:23 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 37/38] media: pci: fix common ALSA DMA-mapping related codes
Date: Wed, 13 May 2020 15:32:44 +0200
Message-Id: <20200513133245.6408-37-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRjHec/Zzs6Ws+OUfLVIGyolpJkWJzRLiDj4IYyKIMiaeVDJW5uz
 LEJJvM0L5SDFpEQky6nTOaepectbWktU5t3mJS3FlKZWMrVtp+zb73me//99Lrw4KqhlO+IR
 0XG0OFoUKcR4LE3X709HXX42Bh+rSjlBZmvfI2R1vpJN7mieoOTQ+gpGvlZ0ImRRiy+5NjSN
 kKpZHZscbCjEyKyqWjZZ0THJIV+qjAjZtjrHPsunyp+XA+rtRhGLUpVlYFTdhp5Nfc7sRqia
 kkRqfHsWpeQjpYBqHE3CqBx1GaAMqoNBe67x/ELpyIh4Wuzpf5MX3jsyh8VmwnstW/NYEvhh
 JwNcHBI+8ItBgcoADxcQrwDMny5mMcEagOrRJsysEhAGAJcWEmUAtziy5JcYTSmAX4u3sF1D
 yXK7xYARXlC2LLOwHZECYE+2lVmEErMILFLqLAVb4iLMq5YjZmYRrvBZRgnLzHziNMxsamAx
 8zlBRVUramauKb840WIZDxJdHDgw2YMxonOwV9b012ALF7vVHIYPwJ03LxDGkAzgtLaCwwRZ
 AA4+ygeMyhdOaDcx83IocQQqGzyZPQOgtk7IoDUcWbYxi1ET5mryUCbNh+mpAuYNN1jQXbnb
 ta1/AGWYgjtpExzmQO8ATM6oxx4Dp4L/vYoAKAP2tFQSFUZLvKPpux4SUZREGh3mcSsmSgVM
 n6lvu3u9HjQbQ9oBgQOhFV8/3BgsYIviJQlR7QDiqNCOf0FpSvFDRQn3aXHMDbE0kpa0g/04
 S2jP9y7+dl1AhIni6Ns0HUuL/1URnOuYBNxOVp26Iw3J3Vr12Rfkr3G2XnCChvnQyDNDe/Uz
 6X3GskCRTh9ojdpTlc0prTUP3cZSrziUfyBt6MNuvVZqbyN7fpRyVRSGj4ypY1bwQ5tyTkCn
 Ytzv/K/htAfuWTLfZK8Z5XdnTYcu9riiIoe3eXmpeHtqqp979eO4i/NTByFLEi7yckfFEtEf
 1Huf3kgDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7oq33fHGaydImPRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzaJnw1ZWi7VH7rJbLNv0h8ni
 4IcnrA68HmvmrWH02PttAYvHplWdbB7bvz1g9bjffZzJY/OSeo/b/x4ze0y+sZzRY/fNBjaP
 vi2rGD0+b5IL4I7SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3s0lJzcks
 Sy3St0vQyzh14wlbQbdExf6/z9gaGD+JdDFycEgImEj0TA7uYuTiEBJYyihx8c5dpi5GTqC4
 jMTJaQ2sELawxJ9rXWwQRZ8YJX69OcoOkmATMJToeguREBHoZJSY1v2RHcRhFnjNJNG6aw0b
 SJWwgL/E7zPNYKNYBFQlZncuYQGxeQVsJbr37GKBWCEvsXrDAWYQmxMo/urOfrC4kEC+xN7F
 +9gmMPItYGRYxSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERgr24793LyD8dLG4EOMAhyMSjy8
 Frd2xwmxJpYVV+YeYpTgYFYS4fVbDxTiTUmsrEotyo8vKs1JLT7EaAp01ERmKdHkfGAc55XE
 G5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYGzY9lF2VW8iE9fRN0vl
 X9WZZWmXbApdP5uj+duFm3s6+VT3ht46n5M5zdQ4/3JIgvv3wmmnrVrmy0j5bdV3PflgbkdN
 4gMhyVmRWZu2FSyYIDJ97R6pzsPePRyK3RfnL2lQEF+YZ1e5ROWpxWKVSXwdy/2v28XkPrdi
 9TYKPntQJuNvc4SUtRJLcUaioRZzUXEiALcYtIOrAgAA
X-CMS-MailID: 20200513133324eucas1p25dc380046c516ca8f07677ed14f93e63
X-Msg-Generator: CA
X-RootMTR: 20200513133324eucas1p25dc380046c516ca8f07677ed14f93e63
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133324eucas1p25dc380046c516ca8f07677ed14f93e63
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133324eucas1p25dc380046c516ca8f07677ed14f93e63@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063328_127487_24D9AE5F 
X-CRM114-Status: GOOD (  13.73  )
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
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
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
