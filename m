Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F502006D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZNK53PKbFdo2kePRwLCJJygsIvcOfAc/TvwRMhmUHHM=; b=FdyXyrqsWW7LXcfsbtyaLkAO6M
	3jGnauBOoJ1817u3dPsNpgkWVkWjDKAFSTsaj0hq+/2GtrtG2PmOUnZV3y4dFiT1IxAsOjsmro7cf
	ir2+68mYBxd9GhUSVbkdKeYaQH/JZu4J/zGFaPJSX8JpGR3MOQac1YcuJoaowvdazf5JB3bS6DUs5
	enkBNJPODsq6BEV437zZ3TRldq5n0k8kYnxBlCwepnb7XevvwP/e6yCtIfHLr7uxpj8HIkMoK3WK7
	uN4e5wt4XTJzpxCpUtfhS57WHRsm8qaxRlonKoHKjCBF9FOHDe64P6Q93KiNrQU8Dr2w/gG796LjP
	0nPtSs5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmERi-0007fu-4z; Fri, 19 Jun 2020 10:40:30 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEOL-00058f-Bu
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:37:03 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103659euoutp0290e2ad8fbe8a20a41d2a360aadcc440d~Z66D_tVMp2363023630euoutp02U
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 10:36:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103659euoutp0290e2ad8fbe8a20a41d2a360aadcc440d~Z66D_tVMp2363023630euoutp02U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592563019;
 bh=tj4USkT4mmzGAYtGQ+Hrc6tAZIJTZKbcemrdU4KaPkY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NCaorwvtF1B061Y1FGVZpGUd2JhtOOQh13D8b5EE2sBQ+fpDq0eFWV2dTpramTbn9
 Tzdk7JoJtzBXyynGo65hnIfTVxR+IUkZ/EXRxXH5gUUMDf1XfW0th4POxmFGbnUXcB
 wCCcigUba3BAi9enF2K3Qv0aEU4PTGxogs+vK/BQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103659eucas1p29e2d23773b26ece4c38249039db1201a~Z66DqWCGb2889228892eucas1p2m;
 Fri, 19 Jun 2020 10:36:59 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 82.9D.05997.B459CEE5; Fri, 19
 Jun 2020 11:36:59 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103659eucas1p27ece9865ea4cdd82d4ca4df06edef7e6~Z66DR-74h3081530815eucas1p2W;
 Fri, 19 Jun 2020 10:36:59 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103659eusmtrp1d4642a1ea7423c2baf8305e7543fec7c~Z66DRSmTS0959609596eusmtrp13;
 Fri, 19 Jun 2020 10:36:59 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-da-5eec954b7c6a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 84.0B.06017.B459CEE5; Fri, 19
 Jun 2020 11:36:59 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103658eusmtip2a06a75f290a330ae46a368429b0a0578~Z66CiexGq0246802468eusmtip2f;
 Fri, 19 Jun 2020 10:36:58 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 09/36] drm: i915: fix common struct sg_table related issues
Date: Fri, 19 Jun 2020 12:36:09 +0200
Message-Id: <20200619103636.11974-10-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSbUhTYRjlvXd3uxsurzPwrSxjpZlQZoncMMrK6lIIBUIQZK28uMhN23WW
 FSSpEUtjqaFprpXJ1qZZc6yamW6YS0wTtaVYWW0/nB/04bKSmG1etX/nOc85zzm8vDgqsmPL
 8VPyHFohl2SKuQKOpePPmw0Hbk6kbXK+W02W9HQi5OPKRoyctdxAyYGfX7nkA+NLhKxWNyGk
 tjWR1PU3ArLlLkJ6Bz4jpMnlxMh+620u2dD+gUfavrkxsrXKyUsKpuo19YBqmdZyqNrnHoR6
 Mv0JozSdh6iRaw6Earp/iRr2uVCqbFAHqOahfC513WwA1JRp1cGgI4Jt6XTmqVxaEbv9uEBq
 NNRwsrXh5+4MrM0HjjAV4OOQiIfq8l+YCghwEaEH8L7PwGUHL4DlxvcgoBIRUwBW/ExdcHxp
 c/NYXgeguRhdNBRaXNzAgkvEQdWkag4vJYoAfFUSFBChRDsK+7TOuauhxEHYX+fGAphDRMIP
 3mdzV4XEdmhuGkHYtAhofNSGBjDfz48X2ua6QsLJg/XWGpQVJcM2i37eEArHHGYei8NhV1kx
 hzUUAPi5p4HHDsUA9l+uBKwqEb7vmfF3xf391sNGayxL74TaGi8aoCGxBA5OhgRo1A9LLRXz
 tBBevSJi1VGwyvFwMdbW2zdfjYKt09857AvdAPCHuxpVg4iq/2FaAAwgjFYysgya2Synz25k
 JDJGKc/YeDJLZgL+n9Xlc3ifAuvfE3ZA4EAcJBxNHU8TYZJcJk9mBxBHxUuFu7q70kTCdEne
 eVqRdUyhzKQZO1iBc8Rhwi33PEdFRIYkhz5N09m0YmGL4Pzl+SDGt+vNnphhbCJopd022Kr/
 qHHm7CiKtq5DQgW/9Y+SExL2tpeDF7s71hRIL7w0DederPaNeGR8/WDKp9cyOurvaLnGEz4T
 Fl1UW9cbeyZermx2Hy5N0Xil+1yZQqxj6K2tuyfx4QTOL5wdYYLHQuJvX3ZIk7bujzSm65bd
 Uos5jFQSF4MqGMk/uX37v1UDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrCIsWRmVeSWpSXmKPExsVy+t/xe7reU9/EGRx/xWrRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlnMnrCZyWLBfmuL5ZfXM1rsXchk8eXKQyaLTY+vsVpc3jWHzWLt
 kbvsFgc/PGG12D/rGrsDv8eaeWsYPfZ+W8DisXjPSyaP7d8esHrMOxnocb/7OJPH5iX1Hrf/
 PWb2mHxjOaPH7psNbB59W1YxenzeJBfAE6VnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdo
 bB5rZWSqpG9nk5Kak1mWWqRvl6CXsXrVXJaCBTIV86+oNDAeF+9i5OSQEDCReHTgCXsXIxeH
 kMBSRol3m/6zQyRkJE5Oa2CFsIUl/lzrYoMo+sQosefDLLAEm4ChRNdbiISIQCejxLTuj2Dd
 zAJnmCV+b/AGsYUF/CQedmwGi7MIqErc/bITzOYVsJPYsvk+E8QGeYnVGw4wg9icQPHXLQfB
 FggJ2EosX/CeeQIj3wJGhlWMIqmlxbnpucVGesWJucWleel6yfm5mxiBMbTt2M8tOxi73gUf
 YhTgYFTi4X0R8jpOiDWxrLgy9xCjBAezkgiv09nTcUK8KYmVValF+fFFpTmpxYcYTYGOmsgs
 JZqcD4zvvJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjJJ9b1+v
 Mbj/ZFNYaF61h2ZHHtctt8Z3vy3rO765TrAXNFZf6Ns8cetR5VfLnRgeyhw8FsNr++Z4v5Xc
 k9c2d84ImKft5/3ftYttbonvRyFrzVsn/1V+iDl3f4n7s70ZG9+arvuaMuuA+/FLJ4x45Krv
 KhfaTDxp7Ra7TJ9tGYvAtjnPA9YKvVZiKc5INNRiLipOBABPJHtdtwIAAA==
X-CMS-MailID: 20200619103659eucas1p27ece9865ea4cdd82d4ca4df06edef7e6
X-Msg-Generator: CA
X-RootMTR: 20200619103659eucas1p27ece9865ea4cdd82d4ca4df06edef7e6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103659eucas1p27ece9865ea4cdd82d4ca4df06edef7e6
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103659eucas1p27ece9865ea4cdd82d4ca4df06edef7e6@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_033701_570666_633AE5A7 
X-CRM114-Status: GOOD (  15.88  )
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
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

This driver creatively uses sg_table->orig_nents to store the size of the
allocated scatterlist and ignores the number of the entries returned by
dma_map_sg function. The sg_table->orig_nents is (mis)used to properly
free the (over)allocated scatterlist.

This patch only introduces the common DMA-mapping wrappers operating
directly on the struct sg_table objects to the dmabuf related functions,
so the other drivers, which might share buffers with i915 could rely on
the properly set nents and orig_nents values.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c       | 11 +++--------
 drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c |  7 +++----
 2 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 2679380159fc..8a988592715b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -48,12 +48,9 @@ static struct sg_table *i915_gem_map_dma_buf(struct dma_buf_attachment *attachme
 		src = sg_next(src);
 	}
 
-	if (!dma_map_sg_attrs(attachment->dev,
-			      st->sgl, st->nents, dir,
-			      DMA_ATTR_SKIP_CPU_SYNC)) {
-		ret = -ENOMEM;
+	ret = dma_map_sgtable(attachment->dev, st, dir, DMA_ATTR_SKIP_CPU_SYNC);
+	if (ret)
 		goto err_free_sg;
-	}
 
 	return st;
 
@@ -73,9 +70,7 @@ static void i915_gem_unmap_dma_buf(struct dma_buf_attachment *attachment,
 {
 	struct drm_i915_gem_object *obj = dma_buf_to_obj(attachment->dmabuf);
 
-	dma_unmap_sg_attrs(attachment->dev,
-			   sg->sgl, sg->nents, dir,
-			   DMA_ATTR_SKIP_CPU_SYNC);
+	dma_unmap_sgtable(attachment->dev, sg, dir, DMA_ATTR_SKIP_CPU_SYNC);
 	sg_free_table(sg);
 	kfree(sg);
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c b/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c
index debaf7b18ab5..be30b27e2926 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c
@@ -28,10 +28,9 @@ static struct sg_table *mock_map_dma_buf(struct dma_buf_attachment *attachment,
 		sg = sg_next(sg);
 	}
 
-	if (!dma_map_sg(attachment->dev, st->sgl, st->nents, dir)) {
-		err = -ENOMEM;
+	err = dma_map_sgtable(attachment->dev, st, dir, 0);
+	if (err)
 		goto err_st;
-	}
 
 	return st;
 
@@ -46,7 +45,7 @@ static void mock_unmap_dma_buf(struct dma_buf_attachment *attachment,
 			       struct sg_table *st,
 			       enum dma_data_direction dir)
 {
-	dma_unmap_sg(attachment->dev, st->sgl, st->nents, dir);
+	dma_unmap_sgtable(attachment->dev, st, dir, 0);
 	sg_free_table(st);
 	kfree(st);
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
