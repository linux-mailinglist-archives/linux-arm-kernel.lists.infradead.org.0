Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 618771CF132
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:11:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZfqB/u0bV8X22HCC3+2GZJYE1FKEo9txm+WuZaXBquo=; b=oFTxkaPfgtvNrfBf2OmS8FqEK2
	7HFGLqUJTFFUjgfeha3QGLk4zGTVWa6L4Cd0BU2uS92tnudYSrQFml1d82pqyVxK5UVwaDcmQ1J7k
	lTCG5MVTCMvJTmuI91fgIUsA009dIaD92dyKex8Mrex5u08DeUwAxMOP4kNXQoCK/ZSRD6JLjUarq
	T1T3QsJASfVCyvJCo5+boUq4GLCPFK9SKpPDrCF1OkjeOD3lwGybKWN8NKi7Req60ngFo7I2JkCE8
	MgE3HtijuZAY+nL7K5W6a4xAB69AlwnRBXZjTqowna4kla6kBeyi/+/8sF6jjbjVEDZmaK4+VWS6U
	W2Jq+KRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQwA-00039B-PM; Tue, 12 May 2020 09:10:54 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQn4-0002Qp-UP
 for linux-arm-kernel@bombadil.infradead.org; Tue, 12 May 2020 09:01:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:Content-Type:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Rwju2mk4h19tk4w1aCHPPhRoJ+7dfhbXT8dUTwIALLo=; b=O6W12CkajJZGyLJoEcgPCZ5iig
 2TPXK1FKR/XTluF7URaqjJW6YIfZYctkanqoAhdRciaXXtj3EKDE0FgZ/2I0IjXb4Hr1juB1RyT09
 LBmQmvpfQGDBFhXPGiktEaYpUssPXVE3kKLDcWj7/HsuZ/oZ/joY7VhMPGixSDLm+dgO51kRy2+Zk
 v15sMlq4A/POb3RTIzRKHrjPwQf9v6xZAHWgkZOrA7RnCcLWcFjNVQnhS7n9GI51BBgbVQVCgkQs8
 zZvsd1J727A/hO5Bin7BvnvHQe8Fm+IqAoprtPqX+gvgyWkU4DUtv8rYMM9R0gF8h06Wr7eZWk1/Q
 LPPBTIzQ==;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQn2-0004VL-4y
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:29 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090124euoutp01eec3dc2b4c649e44cddc00104affc715~OPFwFZ8IO2635826358euoutp01R
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090124euoutp01eec3dc2b4c649e44cddc00104affc715~OPFwFZ8IO2635826358euoutp01R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274084;
 bh=Rwju2mk4h19tk4w1aCHPPhRoJ+7dfhbXT8dUTwIALLo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UmC/QYJooQo/zor754ZHRZgJyF5ySozXth8T4yGRxDsaxLJ2FuE9A3t46dVqYriJM
 YlaPhvq6a09VyH7YN/oawhFI1MWBismK7VBMaurcVhfxfcdcg6IuCNGiUcZZ/9MTVg
 RhRlg66hl1AmRp2l9gcl4DL68mq1MUc3OEwcWcSE=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090124eucas1p265e4e9dd93c75212ba63656fb938b50c~OPFvzaAVR3098030980eucas1p2L;
 Tue, 12 May 2020 09:01:24 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 43.32.60679.4E56ABE5; Tue, 12
 May 2020 10:01:24 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090123eucas1p25758ba07ba913e5a3eeca13c7f386fdb~OPFvg8iwk0955009550eucas1p21;
 Tue, 12 May 2020 09:01:23 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090123eusmtrp2069e92e9280ffb857217ee8c202a2166~OPFveJxoI0472704727eusmtrp2S;
 Tue, 12 May 2020 09:01:23 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-ca-5eba65e4061e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 39.45.08375.3E56ABE5; Tue, 12
 May 2020 10:01:23 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090123eusmtip197b92c77ed49de95c4ac3bbe1e827748~OPFu4RjmH0854008540eusmtip1K;
 Tue, 12 May 2020 09:01:23 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 28/38] drm: host1x: fix common struct sg_table related
 issues
Date: Tue, 12 May 2020 11:00:48 +0200
Message-Id: <20200512090058.14910-28-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTQRyHnd3tdkHWrIWECYiYIgRM5NS4WiVoMO6DD8QHRYxIlRWItJCW
 02gkiEfLEUWNWAmHmqCUu4TaGsIlVEJFTgELIoJGMagJyCEIdlnQt2++/2/mN5kMgYp0Aici
 Rp7AKuTSWDFui9W1LXTunGCN4b7zXTid3dmO0NV5lQJ6pe42Svf9+oHTz7StCF3UIKFn+sYQ
 umb8rYDuNebjtGpGg9PlL0eEdNPPCQG9YCzAgkimrKAMMPWzRRhj0IwIGf3sBwEzmmlCGN2T
 K4xleRxl7gyWAObFUBrO5NSWAma6ZmvIxjDb/ZFsbEwSq/AJjLCNnuvXY/G5LinV3RosDdQ7
 qoENAaldsCXdgHEsop4COGUJ53kGQFOuRA1srTwNYHaNHlvf0NVXCfhQCYCP3+3hQ9YN3dUP
 EG6AU35QPaXGOXagrgH4KtuOC6HURwSqBrpRbmBPHYOLxbrVkzDKHWY23bU2EARJBcI6Qwhf
 5gq1VY2rcRurHi1cWrtEmxCqByQ8B8N6nXbN28NJU62Q5y1wxVCIcL2QugrgWGe5kF9kAdib
 ngf4lAQOd/7GuWKU8oKVRh9eH4Rm/SDgNKQ2wcGpzZxGrZhbdx/lNQlvXhfxaQ+oMVX8q23q
 6kF5ZuBckRbn36cVwOLPY8gt4Kr5X1YEQClwZBOVsihW6S9nk72VUpkyUR7lfS5OVgOsX6lj
 2TTzHBiXzjYDigBiO9LX1xAuEkiTlKmyZgAJVOxAZsRYFRkpTb3IKuLOKBJjWWUzcCYwsSMZ
 8OjraREVJU1gL7BsPKtYnyKEjVMauDGtDf6u/qLasDhfmfUm4pvbpYjQ5IqjS/ea9Qe2H8rP
 eNimKTPuDtVT5infE/0nGyyuYVWGQU+3P+KhDo/F9uMu2uWxRK8e877Le09Zcs05wWQkLWpR
 nQ9SRb/vasx0dx52t+jN0rwV1bbDRxwDXttNVid9IlWBKfLsYn/PHJkYU0ZL/XagCqX0Ly90
 QFNGAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7qPU3fFGdzdpGnRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzaLzyyw2i7VH7rJbHPzwhNXi
 5655LA68HmvmrWH02PttAYvHzll32T22f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+6bDWwe
 fVtWMXp83iQXwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl/H96naWgkmyFRsvzmJpYNwr3sXIySEhYCJx4cp6xi5GLg4hgaWMEqtfHGCESMhI
 nJzWwAphC0v8udbFBlH0iVHi8t6rYEVsAoYSXW8hEiICnYwS07o/soM4zAKvmCQ+/GkFqxIW
 CJC4f38lE4jNIqAq0X1wCksXIwcHr4CdxLadARAb5CVWbzjADGJzAoXvz//DAmILCRRKPLr6
 lmUCI98CRoZVjCKppcW56bnFhnrFibnFpXnpesn5uZsYgbGy7djPzTsYL20MPsQowMGoxMPb
 YbQzTog1say4MvcQowQHs5IIb0smUIg3JbGyKrUoP76oNCe1+BCjKdBNE5mlRJPzgXGcVxJv
 aGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qBMezqRys51xtxRa8fNYtk
 Z3no8b/a8Sc0cOKC9vmHPvy+feHPZBHlqiazVSVLp7rdP346v2G+w0LvmvtdJWX3Mu10NXK2
 O8VtNz6meuS01VTfxWmPfBaIMD00j9v6l8dR/csyJ47GD6+c+NX3Z/3RCLQXXVsTfYQ5dbKD
 7c9X3z98ETnR678lTImlOCPRUIu5qDgRAOclplOrAgAA
X-CMS-MailID: 20200512090123eucas1p25758ba07ba913e5a3eeca13c7f386fdb
X-Msg-Generator: CA
X-RootMTR: 20200512090123eucas1p25758ba07ba913e5a3eeca13c7f386fdb
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090123eucas1p25758ba07ba913e5a3eeca13c7f386fdb
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090123eucas1p25758ba07ba913e5a3eeca13c7f386fdb@eucas1p2.samsung.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-tegra@vger.kernel.org,
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

To avoid such issues, lets use a common dma-mapping wrappers operating
directly on the struct sg_table objects and use scatterlist page
iterators where possible. This, almost always, hides references to the
nents and orig_nents entries, making the code robust, easier to follow
and copy/paste safe.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/host1x/job.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/host1x/job.c b/drivers/gpu/host1x/job.c
index a10643a..4832b57 100644
--- a/drivers/gpu/host1x/job.c
+++ b/drivers/gpu/host1x/job.c
@@ -166,11 +166,9 @@ static unsigned int pin_job(struct host1x *host, struct host1x_job *job)
 				goto unpin;
 			}
 
-			err = dma_map_sg(dev, sgt->sgl, sgt->nents, dir);
-			if (!err) {
-				err = -ENOMEM;
+			err = dma_map_sgtable(dev, sgt, dir, 0);
+			if (err)
 				goto unpin;
-			}
 
 			job->unpins[job->num_unpins].dev = dev;
 			job->unpins[job->num_unpins].dir = dir;
@@ -217,7 +215,7 @@ static unsigned int pin_job(struct host1x *host, struct host1x_job *job)
 		}
 
 		if (!IS_ENABLED(CONFIG_TEGRA_HOST1X_FIREWALL) && host->domain) {
-			for_each_sg(sgt->sgl, sg, sgt->nents, j)
+			for_each_sgtable_sg(sgt, sg, j)
 				gather_size += sg->length;
 			gather_size = iova_align(&host->iova, gather_size);
 
@@ -229,9 +227,9 @@ static unsigned int pin_job(struct host1x *host, struct host1x_job *job)
 				goto unpin;
 			}
 
-			err = iommu_map_sg(host->domain,
+			err = iommu_map_sgtable(host->domain,
 					iova_dma_addr(&host->iova, alloc),
-					sgt->sgl, sgt->nents, IOMMU_READ);
+					sgt, IOMMU_READ);
 			if (err == 0) {
 				__free_iova(&host->iova, alloc);
 				err = -EINVAL;
@@ -241,12 +239,9 @@ static unsigned int pin_job(struct host1x *host, struct host1x_job *job)
 			job->unpins[job->num_unpins].size = gather_size;
 			phys_addr = iova_dma_addr(&host->iova, alloc);
 		} else if (sgt) {
-			err = dma_map_sg(host->dev, sgt->sgl, sgt->nents,
-					 DMA_TO_DEVICE);
-			if (!err) {
-				err = -ENOMEM;
+			err = dma_map_sgtable(host->dev, sgt, DMA_TO_DEVICE, 0);
+			if (err)
 				goto unpin;
-			}
 
 			job->unpins[job->num_unpins].dir = DMA_TO_DEVICE;
 			job->unpins[job->num_unpins].dev = host->dev;
@@ -647,8 +642,7 @@ void host1x_job_unpin(struct host1x_job *job)
 		}
 
 		if (unpin->dev && sgt)
-			dma_unmap_sg(unpin->dev, sgt->sgl, sgt->nents,
-				     unpin->dir);
+			dma_unmap_sgtable(unpin->dev, sgt, unpin->dir, 0);
 
 		host1x_bo_unpin(dev, unpin->bo, sgt);
 		host1x_bo_put(unpin->bo);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
