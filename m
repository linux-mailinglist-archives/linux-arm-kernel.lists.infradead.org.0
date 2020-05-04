Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C7D1C3AB0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ig3WSP5/OOHRQqTlKx6uZctDu19cg8Qm6KW5rfzK56o=; b=g1ULzRQ4Pb3KY9wTmJyrxcWdL+
	r+nWlqzg/PJCjskOe4HNK3VuwhxZG/4aqGeXbpXvTBjG3/Fm6B8zNfgsQM5pihUCop6rhCOH0IpRY
	vNhZsSg828lZMzoyuB/cpuP4iFE8XaHIJCkDDukn3I7GNcGlwg6+ZtaJOLSecPE0htaHZ2dVXwYwP
	Yd0PaB/DhCWoT6OL5D6rgX7mqgFPDAQxmBYXxKpNOmKLB18Tga+bqEBFJ1adFP9UFI/uUzDU9RjTU
	LUOEa/tooR+KExGGug8L3Uk0L4PvdEkyW0735JgLrMRK8HCyGDpRtJHE8u657cRtLV4vLvoZiF43K
	oNesy4Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVahm-0001kG-2D; Mon, 04 May 2020 13:00:18 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVac6-0002kW-8p
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:54:29 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125424euoutp02e300c7b61cd44270ebef4f0896fd1b81~L1G6SaYnC1960619606euoutp02E
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 May 2020 12:54:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200504125424euoutp02e300c7b61cd44270ebef4f0896fd1b81~L1G6SaYnC1960619606euoutp02E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588596864;
 bh=OfDvq7QhD2ccXim65GDD0KiajVxCHZdmwkhCxnNXzfI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dKSgYnbIyfzh7IPxZqpqXivisIWfXSYuVRHIFScXEDBb2IV7ssvDggqxbgsosZwIR
 ADSpr7gtwg+q43+zbZGxT7UGdNCS6iVrCn7pC63BfduWrAEUbJb0q7xvJsOTP9H52o
 8+NjDPXGTuyL/9BnOuHk/bsBVUPR3ijJNmI14tkc=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125424eucas1p265dac1ad69e1ea2930fc0557ed015feb~L1G6API-H2430824308eucas1p2j;
 Mon,  4 May 2020 12:54:24 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 8F.12.60698.08010BE5; Mon,  4
 May 2020 13:54:24 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200504125424eucas1p16cb0c33de857e1f470173c66710c088b~L1G5gslZD0158001580eucas1p18;
 Mon,  4 May 2020 12:54:24 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125424eusmtrp2abcaac47d2beda8a33b6c7d1fccdbe34~L1G5f-b3I2826928269eusmtrp2e;
 Mon,  4 May 2020 12:54:24 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-66-5eb010806d8f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B0.79.08375.F7010BE5; Mon,  4
 May 2020 13:54:24 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125423eusmtip2b1449c35e65efe0155ceb69b562955af~L1G4sFsXM0350503505eusmtip2Q;
 Mon,  4 May 2020 12:54:23 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 20/21] media: pci: fix common ALSA DMA-mapping related code
Date: Mon,  4 May 2020 14:53:58 +0200
Message-Id: <20200504125359.5678-20-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSW0wTQRTN7HbbpeniUmuYgIppREUjSNBkI4qa+LEffvBjfCQiFRZEaSFd
 QNGP8lCjhVYE0UJ8oBLB8iqlgqLSimJFQxFBBAUVeSikqLGUgEGwy6L+nXPuOffMTAZHpTbM
 D09QpTBqlSJRLhQL6p9NO9ZnkKaoDXmGQErnaEWoWkMNRs3VX0CpLvd3IXWnogWhOor6BVSJ
 NZya6BpAKPNgN0Z1Nl4RUrmmuxhV9bRfRN02zyDU4x9D2HZvuvJaJaAfTZYIaLPxnJBumPyE
 0R9z7AhdV6qh388OonRBTxmgH/RmCGm9xQhol3k5/cLtEkVK9ou3xDKJCWmMOiQiWnz449dJ
 UfJb3+Nnc26gGcAq0wIvHJIbYWVmG6YFYlxKlgM4cmkW5ckEgKeHihGeuAAs+zbsseHzEbcR
 5/UyAD89/I39SzTZOxBur5AMhdpxrZDDMvI0gM91Es6EknoU1ukNgBssJiNhm+WWiMMCMhAO
 tX6e1wlyK6z64hLxBwyAFSYbyjV7efQi3WpuDyS7RdA5cVHAe3bCYb0N8HgxHLNbFrJL4dz9
 6wgfyAZwwFEl4kkugJ1ZhoVEOOxz/BJyDSgZBGsaQ3h5B6xz6EX8lb1hz7gPJ6MemF9/GeVl
 Ap49I+Xdq2Cxvfpf7eNXr1Ee03DE9GHhgZ4AqMu2InkgoPh/WQkARuDLpLLKeIYNUzHHglmF
 kk1VxQfHJCnNwPOvXs7a3fdA08yhZkDiQC4h9rpqoqSYIo1NVzYDiKNyGXHvlEciYhXpJxh1
 0kF1aiLDNgN/XCD3JcJujh6QkvGKFOYowyQz6r9TBPfyywCP9AHulct77l/P+lEYXV5aHKey
 JGx2WpceGTPF/aTaN9HBvcrvM7feyC+3pZ9fpunzeXdyz24kTmbdZ8rTanahLpvB4SrNdBOw
 ducNon3RCqNztNC/yzZVEKyszv+KNEgS9Y1ZWUv8WoLWTEesu9oxtTJt1214pakwZpvGKa6V
 C9jDitC1qJpV/AFq4JfpUwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsVy+t/xe7oNAhviDPbLW/SeO8lksXHGelaL
 /9smMltc+fqezWLl6qNMFhdn3mWxWLDf2uLLlYdMFpseX2O1uLxrDptFz4atrBZrj9xlt1i2
 6Q+TxcEPT1gd+DzWzFvD6LH32wIWj02rOtk8tn97wOpxv/s4k8fmJfUet/89ZvaYfGM5o8fu
 mw1sHn1bVjF6fN4k53Hq62f2AJ4oPZui/NKSVIWM/OISW6VoQwsjPUNLCz0jE0s9Q2PzWCsj
 UyV9O5uU1JzMstQifbsEvYz7L76xF1wXr+joXsjcwLhfpIuRg0NCwETi6yqOLkYuDiGBpYwS
 OxefZ+li5ASKy0icnNbACmELS/y51sUGUfSJUeLKsodgRWwChhJdbyESIgKdjBLTuj+ygzjM
 AtOYJRY2PmcDqRIW8JOYPqMNzGYRUJV4cvIRI4jNK2Arsfb5Z3aIFfISqzccYAY5iRMoPrNX
 HSQsJJAvcffpP5YJjHwLGBlWMYqklhbnpucWG+oVJ+YWl+al6yXn525iBMbOtmM/N+9gvLQx
 +BCjAAejEg9vxOf1cUKsiWXFlbmHGCU4mJVEeHe0AIV4UxIrq1KL8uOLSnNSiw8xmgLdNJFZ
 SjQ5HxjXeSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGJk775ef
 TSw/G37zz+mj0+dd/Kslu8mm0aP/zEOP+y2caV7+8xS3R548k6V9lk9/ZUcPv1fEo0VS2X6d
 C+/qlv9K2m+1SrVm+34Pk3+r6iZLBSsV3nn/teD0tNqQtZXbfhcd3Ka68YSbsS/3p+cn1SuK
 3t7paa5VOdXefLMyau6nlbx7Fj2+uVyJpTgj0VCLuag4EQD2QRAGswIAAA==
X-CMS-MailID: 20200504125424eucas1p16cb0c33de857e1f470173c66710c088b
X-Msg-Generator: CA
X-RootMTR: 20200504125424eucas1p16cb0c33de857e1f470173c66710c088b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125424eucas1p16cb0c33de857e1f470173c66710c088b
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125424eucas1p16cb0c33de857e1f470173c66710c088b@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_055426_463616_1F88E3F4 
X-CRM114-Status: GOOD (  14.35  )
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
For more information, see '[PATCH v2 00/21] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread: https://lkml.org/lkml/2020/5/4/373
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
