Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B301FF7A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZNK53PKbFdo2kePRwLCJJygsIvcOfAc/TvwRMhmUHHM=; b=mRa17IQgeb3LDW7+Mkv5CuOfEM
	+u4D+YB9rcgAQ7iyw7xX3Fv7gqfu6/1TQEYHo7veri11olW7tDxFnUzC/53yUyhP+5w3WaAe5cZw4
	3tNYsjHanowqhg75fJ+gDHlbhAp5oRqjcjCXMQ6+zywELTXCRvcYCka0u6Hg3EWZ2UdQ6h4QHm9BA
	tqRDaXZbmzKscoJH5tqbV+f1+4mZwFQkTzW8smxz/o9rx/cC998ekU8IjEGGI35lrV+SWGIdJY80E
	ZHK0LLYFyDXmIFKvpOc0Qc7SAWwKEB0eiIUdrphlvKzAbtz7J1VZWYFqZGPyTue+u5y+mv4vRZ88R
	qF3dRqDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwid-0007XT-Rk; Thu, 18 Jun 2020 15:44:47 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweW-0004K7-VG
 for linux-arm-kernel@bombadil.infradead.org; Thu, 18 Jun 2020 15:40:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:Content-Type:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=tj4USkT4mmzGAYtGQ+Hrc6tAZIJTZKbcemrdU4KaPkY=; b=w1SREkn6YC3hc9hfuRghXVysvq
 FKxET3mdr0hw0Rgt8q6wfg2Ugkwe/BmxquqtihgSAODh+lQgoMruDb6F20VvepEhb0XgLseZyJL38
 78+fTx9qL/1g4Mdyx1b1rurzrIVWRFMUiXxDduV5trl8lit3M16ijiBDgFwqkOVXZbhT6+8JmG8VO
 VEMtXAJE2y31uZedkF/4UkfLGLjZ1vdBvB8llhOAujnci2v2F+QkLPhYqAnVGsqGrRxIUHXE9b9iH
 6rER5zA6bPjO1RHtucftR+3pw9DILx6aOl6X3y2c0+XN2vsDX6ONYtAENT3TKjFmhm5M87fgvfJbT
 0jEvMJvw==;
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlweT-0007pQ-Ea
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:31 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154020euoutp0230591757037a93cc865408bba5e005ac~ZrZooh5Ah1314813148euoutp023
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154020euoutp0230591757037a93cc865408bba5e005ac~ZrZooh5Ah1314813148euoutp023
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494820;
 bh=tj4USkT4mmzGAYtGQ+Hrc6tAZIJTZKbcemrdU4KaPkY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=haU5ti1LmU0xmHa0cMtZynSQJ9ciaWxwITYsg5sSSIa4Wk96ml8Cblegp2iZzGMF4
 V3SZewgVKu6baiWcF7vRFVCmTJB6TKxYIILh/Bk0qsSUJd06zXYoLc1cvNiAceFtYh
 xPmfj+Novm8wDy5fEGQFGS11bmH+kXLDbVlVGgWE=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154020eucas1p1fdd8a2f01d9531033041feeccd834b08~ZrZoTA22C0074000740eucas1p10;
 Thu, 18 Jun 2020 15:40:20 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 4D.CE.60679.4EA8BEE5; Thu, 18
 Jun 2020 16:40:20 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154020eucas1p2b1cc0b386396bd09b735cc9d06906082~ZrZn_Vnfu0608006080eucas1p2N;
 Thu, 18 Jun 2020 15:40:20 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154020eusmtrp297d2caa0103f91831151757ed2ca195a~ZrZn9Z2V40399203992eusmtrp2V;
 Thu, 18 Jun 2020 15:40:20 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-26-5eeb8ae4a465
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 76.EE.08375.4EA8BEE5; Thu, 18
 Jun 2020 16:40:20 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154019eusmtip1cdb1619afa0bc2257d86f26de1caacce~ZrZnRn8rQ0833608336eusmtip1O;
 Thu, 18 Jun 2020 15:40:19 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 09/36] drm: i915: fix common struct sg_table related issues
Date: Thu, 18 Jun 2020 17:39:30 +0200
Message-Id: <20200618153956.29558-10-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRjmPefs7Dhcnabg19UYXUgw0yK+KKKL0Yn6oWR/Is1ZJ5V06uay
 BZErLFspU0PFUpcF1szmdZoW2rwsM7VyDUUl04JMwsoVXbTlPGr/nvd5nvd7Hl4+hpS1iJYx
 scpkXqVUxMlpCWVp/9Xj/14/HrHpcu1KnNHdQeDKfLMIuyxZJLZ/n6Dx/bI2At80VBPY2LQd
 l/aaAT+5TWCn/R2Bq0YdItzbcIvG5a1DYvz0y3sRbipwiHct5h4UPQDuyQ8jxd15PEZwdT+G
 RVxRRyj39pqN4KrvXuAG/o6SXE5fKXCN/ak0l1ljAm6yalWI51HJjpN8XOwZXhWwM1ISU2Yq
 pBKNK84W29ekgs1HDx4MYregvl92sR4kjIy9B6jKYKSFwQmo/s/EnDIJ6M03Mzm/Yh3LBUEo
 BdR8JR0WVkxDA2K3i2YDkf6znnZjbzYN0LMMT7eJZFtJ9NroALfgxYagytoaQg8MQ7Fr0c8b
 W920lN2JXgzXz6X5orKK5lnsMcN32tJE7ncQ6xCjN66vlGAKRqWtFXPYC32y1YgFvAK5HhUT
 wsIlQO+6y8XCcB1Q78V8EFzb0WD3b9rdgmQ3IHNDgEDvRmMt07PlELsI9X1e4qbJGZhtySMF
 WorSL8sE9zpUYHu4EPv05eu5/hzKcTWRwoGyADV1NVIG8C34H2YEMIEPr1HHR/PqICWfslGt
 iFdrlNEbTyTEV8HM1+r8a3PWQ8NUlBVYBuSe0o9h4xEykeKMWhtvBcSQcm/pnq7OCJn0pEJ7
 jlclHFdp4ni1FZYzlNxHurlkLFzGRiuS+dM8n8ir5lWC8ViWCsf6I6uDzLr2slw9Tty2dnV+
 ybcjfUlXRwI1Lrw3Ji8l2BDlc37J86kPSc5rg6/kbYX3ZBpT8IH+ui6/CpFlUXNGaBq4LNZp
 6rBjv1YSUKk7xLlYXbZRm+48mLH+RRgdnjRSsM+7bnPzqYGBcemrSFW4X7t/sq6wZ6k5sxgM
 ckodowj0I1VqxT8EuuQBVgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xu7pPul7HGUxawGbRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlnMnrCZyWLBfmuL5ZfXM1rsXchk8eXKQyaLTY+vsVpc3jWHzWLt
 kbvsFgc/PGG12D/rGrsDv8eaeWsYPfZ+W8DisXjPSyaP7d8esHrMOxnocb/7OJPH5iX1Hrf/
 PWb2mHxjOaPH7psNbB59W1YxenzeJBfAE6VnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdo
 bB5rZWSqpG9nk5Kak1mWWqRvl6CXsXrVXJaCBTIV86+oNDAeF+9i5OSQEDCROPRyGiOILSSw
 lFFi5TIriLiMxMlpDawQtrDEn2tdbF2MXEA1nxglHrT2gyXYBAwlut5CJEQEOhklpnV/ZAdJ
 MAucYZb4vcEbxBYW8JN4NeM3UAMHB4uAqsSPKWYgYV4BO4kzD3YwQyyQl1i94QCYzQkUP328
 lRXiIFuJ5x/a2CYw8i1gZFjFKJJaWpybnltsqFecmFtcmpeul5yfu4kRGD/bjv3cvIPx0sbg
 Q4wCHIxKPLwvQl7HCbEmlhVX5h5ilOBgVhLhdTp7Ok6INyWxsiq1KD++qDQntfgQoynQTROZ
 pUST84GxnVcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgTHw11z2
 6PCT685wfP8oXrLCl1lff1aXxvWdl0xc36+IELx6uOVGKOOJHZWak1y4d/daMj4NebTK8aep
 90Tu4CN8EW1qlVU7r1Xs61cTVVgi/Tnxxmm9E0wzIu6ufDHb52f8gbm6h5a7alh4Cr2c2KEQ
 EPS233VWD8ecg9P5d68/KbTMarFG010lluKMREMt5qLiRAAR+nxFtQIAAA==
X-CMS-MailID: 20200618154020eucas1p2b1cc0b386396bd09b735cc9d06906082
X-Msg-Generator: CA
X-RootMTR: 20200618154020eucas1p2b1cc0b386396bd09b735cc9d06906082
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154020eucas1p2b1cc0b386396bd09b735cc9d06906082
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154020eucas1p2b1cc0b386396bd09b735cc9d06906082@eucas1p2.samsung.com>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
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
