Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A2D1C511A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 10:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4wHnPLebbvWM4YXyYaSmfDihUYxGuB1ZG7orWpmuu5I=; b=DOdEqA+6GseDsEem8GhYYF1M+n
	nlD5T0bo3tT88y+QalzENSNMebu2/TO7lUES0BwfSd8HOIDT6x6U50cfZ+GGMxkOi/sK7jq8sjbLg
	/RLVv9gCIyB3J9+kRr1n9XkTmcLUOhiGM8KI61SuJcHfyHk2g+u3QES92zV4gjtag/e6lpk3sPwhL
	Xia5r624NndS2AloLAL8Qn+EsJ7E3U4hZoddL/vrfz0W9R8pbB3i0PImDq/UZM5soUC9v8nLBSXG5
	uxoctvtmyddb4xr3cWYKT8VczrSKXBteKdVv10QUs84paWqOfqkFxOlxyDngZUiw7ussMNeqeb39J
	S6jVJRIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtF8-0001g4-1i; Tue, 05 May 2020 08:47:58 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtDi-0000Sx-0G
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 08:46:31 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084628euoutp0163d076e61621b55f8738bb89766d8ba0~MFXt8lUhv0326103261euoutp01b
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  5 May 2020 08:46:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084628euoutp0163d076e61621b55f8738bb89766d8ba0~MFXt8lUhv0326103261euoutp01b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588668388;
 bh=CPIvg9DJBsHomFhaYMeKmW3jnKNL9oo3n4aUE2S6eCA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G9XEfwm0jU+q55OQW8YsmG3Fx9YZN+2+irujaO7iunvLffpUgEsKlMQ+te0vgOTsC
 2/JtCSEFYlY9FfkQFF/FsfIgrCAZfelWdVAUI8Mw8/Ah1MQt7eFy2DB7xwBIRhN6co
 61uuzBOPRy3x5gsx6iZqrJEkXXGboIlyM2/esg10=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084628eucas1p10e8d07790bd21dca4b43534d0a702244~MFXtrfBvf2430324303eucas1p17;
 Tue,  5 May 2020 08:46:28 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 3C.01.60698.4E721BE5; Tue,  5
 May 2020 09:46:28 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084627eucas1p199eed52198b4409da1fa8e2256f5bb62~MFXtQFxhC2423024230eucas1p15;
 Tue,  5 May 2020 08:46:27 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084627eusmtrp17da4e92b7e55c6d0d9bbcf02396b2e1a~MFXtPTOPv0942309423eusmtrp1R;
 Tue,  5 May 2020 08:46:27 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-30-5eb127e46587
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F4.14.08375.3E721BE5; Tue,  5
 May 2020 09:46:27 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084627eusmtip11b18811493c682f5d5ad483359babc32~MFXsmhYsG0686606866eusmtip1I;
 Tue,  5 May 2020 08:46:27 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 07/25] drm: i915: fix common struct sg_table related issues
Date: Tue,  5 May 2020 10:45:56 +0200
Message-Id: <20200505084614.30424-7-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRjHe8/Zzs7Wlqep+GaWMUgpUBP7cMi0JD8cCMqKIqLUmYdpeWPH
 WRrp0ixbXlYLvCRjZbi8zlteMy9pcy7U1NTIMlEsMzHyQomtnMfs2//5Pf/n+T+8vDgqbuM6
 4uFRsbQ8ShohwQSc2le/etwmXSsD973U2pMZPSaErMwxcMk/tfdQcnBxDiOLSjoR8qG6GiF1
 Ld6kfsAAyOZHCLkwOI6QVRNDXHKgMR8jyzo+8Mi275NcsiVviHfYhirVlgKqeUnHoQqeTyNU
 3dInLqU1naDG7hoRqvpJEvXeMoFSmhE9oJreKTEqs6YYUPNVOwOE5wQHQ+mI8Dha7uEbLAib
 mlPzYvq2XR1vKkSVoMJeBfg4JPbDwbQOTAUEuJh4CmCe/g7KFgsAaup/r3fmASxe1PJUAF8b
 6c69xHL9Ks81cTYmUoqGuda9GOEJVbMqzKrtiFQAuzKEVhNKdKCwXzcErA1bIgAmG16jVs0h
 dsPZrC5gTRARPlDdm8je5wxLKlrXLHzCF070j2Is/8iDX5bi2YP8YbZZymJb+NVYw2O1EzRr
 0tdug0QKgOM9ZTy2SAdwIDkHsC5vONqzjFkXocQeaGj0YLEfzEr+hrL7t8CR2a1WjK7K+7XZ
 61gE026JWbcLzDOWb8S29fWjrKZg949uHvs8nQCmqjWYGjjn/Q/TAVAMHGgFEymjGa8o+oo7
 I41kFFEy94vRkVVg9WOZLcbFevBiJaQdEDiQCEVn5w2BYq40jomPbAcQRyV2osKfFYFiUag0
 PoGWRwfJFRE00w624xyJg8jr8fQFMSGTxtKXaTqGlv/rIjjfUQlsAOIvCPV5mxMsqWl1rz3d
 NZNkafhcgL7Z7OZ389CkIQg/esC2sWk2OIZ7/NiYUmDutTmi672Oet3Y1XCy+5SHSdgwxc/v
 Ww50KlLzV+oKFmrmGndUKjJn6tyM+sRnLp3nTeFnHiR4K53lcaU+w7fLZSt2FuC6SRaSOMhQ
 1ywSDhMm9dyLyhnpX7GPxbFUAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMIsWRmVeSWpSXmKPExsVy+t/xu7qP1TfGGVxYYGTRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlnMnrCZyWLBfmuL5ZfXM1rsXchk8eXKQyaLTY+vsVpc3jWHzWLt
 kbvsFgc/PGG12D/rGrsDv8eaeWsYPfZ+W8DisXjPSyaP7d8esHrMOxnocb/7OJPH5iX1Hrf/
 PWb2mHxjOaPH7psNbB59W1YxenzeJBfAE6VnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdo
 bB5rZWSqpG9nk5Kak1mWWqRvl6CX8ez9BPaCC5IVD3cvY25g3CDaxcjBISFgInFqZlYXIxeH
 kMBSRolrLztYuxg5geIyEienNUDZwhJ/rnWxQRR9YpRYcvgaG0iCTcBQoustREJEoJNRYlr3
 R3aQBLPAGWaJ3xu8QWxhAT+Jnjk3GUFsFgFVibf9JxhBNvMK2EpMOF8HsUBeYvWGA8wgNqeA
 ncTjS3fA5gsJFEp8OP+ddQIj3wJGhlWMIqmlxbnpucWGesWJucWleel6yfm5mxiBEbTt2M/N
 OxgvbQw+xCjAwajEwxvxeX2cEGtiWXFl7iFGCQ5mJRHeZT82xAnxpiRWVqUW5ccXleakFh9i
 NAW6aSKzlGhyPjC680riDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1
 MGZtX787T2vOhHfvpxXOT/t69Hxfd7jH/i9c4VENia6Wf09+vP5vw7U6uyVszT1X3oT1h+XH
 bwjqz1q0mWfhsePs2Sc8PD5b2WaWu6feFJM68ni2v80Xz/R1RXrJnNahJ25NfPeDfc4Bk0yv
 jm++mY0LVxyXqlD5MCtwMu+FoHX3uueJnJ9db6TEUpyRaKjFXFScCACtogsvtgIAAA==
X-CMS-MailID: 20200505084627eucas1p199eed52198b4409da1fa8e2256f5bb62
X-Msg-Generator: CA
X-RootMTR: 20200505084627eucas1p199eed52198b4409da1fa8e2256f5bb62
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084627eucas1p199eed52198b4409da1fa8e2256f5bb62
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084627eucas1p199eed52198b4409da1fa8e2256f5bb62@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_014630_183353_9D6E2401 
X-CRM114-Status: GOOD (  14.86  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The Documentation/DMA-API-HOWTO.txt states that dma_map_sg returns the
numer of the created entries in the DMA address space. However the
subsequent calls to dma_sync_sg_for_{device,cpu} and dma_unmap_sg must be
called with the original number of the entries passed to dma_map_sg. The
sg_table->nents in turn holds the result of the dma_map_sg call as stated
in include/linux/scatterlist.h.

This driver creatively uses sg_table->orig_nents to store the size of the
allocate scatterlist and ignores the number of the entries returned by
dma_map_sg function. The sg_table->orig_nents is (mis)used to properly
free the (over)allocated scatterlist.

This patch only introduces common dma-mapping wrappers operating directly
on the struct sg_table objects to the dmabuf related functions, so the
other drivers, which might share buffers with i915 could rely on the
properly set nents and orig_nents values.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v3 00/25] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread: https://lkml.org/lkml/2020/5/5/187
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c       | 13 +++++--------
 drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c |  7 +++----
 2 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 7db5a79..7e8583e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -48,12 +48,10 @@ static struct sg_table *i915_gem_map_dma_buf(struct dma_buf_attachment *attachme
 		src = sg_next(src);
 	}
 
-	if (!dma_map_sg_attrs(attachment->dev,
-			      st->sgl, st->nents, dir,
-			      DMA_ATTR_SKIP_CPU_SYNC)) {
-		ret = -ENOMEM;
+	ret = dma_map_sgtable_attrs(attachment->dev, st, dir,
+				    DMA_ATTR_SKIP_CPU_SYNC);
+	if (ret)
 		goto err_free_sg;
-	}
 
 	return st;
 
@@ -73,9 +71,8 @@ static void i915_gem_unmap_dma_buf(struct dma_buf_attachment *attachment,
 {
 	struct drm_i915_gem_object *obj = dma_buf_to_obj(attachment->dmabuf);
 
-	dma_unmap_sg_attrs(attachment->dev,
-			   sg->sgl, sg->nents, dir,
-			   DMA_ATTR_SKIP_CPU_SYNC);
+	dma_unmap_sgtable_attrs(attachment->dev, sg, dir,
+				DMA_ATTR_SKIP_CPU_SYNC);
 	sg_free_table(sg);
 	kfree(sg);
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c b/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c
index debaf7b..756cb76 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c
@@ -28,10 +28,9 @@ static struct sg_table *mock_map_dma_buf(struct dma_buf_attachment *attachment,
 		sg = sg_next(sg);
 	}
 
-	if (!dma_map_sg(attachment->dev, st->sgl, st->nents, dir)) {
-		err = -ENOMEM;
+	err = dma_map_sgtable(attachment->dev, st, dir);
+	if (err)
 		goto err_st;
-	}
 
 	return st;
 
@@ -46,7 +45,7 @@ static void mock_unmap_dma_buf(struct dma_buf_attachment *attachment,
 			       struct sg_table *st,
 			       enum dma_data_direction dir)
 {
-	dma_unmap_sg(attachment->dev, st->sgl, st->nents, dir);
+	dma_unmap_sgtable(attachment->dev, st, dir);
 	sg_free_table(st);
 	kfree(st);
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
