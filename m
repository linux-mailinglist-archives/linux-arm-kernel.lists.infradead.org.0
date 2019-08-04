Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8601080E3A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 00:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qrux2inH/WMc+dZCDoVRStFJuWgbO4S95p7FJj2Ti1M=; b=IyU+GZSoeP4RBN
	JuI5Ee3PbRUSL8g0zbWxMTI7vwl2vQpSdRFmT0acgAoU5lU7IX3HyR7bfPfQq8sUwOtrW3IjFlbHI
	3Qa8J0YDgdf34YeUeCWBDmKjmI1qO1U8OyTccLRKPd7YV32anwsoJnoo9bZviu8bZcmUVZzmxlB9c
	SJ/4yQO3DUTV10wepg4f3h4aOQKSNoX8ON1ztvujjCmpZAYYqxTC+4u74NQJERvFN3i11S948gBu0
	vlhPP+zttkUVO+LpiI4kXsX2SoAvdTQ2opyfcAI/ks5L4b8mFA8FyC0pNvVczIs5Rqp7UGrW4T6cL
	vwx5JNTSw1U7wmHdm99g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huPNN-0001DZ-L4; Sun, 04 Aug 2019 22:53:18 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huPJl-00056a-QN; Sun, 04 Aug 2019 22:49:36 +0000
Received: by mail-pf1-x441.google.com with SMTP id u14so38616175pfn.2;
 Sun, 04 Aug 2019 15:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5vxuyadJL7U7uLaLdbmi0wM48++CcjfxvCZKqh2vh4A=;
 b=SmLYPFHmKN1uE643ZHBnB9dNk1rkYQS38le9bhNsjkuijth7hTQM++IPMv3pLW0TEI
 7/x46VCEIatXmkV3w2KshE0imX/kUzrth+ucng6DZOKNE0opT13YpOAAUVZVUjGyDlRy
 PB2Ml2hj6K3sDNS5iK8QIe0u19usMs5R4F7ygDzoCAKAQPcQlfC/e9zMHKVg/PGP6KNH
 jH8S8rBi9/AhB/tXE8C3wWfrNrkZfmcdnxjHGl0d8mZOAczH5is/McK+cj5KFruHwe2c
 MlwNgBe4BfI2d4CuM85b0u6u4v6w/IVsnWdV3/DEzbLrJ3+c49m+Mf//mO5waQdOc/o0
 4mBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5vxuyadJL7U7uLaLdbmi0wM48++CcjfxvCZKqh2vh4A=;
 b=K23ezVdoifphyaHKq9F9lk/m8p5Np4pT5b5RHX5zO5acfIokhLVpPDzdseiMQ7M1iR
 Zy5qnAWJOlK9wIfxePN9olYnIzJNXqBkVMVJ54rLoGAwpD/9ULbR3vv0wljW67n4ORfo
 otaW40hgaKwpnnGwXNGz5VQAH9++ir0kZHR/LG4Z1piTqmWi9V6AXTvFvEPEvNxjyt+A
 f47OlYSCMB7R+36RO0AhkZKBZYbieOdN03yrlRQckm564D95MynLWUQvlULDATg1dgpH
 FRZ7e/IgPNVoiPPL9aGm6kelmkn1nJAUBnXqnPA0VB/T9paT5vDI/V0vFAzEN0WptbiH
 uCcA==
X-Gm-Message-State: APjAAAVprNjcBYiEPZpr+EgWiomFE9MbElO7BvrvVqMxYDPjbfp5A2ka
 Q10ometH7qF4pWKO7kwVMA6pMsd7
X-Google-Smtp-Source: APXvYqx8ZWVr6MlzhqOcGh2E3H/RsN7D9i6b3t0CUjOfGBvpDNUsLBn0LfDPCNpJqri3cJedM4xZQw==
X-Received: by 2002:a63:1b56:: with SMTP id b22mr16835931pgm.265.1564958973404; 
 Sun, 04 Aug 2019 15:49:33 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.49.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:49:32 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 09/34] media/v4l2-core/mm: convert put_page() to
 put_user_page*()
Date: Sun,  4 Aug 2019 15:48:50 -0700
Message-Id: <20190804224915.28669-10-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804224915.28669-1-jhubbard@nvidia.com>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_154933_974892_1AFA1B07 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (john.hubbard[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Jason Gunthorpe <jgg@ziepe.ca>, Hans Verkuil <hans.verkuil@cisco.com>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Souptick Joarder <jrdr.linux@gmail.com>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-fsdevel@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>
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

Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Kees Cook <keescook@chromium.org>
Cc: Hans Verkuil <hans.verkuil@cisco.com>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Jan Kara <jack@suse.cz>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Souptick Joarder <jrdr.linux@gmail.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: linux-media@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/media/v4l2-core/videobuf-dma-sg.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/media/v4l2-core/videobuf-dma-sg.c b/drivers/media/v4l2-core/videobuf-dma-sg.c
index 66a6c6c236a7..d6eeb437ec19 100644
--- a/drivers/media/v4l2-core/videobuf-dma-sg.c
+++ b/drivers/media/v4l2-core/videobuf-dma-sg.c
@@ -349,8 +349,7 @@ int videobuf_dma_free(struct videobuf_dmabuf *dma)
 	BUG_ON(dma->sglen);
 
 	if (dma->pages) {
-		for (i = 0; i < dma->nr_pages; i++)
-			put_page(dma->pages[i]);
+		put_user_pages(dma->pages, dma->nr_pages);
 		kfree(dma->pages);
 		dma->pages = NULL;
 	}
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
