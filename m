Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552191CF11C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:08:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G3vIcEV+9d9vD+Px487I7g+I7vZgIA+wtpNk1YQg+sQ=; b=mib+FKV4nrM4K1egQOjx29s83J
	7QFulnyqI9qIqKYzsSQcMUFZOgKBv/hQMKajFYkx72vuunfudHsOCgC6zvuqOK2QFtLShawozzVrY
	Es0sFDvnL5v5Q/kPKUErnVYl67shyOCz41hgz9TW1H2U2CcYuAvOpM7LICz6O6E6KaVcZr9mlTjLA
	onXu3BccoTmuFWPZvUIdpXHfPhpy3Pg+KulMbe8WomUNKyxCpvAXm//lk5yxiLMbSIMDcrSZudda/
	8/+cpr7T5ojf4Lhv2i4z5UYhrKXlmONLGT8Pjgsdn5r8wCtvuOA7nVzETbXnKqkTwCrY3xLFbRUz8
	bJyHSRqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQtt-0000rh-Vh; Tue, 12 May 2020 09:08:34 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQmy-0002JT-9f
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:31 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090122euoutp0282ccd6cc104070be83e0b08a384024ef~OPFuei2K80522905229euoutp02a
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090122euoutp0282ccd6cc104070be83e0b08a384024ef~OPFuei2K80522905229euoutp02a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274082;
 bh=rhSC5COL1h1Dz6o7DjtlJNgJPJH9AQ4ZjiBmMtRkd3U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=giUzeo9mJX3z5x1kokUQ7KWLG9aw40KKAUApQR+ZXe/OIgnVm7AkvqpIuNR84xhU2
 dP74Ot6xQYZPYPq/iWtVnE43N6m1u1GeWOPu92F5P6jr21cABCvzOGFOvStrq3dLhO
 NwGw8hm+HX8PPplOIdeni/OItSgoTP9uk8smcAvs=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090122eucas1p2afa115093b86d01f85269c56d6bc275a~OPFuPTLRf1372813728eucas1p2Y;
 Tue, 12 May 2020 09:01:22 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id E7.67.61286.2E56ABE5; Tue, 12
 May 2020 10:01:22 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090122eucas1p10cc3f42cb0452a8a279fcc8702e50a7a~OPFt1Hdzb3053030530eucas1p1u;
 Tue, 12 May 2020 09:01:22 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090122eusmtrp1a0a85054f72ecc8fb8808473db1f0a0d~OPFt0YFlK0188101881eusmtrp1T;
 Tue, 12 May 2020 09:01:21 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-97-5eba65e299dd
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E0.03.07950.1E56ABE5; Tue, 12
 May 2020 10:01:21 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090121eusmtip1816550070391c915aab8c82555df8d5c~OPFtNMLkh0919809198eusmtip15;
 Tue, 12 May 2020 09:01:21 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 25/38] drm: virtio: fix common struct sg_table related
 issues
Date: Tue, 12 May 2020 11:00:45 +0200
Message-Id: <20200512090058.14910-25-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRzGfXe2szPb4jQlX0wSB0kGzUtSB5RRUXG+FNGXwMhaepqSN3ac
 pRJ5KS9LwxtkmkcLwdR5m6ZppKnpvM7bMrVyXkotMiWnoZm1eWZ9+73P/3ne5//CiyHi5zxH
 LDgsklKGyUMkqC23vnN94PAM1eTvMdcOiXR9N4eoya3iEX/qMxHCsLqEEqXlHRyiqMWHmJvo
 RgiTYZpDaGdHecRI02OUqHjzkU+0Ln/iESX9DHpcRGoYDSBfrRVxyYa1KR5pvK/jkLXFd8j3
 W7MImT1WAsiX43EoudT8FiUf1JUBckW7//wuP1vfQCokOIpSusuu2gY1D5nQiNWDt2rXc/hx
 QO+iBgIM4t5wueoJamEx/gzA/IIoNbA1swnAnjaTdbACYNngnp1AYn4WhzWVAKgxGPisyZxI
 rj5pYRT3hOpF9XbYHr8HYFe60BJA8AUOTPpdCywDO/wCNPblbpu4+AHIZCVsswiXwWJdOsq2
 OcPy6teIhQVm3Vi4ybVcBPFOPpxM/sZhTafgVrwGYdkOftXV8Vl2gr3ZadZAIoDT+go+e0gD
 cCQhF7AuH/hBv2Guw8z7ucGqJndWPgHbmWzEIkN8Nxxb3H4+Ysas+odWWQRTksSs2xXm6Sr/
 1bYODlvXIWHfJLuzGO8AsDAxg58BnPP+lxUBUAYcKBUdqqBozzDqppSWh9KqMIU0IDxUC8yf
 qXdL9+MFWB2+1gZwDEiEohSvRn8xTx5FR4e2AYghEnvR3WCzJAqUR8dQyvArSlUIRbeBfRhX
 4iA68vTLZTGukEdSNygqglLuTDmYwDEOnOkaH5OBjQJ55sRSqkfsaGz4u6MTgphUFaZo6vAK
 0M/o7U/b+F20q8zxdTu39/t8YUHSYL/Do1LmtnF5sPRSv7/3dW2LuOXX5grjyjS7KxlBfE98
 lnJmYb5B4kFHTmdWnG2Q0kNbvk7CKReeUDaQ9rPRhSedsjEdq8Q+1yASLh0k9zyEKGn5X9XI
 7FVIAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJIsWRmVeSWpSXmKPExsVy+t/xu7oPU3fFGdzZaW7Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8ezWSWaLL1ceMllsenyN1eLyrjlsFmuP3GW3OPjhCavF
 8rPz2Bx4PdbMW8PosffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObx/t9V9k8
 +rasYvT4vEkugDtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL2PfxS9sBV81Kjb/nMLewHhOsYuRk0NCwESiefYkpi5GLg4hgaWMEr/evWeCSMhI
 nJzWwAphC0v8udbFBlH0iVFi0aWlYEVsAoYSXW8hEiICnYwS07o/soM4zAIfmCT+/f3HBlIl
 LBAgsWvzErAOFgFViXmTmsDivAJ2EkuO97JBrJCXWL3hADOIzQkUvz//DwuILSRQKPHo6luW
 CYx8CxgZVjGKpJYW56bnFhvpFSfmFpfmpesl5+duYgRGy7ZjP7fsYOx6F3yIUYCDUYmHt8No
 Z5wQa2JZcWXuIUYJDmYlEd6WTKAQb0piZVVqUX58UWlOavEhRlOgoyYyS4km5wMjOa8k3tDU
 0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA2PuvOfei10T+12/er9qf/6k
 XFNou0rr6U1MC11sAjNcDG9dezvtN6tOyd9rwjlHrn+cyKOYseYed2/zzwuFu5mbonZEXNr7
 Q1KnN7Zk5YMfBnf299y/Eh3VlcDytTEojX1J1N+926+Zl7Ud2l38/tNj38NSDlYOdsfVrwid
 sRPdfMbzQBKHmboSS3FGoqEWc1FxIgCn5n02rAIAAA==
X-CMS-MailID: 20200512090122eucas1p10cc3f42cb0452a8a279fcc8702e50a7a
X-Msg-Generator: CA
X-RootMTR: 20200512090122eucas1p10cc3f42cb0452a8a279fcc8702e50a7a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090122eucas1p10cc3f42cb0452a8a279fcc8702e50a7a
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090122eucas1p10cc3f42cb0452a8a279fcc8702e50a7a@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020124_654332_ED298628 
X-CRM114-Status: GOOD (  16.34  )
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
 David Airlie <airlied@linux.ie>, virtualization@lists.linux-foundation.org,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
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
 drivers/gpu/drm/virtio/virtgpu_object.c | 36 +++++++++++++++++++--------------
 drivers/gpu/drm/virtio/virtgpu_vq.c     | 12 +++++------
 2 files changed, 26 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/virtio/virtgpu_object.c b/drivers/gpu/drm/virtio/virtgpu_object.c
index 6ccbd01..399556f 100644
--- a/drivers/gpu/drm/virtio/virtgpu_object.c
+++ b/drivers/gpu/drm/virtio/virtgpu_object.c
@@ -72,9 +72,8 @@ void virtio_gpu_cleanup_object(struct virtio_gpu_object *bo)
 
 		if (shmem->pages) {
 			if (shmem->mapped) {
-				dma_unmap_sg(vgdev->vdev->dev.parent,
-					     shmem->pages->sgl, shmem->mapped,
-					     DMA_TO_DEVICE);
+				dma_unmap_sgtable(vgdev->vdev->dev.parent,
+					     shmem->pages, DMA_TO_DEVICE, 0);
 				shmem->mapped = 0;
 			}
 
@@ -157,13 +156,13 @@ static int virtio_gpu_object_shmem_init(struct virtio_gpu_device *vgdev,
 	}
 
 	if (use_dma_api) {
-		shmem->mapped = dma_map_sg(vgdev->vdev->dev.parent,
-					   shmem->pages->sgl,
-					   shmem->pages->nents,
-					   DMA_TO_DEVICE);
-		*nents = shmem->mapped;
+		ret = dma_map_sgtable(vgdev->vdev->dev.parent,
+				      shmem->pages, DMA_TO_DEVICE, 0);
+		if (ret)
+			return ret;
+		*nents = shmem->mapped = shmem->pages->nents;
 	} else {
-		*nents = shmem->pages->nents;
+		*nents = shmem->pages->orig_nents;
 	}
 
 	*ents = kmalloc_array(*nents, sizeof(struct virtio_gpu_mem_entry),
@@ -173,13 +172,20 @@ static int virtio_gpu_object_shmem_init(struct virtio_gpu_device *vgdev,
 		return -ENOMEM;
 	}
 
-	for_each_sg(shmem->pages->sgl, sg, *nents, si) {
-		(*ents)[si].addr = cpu_to_le64(use_dma_api
-					       ? sg_dma_address(sg)
-					       : sg_phys(sg));
-		(*ents)[si].length = cpu_to_le32(sg->length);
-		(*ents)[si].padding = 0;
+	if (use_dma_api) {
+		for_each_sgtable_dma_sg(shmem->pages, sg, si) {
+			(*ents)[si].addr = cpu_to_le64(sg_dma_address(sg));
+			(*ents)[si].length = cpu_to_le32(sg_dma_len(sg));
+			(*ents)[si].padding = 0;
+		}
+	} else {
+		for_each_sgtable_sg(shmem->pages, sg, si) {
+			(*ents)[si].addr = cpu_to_le64(sg_phys(sg));
+			(*ents)[si].length = cpu_to_le32(sg->length);
+			(*ents)[si].padding = 0;
+		}
 	}
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/virtio/virtgpu_vq.c b/drivers/gpu/drm/virtio/virtgpu_vq.c
index 9e663a5..e5765db 100644
--- a/drivers/gpu/drm/virtio/virtgpu_vq.c
+++ b/drivers/gpu/drm/virtio/virtgpu_vq.c
@@ -302,7 +302,7 @@ static struct sg_table *vmalloc_to_sgt(char *data, uint32_t size, int *sg_ents)
 		return NULL;
 	}
 
-	for_each_sg(sgt->sgl, sg, *sg_ents, i) {
+	for_each_sgtable_sg(sgt, sg, i) {
 		pg = vmalloc_to_page(data);
 		if (!pg) {
 			sg_free_table(sgt);
@@ -603,9 +603,8 @@ void virtio_gpu_cmd_transfer_to_host_2d(struct virtio_gpu_device *vgdev,
 	struct virtio_gpu_object_shmem *shmem = to_virtio_gpu_shmem(bo);
 
 	if (use_dma_api)
-		dma_sync_sg_for_device(vgdev->vdev->dev.parent,
-				       shmem->pages->sgl, shmem->pages->nents,
-				       DMA_TO_DEVICE);
+		dma_sync_sgtable_for_device(vgdev->vdev->dev.parent,
+					    shmem->pages, DMA_TO_DEVICE);
 
 	cmd_p = virtio_gpu_alloc_cmd(vgdev, &vbuf, sizeof(*cmd_p));
 	memset(cmd_p, 0, sizeof(*cmd_p));
@@ -1019,9 +1018,8 @@ void virtio_gpu_cmd_transfer_to_host_3d(struct virtio_gpu_device *vgdev,
 	struct virtio_gpu_object_shmem *shmem = to_virtio_gpu_shmem(bo);
 
 	if (use_dma_api)
-		dma_sync_sg_for_device(vgdev->vdev->dev.parent,
-				       shmem->pages->sgl, shmem->pages->nents,
-				       DMA_TO_DEVICE);
+		dma_sync_sgtable_for_device(vgdev->vdev->dev.parent,
+					    shmem->pages, DMA_TO_DEVICE);
 
 	cmd_p = virtio_gpu_alloc_cmd(vgdev, &vbuf, sizeof(*cmd_p));
 	memset(cmd_p, 0, sizeof(*cmd_p));
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
