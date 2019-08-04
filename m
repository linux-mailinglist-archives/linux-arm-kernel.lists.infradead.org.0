Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BEB80F18
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 00:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UKA1LGERdlEAn2YgbZ31Bojt4glBrNFTiLmBrF4ocUg=; b=eu0N8D3HBtqIVQ
	yrThr7sQnFMLwyYgBlVxGQL4B5LN0rREbLfV29qc75nw7ZwiePHKCeXA9jko3iuYiKdbyTvn06j9W
	V5UDsGhEoicN24Uxt1/dKn72OYds9UkjlYK7UFMDyH97NfrQforyPafxWd0WZtXuNzKwrmHJp9Wub
	FWkFiS4hgJzNnGR0vvrS8nmX6Q1Af5NG3d62i/2l/2/p97eLHNtjG+BdEO2xFloHddZvL/k0ui4Tx
	N9JxSNVkTmtylGqLzlynlTS/eJwKgCMsOPRaGO+GqHGZhC4myp7+ROCFZqfAk7Q1zxljZbbYtGjKx
	mO6tCUeoMl46lAhvSsdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huPQe-0005iF-9B; Sun, 04 Aug 2019 22:56:40 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huPK3-0005TB-Ee; Sun, 04 Aug 2019 22:49:53 +0000
Received: by mail-pg1-x542.google.com with SMTP id d1so5848500pgp.4;
 Sun, 04 Aug 2019 15:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AuJQGBUMCI3UccHUazXwp/b3Q3tZUYyhW4Da3QIy1yc=;
 b=DGwCGc6XDVUwXaE45gbbQy6fhhO+2zHlJorg8NcW6argb8euBbhs0pQfwz4p3wmYGr
 nE4Tqc1S5TSCGn3z79bluHB8kOP9URQ6GDk8Ag8nOY+Zwx7t9ZzdbkCdvZMxHFv73WPf
 yFrTejZLylWrlE9UzmSxnSGub+p3uIuGa+QwFG1rIqaL2jFj/TWeF75UBCckNw/JWLPd
 Hk2vfaOt8Y8GmAEec78Ag4Fdx8td9DJVeEYJYZvv4nQW4t60cvCAgLcPPzOrCX7IP55D
 7nJuSqZwA2LhbQQi1IP2+3jA4kCrhPeh22tmmVy2bqH2f2tTU9mzsW8VQ8AU7oTjorNW
 HTKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AuJQGBUMCI3UccHUazXwp/b3Q3tZUYyhW4Da3QIy1yc=;
 b=mo3mFdZL/DQLFBodQMlzsx6+Bd4rLcxfXMZWugKu8ETxgk0rOZ1hlVt+hsvXqjbV5G
 estvvqaFQQJnI7FV513nCLvma0n/ko3SaTS3hT02iD3XIHO8fLeP/E1bUB4jf/h2ChD7
 IBpJY4XMPUTsQ1qJh8f+l4wif0R10aiJKyH3cRFsr5OVLKy8eQD8CX0UrZ17B4VjnYs2
 AS18WjRcxuReRaIjTN0KM9FrAt143j80TAEMiEn8pC16wVK7pg9fjSJRuZYzumM5Uwq0
 AXJ42QrBNGYoVDzcnntK+coSPoIgIAE9yPy+UjC0griy9u+xPfkelxwmnvbhzPwQpR3h
 2Dfg==
X-Gm-Message-State: APjAAAWLqG/oeC01rVypuyrFUHH+OaVbRGY8VTJoO/Hqbqk65DiUZ8do
 HEB8lBmRbRWcC3RGLzuGZno=
X-Google-Smtp-Source: APXvYqzeg0CaPIMsZN4B1HhyHGpth3yiq29pMJbbq07Rs0YdWkJ20xSQ2I1Fc/jcHmyqwiJczRrqSg==
X-Received: by 2002:a63:c006:: with SMTP id h6mr3370638pgg.290.1564958991047; 
 Sun, 04 Aug 2019 15:49:51 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.49.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:49:50 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 20/34] xen: convert put_page() to put_user_page*()
Date: Sun,  4 Aug 2019 15:49:01 -0700
Message-Id: <20190804224915.28669-21-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804224915.28669-1-jhubbard@nvidia.com>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_154951_886816_291E4FE3 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
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
 linux-arm-kernel@lists.infradead.org, Juergen Gross <jgross@suse.com>,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
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

This also handles pages[i] == NULL cases, thanks to an approach
that is actually written by Juergen Gross.

Signed-off-by: Juergen Gross <jgross@suse.com>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>

Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Cc: xen-devel@lists.xenproject.org
---

Hi Juergen,

Say, this is *exactly* what you proposed in your gup.patch, so
I've speculatively added your Signed-off-by above, but need your
approval before that's final. Let me know please...

thanks,
John Hubbard


 drivers/xen/privcmd.c | 32 +++++++++++---------------------
 1 file changed, 11 insertions(+), 21 deletions(-)

diff --git a/drivers/xen/privcmd.c b/drivers/xen/privcmd.c
index c6070e70dd73..c7d0763ca8c2 100644
--- a/drivers/xen/privcmd.c
+++ b/drivers/xen/privcmd.c
@@ -582,10 +582,11 @@ static long privcmd_ioctl_mmap_batch(
 
 static int lock_pages(
 	struct privcmd_dm_op_buf kbufs[], unsigned int num,
-	struct page *pages[], unsigned int nr_pages)
+	struct page *pages[], unsigned int *nr_pages)
 {
-	unsigned int i;
+	unsigned int i, free = *nr_pages;
 
+	*nr_pages = 0;
 	for (i = 0; i < num; i++) {
 		unsigned int requested;
 		int pinned;
@@ -593,35 +594,22 @@ static int lock_pages(
 		requested = DIV_ROUND_UP(
 			offset_in_page(kbufs[i].uptr) + kbufs[i].size,
 			PAGE_SIZE);
-		if (requested > nr_pages)
+		if (requested > free)
 			return -ENOSPC;
 
 		pinned = get_user_pages_fast(
 			(unsigned long) kbufs[i].uptr,
-			requested, FOLL_WRITE, pages);
+			requested, FOLL_WRITE, pages + *nr_pages);
 		if (pinned < 0)
 			return pinned;
 
-		nr_pages -= pinned;
-		pages += pinned;
+		free -= pinned;
+		*nr_pages += pinned;
 	}
 
 	return 0;
 }
 
-static void unlock_pages(struct page *pages[], unsigned int nr_pages)
-{
-	unsigned int i;
-
-	if (!pages)
-		return;
-
-	for (i = 0; i < nr_pages; i++) {
-		if (pages[i])
-			put_page(pages[i]);
-	}
-}
-
 static long privcmd_ioctl_dm_op(struct file *file, void __user *udata)
 {
 	struct privcmd_data *data = file->private_data;
@@ -681,11 +669,12 @@ static long privcmd_ioctl_dm_op(struct file *file, void __user *udata)
 
 	xbufs = kcalloc(kdata.num, sizeof(*xbufs), GFP_KERNEL);
 	if (!xbufs) {
+		nr_pages = 0;
 		rc = -ENOMEM;
 		goto out;
 	}
 
-	rc = lock_pages(kbufs, kdata.num, pages, nr_pages);
+	rc = lock_pages(kbufs, kdata.num, pages, &nr_pages);
 	if (rc)
 		goto out;
 
@@ -699,7 +688,8 @@ static long privcmd_ioctl_dm_op(struct file *file, void __user *udata)
 	xen_preemptible_hcall_end();
 
 out:
-	unlock_pages(pages, nr_pages);
+	if (pages)
+		put_user_pages(pages, nr_pages);
 	kfree(xbufs);
 	kfree(pages);
 	kfree(kbufs);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
