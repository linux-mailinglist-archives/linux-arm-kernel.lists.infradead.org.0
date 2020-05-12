Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CA91CF13B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:12:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sn6gDi6H9fm1dYlLyHsUdGxe+AhyAYgGVsz9qNsOTsQ=; b=aaVawUisDFrXVSfzR/qsbnq4eK
	3y42b1yAgLo04WlidsEwziReS9J3+NbmFwLxSmobM699eNt9YzCy/oD61MZLn+Qjkxbv6UQNfVQj7
	tBHpa4GAdMPxtNNNR6QXFSC7qzPWPYco/GBFukcPf0UaBkFg2VHmAoMg5LN5MNtYA8ypuxWiZi4og
	L1zA0o5+yqSUnyexn2GzpaJLBH1lKcNOH1CzTiDTVjHIgoadmAKVGzQyHYVYe/bsmzMUP+UasDmgQ
	O/oycSlLtttqe+TuV8k7kISQvnMVU4dkfqBzzxjq7F/D+xIiI3ZaAtiBf3fHKKV0v78nRw8KhSBE1
	r+REKUPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQxs-0006hy-KT; Tue, 12 May 2020 09:12:40 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQn5-0002QV-3w
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:38 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090129euoutp01dcc808d1cb4bc06fc7e397f878a14a26~OPF0xvJzn2633726337euoutp01g
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090129euoutp01dcc808d1cb4bc06fc7e397f878a14a26~OPF0xvJzn2633726337euoutp01g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274089;
 bh=PaSShSxED90KNxpkYwSSyeOdX5YGDnfxv6ZgggLohKM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HlpOu2agtIybvI3HLIueyCoSu+kngj8sOtrWM6TYFEOyC/lETKjAlQUQ/VI3HHjxP
 ZjebVFktGGawQ/7yG2jGcZFt5cNZCKly+Zb3wvLW5AFWfZ4v/Ci7yiENOWLGFq/fQ0
 cXwFcYqbzGQO6XcbQVmLDpkLALIOLVMqnEU1psWc=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090129eucas1p24cc34b311be1ae013d327669187046bb~OPF0f_jp-2660626606eucas1p2j;
 Tue, 12 May 2020 09:01:29 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id D7.32.60679.9E56ABE5; Tue, 12
 May 2020 10:01:29 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090128eucas1p11ee8a5e72ca37dc6b3e8a07ea094bab6~OPF0Dgdh-0904609046eucas1p1B;
 Tue, 12 May 2020 09:01:28 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090128eusmtrp2067652dfbf86e4fac8989d6cb30584c6~OPF0CF46z0472504725eusmtrp2c;
 Tue, 12 May 2020 09:01:28 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-dc-5eba65e994db
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D0.55.08375.8E56ABE5; Tue, 12
 May 2020 10:01:28 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090128eusmtip162274653ef501091a87861f9e14ac8b1~OPFzbUefC1257212572eusmtip1y;
 Tue, 12 May 2020 09:01:27 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 35/38] rapidio: fix common struct sg_table related issues
Date: Tue, 12 May 2020 11:00:55 +0200
Message-Id: <20200512090058.14910-35-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSeUgUURzm7ezMjuLauBq+zLKWihTStaIGDCkSnChQAqOErDEnlbzYUcsQ
 2tQs1qPUQrPQRbT1Nm93vfJWrK1cC0/UTMFzpVW7PNp1rP77jt/3vvd7PBwR1aM2eGBIOCMN
 oYPEmCm/pvOn5sgMo/aRKNJxMknTwyO/FA4gZHlGGUpu1qQgZP+KDiMLijp4pKLZhVzun+CR
 FZOfUVKrfomRJe2jAvLZ++8I2bL0FT0tpIqzigHVuKrgU6rMUQGVOB+HUrWr4yg1ltDFoypz
 71HDG5MIlTagBFT9oAyjkqsKAaWv2Otp5m16yo8JCoxkpE6u100DviV0oGFrlneqK9sEMjBI
 yIEJDonjsHY8F8iBKS4i8gHUlw8JOLIM4POGLIwjegBrtcPgb2SgLQfhDCWAyrxUntHYikwv
 IUaMEc5QviDHjNiKeABgd5KZESPEIg+26x2M2JK4AOdn07ayfOIg7CuY3CoQEq6wOnYS5crs
 YNHrN1tnmhj0sew1vrEYEhoBVMm1Am7IDc5qBjEOW8LZrqpt3RZuqrJ5XCAWwAlNiYAjiQBq
 YzK293GBI5pfhjRuuJ49LFM7cfIZ2PnqPjDKkDCHAwsW3ALmMLUmHeFkIXwUL+KmD8HMrtJ/
 tS0f+hAOU/BjU8P2K3YAmDsyJXgC7DL/lykAKATWTAQb7M+wR0OY244sHcxGhPg73ggNrgCG
 L9W70bVcB9Rrvq2AwIHYTCiRqHxEKB3JRgW3AogjYithXKBBEvrRUXcZaeg1aUQQw7aC3Thf
 bC08ljNzVUT40+HMLYYJY6R/XR5uYiMDT5eGJLqTM7E7Ljfr3ao9vKxjg/YkF8XnelmWeujm
 8nRYvoU3veh7+K2mMbpb53Bp2qbUf5fzi3SvAzNVP+ZOjO+0nc7pAVptjOTTys397Hrnxd8j
 nXGDqizbqboI+17Ppnf6qr5Gdyt3W6XTuX3rKVdWz8rIx+c3oj0fKumygkAxnw2gnR0QKUv/
 AXRmaSZOAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xu7ovUnfFGSxs07DoPXeSyeLRqhvM
 FhtnrGe1+L9tIrPFla/v2SxWrj7KZLFgv7XFlysPmSw2Pb7GanF51xw2i7VH7rJbTD3/ndni
 4IcnrA68HmvmrWH02PttAYvHzll32T163rSwemz/9oDV4373cSaPzUvqPW7/e8zsMfnGckaP
 3Tcb2Dz6tqxi9Pi8SS6AJ0rPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshUSd/O
 JiU1J7MstUjfLkEv41P3UdaCP8IVWzcfZm9gvCnQxcjJISFgInHj8CLmLkYuDiGBpYwSy74s
 ZIRIyEicnNbACmELS/y51sUGUfSJUWLh7WVMIAk2AUOJrrcQCRGBTkaJad0f2UEcZoFvTBKT
 lt5iA6kSFvCRePNqMlgHi4CqxKWVj8FW8ArYSWxtfgy1Ql5i9YYDzCA2J1D8/vw/LCC2kECh
 xKOrb1kmMPItYGRYxSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERg324793LyD8dLG4EOMAhyM
 Sjy8HUY744RYE8uKK3MPMUpwMCuJ8LZkAoV4UxIrq1KL8uOLSnNSiw8xmgIdNZFZSjQ5HxjT
 eSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGCuqJl6ZsD4idLut
 8wIfm538E1b6vdabIryozena/8pd/m2ro6Zrf7m15+yW5wcnulnaNc16lP3twQq3ph+Jb4S+
 +cz2XmzZcCLTYdq96PPqAX9/nLdf96Pn8fc/Qnk65d+eTDao2ODA1By069mxHTK7ywJUPzdV
 dWR+OFUkwl992uzzkbn/5W8psRRnJBpqMRcVJwIAQ0ag5LECAAA=
X-CMS-MailID: 20200512090128eucas1p11ee8a5e72ca37dc6b3e8a07ea094bab6
X-Msg-Generator: CA
X-RootMTR: 20200512090128eucas1p11ee8a5e72ca37dc6b3e8a07ea094bab6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090128eucas1p11ee8a5e72ca37dc6b3e8a07ea094bab6
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090128eucas1p11ee8a5e72ca37dc6b3e8a07ea094bab6@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020131_685119_E07198E0 
X-CRM114-Status: GOOD (  15.32  )
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Alexandre Bounine <alex.bou9@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matt Porter <mporter@kernel.crashing.org>,
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
 drivers/rapidio/devices/rio_mport_cdev.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/rapidio/devices/rio_mport_cdev.c b/drivers/rapidio/devices/rio_mport_cdev.c
index 4029637..df7dba8 100644
--- a/drivers/rapidio/devices/rio_mport_cdev.c
+++ b/drivers/rapidio/devices/rio_mport_cdev.c
@@ -574,8 +574,7 @@ static void dma_req_free(struct kref *ref)
 	struct mport_cdev_priv *priv = req->priv;
 	unsigned int i;
 
-	dma_unmap_sg(req->dmach->device->dev,
-		     req->sgt.sgl, req->sgt.nents, req->dir);
+	dma_unmap_sgtable(req->dmach->device->dev, req->sgt, req->dir);
 	sg_free_table(&req->sgt);
 	if (req->page_list) {
 		for (i = 0; i < req->nr_pages; i++)
@@ -927,9 +926,8 @@ static int do_dma_request(struct mport_dma_req *req,
 				xfer->offset, xfer->length);
 	}
 
-	nents = dma_map_sg(chan->device->dev,
-			   req->sgt.sgl, req->sgt.nents, dir);
-	if (nents == 0) {
+	ret = dma_map_sgtable(chan->device->dev, req->sgt, dir);
+	if (ret) {
 		rmcd_error("Failed to map SG list");
 		ret = -EFAULT;
 		goto err_pg;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
