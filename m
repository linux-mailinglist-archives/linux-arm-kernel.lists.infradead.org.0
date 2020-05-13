Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2E61D1535
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:33:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WFKTtd9bQ8OWYbO26y0thcW/1WVM0xBoHHffmZ2CwQ4=; b=Cy3TayxLXZ0ReDL4lndZ/WGv31
	ieIy8QYfBK7VUQRa9KGJ7i9zYaM+kxveHKSgorS10ucS9obshjsXLKbJ56tE1rveZHKWH84Fig+qF
	SV471goxPJXwlJxhULKYmRlesqyK7EclTWUYjvPXm1lOdVQhQwYgbF8nKg80ax4EQrDWoh2g4IhgQ
	NxdT0zgwk3NHgKS+cwyZKTQN7+rlAt8ZpMHZqjM5vdGcIRsz1wDD3gE06WsSsQzLaTx8ZhnUSOZC2
	DTgODupLrA7FoTmcsC4PblgVo3qYOEGkYXMtuh+gkvI/iSkhVkay5NGkW0ok9GKpKZg1EN2zQG5gg
	bGWn1KAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrVp-0001PF-EN; Wed, 13 May 2020 13:33:29 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVL-0001Kd-Rj
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:02 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133257euoutp02007f0b6716491de28e17546d8ca75ef1~OmcIiAKkP3216632166euoutp02g
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:32:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133257euoutp02007f0b6716491de28e17546d8ca75ef1~OmcIiAKkP3216632166euoutp02g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376777;
 bh=SMTxZNZpTSAf+VjaRdwIa7Y+Y92ELOA8MjwAFVO+Mus=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VKrLxF3KEiWmVZ1axlhSlzty0rd2nUqXsHuI7B7LU28r5TvCvsp+0bgDe4vtq9QOY
 WiKZcd124gvPVjK5otBDPFZ8OFs4Ng94v6RMIBwxoj8zDX9Eu+NKd2eBdrnLRwwAaZ
 2zo3AcPWxR1hl6t0/nrmIY5WXFjlcZ6Vzn2OE+7A=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133257eucas1p1ab88f1465f6ce76a0c7f470a63001ea2~OmcIUwDTB0876608766eucas1p1h;
 Wed, 13 May 2020 13:32:57 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id FD.B5.61286.907FBBE5; Wed, 13
 May 2020 14:32:57 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133256eucas1p273110d0c8f67e52fc7385acef776efaa~OmcH5dMRP0359403594eucas1p2L;
 Wed, 13 May 2020 13:32:56 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133256eusmtrp11bf699394ab06f7b9d70d588c796f3dc~OmcH4xvA20994509945eusmtrp1W;
 Wed, 13 May 2020 13:32:56 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-28-5ebbf709f135
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B7.0A.08375.807FBBE5; Wed, 13
 May 2020 14:32:56 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133256eusmtip10a029b12870de4156e2e5b8913fad120~OmcHTRPCk2465024650eusmtip1_;
 Wed, 13 May 2020 13:32:56 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 01/38] dma-mapping: add generic helpers for mapping
 sgtable objects
Date: Wed, 13 May 2020 15:32:08 +0200
Message-Id: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513132114.6046-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRju29nZzqbT45R80UyYJGSpSf04MLPCfpz+RAVZCpkrD2ptajte
 +6Moai0NL5XDUsS8OzUvaUzFHNkUaZSaTPOaFZbZwltYoG0erX/P7X2f7/v4CExajbsRMbEJ
 jDpWoZQJxPyO1xsmX9GvrvAjwzPOVJ5pkEe1aJtxaqujAKNG1ywCqq6hn0eV98qp1dE5HtU6
 P4ZTI/onAqrx1ZSQ6vv5CT9pR+vKdIjuWS/n053rszg9c8/Io9sq0+gPm/MYXWSuQXTXeLqA
 vt9ej+iV1v3nxGHiwEhGGZPEqP2DIsTRedn1KL7JO+VBZjWejno8NUhEAHkMzMZapEFiQkrW
 IuhbsAhthpRcRTC4xeOMFQTlOj3anfg+t8znjBoEj+pKd4h1ouJ9Js+WEpABoFnSCGzYhcxC
 MJBnb8MYqeVB/2KiDTuTl6HMMLq9lU8egIovOsyGJWQgGAe0ONfmCQ3PXm7rIvI4LD/fwG1l
 QDYJ4anFaC0jrOQ0zLyhuLwzfDO2Czm8D4aKcvlcPhPBnKlRyJFcBCMZ2p37yGHS9FtgW4SR
 B6FZ78/Jp8BUqMe5/Q5gXnLizu8AhR3FGCdL4E62lEt7Q4mx6V9t39thjMM0tC+27bxiPoJ2
 8yDKR54l/8vKEapHrkwiq4pi2IBYJtmPVajYxNgov+txqlZk/T1Dm8blF2ht+JoBkQSS2Uuo
 ia5wKa5IYlNVBgQEJnORnG22SpJIReptRh13VZ2oZFgDcif4MlfJ0YqvV6RklCKBuckw8Yx6
 1+URIrd0hO9Jsp8oyDhx2P9jWkujV+g7cw3sveDhkdDL5FQ5uKvOB1eG6lLsSkM0d32TJmYV
 cWeSu8URh5zAyzF1hk3rnizOueW5EPRHqZ2XpGT/yCzqlVvknXaPLzo+ZNDspc35YGHVWOf0
 Z33bjfGpwKy4kNaSaQsVUqca8MnNlYcVyfhstCLAB1Ozir/3t71COQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupikeLIzCtJLcpLzFFi42I5/e/4XV2O77vjDCb9MbLoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12i4MfnrA6cHusmbeG
 0WPvtwUsHtu/PWD1uN99nMlj85J6j9v/HjN7TL6xnNFj980GNo++LasYPT5vkgvgitKzKcov
 LUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxLLdK3S9DL6G1bxViwTq1i
 SvMy1gbGvfJdjJwcEgImEm8efmLpYuTiEBJYyijxasFTVoiEjMTJaQ1QtrDEn2tdbBBFnxgl
 3h14DpZgEzCU6HoLkRAR6GSUmNb9kR3EYRaYxySx6OEhdpAqYYEwiZ0ftoHZLAKqEouerWEG
 sXkFbCSOn5gBtUJeYvWGA2BxTgFbiU9bf4LFhYBq1rbOYZvAyLeAkWEVo0hqaXFuem6xoV5x
 Ym5xaV66XnJ+7iZGYDxsO/Zz8w7GSxuDDzEKcDAq8fBa3NodJ8SaWFZcmXuIUYKDWUmE1289
 UIg3JbGyKrUoP76oNCe1+BCjKdBRE5mlRJPzgbGaVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZI
 ID2xJDU7NbUgtQimj4mDU6qBMaSi692hcinJ34t2HWxjfe1+2VN/o1/Uu6n6q+MfJNzYYd+y
 f00hzz4Z6V1fjF4fPrAveW7xvIJpB6LWr0/nf+uv6ye37IqIcPXl83lKdwIYk5RO7boQpFHR
 sXx1oEHYzjvRWp+dGJ8EuNV/jedZ3idy947AAeGUS0fPXd6cFXHQk3/htv97piuxFGckGmox
 FxUnAgDvD09CnQIAAA==
X-CMS-MailID: 20200513133256eucas1p273110d0c8f67e52fc7385acef776efaa
X-Msg-Generator: CA
X-RootMTR: 20200513133256eucas1p273110d0c8f67e52fc7385acef776efaa
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133256eucas1p273110d0c8f67e52fc7385acef776efaa
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <CGME20200513133256eucas1p273110d0c8f67e52fc7385acef776efaa@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063300_220461_B9A454D3 
X-CRM114-Status: GOOD (  16.93  )
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
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

struct sg_table is a common structure used for describing a memory
buffer. It consists of a scatterlist with memory pages and DMA addresses
(sgl entry), as well as the number of scatterlist entries: CPU pages
(orig_nents entry) and DMA mapped pages (nents entry).

It turned out that it was a common mistake to misuse nents and orig_nents
entries, calling DMA-mapping functions with a wrong number of entries or
ignoring the number of mapped entries returned by the dma_map_sg
function.

To avoid such issues, let's introduce a common wrappers operating directly
on the struct sg_table objects, which take care of the proper use of
the nents and orig_nents entries.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Robin Murphy <robin.murphy@arm.com> 
---
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
---
 include/linux/dma-mapping.h | 78 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
index b43116a..b50fe36 100644
--- a/include/linux/dma-mapping.h
+++ b/include/linux/dma-mapping.h
@@ -609,6 +609,84 @@ static inline void dma_sync_single_range_for_device(struct device *dev,
 	return dma_sync_single_for_device(dev, addr + offset, size, dir);
 }
 
+/**
+ * dma_map_sgtable - Map the given buffer for DMA
+ * @dev:	The device for which to perform the DMA operation
+ * @sgt:	The sg_table object describing the buffer
+ * @dir:	DMA direction
+ * @attrs:	Optional DMA attributes for the map operation
+ *
+ * Maps a buffer described by a scatterlist stored in the given sg_table
+ * object for the @dir DMA operation by the @dev device. After success
+ * the ownership for the buffer is transferred to the DMA domain. One has
+ * to call dma_sync_sgtable_for_cpu() or dma_unmap_sgtable() to move the
+ * ownership of the buffer back to the CPU domain before touching the
+ * buffer by the CPU.
+ * Returns 0 on success or -EINVAL on error during mapping the buffer.
+ */
+static inline int dma_map_sgtable(struct device *dev, struct sg_table *sgt,
+		enum dma_data_direction dir, unsigned long attrs)
+{
+	int n = dma_map_sg_attrs(dev, sgt->sgl, sgt->orig_nents, dir, attrs);
+
+	if (n <= 0)
+		return -EINVAL;
+	sgt->nents = n;
+	return 0;
+}
+
+/**
+ * dma_unmap_sgtable - Unmap the given buffer for DMA
+ * @dev:	The device for which to perform the DMA operation
+ * @sgt:	The sg_table object describing the buffer
+ * @dir:	DMA direction
+ * @attrs:	Optional DMA attributes for the unmap operation
+ *
+ * Unmaps a buffer described by a scatterlist stored in the given sg_table
+ * object for the @dir DMA operation by the @dev device. After this function
+ * the ownership of the buffer is transferred back to the CPU domain.
+ */
+static inline void dma_unmap_sgtable(struct device *dev, struct sg_table *sgt,
+		enum dma_data_direction dir, unsigned long attrs)
+{
+	dma_unmap_sg_attrs(dev, sgt->sgl, sgt->orig_nents, dir, attrs);
+}
+
+/**
+ * dma_sync_sgtable_for_cpu - Synchronize the given buffer for CPU access
+ * @dev:	The device for which to perform the DMA operation
+ * @sgt:	The sg_table object describing the buffer
+ * @dir:	DMA direction
+ *
+ * Performs the needed cache synchronization and moves the ownership of the
+ * buffer back to the CPU domain, so it is safe to perform any access to it
+ * by the CPU. Before doing any further DMA operations, one has to transfer
+ * the ownership of the buffer back to the DMA domain by calling the
+ * dma_sync_sgtable_for_device().
+ */
+static inline void dma_sync_sgtable_for_cpu(struct device *dev,
+		struct sg_table *sgt, enum dma_data_direction dir)
+{
+	dma_sync_sg_for_cpu(dev, sgt->sgl, sgt->orig_nents, dir);
+}
+
+/**
+ * dma_sync_sgtable_for_device - Synchronize the given buffer for DMA
+ * @dev:	The device for which to perform the DMA operation
+ * @sgt:	The sg_table object describing the buffer
+ * @dir:	DMA direction
+ *
+ * Performs the needed cache synchronization and moves the ownership of the
+ * buffer back to the DMA domain, so it is safe to perform the DMA operation.
+ * Once finished, one has to call dma_sync_sgtable_for_cpu() or
+ * dma_unmap_sgtable().
+ */
+static inline void dma_sync_sgtable_for_device(struct device *dev,
+		struct sg_table *sgt, enum dma_data_direction dir)
+{
+	dma_sync_sg_for_device(dev, sgt->sgl, sgt->orig_nents, dir);
+}
+
 #define dma_map_single(d, a, s, r) dma_map_single_attrs(d, a, s, r, 0)
 #define dma_unmap_single(d, a, s, r) dma_unmap_single_attrs(d, a, s, r, 0)
 #define dma_map_sg(d, s, n, r) dma_map_sg_attrs(d, s, n, r, 0)
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
