Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47CA1CF147
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zVy28EGdIIdktlfWONvS5a6usWkDFCvSSSZgwn8TxXE=; b=KjkxgEkL7lnlPZi2t7EKyKNzy1
	Oh4PA9MMbathfIHYdzy3/tUQqxQgdmqA1rjBCc9FkspVASLVAR43Ae3ulCUjGJV2S+RLeShsU4TqJ
	TNz2q2ksW669mnVEwFGKd9wye6QfoUZJMD6iKEzaUGkdUv2vlPEBe+c02DeqKD8noX7x5uMGVBFTc
	avF0HugOUl7o541nHO0gK/iK6himb/0Fjc6yWD0KuzXa5PZjtQymNQo5plD0cDtkRzoh/gdwUtIWM
	S22tdP0Z3oNDagWnnpIGJcBzu4wNqqmadZYyFeyFdLgoUswGFJ5nKdIhwdS8OK4LOtLrdlfgGf8Or
	VA2/ubcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQzB-0007sJ-Gf; Tue, 12 May 2020 09:14:01 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQnE-0002XF-PI
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:01:51 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090126euoutp023e167afdbacd0376a607f9963d82f599~OPFyPJokg0522905229euoutp02h
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:01:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090126euoutp023e167afdbacd0376a607f9963d82f599~OPFyPJokg0522905229euoutp02h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589274086;
 bh=o/aCARzJwJTnWYrVIUdYxc2kaVWzrvt/p7+Fv68pjNU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QC0pLNt0NDFg9xhMeBjlKAjU52X2Aqb05u2NP829rg2DP0NMNutZzDWNxi13R/rza
 1F8yHG6JTHxF8pshFMRRa9YzYKReZ5gIjWjXJ3uW5NR/xjGKpNOXVx02VujufT+auu
 XMZ5thBEaLl2FwiAklnBJf/9YkW7tjEkGqrMI210=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090126eucas1p1ad3aa81a22272b2f8362c0e54cc28da1~OPFx219V53053030530eucas1p1w;
 Tue, 12 May 2020 09:01:26 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 19.7B.60698.6E56ABE5; Tue, 12
 May 2020 10:01:26 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090125eucas1p1f9eae024a33e92bf1468f2af4e5a1b0a~OPFxWZlID0608306083eucas1p1W;
 Tue, 12 May 2020 09:01:25 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090125eusmtrp20f8cd9809ad7b4259581f2a15175de0b~OPFxVhpQw0472704727eusmtrp2V;
 Tue, 12 May 2020 09:01:25 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-55-5eba65e6c2fb
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 0D.45.08375.5E56ABE5; Tue, 12
 May 2020 10:01:25 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090124eusmtip175a978494a4435069084cff88dec0811~OPFwkp7sM1352513525eusmtip1O;
 Tue, 12 May 2020 09:01:24 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 31/38] staging: ion: remove dead code
Date: Tue, 12 May 2020 11:00:51 +0200
Message-Id: <20200512090058.14910-31-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa1CMURzG5+x7bbW8VnQml1iTwUgqckxEbnM+JcYHw4jFO9XUVna7yLis
 YodVEo0uurmmC11kaVWrSNdJRKSyJeSWUjIVym6vy7ff//k/z3nOnDksIe2jbFjfgGBeGSD3
 l9FiUvdw6JH9O17vtag/gkPR9dUi1PPLSKP8hFwKHfkyG43qYglUXDfMoKcDPTSKvJRLo8zs
 ChFKN7iiq2o7lFk8KELfnnaIUEFnE4Ua9ck0uv6gjUG6HDWFynrfUKimrZ9B6U3DzCorrLur
 o3BOag7Av1K+EvhV6X0Sl3xPJ/GFvgEKtzYV0/j293YKG1JyGGw8WSnCNy8fxi0jnQQ++yID
 4LvNahr3lD6j8anCLOA5cat4+R7e3zeUVzq47RT73GmtZYI6JPteFi9Tg+5xWmDBQm4xjH77
 mtICMSvlrgFYWPcWCMM3AKtbH9DC0A/gFU2i6G/kyuNaQlhkAFhUW/o/MtIVyZhdNOcItd1a
 2sxW3DEAq6ItzSaCi6Lgh7y8scUkDsEfHRFjTHJ2UBdTRplZwrlBTWwcI9TZwuy8e4SZLUy6
 Me0naT4IcoksPFc3SAqmtTDR8IkWeBL8WFn4JzwNjhaliYRAJIAd9dcZYYgCsDEiAQguV9ha
 P2xKs6b7zYO5egdBdofJ541jMuTGwxfdE80yYcIzunhCkCXwuEYquOfApMob/2rLGp4QAmOY
 klT157kqALyXepM5DWyT/pelA5AFrPkQlcKbVzkH8GELVXKFKiTAe+HuQEUBMP3E2pHKgTug
 9OeucsCxQGYpOe5U5CWl5KGqcEU5gCwhs5Ic9TVJkj3y8P28MnCHMsSfV5WDqSwps5Y4X/yw
 Xcp5y4N5P54P4pV/tyLWwkYNWNLJEJUvrpGFhlcUejq6KTY7THbZb3Dd0rlhZgzBSM5OcfH1
 qV+jL9q7Qr9g09CE5/EuuStLzrxfn1juvGI1LaOOelivCTvkl6lpOHAw2cd/47Ilw/lxsXuf
 tRs1szxmyE5EZXQxfXNvxLVPz4jWjW5rse+9ZVu19LN787pIRW+Mu4xU+cgd5xNKlfw3k49x
 g4UDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMIsWRmVeSWpSXmKPExsVy+t/xu7pPU3fFGczv0LHoPXeSyeL93/ts
 FhtnrGe1aHynbPF/20Rmiz1nfrFbXPn6ns2iefF6NouVq48yWSzYb22xrEHVYuWeH0wWX648
 ZLLY9Pgaq8XlXXPYLNYeuctusW1NA6vFwQ9PWC1O3f3MbrHg2i92BxGPbbu3sXqsmbeG0ePv
 3I/MHvf2HWbx2PttAYvHwk9fWT3uXNvD5rH92wNWj/1z17B73O8+zuSxeUm9x+1/j5k9Jt9Y
 zuix+2YDm8f7fVfZPPq2rGIMEIzSsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIy
 VdK3s0lJzcksSy3St0vQy9hx5zR7wUPeilt7LBsY33J3MXJySAiYSCy9eJq5i5GLQ0hgKaNE
 Y89mZoiEjMTJaQ2sELawxJ9rXWwQRZ8YJbbfmwCWYBMwlOh6C5EQEehklJjW/ZEdxGEWmMEq
 se7APXaQKmEBC4nfD5vYQGwWAVWJbf0Hwbp5Bewk2iZOYYdYIS+xesMBsNWcQPH78/+wgNhC
 AoUSj66+ZZnAyLeAkWEVo0hqaXFuem6xoV5xYm5xaV66XnJ+7iZGYIRuO/Zz8w7GSxuDDzEK
 cDAq8fB2GO2ME2JNLCuuzD3EKMHBrCTC25IJFOJNSaysSi3Kjy8qzUktPsRoCnTURGYp0eR8
 YPLIK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAmB69ZeIug+Zj
 TLvXC11he7nJ9s/tDQxNgs43Cqqv+TJYrzd+krIq0FaFyT7PYl1+kvt25rl77m593Xvq3lpu
 iZALYrmLQ3zuGvRe0XnQX9eQ3ZCwcu9+Rw92D/ecO99Oi6jLOe+VFtxnFGJ0bqleeShLbs1p
 i5jTiTal9y6LKS/hy/r7KuuKEktxRqKhFnNRcSIAzswn4+YCAAA=
X-CMS-MailID: 20200512090125eucas1p1f9eae024a33e92bf1468f2af4e5a1b0a
X-Msg-Generator: CA
X-RootMTR: 20200512090125eucas1p1f9eae024a33e92bf1468f2af4e5a1b0a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090125eucas1p1f9eae024a33e92bf1468f2af4e5a1b0a
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090125eucas1p1f9eae024a33e92bf1468f2af4e5a1b0a@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020141_277902_87CDFE76 
X-CRM114-Status: GOOD (  12.84  )
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>,
 Daniel Vetter <daniel@ffwll.ch>, Joel Fernandes <joel@joelfernandes.org>,
 Laura Abbott <labbott@redhat.com>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ion_heap_pages_zero() function is not used at all, so remove it to
simplify the ion_heap_sglist_zero() function later.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread:
https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
---
 drivers/staging/android/ion/ion.h      | 1 -
 drivers/staging/android/ion/ion_heap.c | 9 ---------
 2 files changed, 10 deletions(-)

diff --git a/drivers/staging/android/ion/ion.h b/drivers/staging/android/ion/ion.h
index 74914a2..c199e88 100644
--- a/drivers/staging/android/ion/ion.h
+++ b/drivers/staging/android/ion/ion.h
@@ -177,7 +177,6 @@ struct ion_heap {
 int ion_heap_map_user(struct ion_heap *heap, struct ion_buffer *buffer,
 		      struct vm_area_struct *vma);
 int ion_heap_buffer_zero(struct ion_buffer *buffer);
-int ion_heap_pages_zero(struct page *page, size_t size, pgprot_t pgprot);
 
 /**
  * ion_heap_init_shrinker
diff --git a/drivers/staging/android/ion/ion_heap.c b/drivers/staging/android/ion/ion_heap.c
index 0755b11..9c23b23 100644
--- a/drivers/staging/android/ion/ion_heap.c
+++ b/drivers/staging/android/ion/ion_heap.c
@@ -145,15 +145,6 @@ int ion_heap_buffer_zero(struct ion_buffer *buffer)
 	return ion_heap_sglist_zero(table->sgl, table->nents, pgprot);
 }
 
-int ion_heap_pages_zero(struct page *page, size_t size, pgprot_t pgprot)
-{
-	struct scatterlist sg;
-
-	sg_init_table(&sg, 1);
-	sg_set_page(&sg, page, size, 0);
-	return ion_heap_sglist_zero(&sg, 1, pgprot);
-}
-
 void ion_heap_freelist_add(struct ion_heap *heap, struct ion_buffer *buffer)
 {
 	spin_lock(&heap->free_lock);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
