Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7185A71E88
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8du7lCCIZ5JEraJyZkgdFXznAlQd9ptRBygG8CUNlGs=; b=rm2HBfdKgeSMJ3
	kzVnBEaJ5O1i9/u1BgOczu7Fw7AWbpxRvOWl9Wm1lb3tn69tMG1ck2GKR/+rTpwI2ZRQv1Zm/7Sfl
	AckrU5ghxfPwxf2NiSQUkTCXjFdplScU5ZlXLa3pWDXEivofLSfAWSneJAQRyEDdLPj9Rav5yY0HH
	lCLaOuxeMXS3OR3SIJg/Vm26NeR7yiUpPFpNIO2CwYQ1DrSEN2s2kXqaqDxOSlQ28k4wTmPDmyvzT
	AHpG269/mYTzuq0goiysTdik/ReCeM5FFkt7eNOAlw6pKee10kCHfJWNadc1I/qzjVhMbeOy7qK+v
	a8tSYYnQ0nxTxtB+oSyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpz6I-00080z-3g; Tue, 23 Jul 2019 18:01:22 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz4L-0005OZ-GK
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:59:23 +0000
Received: by mail-qk1-x749.google.com with SMTP id c79so37184271qkg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=AkbJvDAOuVzgBhtZb883Z6kAaHzqiKQW54Ip7ZSyDSQ=;
 b=q4SIjzbblqeI44AwtclbDFRtQ9wdJy9gPXjSP5D6CdGec7GwqRgc0qKMP+S9kknKlU
 82fY8UfjDM6LghjHC28q6xcrb5XyIrOY2+w3WNydAgovI5kIS1vpjE5ULtrqoDRfxPtv
 zexvQyPzU4/fT0I0rupHVHVtbPsNH+ejeSr+2n5DT43Fq4f+3Y34+AINUwgLVB/IpeWl
 2qiXbpB8hAKqk1Ls/rzeOI5t8QaLZwI3CzXqXR93GSUwR46IrtzAa49DUYYvDSaVfKfg
 X0K4wZzWqZQQjEWjIdDvveS7FBsn9qKvSIsR6zka2FAuEw6n9xebOF/L+bYdctZFTEvn
 BIZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=AkbJvDAOuVzgBhtZb883Z6kAaHzqiKQW54Ip7ZSyDSQ=;
 b=HutnM8GmgFuV8yfAyy9U7n1wQNURL4JaLuQ5mRDfxZG2eecVGfg0tJ4a7BPcqHVqz0
 BcYRuU5Ug16QgRIMx7EMMdy9tK+qr/QvSlrh78rTFADQAjKjwZCuhGcyuAeRdjgdDb7y
 LVF4nuMernTPfyZbwGNh/z3Q7dTdPKL0L84ogBcyg+ImwTdaGQ22eesLV9mRtl8LRPgu
 TEFJXQgqMl6bhFSYbdpY2TOz8vqreWMZWUCfBGSpwDWKXbAv+dd6jK7hH0//2hGJTQAe
 NdQd8Qhyy7pUCHlb1xUOQ6bGsaBossq5OarxmyHufIm6DiZ5sS0jL3E6uPATyV+xfQQX
 bnVQ==
X-Gm-Message-State: APjAAAWgUV9XCoohcGRqtPGDorWc76W6WaQnSf1aGrDci3YzvVl6y9j6
 h9eE5AZwtTWzldo9ZeeB6lUIJAUr9k3kL+B5eIHzZSjekrBpp+vGQpEnlP91Mn+W8Rxuv+yzIlW
 3W+sRT87fVY5PwfWeUyibG9L2o89g6Qf+JRLUEDymwo1zVyOViMLMMMf8K1DNfOattkjFomWOTD
 mSeSG1N8nhkZfEv7Q=
X-Google-Smtp-Source: APXvYqyEBnxjs/QWPPehEo5rVljMjvkTMucPtveM7x8Do5mUgC0Wj7RnkMWK4mXW3q6nZowCoKSh8LTGEiBYy9qe
X-Received: by 2002:a37:4914:: with SMTP id w20mr50637396qka.156.1563904758910; 
 Tue, 23 Jul 2019 10:59:18 -0700 (PDT)
Date: Tue, 23 Jul 2019 19:58:41 +0200
In-Reply-To: <cover.1563904656.git.andreyknvl@google.com>
Message-Id: <aaf0c0969d46b2feb9017f3e1b3ef3970b633d91.1563904656.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1563904656.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v19 04/15] mm: untag user pointers passed to memory syscalls
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105921_562864_CDBCD04E 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Khalid Aziz <khalid.aziz@oracle.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is a part of a series that extends kernel ABI to allow to pass
tagged user pointers (with the top byte set to something else other than
0x00) as syscall arguments.

This patch allows tagged pointers to be passed to the following memory
syscalls: get_mempolicy, madvise, mbind, mincore, mlock, mlock2, mprotect,
mremap, msync, munlock, move_pages.

The mmap and mremap syscalls do not currently accept tagged addresses.
Architectures may interpret the tag as a background colour for the
corresponding vma.

Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>
Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 mm/madvise.c   | 2 ++
 mm/mempolicy.c | 3 +++
 mm/migrate.c   | 2 +-
 mm/mincore.c   | 2 ++
 mm/mlock.c     | 4 ++++
 mm/mprotect.c  | 2 ++
 mm/mremap.c    | 7 +++++++
 mm/msync.c     | 2 ++
 8 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/mm/madvise.c b/mm/madvise.c
index 968df3aa069f..4b102a61bfbf 100644
--- a/mm/madvise.c
+++ b/mm/madvise.c
@@ -810,6 +810,8 @@ SYSCALL_DEFINE3(madvise, unsigned long, start, size_t, len_in, int, behavior)
 	size_t len;
 	struct blk_plug plug;
 
+	start = untagged_addr(start);
+
 	if (!madvise_behavior_valid(behavior))
 		return error;
 
diff --git a/mm/mempolicy.c b/mm/mempolicy.c
index f48693f75b37..74c134d0c84e 100644
--- a/mm/mempolicy.c
+++ b/mm/mempolicy.c
@@ -1360,6 +1360,7 @@ static long kernel_mbind(unsigned long start, unsigned long len,
 	int err;
 	unsigned short mode_flags;
 
+	start = untagged_addr(start);
 	mode_flags = mode & MPOL_MODE_FLAGS;
 	mode &= ~MPOL_MODE_FLAGS;
 	if (mode >= MPOL_MAX)
@@ -1517,6 +1518,8 @@ static int kernel_get_mempolicy(int __user *policy,
 	int uninitialized_var(pval);
 	nodemask_t nodes;
 
+	addr = untagged_addr(addr);
+
 	if (nmask != NULL && maxnode < nr_node_ids)
 		return -EINVAL;
 
diff --git a/mm/migrate.c b/mm/migrate.c
index 8992741f10aa..8f59c24cb141 100644
--- a/mm/migrate.c
+++ b/mm/migrate.c
@@ -1609,7 +1609,7 @@ static int do_pages_move(struct mm_struct *mm, nodemask_t task_nodes,
 			goto out_flush;
 		if (get_user(node, nodes + i))
 			goto out_flush;
-		addr = (unsigned long)p;
+		addr = (unsigned long)untagged_addr(p);
 
 		err = -ENODEV;
 		if (node < 0 || node >= MAX_NUMNODES)
diff --git a/mm/mincore.c b/mm/mincore.c
index 4fe91d497436..3cfa120ba0eb 100644
--- a/mm/mincore.c
+++ b/mm/mincore.c
@@ -257,6 +257,8 @@ SYSCALL_DEFINE3(mincore, unsigned long, start, size_t, len,
 	unsigned long pages;
 	unsigned char *tmp;
 
+	start = untagged_addr(start);
+
 	/* Check the start address: needs to be page-aligned.. */
 	if (start & ~PAGE_MASK)
 		return -EINVAL;
diff --git a/mm/mlock.c b/mm/mlock.c
index a90099da4fb4..a72c1eeded77 100644
--- a/mm/mlock.c
+++ b/mm/mlock.c
@@ -674,6 +674,8 @@ static __must_check int do_mlock(unsigned long start, size_t len, vm_flags_t fla
 	unsigned long lock_limit;
 	int error = -ENOMEM;
 
+	start = untagged_addr(start);
+
 	if (!can_do_mlock())
 		return -EPERM;
 
@@ -735,6 +737,8 @@ SYSCALL_DEFINE2(munlock, unsigned long, start, size_t, len)
 {
 	int ret;
 
+	start = untagged_addr(start);
+
 	len = PAGE_ALIGN(len + (offset_in_page(start)));
 	start &= PAGE_MASK;
 
diff --git a/mm/mprotect.c b/mm/mprotect.c
index bf38dfbbb4b4..19f981b733bc 100644
--- a/mm/mprotect.c
+++ b/mm/mprotect.c
@@ -465,6 +465,8 @@ static int do_mprotect_pkey(unsigned long start, size_t len,
 	const bool rier = (current->personality & READ_IMPLIES_EXEC) &&
 				(prot & PROT_READ);
 
+	start = untagged_addr(start);
+
 	prot &= ~(PROT_GROWSDOWN|PROT_GROWSUP);
 	if (grows == (PROT_GROWSDOWN|PROT_GROWSUP)) /* can't be both */
 		return -EINVAL;
diff --git a/mm/mremap.c b/mm/mremap.c
index fc241d23cd97..64c9a3b8be0a 100644
--- a/mm/mremap.c
+++ b/mm/mremap.c
@@ -606,6 +606,13 @@ SYSCALL_DEFINE5(mremap, unsigned long, addr, unsigned long, old_len,
 	LIST_HEAD(uf_unmap_early);
 	LIST_HEAD(uf_unmap);
 
+	/*
+	 * Architectures may interpret the tag passed to mmap as a background
+	 * colour for the corresponding vma. For mremap we don't allow tagged
+	 * new_addr to preserve similar behaviour to mmap.
+	 */
+	addr = untagged_addr(addr);
+
 	if (flags & ~(MREMAP_FIXED | MREMAP_MAYMOVE))
 		return ret;
 
diff --git a/mm/msync.c b/mm/msync.c
index ef30a429623a..c3bd3e75f687 100644
--- a/mm/msync.c
+++ b/mm/msync.c
@@ -37,6 +37,8 @@ SYSCALL_DEFINE3(msync, unsigned long, start, size_t, len, int, flags)
 	int unmapped_error = 0;
 	int error = -EINVAL;
 
+	start = untagged_addr(start);
+
 	if (flags & ~(MS_ASYNC | MS_INVALIDATE | MS_SYNC))
 		goto out;
 	if (offset_in_page(start))
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
