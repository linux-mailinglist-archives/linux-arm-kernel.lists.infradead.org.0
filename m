Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B6480EC8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 00:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9x1WeuAqAtBY1wpzGgsu30V/V/FOQBWn5AmTM+QRDs=; b=V8aRcbmLZ3zJR5
	cTinsGd9Qp1ng8QTiZ9drQ5u3Kv3Iz93Emh0qsC2CpKZRKzfbxM1LNCX9xRIVCDz54d5pnLgvC6pg
	hF0TbJOFmjJRjPJ1YnIPWaOESDfNeSy7wP6Gv+EClM/JKyAwm6mvgX9cUIlMMCrsfgTWQLSDCat3U
	ta65tftnrs1T+btHP5bgiJ3uw3lMmmznuyT/nXbqRivMB5rq+NYeT425d0DKbG4SSKYKmv2S++PJr
	/J3N1DRDE5+aHibwBD73AHVxrRZq/IMyN1kutIrtqhAqULvTwxvQ1pzFXgoIDVxF9SryXxsN9c3uD
	WYeNXzZ6oL5Ht5am/Ixw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huPPU-0004NP-KD; Sun, 04 Aug 2019 22:55:28 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huPJy-0005N5-Pf; Sun, 04 Aug 2019 22:49:49 +0000
Received: by mail-pf1-x443.google.com with SMTP id t16so38568546pfe.11;
 Sun, 04 Aug 2019 15:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1X33MY8P1PVcaLkCZcp6PkXiHV9wvPThIXgNE9TFbj4=;
 b=L35X2QFh0M4JIQvOmPagjixwdLqggClkiY/ITRED3vd5cYmML5rpnhsQYVeJG55L7X
 lfpM/Rw8+9+KW1xLlbUjjd2pEukAuHL9FPW2brNIFLNAAe+xFNLiBhvXwHgfebwSPh6b
 PQimMsMZnxgRdBC8pyrRMZ9Xs902qjGDWwSRlQpLzHZkXMK6vYaJ7jNHAlwygvXZxKWD
 HRNszvS/yLW3PMoeuHrejzjB7JHf9PJVVvjCC1Gi8OYeSyaj8QqsLJjtyVPXxwKbhU1l
 56SfAsWTx6H5Myy0JvyaDz6KAPklX1grAzJq4JD5PKOSOMwKa+X4MP3JYOJahIqu806a
 4oGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1X33MY8P1PVcaLkCZcp6PkXiHV9wvPThIXgNE9TFbj4=;
 b=S9frgdUHn1MUlS4JugsG94TCs3KRVNflZOM6YCdAssJG63GsunuopopwkXybYXDNqL
 ltomnL9hE/x+9+JTNOSKEZ/Hqxx75rRbWpZkylxSq02Cv+amJZY1XV7bihcRPFFEUg5j
 fFSdUIaNYIIpGQclS1AmrReM/4GP8MCarx5tVJby+dKZpgdwTWODzA4Gf91ombKX3oz8
 vvDmXZmqa5JbdyXZBa4yDAdTIf8fExSJYr7inuIK0kvG5eKPdeGMpqMBOowO5rtzVjeO
 I02Ca2+OEr+ZNAY8wQbDcHZ0aeyEh+J2ijCqQ8PUY87QiETxHTW/qYRN3wKSeifz2uym
 86QA==
X-Gm-Message-State: APjAAAUyNguappJGSQpHh4ITqUW7zHlccutYEU5/CJ3HYW3LgU3cTTAh
 ZtYAz+i+GL/c3r+X2ndV8XY=
X-Google-Smtp-Source: APXvYqzQPIYoNRubdZIOtSxTDDzyPgcMaQ5zki3KNapO18w6JwMFrcpCjaVO/4MzoXfe6L31Al4dig==
X-Received: by 2002:a65:6859:: with SMTP id q25mr22221333pgt.181.1564958986332; 
 Sun, 04 Aug 2019 15:49:46 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.49.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:49:45 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 17/34] vfio: convert put_page() to put_user_page*()
Date: Sun,  4 Aug 2019 15:48:58 -0700
Message-Id: <20190804224915.28669-18-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804224915.28669-1-jhubbard@nvidia.com>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_154947_008122_59AB1EC2 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

As Christoph Hellwig put it, "set_page_dirty() is only safe if we are
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
