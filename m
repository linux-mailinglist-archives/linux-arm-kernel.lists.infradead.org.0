Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AE283F48
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:35:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKre76TAZH2cvgCOMVMAw2nMu4dVS/fN8ao7buDeK34=; b=VeR7tx+xQ0OxaV
	mHQce9IcHfj8ybKNH8kR9EFEpQ0OZH8WiNS3Vd7bW0X0qTXk2acGPKoXZv/t/8jcjkCt3FXzuOt/k
	kchYkKCHbICUTZfPqww44sXnUw00kvUhQ6BqAzP2Xn+lqASCOcSxw6uMCEYrMCyDBdm+rlCF/mpED
	YxTaAvC5g31gdaJyrKuHO3Ox2sVUVuMiL53WYnTvB6FOb4A0ipIIMoKwYQpVohMoDzYfEvlNWVnVA
	0gW/4NC1MrtgDOHxR9WhvB0tFlx9lrDDXGEAHYCYLpfjB/raVfd/QV5TvGY+a8zQ+T11j78WZq1bM
	IiHuXkb0IAcqIg9Ts1NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvAqu-0002lM-I8; Wed, 07 Aug 2019 01:34:56 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvApo-0001ne-KD; Wed, 07 Aug 2019 01:33:50 +0000
Received: by mail-pl1-x643.google.com with SMTP id ay6so38634912plb.9;
 Tue, 06 Aug 2019 18:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SsIRGkPWeq5HvTZzTxF/TGZYHjIKFiRIBMhKcsnvtic=;
 b=oy39nkO9q1zN/Pd7fO3C4Y4Vuneozl9x+qPetN0JbILtppFPMIJXMHmaepq54m3Jyf
 dGw1nmQHR/jSbWupXGSsRUasNJHlcTqjhcU1O3ugIdE2PmE9G2UKn/efT28f7zQkZ/Ek
 6jjzfDGA5QraOK0hXzeRVBVVIV3bR/w8Kh69UQWoMH+W+Rs7nDww5sxmxjDiUlnV+Y3J
 JNNDHJK/Y4qoZIHDRhd8qo6y5WM/sdBlLMt8Tk0CmXA/ZqUqxMK+oSWhp+t1g0ER8Qps
 3F4GSUTyaFhoBkjoAMVyL8y9bOwlhzuxjjb1EKe6sSD4G4rjFtE3kxZ1sD03IRQMEghY
 QO3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SsIRGkPWeq5HvTZzTxF/TGZYHjIKFiRIBMhKcsnvtic=;
 b=n/BZMz5OHBUZHzNl4Xpo3nSgpX+3eX+NTInsfekYocefUMLItzBXugUJszPGpd+Ckb
 iy70rMt943GjnkAlW+j7OKXRAX5zyrqdvz7bOjiufyFD9qC6mx7v91prnyox+mJ9eKND
 vTTMAlQ9J2p9M5mm++/iXo5PeFripf2DRBXkjDxZVDp0a/tVnlBedg3ZTw1CkyxWTDbT
 6OmTU6wdAY2Ct81xumPmWuI/aLsvuDb4211UBR3TujBj+r4om+3eqduvxOWkNuPN+xCY
 hPPLTugdagbq8GHmFBePcy8YoAuUPPYqX2GwLbzv/k70TgyjzZmss6+ySNdOQU8vbIPH
 R3qA==
X-Gm-Message-State: APjAAAU//diBpeAJ51lPsFbex29Kn2WMt1l6WzXS14RiJaRDyqS1eiNR
 qNX+Xay7HYl0RP7FIEvgXM2h8nHf
X-Google-Smtp-Source: APXvYqxzrRdxX4nRlyikVVwrMH2CyIAMqdQl6neWQaDEBd9Z3PCuWH0kRX4lRsXl8HO2TxD71Nthng==
X-Received: by 2002:a17:902:1122:: with SMTP id
 d31mr172269pla.254.1565141627872; 
 Tue, 06 Aug 2019 18:33:47 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.33.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:33:47 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 02/41] drivers/gpu/drm/via: convert put_page() to
 put_user_page*()
Date: Tue,  6 Aug 2019 18:33:01 -0700
Message-Id: <20190807013340.9706-3-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807013340.9706-1-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_183348_659527_80DAD31F 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 David Airlie <airlied@linux.ie>, Dave Hansen <dave.hansen@linux.intel.com>,
 Dave Chinner <david@fromorbit.com>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-fsdevel@vger.kernel.org
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

Also reverse the order of a comparison, in order to placate
checkpatch.pl.

Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/gpu/drm/via/via_dmablit.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/via/via_dmablit.c b/drivers/gpu/drm/via/via_dmablit.c
index 062067438f1d..b5b5bf0ba65e 100644
--- a/drivers/gpu/drm/via/via_dmablit.c
+++ b/drivers/gpu/drm/via/via_dmablit.c
@@ -171,7 +171,6 @@ via_map_blit_for_device(struct pci_dev *pdev,
 static void
 via_free_sg_info(struct pci_dev *pdev, drm_via_sg_info_t *vsg)
 {
-	struct page *page;
 	int i;
 
 	switch (vsg->state) {
@@ -186,13 +185,8 @@ via_free_sg_info(struct pci_dev *pdev, drm_via_sg_info_t *vsg)
 		kfree(vsg->desc_pages);
 		/* fall through */
 	case dr_via_pages_locked:
-		for (i = 0; i < vsg->num_pages; ++i) {
-			if (NULL != (page = vsg->pages[i])) {
-				if (!PageReserved(page) && (DMA_FROM_DEVICE == vsg->direction))
-					SetPageDirty(page);
-				put_page(page);
-			}
-		}
+		put_user_pages_dirty_lock(vsg->pages, vsg->num_pages,
+					  (vsg->direction == DMA_FROM_DEVICE));
 		/* fall through */
 	case dr_via_pages_alloc:
 		vfree(vsg->pages);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
