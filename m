Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 087F41FF804
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H3ibec8V3S8Do0OvIYgBpuPGrBJ/faxhohbaJpgMk9A=; b=Okw59BddWnWMb03HQlzNK3GDDs
	Se/VK9DzZ/I7sDUirZSvDJgttX2I49H3QELmi0P3/OyLYhNetp4hBfDxpamkb56W9oN9bgyJuvZWP
	uPuaGyZ8MJ9z8YlE/k8wPFpS6Of818D/0tlA3eFwFqdYChFRiCCVnVe3UMtGVMBza0pc6pWVSrJ7L
	+K6/MG0cbtyTzqlumfsI2cEj5NNoffSu4WBzMUqknaUt+uh/2xuOZmjuM0Lryg4x4qeK6+LeBDW5a
	sS7YJt7+rRjDI4zr4+bOeiLASFHjzAnnWxJD+5hsvQ0c2HpdqG6+YBztpVqZHptLrjzY+VrADU179
	f0XuLx/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwpB-0000zG-1i; Thu, 18 Jun 2020 15:51:33 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweb-0004PT-Hv
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:39 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154036euoutp01b8f25b498456a3435ea1279e8425f0fa~ZrZ27VwTV1844218442euoutp01P
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154036euoutp01b8f25b498456a3435ea1279e8425f0fa~ZrZ27VwTV1844218442euoutp01P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494836;
 bh=RMBhG1Fw6ugPclokWBJRv00vV8Qg1yQmDHqJxe7Y93k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QZy6brriuE+JlpxBYK/yvbi6pE6pAz+WGlL7ttKfFzftt9fDBEUrrEw6hOx3xd9k8
 FH3IO8v4Ybe06ehSXUp05eJrdLiA7nKIqTyzhS2Uj8PM/H/jyDOaPNWiZ5d8Yhr/e9
 h5f8zS6aSDsX6Q9nK5G3qLbl6Fi8gyh7mstTNU/I=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154035eucas1p117a6a9102b0d7e4a1993743678c0a19b~ZrZ2komC01248212482eucas1p14;
 Thu, 18 Jun 2020 15:40:35 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 4E.60.60698.3FA8BEE5; Thu, 18
 Jun 2020 16:40:35 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154035eucas1p24774788a08a2d2a0a7e24c8755c885ed~ZrZ2QXB0R0607806078eucas1p2l;
 Thu, 18 Jun 2020 15:40:35 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154035eusmtrp2e6f73cde99b8d3900a2790d28e272d8d~ZrZ2PoLOU0370403704eusmtrp2u;
 Thu, 18 Jun 2020 15:40:35 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-4a-5eeb8af3b678
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 96.FE.08375.3FA8BEE5; Thu, 18
 Jun 2020 16:40:35 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154034eusmtip14d2941d234d8a5183f57af3dab10a663~ZrZ1ZHKzG2819228192eusmtip1a;
 Thu, 18 Jun 2020 15:40:34 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 30/36] staging: tegra-vde: fix common struct sg_table
 related issues
Date: Thu, 18 Jun 2020 17:39:51 +0200
Message-Id: <20200618153956.29558-31-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSf0yMcRzHfZ/nueeezp2erjbflTFntcWEZXwtWqw/Hv6gYUwSh2cd7i67
 q/TjD1epueNKmlVX0lSi7tw5KYVyiWOXmJQfCS2jnDrpx6olup7iv9fnx/vz/ny++1K4+AvP
 lzqmjGNVSqlcQgqImifjL1YO6ZzRqysHViB96zMM3co389Cfmhwc3W+Z4KOqwR6AXo+4SJRe
 aibRjarHGCppDEFnDFcJNPy6G0PWng4eaqsvItF5yx0e0g4bSGRq7uKja9ZJDNl+fuGh8fpi
 IsybMRYbAfOx4RHBPBgtIZg6QxefsVZqSaZ29DOPabxs5DOfztkx5nbZaaZzqgdnct9WAObe
 Ow3J6NMHSCaruhIwQ9bFEZ6Rgo1HWfmxBFa1KvSQQPYyy4yf/OqZqCnfrwHFIh3woCC9Fv7o
 +ErqgIAS09cBbP89xOOCYQDT35cQXDAE4BvXNzAn0Y/aAFeoANDQnIq7CzMSY06Am0l6DdT1
 60g3+9AZAD7VC92M0y0EbBkLdrM3vQ+OdX6e0RK0PzQ6jZibRXQorGu2kpzZElhleTjT4zGd
 d9gzZtaDdA4FM5yFs03h8E2bjc+xN/xur57lRfBP3RWME6QD2N1q4nPBeQDb0vJn7wmBH1on
 pidR0+sFQnP9KjdCejO8UEtyuAC+7ffi9l8AL9bk4VxaBM9mirkZAdBgv/nP1fby1WwLA/sr
 IPc6OQCee8e/AJYY/juVAFAJFrLxakUMqw5WsqeC1FKFOl4ZE3QkVmEF03/PMWUfuQsaJg83
 AZoCEqGod7czWsyTJqiTFE0AUrjER7TluSNaLDoqTUpmVbEHVfFyVt0E/ChCslAUfLXvgJiO
 kcaxJ1j2JKuaq2KUh68GXEk6btGmyUoDO8oLurrnr5Pv8RTuCsPGx12bVL3ZPhucSwu85vX+
 LlOYhK7EgpSpoj3Pp+zt+m2m9SZH+L0U/+V4buG3Io1zfWLHpeQ4PcmPjIzYutO7EQ/dG4Xy
 /Np9+8JDGjIFKcsE2ysGBi0yujS1TjvxS3xzx+7ssdh5URJCLZOuWY6r1NK/niSrNncDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFIsWRmVeSWpSXmKPExsVy+t/xu7qfu17HGeyYIWnRe+4kk8XGGetZ
 Lf5vm8hssefML3aL1R8fM1pc+fqezaJ58Xo2i5WrjzJZLNhvbdEyaxGLxZcrD5ksNj2+xmpx
 edccNoueDVtZLTq/zGKzWHvkLrvFsk1/mCwOfnjCavFz1zwWB2GPNfPWMHrc23eYxWPvtwUs
 Hjtn3WX32LSqk81j+7cHrB77565h97jffZzJY/OSeo/b/x4ze0y+sZzRY/fNBjaP3uZ3bB59
 W1YxenzeJBfAH6VnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mW
 WqRvl6CXcaFvPXPBM/6KhqXRDYzzeLsYOTkkBEwker8dZOxi5OIQEljKKPH34F9miISMxMlp
 DawQtrDEn2tdbBBFnxglLj3dwgKSYBMwlOh6C5EQEehklJjW/ZEdxGEWuMEiMXfLB3aQKmGB
 cIlrG3rAxrIIqEqseb2GCcTmFbCT2HlkExvECnmJ1RsOgNVwAsVPH28FWy0kYCvx/EMb2wRG
 vgWMDKsYRVJLi3PTc4sN9YoTc4tL89L1kvNzNzEC43HbsZ+bdzBe2hh8iFGAg1GJh/dFyOs4
 IdbEsuLK3EOMEhzMSiK8TmdPxwnxpiRWVqUW5ccXleakFh9iNAU6aiKzlGhyPjBV5JXEG5oa
 mltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYJST2DZtxd3HkuESWjuv5wjL
 Flrdri0rmbiOw9rW6cfXJbq/CmaUJ+wOWDdd/9NXEce11kXiAqxPw2rKzUS3Ll+4RTvi88Sl
 u34eadaZa+eVmP/iy+EJMbbXp9xonbvp8vbo2X9nNB61S5HifzDhzAN+o6gspwtCnn85tl++
 U85y+2bBlu1dVpZKLMUZiYZazEXFiQDLpozC3QIAAA==
X-CMS-MailID: 20200618154035eucas1p24774788a08a2d2a0a7e24c8755c885ed
X-Msg-Generator: CA
X-RootMTR: 20200618154035eucas1p24774788a08a2d2a0a7e24c8755c885ed
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154035eucas1p24774788a08a2d2a0a7e24c8755c885ed
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154035eucas1p24774788a08a2d2a0a7e24c8755c885ed@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084037_742182_38F8985C 
X-CRM114-Status: GOOD (  13.92  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
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
Reviewed-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/staging/media/tegra-vde/iommu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/tegra-vde/iommu.c b/drivers/staging/media/tegra-vde/iommu.c
index 6af863d92123..adf8dc7ee25c 100644
--- a/drivers/staging/media/tegra-vde/iommu.c
+++ b/drivers/staging/media/tegra-vde/iommu.c
@@ -36,8 +36,8 @@ int tegra_vde_iommu_map(struct tegra_vde *vde,
 
 	addr = iova_dma_addr(&vde->iova, iova);
 
-	size = iommu_map_sg(vde->domain, addr, sgt->sgl, sgt->nents,
-			    IOMMU_READ | IOMMU_WRITE);
+	size = iommu_map_sgtable(vde->domain, addr, sgt,
+				 IOMMU_READ | IOMMU_WRITE);
 	if (!size) {
 		__free_iova(&vde->iova, iova);
 		return -ENXIO;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
