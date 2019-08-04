Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D20E80F45
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 00:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDT9H7FzhXYuiSJIoDcS9vfJ0qQ3ARCmhjKNsT3OGF0=; b=rlrFOY/N2iMaWO
	W3hPxGSZ0ZCev3aHq//yRhpD3uax7oI9/ELF6npkc6enNndtqrQ1Inuyjntj8CpsQD+SA2P7pN+iN
	aViDuK242VwGKHTU4IyyDqxWNAJxCZzUon3vw9TaYATM/bRr/aseLLhYo5/FSn4SKw7psCote0ukW
	4GhdJqIyk8tYfML0uKexDZWj3LvW760oczUrlG6vtT7wIwVfr0x0W/czGBo+Tc6zDRvbzdn07HfhT
	LG+k0W4X4zTZjYYNB9G2gbU2+zCU4c4qSzboA3DcfNdWbuWaXUBGL19x001mnXQ008iVu7RZcppp/
	N7v3y6YBsOTGgpwdu4Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huPTG-0008Kt-Kj; Sun, 04 Aug 2019 22:59:22 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huPKH-00066d-TD; Sun, 04 Aug 2019 22:50:09 +0000
Received: by mail-pl1-x644.google.com with SMTP id ay6so35727546plb.9;
 Sun, 04 Aug 2019 15:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P44t64b1Yt2CczJo6SOAPYnnEfAXhRMhGjbg0YSdFKY=;
 b=M2L6YAdxRG9wjsRrCe6Hi1BWSuOg3nnT/7fZiBi9EPm8FKwRKPZG/qe2iVkh5HnVN4
 aOY3UbjkBBnyU76TUmUntE+kZe6hTFiJw358fIRHno09JT1X6eXkCbDzppqL0p2wk4as
 lvnBxcaafGoFzaHDQmz1tjx1PupzVr+3Bwm67hS0uZ1vXhGSeRklj059Ttpi/TbXqeOB
 q+Wl+DhD48e6x3JgIGWaWg109om0eB6fx6VWuDjwbuhJAY9G+Qx7/vpxnkVUdLKuN2o0
 4E0MKgE+4sHPl7NeWK7fjvH31HAT3/QXcQRRRT0MdjjRb3hC4ZkOnyD0xdYCwRJ/SF1P
 5dnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P44t64b1Yt2CczJo6SOAPYnnEfAXhRMhGjbg0YSdFKY=;
 b=rQnsETjHm2P2CocNRpdNZf7Ixu1Y1zZ/LuLvgZ6zGjHVszpARbQXb+f+UeTp03orHu
 VvxqOhApBZUPqBYPFk0DY1sO+ftfJJXPTvaseWrjhYvG6LAE2g+c9M3p6f9GAWQUvFOT
 z2meCI+wBJvANsTOripi0hKk1Lls+mUSz7uNI+s5I4psVATKnQui8UlzunxAPAUBQcJq
 k1lHR4x2BgnJQIH3kUiUmyJHECpEDvqwn04mP9L5Yt40ynvfXRhjfokkD7NW8JwCI/nZ
 ibeZpHcJ4xpndUqhR9WVokjs9UN1dCqtUEQZA0CFYwNEpGwc5vhS9oJsVpFDnAgsVvqV
 ohVQ==
X-Gm-Message-State: APjAAAWDq9XTAy8qRaRnIxZjg3FTUxlDgHrYyBoaEGIQJmRa8YxcGr2t
 Dcug7Ixh0XK/QWVQTz9Yd+E=
X-Google-Smtp-Source: APXvYqwAR1ooAm+K3YiNJXFD4tuydWLDFWaO0CLJ4VvvN+1W/RZGreelHnJEnGprjIniv/pPljEZRw==
X-Received: by 2002:a17:902:7202:: with SMTP id
 ba2mr144069047plb.266.1564959005550; 
 Sun, 04 Aug 2019 15:50:05 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.50.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:50:05 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 29/34] mm/process_vm_access.c: convert put_page() to
 put_user_page*()
Date: Sun,  4 Aug 2019 15:49:10 -0700
Message-Id: <20190804224915.28669-30-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804224915.28669-1-jhubbard@nvidia.com>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_155006_249524_F0D828FD 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
 amd-gfx@lists.freedesktop.org, Ingo Molnar <mingo@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Rashika Kheria <rashika.kheria@gmail.com>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 Andrea Arcangeli <aarcange@redhat.com>, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 linux-rpi-kernel@lists.infradead.org, Jann Horn <jann@thejh.net>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, Lorenzo Stoakes <lstoakes@gmail.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, Christopher Yeoh <cyeoh@au1.ibm.com>,
 linux-fsdevel@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>
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

Cc: Al Viro <viro@zeniv.linux.org.uk>
Cc: Andrea Arcangeli <aarcange@redhat.com>
Cc: Christopher Yeoh <cyeoh@au1.ibm.com>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Jann Horn <jann@thejh.net>
Cc: Lorenzo Stoakes <lstoakes@gmail.com>
Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Cc: Mike Rapoport <rppt@linux.vnet.ibm.com>
Cc: Rashika Kheria <rashika.kheria@gmail.com>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 mm/process_vm_access.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/mm/process_vm_access.c b/mm/process_vm_access.c
index 357aa7bef6c0..4d29d54ec93f 100644
--- a/mm/process_vm_access.c
+++ b/mm/process_vm_access.c
@@ -96,7 +96,7 @@ static int process_vm_rw_single_vec(unsigned long addr,
 		flags |= FOLL_WRITE;
 
 	while (!rc && nr_pages && iov_iter_count(iter)) {
-		int pages = min(nr_pages, max_pages_per_loop);
+		int pinned_pages = min(nr_pages, max_pages_per_loop);
 		int locked = 1;
 		size_t bytes;
 
@@ -106,14 +106,15 @@ static int process_vm_rw_single_vec(unsigned long addr,
 		 * current/current->mm
 		 */
 		down_read(&mm->mmap_sem);
-		pages = get_user_pages_remote(task, mm, pa, pages, flags,
-					      process_pages, NULL, &locked);
+		pinned_pages = get_user_pages_remote(task, mm, pa, pinned_pages,
+						     flags, process_pages, NULL,
+						     &locked);
 		if (locked)
 			up_read(&mm->mmap_sem);
-		if (pages <= 0)
+		if (pinned_pages <= 0)
 			return -EFAULT;
 
-		bytes = pages * PAGE_SIZE - start_offset;
+		bytes = pinned_pages * PAGE_SIZE - start_offset;
 		if (bytes > len)
 			bytes = len;
 
@@ -122,10 +123,9 @@ static int process_vm_rw_single_vec(unsigned long addr,
 					 vm_write);
 		len -= bytes;
 		start_offset = 0;
-		nr_pages -= pages;
-		pa += pages * PAGE_SIZE;
-		while (pages)
-			put_page(process_pages[--pages]);
+		nr_pages -= pinned_pages;
+		pa += pinned_pages * PAGE_SIZE;
+		put_user_pages(process_pages, pinned_pages);
 	}
 
 	return rc;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
