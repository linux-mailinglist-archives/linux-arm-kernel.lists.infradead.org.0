Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C928401B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0WYtvdta6WWhVba75pMxNNz6mfHYjJHc7aNZ9PNUl8g=; b=CelNa8ydeCsbcd
	7FWo9a9pdp7U1bFc81tObIMguEfWvcFmdt1qtzjx8njFfsaIVtoIm8w6FufUt5lAo9vdxsjvTazUP
	ZSvd7GQo6j1XD7iWkGX4nfLA5Us3YdlMZwpvF/h8Yeu+n0kyAtwH4okc/WH1EplbT6VS2s79KXIXe
	PFnAVWIArcv6n2m22niuuMXerl0OKBC+DFoS9hIW8oSYZ61+Y5mmjV6366SpdIPu4nHFFFyop+Sk5
	chxk+Sb8vCKqWQweavh9yl3Bdipo8YeCEzuuzaV0EHD+dNmz8SYmhOmSP1AoPQrkgZ7qIWFmKRJId
	Lvs3hSeJWbX8Zc+e+Obg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvAtE-0006pQ-2L; Wed, 07 Aug 2019 01:37:20 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvAq1-00022c-EY; Wed, 07 Aug 2019 01:34:04 +0000
Received: by mail-pg1-x541.google.com with SMTP id z14so5310556pga.5;
 Tue, 06 Aug 2019 18:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=51+On65LrNSvXr2lp5EjmvkWwZiof+VzaE7I05DxrV4=;
 b=HS5hgHLQTuHN2Sn9FeJ7Ry9Shi37CsQ8JBuMgzW+QMGy5IXf/RFsCZt6S1x06XBeQi
 DnjGCaTAaZsljEKwzFgSKCv3YKZyY9LJk5C71dTnu0TTqdIkluqZnGH65tZnImTYNKAd
 2pWlz2fyn5+MKPzhhgK7Nc+MXto5LZw4BYu52Kq3r1UDWXa+Eo9UCDH4MczS5x/pQmnw
 VRUedCXK07PgrjjNVT2/ovRym41o4od9NHcnmASHKSTmbkxw8flhZPB1nOgA8m/sENwh
 Lvo4EfzFR3bHyNsXSJiKXO3OmKyrCfkmolY0a3G9Y5UDT+HZQc4MDN5LW5udmGwvXApo
 r3dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=51+On65LrNSvXr2lp5EjmvkWwZiof+VzaE7I05DxrV4=;
 b=mqaCGk4le6daIBS5aOk/T9Pm2fo5UpdjU0d14U3zrqHzJkydWs73AuTXDMIBHosH0g
 EAaIE8DtPkFKbFHjXxCGwtiiZnz7/J6Yto7/hOMjKQV/zDZJ0RwoKeGTFFd26g7hfvIa
 aexlBBcd/NnUxETE/G2TOLIdtqHCq5ZyK4sts95/PhOX4a8KI8vWh3yT483Nu7cJyh2i
 /UdRbpag3TDlZ/xfjyxU9iQVDDJyjZhdufJGdmM4PJjhNZdcwO6G3/5pgDNZgDxzyH7R
 1YQfwPoF2sr6YbaFTkwwX+vsx5Lz7GXfhd343ZPvdlq6yVkqPFYUSMYUlce4v2wwZWY+
 2L9A==
X-Gm-Message-State: APjAAAUdPVcp124NaZRILQ7kzBDK5AGdfChR0vHZc4gqbov8KNI8uwvL
 WqOuhr3tzYZduD9sC+vkUf4=
X-Google-Smtp-Source: APXvYqyf93EQUF5J1TAu6cpDsM1o6JoPpYe+Wwb8uLsZYmcgqFaJy5X85xn6gzZV4mlFfmMiaJJNdA==
X-Received: by 2002:a17:90a:9f4a:: with SMTP id
 q10mr5945834pjv.95.1565141640357; 
 Tue, 06 Aug 2019 18:34:00 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.33.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:33:59 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 10/41] media/ivtv: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:09 -0700
Message-Id: <20190807013340.9706-11-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807013340.9706-1-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_183401_577238_5C39DD23 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (john.hubbard[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 Andy Walls <awalls@md.metrocast.net>, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: John Hubbard <jhubbard@nvidia.com>

For pages that were retained via get_user_pages*(), release those pages
via the new put_user_page*() routines, instead of via put_page() or
release_pages().

This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
("mm: introduce put_user_page*(), placeholder versions").

Cc: Andy Walls <awalls@md.metrocast.net>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/media/pci/ivtv/ivtv-udma.c | 14 ++++----------
 drivers/media/pci/ivtv/ivtv-yuv.c  | 11 +++--------
 2 files changed, 7 insertions(+), 18 deletions(-)

diff --git a/drivers/media/pci/ivtv/ivtv-udma.c b/drivers/media/pci/ivtv/ivtv-udma.c
index 5f8883031c9c..7c7f33c2412b 100644
--- a/drivers/media/pci/ivtv/ivtv-udma.c
+++ b/drivers/media/pci/ivtv/ivtv-udma.c
@@ -92,7 +92,7 @@ int ivtv_udma_setup(struct ivtv *itv, unsigned long ivtv_dest_addr,
 {
 	struct ivtv_dma_page_info user_dma;
 	struct ivtv_user_dma *dma = &itv->udma;
-	int i, err;
+	int err;
 
 	IVTV_DEBUG_DMA("ivtv_udma_setup, dst: 0x%08x\n", (unsigned int)ivtv_dest_addr);
 
@@ -119,8 +119,7 @@ int ivtv_udma_setup(struct ivtv *itv, unsigned long ivtv_dest_addr,
 		IVTV_DEBUG_WARN("failed to map user pages, returned %d instead of %d\n",
 			   err, user_dma.page_count);
 		if (err >= 0) {
-			for (i = 0; i < err; i++)
-				put_page(dma->map[i]);
+			put_user_pages(dma->map, err);
 			return -EINVAL;
 		}
 		return err;
@@ -130,9 +129,7 @@ int ivtv_udma_setup(struct ivtv *itv, unsigned long ivtv_dest_addr,
 
 	/* Fill SG List with new values */
 	if (ivtv_udma_fill_sg_list(dma, &user_dma, 0) < 0) {
-		for (i = 0; i < dma->page_count; i++) {
-			put_page(dma->map[i]);
-		}
+		put_user_pages(dma->map, dma->page_count);
 		dma->page_count = 0;
 		return -ENOMEM;
 	}
@@ -153,7 +150,6 @@ int ivtv_udma_setup(struct ivtv *itv, unsigned long ivtv_dest_addr,
 void ivtv_udma_unmap(struct ivtv *itv)
 {
 	struct ivtv_user_dma *dma = &itv->udma;
-	int i;
 
 	IVTV_DEBUG_INFO("ivtv_unmap_user_dma\n");
 
@@ -170,9 +166,7 @@ void ivtv_udma_unmap(struct ivtv *itv)
 	ivtv_udma_sync_for_cpu(itv);
 
 	/* Release User Pages */
-	for (i = 0; i < dma->page_count; i++) {
-		put_page(dma->map[i]);
-	}
+	put_user_pages(dma->map, dma->page_count);
 	dma->page_count = 0;
 }
 
diff --git a/drivers/media/pci/ivtv/ivtv-yuv.c b/drivers/media/pci/ivtv/ivtv-yuv.c
index cd2fe2d444c0..2c61a11d391d 100644
--- a/drivers/media/pci/ivtv/ivtv-yuv.c
+++ b/drivers/media/pci/ivtv/ivtv-yuv.c
@@ -30,7 +30,6 @@ static int ivtv_yuv_prep_user_dma(struct ivtv *itv, struct ivtv_user_dma *dma,
 	struct yuv_playback_info *yi = &itv->yuv_info;
 	u8 frame = yi->draw_frame;
 	struct yuv_frame_info *f = &yi->new_frame_info[frame];
-	int i;
 	int y_pages, uv_pages;
 	unsigned long y_buffer_offset, uv_buffer_offset;
 	int y_decode_height, uv_decode_height, y_size;
@@ -81,8 +80,7 @@ static int ivtv_yuv_prep_user_dma(struct ivtv *itv, struct ivtv_user_dma *dma,
 				 uv_pages, uv_dma.page_count);
 
 			if (uv_pages >= 0) {
-				for (i = 0; i < uv_pages; i++)
-					put_page(dma->map[y_pages + i]);
+				put_user_pages(&dma->map[y_pages], uv_pages);
 				rc = -EFAULT;
 			} else {
 				rc = uv_pages;
@@ -93,8 +91,7 @@ static int ivtv_yuv_prep_user_dma(struct ivtv *itv, struct ivtv_user_dma *dma,
 				 y_pages, y_dma.page_count);
 		}
 		if (y_pages >= 0) {
-			for (i = 0; i < y_pages; i++)
-				put_page(dma->map[i]);
+			put_user_pages(dma->map, y_pages);
 			/*
 			 * Inherit the -EFAULT from rc's
 			 * initialization, but allow it to be
@@ -112,9 +109,7 @@ static int ivtv_yuv_prep_user_dma(struct ivtv *itv, struct ivtv_user_dma *dma,
 	/* Fill & map SG List */
 	if (ivtv_udma_fill_sg_list (dma, &uv_dma, ivtv_udma_fill_sg_list (dma, &y_dma, 0)) < 0) {
 		IVTV_DEBUG_WARN("could not allocate bounce buffers for highmem userspace buffers\n");
-		for (i = 0; i < dma->page_count; i++) {
-			put_page(dma->map[i]);
-		}
+		put_user_pages(dma->map, dma->page_count);
 		dma->page_count = 0;
 		return -ENOMEM;
 	}
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
