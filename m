Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF9A1CF0AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GorHqMvP01KnHSiLeaQTPeQK4qVp/ArNqSfRsG1q25Y=; b=TamJIvt+q3O+aRkPY27QVQ/jzn
	PciwzRRN9E10+YO+3mueh3rftnql42AzqxFFN9TbmsY83MbSwMB0TMfUXxLooHfifuiZPRyrVEAKp
	hhXykj3I6j1OMqGYCL1CRqZ8p92xobK1w0KttCLu78XYgOy79YhaaDWjmzfhO1wagtPsyRf1o0XG9
	Zbo1PMPskeE4NSynq4Qj/d3kTVF8r/DNFs4X5E+dLZlqtPAu7Ye+KoEySn22PV6Y6GQbvHzgKrqWR
	SRXvoxo1zSx9DS00wGXbR3P0CVfAE2uiEnEb8noGkEM3uFRZMGYcvJA2pj4zOzG3A8Eph7HqeoVpp
	gVQMX4iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQnZ-0002fr-TI; Tue, 12 May 2020 09:02:01 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQml-00027G-6p
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:13 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090109euoutp028eb56ff4a078d6a4c8a8fc814743b20e~OPFiJcE5i0482404824euoutp02R
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:09 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090109euoutp028eb56ff4a078d6a4c8a8fc814743b20e~OPFiJcE5i0482404824euoutp02R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274069;
 bh=fKg/ncBxyiGPyUH3RJ1E4yz1JKJ/1T9KydymP0TT+PM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aZ5u6tZY6qkkvh3F/fmYIZIpYiH6qmq91o3gjAM729D0pln8IHo0gNV8dEuCALM/x
 +EP8LKlucIJ7/I+wODtHiPua0rXZHy/Qn9EGa5Xh8kqtweL4FeqTgA+QobmRAgNQoP
 FnKXnI1rm497u7v1DcRsnjYGtj8kmGkmprKxRISM=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090109eucas1p2cb1cd23f05a0d9aa74a60a822a33246f~OPFh5vM1V2649026490eucas1p2O;
 Tue, 12 May 2020 09:01:09 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id C5.57.61286.5D56ABE5; Tue, 12
 May 2020 10:01:09 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090108eucas1p2168167ab5e1de09df0d5def83f64dbfe~OPFhj_QxY0961809618eucas1p2g;
 Tue, 12 May 2020 09:01:08 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090108eusmtrp13342f109c85886acdaebe16bad3a603c~OPFhjSowN0183401834eusmtrp1O;
 Tue, 12 May 2020 09:01:08 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-4a-5eba65d5257d
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id CD.E2.07950.4D56ABE5; Tue, 12
 May 2020 10:01:08 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090108eusmtip13134325216fc7001a96c17dd7ae2781d~OPFhDc6Oi1352513525eusmtip1B;
 Tue, 12 May 2020 09:01:08 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 03/38] iommu: add generic helper for mapping sgtable objects
Date: Tue, 12 May 2020 11:00:23 +0200
Message-Id: <20200512090058.14910-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSayyVcRzu/97O63JOr8PmPxntLLUu7n14m0JbH94vjT50WRa95XXruJ0X
 pXWRuxMmah1qWCXCQXKIRi7pMEsNya25tmJDctiKkdcrfXue5/f8/s+z3/4kKq/ArcjgsChO
 FcYqFYQxVvv+90f7z1yDr5PmgQmd0d2J0C81lTi9XnsPpfuW5gn6RVk7Qhe+daPTHlVJaEPf
 OEJXT/bjdG/DY4LWvvsqoVt+TuGepsxUSz7ClOeXA6ZxuRBj6pbHcGb0rh5hXj27zQyvTaJM
 zkAxYN4MxhFMZk0pYBarbbxNzhsf9eeUwTGcytH9onHQamIaGvGDujarMeBxIEWmBiQJqcNQ
 3+aiBsaknCoB0KD9hojEAKBWd58QySKAE0WDqBoYbW5U6kYkApZTxQBqOsH2xlJCBSYMCMoZ
 qmfVhIAtqCQAOzJMBYxSDQjMS2AFbE6dggUrC5uPYpQdHGhawoRKUuoYXMv3FLNsYVlV86bF
 iHKHowWrmKg3SWB8h1TEJ6CmK2mrmzmc0ddIRGwNu3LSMaEbpBIAHO/WSkSSDmBvvAaILjc4
 0v2HEIJRaj+sbHAU5eNwPT6ZEE8kgwOzZmJ9GcyufYiKshSmJstF916Yp6/Yjm351LNVh4HZ
 E/24eJ52AMsnc7EsYJv3P6wQgFJgyUXzoYEc7xzGXXXg2VA+OizQ4XJ4aDXY+EVda/pfr8FS
 z6VWQJFAYSpNdan3leNsDB8b2gogiSospInBG5LUn429zqnC/VTRSo5vBbtITGEpdX0yfUFO
 BbJR3BWOi+BU/6YIaWQVB6rNrReO5Nrsbq+f9X6aFuJt6XcIywxIqcyxymWzznidxp1sYrI8
 4odGDo6d6ym6iWrTR8cdp2cKdOFzeNKQmT18HjnlsXPGY8QrTa+Unaxbn7O7Me9Ajre5+sj2
 lcgbfeyUzMrZ9ODIkFt7AnYUDhd/iVDqUgrufCjy+t6Mtk4rMD6IdT6Aqnj2LwODTK1BAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsVy+t/xu7pXUnfFGZxYZ2jRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t0Tl7A7vFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNWB
 x+PJwXlMHmvmrWH02PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HNo2/LKkaP
 z5vkArij9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S
 9DL+tHQyF7wQqHg74wtrA2M7XxcjJ4eEgInE+q132LsYuTiEBJYySixu2cEIkZCRODmtgRXC
 Fpb4c62LDaLoE6PE3vO72EESbAKGEl1vIRIiAp2MEtO6P4KNYhY4wCTxqm072ChhAX+J+0+3
 gHWwCKhK3Nj3laWLkYODV8BW4t88B4gN8hKrNxxgBrE5Bewk7s//wwJiCwkUSjy6+pZlAiPf
 AkaGVYwiqaXFuem5xUZ6xYm5xaV56XrJ+bmbGIERsu3Yzy1Al78LPsQowMGoxMPbYbQzTog1
 say4MvcQowQHs5IIb0smUIg3JbGyKrUoP76oNCe1+BCjKdBNE5mlRJPzgdGbVxJvaGpobmFp
 aG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qBsW5xX/OM8xHh2QH1i++vNLw7e3Xn
 KXHlovpHjaIBX/XrT09aUVSUqjDRbO2GxZVrm1uX6nl/f5ahsKhY+rbJy69hJlPOZsUGGhjo
 n1hhLyl5eN7tuwluxyw+Tv9iu6Z08cPXkQrKBd8uuKT//MxhsPHbv5SHNeZpgTs4a18yTOcz
 TsyqZFf+rsRSnJFoqMVcVJwIAOkrfu+mAgAA
X-CMS-MailID: 20200512090108eucas1p2168167ab5e1de09df0d5def83f64dbfe
X-Msg-Generator: CA
X-RootMTR: 20200512090108eucas1p2168167ab5e1de09df0d5def83f64dbfe
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090108eucas1p2168167ab5e1de09df0d5def83f64dbfe
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090108eucas1p2168167ab5e1de09df0d5def83f64dbfe@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020111_520895_06D20701 
X-CRM114-Status: GOOD (  12.13  )
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
---
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
---
 include/linux/iommu.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index 7cfd2dd..ba662ba 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -478,6 +478,22 @@ extern size_t iommu_map_sg_atomic(struct iommu_domain *domain,
 extern void iommu_set_fault_handler(struct iommu_domain *domain,
 			iommu_fault_handler_t handler, void *token);
 
+/**
+ * iommu_map_sgtable - Map the given buffer to the IOMMU domain
+ * @domain:	The IOMMU domain to perfor
+ * @iova:	The start addrees to map the buffer
+ * @sgt:	The sg_table object describing the buffer
+ * @prot:	IOMMU protection bits
+ *
+ * Create a mapping at @iova for the buffer described by a scatterlist
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
