Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 620F11CF115
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:08:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VyjTEcsNmBTh1GKQgJ1WD+U4l2P8ik2ENppvAalw3XE=; b=uFHc93vfFBRGzDLl20ZevltkoJ
	dHg51sjD8hSpPOgPp0tDh2rDISfw5M+BeTJN6+smvYUkOnw+KPisa8kVn4fuCztASNr8gcWFs+ZoP
	ZyDqHsF+ieHZ0irQhERqgyGZ0lNlqCxTmZy+cysTbRu2/G2aZny4rgK9HQbMHsoWL4cHsHAllSagf
	bB6Qsbicm0Z8k00RWbPKWt6ObokjKSIKNvFmjylebLbQrrMslcChLSkkIfsuQtni7Fu6iZGa6Y38A
	pxWAyXlbaK/eY3aWZffpDUMzt4yTgAaKxoonYyb6Qjz3A3AtQwixPxgbkT/d1M6M8DcOzFr7u7GY3
	45YGqilQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQtc-0000Yq-NR; Tue, 12 May 2020 09:08:16 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQmu-0002Ft-Lg
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:28 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090119euoutp011397b55ab0b0f89b76861ad617c08e50~OPFrEimmv2635826358euoutp01J
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090119euoutp011397b55ab0b0f89b76861ad617c08e50~OPFrEimmv2635826358euoutp01J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274079;
 bh=TS+R++/35z+8pOqT3rYTVDSKvpj2LbHFUMlM1EHIcnM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hBnA/zfa8UUv5jlvDvekM5dQP+WFw+dzdUHg2bpL+0f4wDYW8PQk1FwsOrjpb2vGJ
 NWwKPW4XVauMNp6bUuMEE+esatpIJhzgQNDrnE/4IHH8VE2u2B+L4YssHxPrD/DuWz
 YSdyfYPr0McE1AKPuuhin2oXbebUsTLOBhIF6DaQ=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090118eucas1p10de5c1a4a70372d2058690c63cc2738c~OPFq3D4_41182411824eucas1p12;
 Tue, 12 May 2020 09:01:18 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id DF.6B.60698.ED56ABE5; Tue, 12
 May 2020 10:01:18 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090118eucas1p19ed5cf76c6e1e3f3bcaaefaeff7cf333~OPFqinEWG0415004150eucas1p1L;
 Tue, 12 May 2020 09:01:18 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090118eusmtrp2f0d9fe44b6c2ea76935a6c072543a0e3~OPFqhKYiL0472704727eusmtrp2I;
 Tue, 12 May 2020 09:01:18 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-2d-5eba65de7321
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 92.45.08375.ED56ABE5; Tue, 12
 May 2020 10:01:18 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090117eusmtip15bc9b1cbe9c7e8c73834f2e16cc5dfd1~OPFp1HpU90969509695eusmtip1Y;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 19/38] drm: panfrost: fix common struct sg_table related
 issues
Date: Tue, 12 May 2020 11:00:39 +0200
Message-Id: <20200512090058.14910-19-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0gTcRznd3e73ZaLayn+socxSUrylRUXlj2IuMg/CiS0h7XyMMmt2Pks
 M8vS+U6DEgsfQ9Sm05pi29LSoWkJy+YDxXyhIQaSpU4N0Xae2X+fx/fzffz4EajUJHAhIpRR
 jEopj5ThYqz+46LFc4gxhfrMZ/tQWZZPCPUmv0ZArdTnolT33E+celXZilDFH/yp2e5RhNKP
 9QqoLtNLnNK1DAqplQaDkGqeHhdQ2TorfkxCVxVWAdowWAroRlsxRuu1aTj91jYioIcz2hC6
 tvQ+PbA8htJP+8oB/a4/Caez67SAntHvOOtwQXw4jImMiGFU3gFXxTcKe8z4beuWuJVWszAJ
 NDqlAxEByf0wre43ng7EhJSsALCk+ssamQXwQUaVkCczAC7k5NkJsRrRacRcWkqWA5ilubQe
 KKtU45yBk74wfSp9FTuSjwFsz3LgilByHIF9CzoBZ2wmg+Cy8RnCNcXIXVC3FMLJEjIA9mZW
 oPx6rrDyddMqFtn14aIljOsDyc9C2Dmjxviik9DW0Qt4vBn+aKsT8ngbXDEWIXwgGcBRi07I
 k0wAux7mryX84TfLH5zbAiX3wBqTNy8fh+OTUxh/8UbYN7WJk1E7zKt/jvKyBKpTpHy1Oyxo
 q14f29xpXdufhhMGE8I/UCuAttRB8AS4FvwfVgyAFjgz0awinGH9lEysFytXsNHKcK/rtxR6
 YP9RHcttcwbwfumaGZAEkDlI1PuMoVKBPIaNV5gBJFCZo+RRhF2ShMnj7zCqW1dU0ZEMawZb
 CUzmLPHTTF6WkuHyKOYmw9xmVP9chBC5JAHP+aPt253KbJn3EtKCk7GWwODEroCPh16UJZpz
 4nwOnjuf4DI+Mpryq9ytmFxGayxKbYf6693cA0fU7iV077DbXqslxOn0wPcTOQ0vNBO7L0fE
 Gh011hLPfuMpTaBotDZ4ulHbM2TR72zuDj0r8myYPcMupgXrNlz0CDKkNukUMoy9Iff1QFWs
 /C/SNyZrTQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprNIsWRmVeSWpSXmKPExsVy+t/xu7r3UnfFGdz9JWbRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFv/37GC3OPjhCatF
 39pLbA68HmvmrWH02HF3CaPH3m8LWDw2repk89j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJexryrh9gKLklW/D96iL2Bca9oFyMHh4SAicTaRVxdjFwcQgJLGSU6pnQz
 dzFyAsVlJE5Oa2CFsIUl/lzrYoMo+sQocb3zG1gRm4ChRNdbiISIQCejxLTuj+wgCWaBN0wS
 l65GgNjCAkES7/+cZQbZxiKgKrH2TyRImFfATuJazwqoZfISqzccALM5geL35/9hAbGFBAol
 Hl19yzKBkW8BI8MqRpHU0uLc9NxiQ73ixNzi0rx0veT83E2MwIjZduzn5h2MlzYGH2IU4GBU
 4uHtMNoZJ8SaWFZcmXuIUYKDWUmEtyUTKMSbklhZlVqUH19UmpNafIjRFOimicxSosn5wGjO
 K4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAKMS1fGXRx6c/g7c9
 vXlih26t06GavJDIwrtfw4vPbI5Kj5RieRsiw8u75dB6US2xu2vUOd9JcnWFcXr7fvkVdeVb
 993r/SdqF1gsODHx1rPtyRPSPdtTrbg0N2zfJq93+uXOdy/DfKI71bS1Q/85z3N9N3lPYvcy
 qblN5jNP80wsOhN3pVI4S4mlOCPRUIu5qDgRAKJEFoiuAgAA
X-CMS-MailID: 20200512090118eucas1p19ed5cf76c6e1e3f3bcaaefaeff7cf333
X-Msg-Generator: CA
X-RootMTR: 20200512090118eucas1p19ed5cf76c6e1e3f3bcaaefaeff7cf333
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090118eucas1p19ed5cf76c6e1e3f3bcaaefaeff7cf333
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090118eucas1p19ed5cf76c6e1e3f3bcaaefaeff7cf333@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020120_880110_4F64D8F0 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
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
Reviewed-by: Steven Price <steven.price@arm.com>
---
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
---
 drivers/gpu/drm/panfrost/panfrost_gem.c | 4 ++--
 drivers/gpu/drm/panfrost/panfrost_mmu.c | 7 +++----
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_gem.c b/drivers/gpu/drm/panfrost/panfrost_gem.c
index 17b654e..6696304 100644
--- a/drivers/gpu/drm/panfrost/panfrost_gem.c
+++ b/drivers/gpu/drm/panfrost/panfrost_gem.c
@@ -41,8 +41,8 @@ static void panfrost_gem_free_object(struct drm_gem_object *obj)
 
 		for (i = 0; i < n_sgt; i++) {
 			if (bo->sgts[i].sgl) {
-				dma_unmap_sg(pfdev->dev, bo->sgts[i].sgl,
-					     bo->sgts[i].nents, DMA_BIDIRECTIONAL);
+				dma_unmap_sgtable(pfdev->dev, &bo->sgts[i],
+						  DMA_BIDIRECTIONAL, 0);
 				sg_free_table(&bo->sgts[i]);
 			}
 		}
diff --git a/drivers/gpu/drm/panfrost/panfrost_mmu.c b/drivers/gpu/drm/panfrost/panfrost_mmu.c
index ed28aeb..eb2550e 100644
--- a/drivers/gpu/drm/panfrost/panfrost_mmu.c
+++ b/drivers/gpu/drm/panfrost/panfrost_mmu.c
@@ -253,7 +253,7 @@ static int mmu_map_sg(struct panfrost_device *pfdev, struct panfrost_mmu *mmu,
 	struct io_pgtable_ops *ops = mmu->pgtbl_ops;
 	u64 start_iova = iova;
 
-	for_each_sg(sgt->sgl, sgl, sgt->nents, count) {
+	for_each_sgtable_dma_sg(sgt, sgl, count) {
 		unsigned long paddr = sg_dma_address(sgl);
 		size_t len = sg_dma_len(sgl);
 
@@ -517,10 +517,9 @@ static int panfrost_mmu_map_fault_addr(struct panfrost_device *pfdev, int as,
 	if (ret)
 		goto err_pages;
 
-	if (!dma_map_sg(pfdev->dev, sgt->sgl, sgt->nents, DMA_BIDIRECTIONAL)) {
-		ret = -EINVAL;
+	ret = dma_map_sgtable(pfdev->dev, sgt, DMA_BIDIRECTIONAL, 0);
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
