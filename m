Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 254CC200733
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:47:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H3ibec8V3S8Do0OvIYgBpuPGrBJ/faxhohbaJpgMk9A=; b=fFuqZAQCdLkzjByNz+Qj94CkeL
	QlU2zwVHgxz+QXYYCHJ+yj6RGTK99TmTVJczTbbDyrDiEmlFv+yUUtC2h7+oFN9+8AuCzqma++2HH
	RjKjrW7FXmA3D6jyhXYEkFm95ZyTNVklM+p2h6gmsj6+9Q7FKTfpMLagj94u2BifhlyUMV9u/2Gyt
	JAjhSV4Hw4HCOz/4JdoyU1v4UDL7VZdW1tlzTvwP8hjSCftDPiw6rvBa+8jnACaqJ54QnqZWajUWg
	3UH6uJMdcQVi1iabqKhjnHj7Vno1Mj3L0eX4XHVOXMyDfS8XHM1viudHJOpakkmb1qNCCXID0aB2E
	ySIRlTDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEYN-0001mU-PM; Fri, 19 Jun 2020 10:47:23 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEOb-0005QB-Fa
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:37:19 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103715euoutp011b786e1726b5902f4890e82fa24f2d7a~Z66SmDGxr1761017610euoutp01S
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 10:37:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103715euoutp011b786e1726b5902f4890e82fa24f2d7a~Z66SmDGxr1761017610euoutp01S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563035;
 bh=RMBhG1Fw6ugPclokWBJRv00vV8Qg1yQmDHqJxe7Y93k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eS9XS1GW8iDugjgH85Zq2VIEXYFnUiVAtSr3whwJaqABUF5Bq/tii2YyKEqcpmht3
 CWIN69bGM3gua45w3GUxKUNns47yXIyyCDfXPvez1+wT1rQqSYk8OJXmOyBENmFTPS
 Qj0gphunlZ7QBWBd3QpsozJ8yEWwpOqJSKWND4ow=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103715eucas1p2ad1ec44f1b69aa83e98bc848af6927ee~Z66SSagFB3081930819eucas1p2t;
 Fri, 19 Jun 2020 10:37:15 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 9C.9C.06318.B559CEE5; Fri, 19
 Jun 2020 11:37:15 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103714eucas1p18db6efd1a380fc0bdb16174ee85036fa~Z66R5XCac0493704937eucas1p18;
 Fri, 19 Jun 2020 10:37:14 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103714eusmtrp1f60c74a1fbb850448d1cac3b7fb23832~Z66R4rTjx1007310073eusmtrp1D;
 Fri, 19 Jun 2020 10:37:14 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-88-5eec955b3ef3
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id EF.EA.06314.A559CEE5; Fri, 19
 Jun 2020 11:37:14 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103713eusmtip26f278a5ab64dc87293551fc5392692d2~Z66RB0RDS0246802468eusmtip2l;
 Fri, 19 Jun 2020 10:37:13 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 31/36] staging: tegra-vde: fix common struct sg_table
 related issues
Date: Fri, 19 Jun 2020 12:36:31 +0200
Message-Id: <20200619103636.11974-32-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTURzu7D52Hc5u0/BYkTAwKdIye5wozCLoQBEFRVSk3fKm0qax66Mi
 yNKyqZOeVKtkrYdvV8vUllqzfJSm5ivNrMTsbS915CNr27X67/t9v+/j+36HwxCKd9QUJjIq
 htdEcSolLSOLqoYa/Lae+RwyN7ncBenqH0nQzXMmCv0uOkGg0rphKcr93gNQy+BXGiVeMdEo
 O7dSggz3lqAkvZFEAy3dEmTuaaNQs+UijdJu3KaQdkBPo/yHXVJ03TwqQdZvbyg0ZMkgg91x
 XkYewC/LH5C4zGYg8R19lxSbc7Q0Lra9pvC9S3lS/Cq1WoJvXT2IO8d6CHyqPRPgux0JNNYl
 fqFxemEOwP3m6esmbpEtDeNVkXG8Zk7QdllEY7qJ2PN24t6Ea1sTQIY8BbgwkJ0PR8qrCAdW
 sFkAllQsTgEyOx4AsFRbQItDP4Bd/b30X4e1oYEUF5kAGrNeUv8sNsMzqUNFswEwpS/F6fBg
 jwBYo3N1YIKtI2Hdz0AHdmc3w/bKDKeGZH3g49PPnV45GwTrTtooMc0b5t647+znYuc/JVmd
 YZDVMfCa9jwhilbCvtb0cYM7/FhdKBXxNFh7Ko0UDYkAdtfnS8UhDcDmw+eAqFoCX9QP22sw
 9nozockyR6SXw94Pl4GDhqwbbO+bJB7gBk8WnSVEWg6PHVWI6hlQX13wL9ba2DReDUPrC7NU
 fKATAF4Yy6aPA2/9/zADADnAk48V1OG8EBjFx/sLnFqIjQr33xmtNgP796sdqx4sAeWjOyoA
 ywClq/z9hk8hCoqLE/apKwBkCKWHfMWT2hCFPIzbt5/XRIdqYlW8UAGmMqTSUx5o/LBNwYZz
 Mfxunt/Da/5uJYzLlASgpvx2PbCcbZTp1QVGV595eE388EK685BHc8nU1oi1yyxar7vbwoN9
 Cze1GZMnPw0rM/lsDFzl9sq3Izp+UbH3+pEf+SqDvy1yacnl1b7xxE4utMmjJrZBLw/y+6U5
 PnvaggP1K8N+1zzSNSVVKVTR797mDXQLBZ9nefkcnpA6yBFKUojgAmYRGoH7A/SHOch6AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrBIsWRmVeSWpSXmKPExsVy+t/xe7pRU9/EGfR1G1n0njvJZLFxxnpW
 i//bJjJb7Dnzi91i9cfHjBZXvr5ns2hevJ7NYuXqo0wWC/ZbW7TMWsRi8eXKQyaLTY+vsVpc
 3jWHzaJnw1ZWi84vs9gs1h65y26xbNMfJouDH56wWvzcNY/FQdhjzbw1jB739h1m8dj7bQGL
 x85Zd9k9Nq3qZPPY/u0Bq8f+uWvYPe53H2fy2Lyk3uP2v8fMHpNvLGf02H2zgc2jt/kdm0ff
 llWMHp83yQXwR+nZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJal
 FunbJehlXOhbz1zwjL+iYWl0A+M83i5GTg4JAROJg+fPs4DYQgJLGSVOn/GAiMtInJzWwAph
 C0v8udbF1sXIBVTziVFi2YxtzCAJNgFDia63EAkRgU5GiWndH9lBHGaBGywSc7d8AHI4OIQF
 wiWmXXMCaWARUJU4NeUWO4jNK2AncWbSN6gN8hKrNxwAG8oJFH/dcpAV4iJbieUL3jNPYORb
 wMiwilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzAWtx37uXkH46WNwYcYBTgYlXh4X4S8jhNi
 TSwrrsw9xCjBwawkwut09nScEG9KYmVValF+fFFpTmrxIUZToKMmMkuJJucD00ReSbyhqaG5
 haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQbG+EXGBwvK983/t677hEFoT4dW
 j0jMvrcd9zV2rCn6vHTTY6Mdq3TX6M724XY+blp5P6f2DZ+Of9pcxTsBc/o7TnmdZ1m4w1WO
 n4nz+wyNtxWfu7+FSN+yzVpwdN17v+LTD5MN7m+aueHlxLo0H5EnT9rjfuyvtb7arOysYKfp
 sWleUmn8rKynSizFGYmGWsxFxYkAiNRTk9sCAAA=
X-CMS-MailID: 20200619103714eucas1p18db6efd1a380fc0bdb16174ee85036fa
X-Msg-Generator: CA
X-RootMTR: 20200619103714eucas1p18db6efd1a380fc0bdb16174ee85036fa
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103714eucas1p18db6efd1a380fc0bdb16174ee85036fa
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103714eucas1p18db6efd1a380fc0bdb16174ee85036fa@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033717_786202_D1CDA358 
X-CRM114-Status: GOOD (  14.04  )
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
