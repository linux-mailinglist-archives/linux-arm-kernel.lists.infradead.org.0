Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 073F01D157B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T8Rzaq4Aq2C+zUp5C755sVD9AgK2g5AK0UdBZwhhlFg=; b=ud+udGhSqkLoQmoHxszhK0YqHI
	S4wfw1IDPs4sNfURJi4+gIvRHXpegnfXHZd5rXyFs4iO7NBMHDw42iPpoHDpeP5nihSSOXbW783J9
	+l5x4lwSMMGI52WeMTC6Ykm3FyZYrYep88aF9fPsq4pQ73/3bku3pXA507DI4iY8+goIWXDPpU+UD
	FYrSDYAU0ehECzFjc8CKbhldWV783Fs1wrEUvxui93Kwh3QBRmRGGMgvmn9j29Eq8DPpn7ZyT8vjo
	AIlyilo1a3W5MrXX0m6SVFMQpIBVde4yaC/QGtxGckM8qRjZ97ONqCnH3QOwwR/tNlrn5SihJuseb
	CGs5NY+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrWk-0002QW-Ii; Wed, 13 May 2020 13:34:26 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrVN-0001Lc-0y
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:33:04 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133259euoutp0176db97ff47d9bd6f3f4b91338717d3de~OmcJ7kEdw2140621406euoutp018
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 13:32:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133259euoutp0176db97ff47d9bd6f3f4b91338717d3de~OmcJ7kEdw2140621406euoutp018
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589376779;
 bh=go833WUtGUeqjr8CAsYYWkYRfn1VEMrgJZsdzy8T3MA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tw8DR1CxzmmioRVEjwMGsmPWEczJRDYl/V2JEis9/oEpnSu49riaq4pZ6yxVGCLxr
 Fn3T6J/oeWJrr29Z9Tt7t0xXggiiJO3YmSfCxaYG6CacJhTFLDW96HINEqOcfjSOQY
 cXPjHFesq3BOSrb0iYZ+xg5h/SpDG3rTcSE6uLZI=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133258eucas1p17e5a2056843358c9468b6e2009d7d017~OmcJWZvTN2633226332eucas1p1S;
 Wed, 13 May 2020 13:32:58 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 2F.B5.61286.A07FBBE5; Wed, 13
 May 2020 14:32:58 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133258eucas1p2e8ffb90e5553c12419a5af5261b48f5e~OmcJDlZlr2029120291eucas1p2K;
 Wed, 13 May 2020 13:32:58 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133258eusmtrp121b121d239c04a654273b78d6838b65e~OmcJCQ68X0994509945eusmtrp1b;
 Wed, 13 May 2020 13:32:58 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-2c-5ebbf70a69aa
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 79.0A.08375.A07FBBE5; Wed, 13
 May 2020 14:32:58 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133257eusmtip155e8eb76c7cbe871b510eca19afc02e9~OmcIcHLlI2465024650eusmtip1-;
 Wed, 13 May 2020 13:32:57 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 03/38] iommu: add generic helper for mapping sgtable objects
Date: Wed, 13 May 2020 15:32:10 +0200
Message-Id: <20200513133245.6408-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+XZ2OS5np2n5YpI1MtPISwYd8kKByPnDQiO6kdbKg0re2JyX
 IvKCVvNCukSbJkNy3u+yxJWbszI1RNRE0zJvVIYoXjFM2zxq//2+530envf7+HBMWMexwcMi
 Y2hJpDhcxOWzNR/Wek7yV7VBrvIkIDN7OllkfX4th9zUZGPkwPIclyyvfM8iVToP8mlBHY9c
 GhhnkQ2Tgxyyv6WQS1a/+8oj2+anOOfMqam2IhZVVVSFqLcrKjb1euU7hxpL72BRja8eUSMb
 kxilGCpFlHY4kUtlNVUgarHhkP+eG3zPYDo8LJaWuHjf5ofKU7tRdJIwvvNlFysRZe2VIzMc
 iNMwXZKJmVhIlCHInbgsR3wjLyFILZ/iMYNFBBlKt51Aq26Ix5hKEWheqNFuok2djkwuLuEG
 8lk518RWRCqCj5nmJsaIFhYoU8QmtiQCoGRkcMvPJuxhorJ+q01AeMLzxGwu02YHlXX6rfXM
 CC+YGdWxTWVAGHiQUzyNGJMP1KinMIYtYaajicewLXQrMrYDKQjGe6p5zCEDQX9y/nbaA0Z7
 /hjrcON6jlDb4sLI52FQ85htkoGwgKHZfcwFLCBHk4cxsgCepAkZ9zFQdtTs1rb19m2vQ0GZ
 ooHDPFA7gmFFI/cZslP+L1MhVIGsaZk0IoSWukXScc5ScYRUFhnifDcqogEZ/1H3RsdCM1ru
 u2NABI5E5gLyizZIyBHHShMiDAhwTGQluFhrlATB4oT7tCTqlkQWTksN6CDOFlkL3It/BQqJ
 EHEMfY+mo2nJzpSFm9kkoqPDY2HtTrahtmbXL/hf6Z39YW8+rc8OcFC4H35T+jnwgDZe7Yj7
 n1F66yU+quObAvX66kWe70rzULJvWquH66l1699HWisDO6/q/XIe2O1HMd8w3azfJ4trf2Vr
 jgv8ed9C3aXOLtubc5LcOM8CPd9Fe0L108HF8PBsvKFA7pUnYktDxW5OmEQq/gd4pfHwQwMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsVy+t/xu7pc33fHGey/z2rRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t0Tl7A7vFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNWB
 x+PJwXlMHmvmrWH02PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HNo2/LKkaP
 z5vkArij9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S
 9DK6Wk8zFjQKVZyce4qpgbGPv4uRk0NCwERi3/4b7F2MXBxCAksZJZrWdTFCJGQkTk5rYIWw
 hSX+XOtigyj6xCixbfd0JpAEm4ChRNdbiISIQCejxLTuj2CjmAUOMEm8atsONIqDQ1jAX+L5
 TleQBhYBVYlHqzeyg9i8AjYSUxomskFskJdYveEAM4jNKWAr8erOfhYQW0ggX2Lv4n1sExj5
 FjAyrGIUSS0tzk3PLTbUK07MLS7NS9dLzs/dxAiMkG3Hfm7ewXhpY/AhRgEORiUeXotbu+OE
 WBPLiitzDzFKcDArifD6rQcK8aYkVlalFuXHF5XmpBYfYjQFOmois5Rocj4wevNK4g1NDc0t
 LA3Njc2NzSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTCKvL/34oqn4lyT63EZR1R+bf+6
 eJ7wdVFVC8nnfe5Hn60y1vcwYK2bz/lgyaQVqnM7j1/48lj5eFL7sgUFQbsEv3NY+DULz7Bx
 iWja5rsz+kb4tqoFzNI3YjT/VH6dpnRv56Jtn6Njvy55ItZbapFieUr85JYDBowvNWpZp7Q9
 YUisfqcd5v9ViaU4I9FQi7moOBEAy3gjmqYCAAA=
X-CMS-MailID: 20200513133258eucas1p2e8ffb90e5553c12419a5af5261b48f5e
X-Msg-Generator: CA
X-RootMTR: 20200513133258eucas1p2e8ffb90e5553c12419a5af5261b48f5e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133258eucas1p2e8ffb90e5553c12419a5af5261b48f5e
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133258eucas1p2e8ffb90e5553c12419a5af5261b48f5e@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063301_209750_781C63A5 
X-CRM114-Status: GOOD (  12.35  )
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
 David Airlie <airlied@linux.ie>, Joerg Roedel <joro@8bytes.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
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
entries, calling mapping functions with a wrong number of entries.

To avoid such issues, lets introduce a common wrapper operating directly
on the struct sg_table objects, which take care of the proper use of
the nents and orig_nents entries.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Acked-by: Joerg Roedel <jroedel@suse.de>
Reviewed-by: Robin Murphy <robin.murphy@arm.com> 
---
For more information, see '[PATCH v5 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/linux-iommu/20200513132114.6046-1-m.szyprowski@samsung.com/T/
---
 include/linux/iommu.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index 7cfd2dd..5bed18a 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -478,6 +478,22 @@ extern size_t iommu_map_sg_atomic(struct iommu_domain *domain,
 extern void iommu_set_fault_handler(struct iommu_domain *domain,
 			iommu_fault_handler_t handler, void *token);
 
+/**
+ * iommu_map_sgtable - Map the given buffer to the IOMMU domain
+ * @domain:	The IOMMU domain to perform the mapping
+ * @iova:	The start address to map the buffer
+ * @sgt:	The sg_table object describing the buffer
+ * @prot:	IOMMU protection bits
+ *
+ * Creates a mapping at @iova for the buffer described by a scatterlist
+ * stored in the given sg_table object in the provided IOMMU domain.
+ */
+static inline size_t iommu_map_sgtable(struct iommu_domain *domain,
+			unsigned long iova, struct sg_table *sgt, int prot)
+{
+	return iommu_map_sg(domain, iova, sgt->sgl, sgt->orig_nents, prot);
+}
+
 extern void iommu_get_resv_regions(struct device *dev, struct list_head *list);
 extern void iommu_put_resv_regions(struct device *dev, struct list_head *list);
 extern void generic_iommu_put_resv_regions(struct device *dev,
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
