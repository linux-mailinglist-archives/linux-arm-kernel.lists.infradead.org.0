Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B9F7E9D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 04:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CsfkojrfcnpDn/Fpy6Pth6zZW/jrSfH+0YgaOurO2OM=; b=pZLRy7e1B/tlwA
	4Ornmy2lRBdqlyRgLiNqNgmcY49oIqKKGSFbbNIS5TsYknPSP+hLMybzT5Du3XQzs0RJd6B990Ozi
	Q++d50k7+2SkDrxGP/Iht8Ebdfi7VIx+WU2cHcbniDtEJERzPp/58KKVJA56G6e2zWj3BMP0McSQQ
	OWAl11qul41h53sg4/z7B/DJGnXjd0iOF83Ii7JSJvmAaEovq+rEM5jVN2zuj7z+RhR8kg4RKuZu8
	IgpfwLSw5P0NjEWmEJYnNxqo7/1pWpc9Msoh7eks/Rbdlr337ie29m871A8iVVH67qnjjwWUyahvc
	H/3YqKaLopq9es7JpRsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htNGt-0000RM-0l; Fri, 02 Aug 2019 02:26:19 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htNBP-000245-MN; Fri, 02 Aug 2019 02:20:42 +0000
Received: by mail-pf1-x444.google.com with SMTP id y15so35162460pfn.5;
 Thu, 01 Aug 2019 19:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0y5rJgolnpdx1vwnOpLTxW7O4fuw+3wJL+gU2Q7/qgc=;
 b=XcvG9OtyU86jk5JnQKO48GBJW89xfPHHxg+Ne0d0GJwSK2IuihtMCJFR8pabDqBzEF
 DuPSfNePU528rZ6hBUi+QFYoZILMY8tdggEmTr3mN7PzDRJ7a6OmrfV2tsrS8kf2+6HI
 Zo6kU0MY4gjn6C4vTTeXk9IHVKARwawE7INoHfJ5sfq56uo1gVj3e8g1oiz6b7OI/wgS
 KnIyWK9Z49VV7ULXr41yNDN0bWyja3EYTBz6mLtPsaZCe7aB+yHXvCTEBAOwbU3wp1bf
 uiomAHYjSX4K0Tach88phQCyk3zfRucll/enDp2U+3MmHAZ/atNajIitsMHfeEHfycq9
 ft2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0y5rJgolnpdx1vwnOpLTxW7O4fuw+3wJL+gU2Q7/qgc=;
 b=IB20talq16a7sLAHrbJZKgyRXdlrvU7WjF/o4+YJYqGH6tjh5lRVwswwPE5o2Z8w/o
 kgExCdgkSq8lT3V3d+hc1Ggb5OxLPK/TaPbuHxY6sy6FpYry5PjnaBppazRTYGPugYL0
 S7t7BTjRcICwt4IEhkN8R9TnGC8RlBNe8TVchAoKItEyK6zq89IeIFYN7tEmgh9EcSHC
 R3l32nahGD2ytcN4UomgHDUAfJz74aB1WvteVpqIWWNwPFgxs7NVYjVG9hn2qhz6Utjp
 MPMo0e7W2l30OQUHg6VqpfPZdTahpwXdKi1l9GReeWXTQ0qcggABY8RDvdEoDhdWXb4Q
 yqsA==
X-Gm-Message-State: APjAAAVe0WNkpkcV7hgqNSqawlC8XeUkuaIxf/4ATIwk/lFHezJTjCi2
 I9ohlHGmvcQzPNOJ6enCOrQ=
X-Google-Smtp-Source: APXvYqwl6c8l8akPJ/a0xk+3KepmeSM3zSOQCzHQzAg87pSWv9yrqkhky05R7WwjG4AiAw2gALdPbw==
X-Received: by 2002:a17:90a:b908:: with SMTP id
 p8mr1903028pjr.94.1564712438974; 
 Thu, 01 Aug 2019 19:20:38 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:38 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 17/34] vfio: convert put_page() to put_user_page*()
Date: Thu,  1 Aug 2019 19:19:48 -0700
Message-Id: <20190802022005.5117-18-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802022005.5117-1-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_192040_040917_B38F30BE 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (john.hubbard[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 rds-devel@oss.oracle.com, Alex Williamson <alex.williamson@redhat.com>,
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
 linux-fsdevel@vger.kernel.org
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

Note that this effectively changes the code's behavior in
qp_release_pages(): it now ultimately calls set_page_dirty_lock(),
instead of set_page_dirty(). This is probably more accurate.

As Christophe Hellwig put it, "set_page_dirty() is only safe if we are
dealing with a file backed page where we have reference on the inode it
hangs off." [1]

[1] https://lore.kernel.org/r/20190723153640.GB720@lst.de

Cc: Alex Williamson <alex.williamson@redhat.com>
Cc: kvm@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/vfio/vfio_iommu_type1.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/vfio/vfio_iommu_type1.c b/drivers/vfio/vfio_iommu_type1.c
index 054391f30fa8..5a5461a14299 100644
--- a/drivers/vfio/vfio_iommu_type1.c
+++ b/drivers/vfio/vfio_iommu_type1.c
@@ -320,9 +320,9 @@ static int put_pfn(unsigned long pfn, int prot)
 {
 	if (!is_invalid_reserved_pfn(pfn)) {
 		struct page *page = pfn_to_page(pfn);
-		if (prot & IOMMU_WRITE)
-			SetPageDirty(page);
-		put_page(page);
+		bool dirty = prot & IOMMU_WRITE;
+
+		put_user_pages_dirty_lock(&page, 1, dirty);
 		return 1;
 	}
 	return 0;
@@ -356,7 +356,7 @@ static int vaddr_get_pfn(struct mm_struct *mm, unsigned long vaddr,
 		 */
 		if (ret > 0 && vma_is_fsdax(vmas[0])) {
 			ret = -EOPNOTSUPP;
-			put_page(page[0]);
+			put_user_page(page[0]);
 		}
 	}
 	up_read(&mm->mmap_sem);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
