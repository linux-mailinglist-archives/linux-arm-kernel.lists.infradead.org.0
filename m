Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CABF350E78
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:35:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R46/c2A3Kt2vnUN1iWB/I3G1hGXTnfgWRMoqux47Yu4=; b=tJy+gQ9pq/QHfX
	n/d0IvTvwPgxkHmUPOznvUKyR93tuAAXw4e8Dgb/QQRokeqFXg6QIxAUTH78KRcb7jh29t5woH5yy
	z2K8xM654eX3YVqYXNtCTembLiINmy2haHZwlbPiUTM5uxCUBLfaW22kIazKtRrt2dkMl9evKdetp
	OSVRQw/VaQ5GFpWqwRe0180OhLnNf6KItWPUWERQzFNGwbvDA1t11RVaVeiawkAVOQZT9QFZ5g6D5
	FKSiDAaxpYHRpThHC4TQ6Ai9D0Xq91THPTtzPIrpW21/3dk7MyopF6L2RJzr1o9y/c8dNF9fKIzzF
	1u5MJ8z7d0sxCgTMIEXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQ3o-0005LP-Vi; Mon, 24 Jun 2019 14:35:09 +0000
Received: from mail-vs1-xe49.google.com ([2607:f8b0:4864:20::e49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQ23-0004Lq-Lz
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:33:21 +0000
Received: by mail-vs1-xe49.google.com with SMTP id k10so3948045vso.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Js+Uq+QN1sbXUiaVQRwOsU0mf+gtz1j4mv8k/PcURo8=;
 b=WUmcuISq69GG5fXOV16ZRYbJqbX03QewrhmWUSnfmneQQxv/bVXoBYPmdDkptO+OQH
 1/ri/E5A/vk+WVGJL91rAId5SPbwcU1J+GEX05oiT/FBX3QCL2+VhrCx25laQbj3KnwW
 0uir1QyGoqb8aJtY+XhjApiqZ1TV2sygux6c5i3/wTSx5YjlviAMiL6rDgYCbrfWKKhP
 SKObpS/Kb5KcFQF3GiBdDIn+XXk54+4aDsioVtDEbCgrm2teMCuqY10Jw19vQvkqN0a9
 +wn60o1NBQ+srPpd9cks85wQk+N4yLFGZhxIXnCiqlOqaI9rp4YIg/Ppw4BnZH2jTZPF
 nKRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Js+Uq+QN1sbXUiaVQRwOsU0mf+gtz1j4mv8k/PcURo8=;
 b=S605+rNJO3Ezt9W2Rx++zb5NU7OJTCuYJy+TxeywC9NEje0Ed38XkTwOScoDhBjWyc
 aIsjNBNaJSF9eOYpG8vy5UwQdKb0BB7bKoyACstaOO3/U+sc8KlSD4azybpOtqLBYv9u
 J3lxlJbHxRCTTWfOkyGbVkaiPkEEtzc1di9x5uGbXOeJMssJiWjsGVYcG5jNaXRrU1iR
 4aRhD8HXiN/P93feFgrwh7K6Kmw3oojLsj4wmRA9hm1bnnDTV3pGTZ93b8H/++7HglF4
 1FvslZ+FJUeinAW+b1anjrYdeuAKPONTg7wWll77SNH/sYvwPU40dEDL9KZeu2+ghixL
 1oDA==
X-Gm-Message-State: APjAAAUSvEOqCWJbFMIWpz6FXuqnCgTU9h50T9H93bu7u6Pym5DFqVJh
 PsiZJlLwYsJqpolgfTWHsi+6UFlD02uxWlarPJlJz1PY8gOBpHJDalihACN+tEy1I0h4Mym+KpA
 zuceV1UToteDrzVrTaV0pD/ZknhaLnNFtRw42oKQ1opR03X0mCybdmH5vKzvyAZT1hLJip/uAZ9
 Gx0k55jU5/2CFybzo=
X-Google-Smtp-Source: APXvYqyg4WJnk6EUjTU/KUznHgpngcCHVd+yKoydagOLQxGVZUbXzn8R7RbZiNlfqU2taVShyYtDXoa3laNIqrwD
X-Received: by 2002:a67:fc19:: with SMTP id o25mr17948112vsq.106.1561386796805; 
 Mon, 24 Jun 2019 07:33:16 -0700 (PDT)
Date: Mon, 24 Jun 2019 16:32:49 +0200
In-Reply-To: <cover.1561386715.git.andreyknvl@google.com>
Message-Id: <387274fe8ecad41a73aec347fe24682b633a8147.1561386715.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1561386715.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v18 04/15] mm: untag user pointers passed to memory syscalls
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_073319_878770_E401B644 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e49 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
index 628022e674a7..39b82f8a698f 100644
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
index 01600d80ae01..78e0a88b2680 100644
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
index f2ecc2855a12..d22c45cf36b2 100644
--- a/mm/migrate.c
+++ b/mm/migrate.c
@@ -1616,7 +1616,7 @@ static int do_pages_move(struct mm_struct *mm, nodemask_t task_nodes,
 			goto out_flush;
 		if (get_user(node, nodes + i))
 			goto out_flush;
-		addr = (unsigned long)p;
+		addr = (unsigned long)untagged_addr(p);
 
 		err = -ENODEV;
 		if (node < 0 || node >= MAX_NUMNODES)
diff --git a/mm/mincore.c b/mm/mincore.c
index c3f058bd0faf..64c322ed845c 100644
--- a/mm/mincore.c
+++ b/mm/mincore.c
@@ -249,6 +249,8 @@ SYSCALL_DEFINE3(mincore, unsigned long, start, size_t, len,
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
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
