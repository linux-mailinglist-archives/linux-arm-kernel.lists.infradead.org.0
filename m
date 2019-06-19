Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A12504B7D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 14:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tP08DkXWEua08Y3NVdX6Z3RHbUWoQQaYc6W020FHQ18=; b=a0KuHw2JIbvvkh
	xhr5N+3TLshxzIcj1eeeRTW78FgevW7/o6AIEOlHQNF31eNmqig4bQQZ4TAz/vQRprbSkDZ05EIdM
	3k6y/GWUiX6Xp6IGGV46OBd2KNJnCZgc5F72ssfLpg0X0F5ExgQkboFvEekePFP2ZgTBzIruoFJXC
	cWpm74/nbLIrMNFFerN5uLc+Bene5nIKWaBXbkTMCj8I+Fx5+U+W5xmy1klHgVHpYq2QXrpeD6PJ6
	N7E9mMcY8wMJ4TeQ9RY2PTXGMuYKb/hUqcrydmDx91vXEMIaAQxG/2A/eANJfMP0BDVdWfSxiQ+iM
	K5dVw/SU9HZ/6I0Mym6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZW0-0005aM-Bt; Wed, 19 Jun 2019 12:16:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZVo-0005ZV-8q
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 12:16:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 57C0AC0A;
 Wed, 19 Jun 2019 05:16:22 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CC64D3F738;
 Wed, 19 Jun 2019 05:16:21 -0700 (PDT)
Date: Wed, 19 Jun 2019 13:16:20 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Andrey Konovalov <andreyknvl@google.com>, vincenzo.frascino@arm.com,
 catalin.marinas@arm.com
Subject: [RFC] arm64: Detecting tagged addresses
Message-ID: <20190619121619.GV20984@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_051624_408367_6CE639B4 
X-CRM114-Status: GOOD (  24.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-mm@kvack.org, linux-kselftest@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

The proposed introduction of a relaxed ARM64 ABI [1] will allow tagged memory
addresses to be passed through the user-kernel syscall ABI boundary. Tagged
memory addresses are those which contain a non-zero top byte (the hardware
has always ignored this top byte due to TCR_EL1.TBI0) and may be useful
for features such as HWASan.

To permit this relaxation a proposed patchset [2] strips the top byte (tag)
from user provided memory addresses prior to use in kernel functions which
require untagged addresses (for example comparasion/arithmetic of addresses).
The author of this patchset relied on a variety of techniques [2] (such as
grep, BUG_ON, sparse etc) to identify as many instances of possible where
tags need to be stipped.

To support this effort and to catch future regressions (e.g. in new syscalls
or ioctls), I've devised an additional approach for detecting the use of
tagged addresses in functions that do not want them. This approach makes
use of Smatch [3] and is outlined in this RFC. Due to the ability of Smatch
to do flow analysis I believe we can annotate the kernel in fewer places
than a similar approach in sparse.

I'm keen for feedback on the likely usefulness of this approach.

We first add some new annotations that are exclusively consumed by Smatch:

--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -19,6 +19,7 @@
 # define __cond_lock(x,c)      ((c) ? ({ __acquire(x); 1; }) : 0)
 # define __percpu      __attribute__((noderef, address_space(3)))
 # define __rcu         __attribute__((noderef, address_space(4)))
+# define __untagged    __attribute__((address_space(5)))
 # define __private     __attribute__((noderef))
 extern void __chk_user_ptr(const volatile void __user *);
 extern void __chk_io_ptr(const volatile void __iomem *);
@@ -45,6 +46,7 @@ extern void __chk_io_ptr(const volatile void __iomem *);
...



The purpose of this annotation is to indicate in function prototypes that a
given argument must not be a user tagged memory address. (The address space
number isn't significant here and could be replaced with any other annotation
that we get Smatch to understand).

An example of how we use this annotation is as follows:

--- a/mm/mmap.c
+++ b/mm/mmap.c
@@ -2224,7 +2224,7 @@ get_unmapped_area(struct file *file, unsigned long addr, unsigned long len,
 EXPORT_SYMBOL(get_unmapped_area);
 
 /* Look up the first VMA which satisfies  addr < vm_end,  NULL if none. */
-struct vm_area_struct *find_vma(struct mm_struct *mm, unsigned long addr)
+struct vm_area_struct *find_vma(struct mm_struct *mm, unsigned long __untagged addr)
 {
        struct rb_node *rb_node;
        struct vm_area_struct *vma;



Thus our intent here is to flag up whenever addr is tagged. Specifically
modifications I've made to Smatch to test this will flag an issue where all
the following conditions are met:

 1. the parameter is used in the function
 2. the data in the parameter has originated or been derived from userspace
    (this relies on existing Smatch functionality to detect where data has
     come from)
 3. the data's top byte is non-zero (via flow analysis to determine the 
    range of values that it may be given the known call-tree).

Due to the use of smatch and its flow-analysis we don't need to propogate the
__untagged annotation up the call chain to the callers and their callers - thus
allowing us to only annotate functions that actually does something with the address
and it's only necessary if the function has the potential to receive user data. I.e.
we only need to tag find_vma to catch an issue with mmap_region (because it calls
count_vma_pages_range which calls find_vma_intersection which calls find_vma).

Due to condition 3 above, the use of the existing untagged_addr macro (or anything
that does something similar) will prevent smatch from producing a warning.

Using a vanilla (v5.2-rc2) kernel, and a single find_vma annotation, smatch will
produce the following warnings:

mm/mmap.c:2227 find_vma() warn: Variable addr looks like a tagged address - it is not allowed here
mm/mmap.c:2227 find_vma() warn: Variable addr looks like a tagged address - it is not allowed here
mm/mmap.c:2227 find_vma() warn: Variable addr looks like a tagged address - it is not allowed here
...



The warning is printed for each call site that calls find_vma with a tagged
address from userspace. After 6 runs of smatch, 24 warnings are produced.

The warnings are helpful in detecting issues, but not useful in providing enough
information to debug the issue and find the offending functions higher up the
call stack that call find_vma. Smatch is good at determining the ranges of values
that can be passed to a function, but it doesn't keep track of how it determined
those ranges - this makes it difficult to determine the offending function.

However even this level of limited functionality is helpful - as once the kernel
is initially sanitized of tagged addresses, then the use of smatch here can
spot regressions and offending code identified via git aiaiai/bisect.

Smatch builds a database which includes a table of functions, who they are
called by and with what range of parameters. Smatch also provides a bunch
of perl and python scripts which can be used to extract helpful information
for example to produce a call tree for a given function. I've adapted these
scripts such that for a given function (e.g. find_vma) it will show you the
call tree where callers pass user data and where that data is tagged addresses.
The output looks something like this:

find_vma() - 0-u64max (1)
  kvm_arch_prepare_memory_region() - 0-u64max (1)
    __kvm_set_memory_region() - 0-u64max (1)
      kvm_set_memory_region() - 0-u64max (1)
        kvm_vm_ioctl_set_memory_region() - 0-u64max (1)
  hugetlb_get_unmapped_area() - 0-u64max (1)
    shm_get_unmapped_area() - 0-u64max (1)
      shm_get_unmapped_area() - 32785,40977,98321,106513,2097151-u64max[c] (1)
...



In summary the following are found, note this currently unhelpfuly includes
functions inbetween find_vma and the leaf functions:

$ cat find_vma_tree_orig | sed -e 's/^[ \t]*//' | cut -d ' ' -f 1 | sort | uniq
call_mmap()
check_and_migrate_cma_pages()
compat_ipv6_getsockopt()
compat_sock_common_getsockopt()
compat_tcp_getsockopt()
count_vma_pages_range()
__do_compat_sys_get_mempolicy()
do_get_mempolicy()
do_ioctl()
do_mincore()
do_mlock()
do_mmap()
do_mmap_pgoff()
...



As you can see, this gives a good point in the right direction for hunting
down callers of find_vma with tagged addresses.

This can be further improved - the problem here is that for a given function,
e.g. find_vma we look for callers where *any* of the parameters
passed to find_vma are tagged addresses from userspace - i.e. not *just*
the annotated parameter. This is also true for find_vma's callers' callers'.
This results in the call tree having false positives.

It *is* possible to track parameters (e.g. find_vma arg 1 comes from arg 3 of
do_pages_stat_array etc), but this is limited as if functions modify the
data then the tracking is stopped (however this can be fixed).

After apply the patchset ([PATCH v16 00/16] arm64: untag user pointers passed
to the kernel)[2] which untags user addresses, smatch indicates 11 issues. The
call tree is reduced. After grep'ing the call tree output, there are some valid
instances where untagging is needed, e.g:

gntdev_ioctl_get_offset_for_vaddr()
kvm_vm_ioctl_set_memory_region()
privcmd_ioctl_mmap_batch()
privcmd_ioctl_mmap_resource()
__se_sys_brk()
__se_sys_mremap()
__se_sys_munmap()
__se_sys_remap_file_pages()
__se_sys_shmat()
__se_sys_shmdt()
__vm_munmap()
...

An example of a false positve is do_mlock. We untag the address and pass that
to apply_vma_lock_flags - however we also pass a length - because the length
came from userspace and could have the top bits set - it's flagged. However
with improved parameter tracking we can remove this false positive and similar.

Prior to smatch I attempted a similar approach with sparse - however it seemed
necessary to propogate the __untagged annotation in every function up the call tree,
and resulted in adding the __untagged annotation to functions that would never
get near user provided data. This leads to a littering of __untagged all over the
kernel which doesn't seem appealing. Smatch is more capable, however it almost
certainly won't pick up 100% of issues due to the difficulity of making flow
analysis understand everything a compiler can.

Is it likely to be acceptable to use the __untagged annotation in user-path
functions that require untagged addresses across the kernel?

Thanks,

Andrew Murray

[1] https://lkml.org/lkml/2019/6/13/534
[2] https://patchwork.kernel.org/cover/10989517/
[3] http://smatch.sourceforge.net/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
