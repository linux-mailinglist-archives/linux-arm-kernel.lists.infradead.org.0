Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416562632E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 13:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B78F2U89f+Mu+9L7AWau4Em7OIz5ADrcgvmacCxlDWI=; b=HQikmHkoVyGJXr
	CRd2/ENiePp2bE8LA2Xm+XfO7pPLq4h9uNDKr6ylVVn1tnczwPmxXHXRo3m1hJqVtMJRuQemyMDBK
	tvd0useSPFKt3wynI4e1EhcwDCO2Sjr1mDFb6wpxWBOQKvVhwsHWlq5kHb1oyu8mHMZY/g/xrmHX0
	m17a+0wReCUdBR6HC8edrZeYCdqwK2qzMonNKPy4TWgdUd9afGg5FzhzZ8TFGmYNW0RvwqcT3zkmE
	pRCKjhlyUixk0kK2tkYFZ1CcF+DHjD9hkJFOssnPfLqYDWFL6GLt2xAwnnOBFXTPYf1D5hh9OSREu
	76X9prc/ccjUMJo0gBRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTPkO-0002fm-4F; Wed, 22 May 2019 11:49:28 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTPkH-0002f9-3t
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 11:49:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7DC8180D;
 Wed, 22 May 2019 04:49:19 -0700 (PDT)
Received: from mbp (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AE7643F575;
 Wed, 22 May 2019 04:49:13 -0700 (PDT)
Date: Wed, 22 May 2019 12:49:10 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v15 05/17] arms64: untag user pointers passed to memory
 syscalls
Message-ID: <20190522114910.emlckebwzv2qz42i@mbp>
References: <cover.1557160186.git.andreyknvl@google.com>
 <00eb4c63fefc054e2c8d626e8fedfca11d7c2600.1557160186.git.andreyknvl@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00eb4c63fefc054e2c8d626e8fedfca11d7c2600.1557160186.git.andreyknvl@google.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_044921_170737_F34A0EE3 
X-CRM114-Status: GOOD (  24.38  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 linux-kselftest@vger.kernel.org, Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 06:30:51PM +0200, Andrey Konovalov wrote:
> This patch is a part of a series that extends arm64 kernel ABI to allow to
> pass tagged user pointers (with the top byte set to something else other
> than 0x00) as syscall arguments.
> 
> This patch allows tagged pointers to be passed to the following memory
> syscalls: brk, get_mempolicy, madvise, mbind, mincore, mlock, mlock2,
> mmap, mmap_pgoff, mprotect, mremap, msync, munlock, munmap,
> remap_file_pages, shmat and shmdt.
> 
> This is done by untagging pointers passed to these syscalls in the
> prologues of their handlers.

I'll go through them one by one to see if we can tighten the expected
ABI while having the MTE in mind.

> diff --git a/arch/arm64/kernel/sys.c b/arch/arm64/kernel/sys.c
> index b44065fb1616..933bb9f3d6ec 100644
> --- a/arch/arm64/kernel/sys.c
> +++ b/arch/arm64/kernel/sys.c
> @@ -35,10 +35,33 @@ SYSCALL_DEFINE6(mmap, unsigned long, addr, unsigned long, len,
>  {
>  	if (offset_in_page(off) != 0)
>  		return -EINVAL;
> -
> +	addr = untagged_addr(addr);
>  	return ksys_mmap_pgoff(addr, len, prot, flags, fd, off >> PAGE_SHIFT);
>  }

If user passes a tagged pointer to mmap() and the address is honoured
(or MAP_FIXED is given), what is the expected return pointer? Does it
need to be tagged with the value from the hint?

With MTE, we may want to use this as a request for the default colour of
the mapped pages (still under discussion).

> +SYSCALL_DEFINE6(arm64_mmap_pgoff, unsigned long, addr, unsigned long, len,
> +		unsigned long, prot, unsigned long, flags,
> +		unsigned long, fd, unsigned long, pgoff)
> +{
> +	addr = untagged_addr(addr);
> +	return ksys_mmap_pgoff(addr, len, prot, flags, fd, pgoff);
> +}

We don't have __NR_mmap_pgoff on arm64.

> +SYSCALL_DEFINE5(arm64_mremap, unsigned long, addr, unsigned long, old_len,
> +		unsigned long, new_len, unsigned long, flags,
> +		unsigned long, new_addr)
> +{
> +	addr = untagged_addr(addr);
> +	new_addr = untagged_addr(new_addr);
> +	return ksys_mremap(addr, old_len, new_len, flags, new_addr);
> +}

Similar comment as for mmap(), do we want the tag from new_addr to be
preserved? In addition, should we check that the two tags are identical
or mremap() should become a way to repaint a memory region?

> +SYSCALL_DEFINE2(arm64_munmap, unsigned long, addr, size_t, len)
> +{
> +	addr = untagged_addr(addr);
> +	return ksys_munmap(addr, len);
> +}

This looks fine.

> +SYSCALL_DEFINE1(arm64_brk, unsigned long, brk)
> +{
> +	brk = untagged_addr(brk);
> +	return ksys_brk(brk);
> +}

I wonder whether brk() should simply not accept tags, and should not
return them (similar to the prctl(PR_SET_MM) discussion). We could
document this in the ABI requirements.

> +SYSCALL_DEFINE5(arm64_get_mempolicy, int __user *, policy,
> +		unsigned long __user *, nmask, unsigned long, maxnode,
> +		unsigned long, addr, unsigned long, flags)
> +{
> +	addr = untagged_addr(addr);
> +	return ksys_get_mempolicy(policy, nmask, maxnode, addr, flags);
> +}
> +
> +SYSCALL_DEFINE3(arm64_madvise, unsigned long, start,
> +		size_t, len_in, int, behavior)
> +{
> +	start = untagged_addr(start);
> +	return ksys_madvise(start, len_in, behavior);
> +}
> +
> +SYSCALL_DEFINE6(arm64_mbind, unsigned long, start, unsigned long, len,
> +		unsigned long, mode, const unsigned long __user *, nmask,
> +		unsigned long, maxnode, unsigned int, flags)
> +{
> +	start = untagged_addr(start);
> +	return ksys_mbind(start, len, mode, nmask, maxnode, flags);
> +}
> +
> +SYSCALL_DEFINE2(arm64_mlock, unsigned long, start, size_t, len)
> +{
> +	start = untagged_addr(start);
> +	return ksys_mlock(start, len, VM_LOCKED);
> +}
> +
> +SYSCALL_DEFINE2(arm64_mlock2, unsigned long, start, size_t, len)
> +{
> +	start = untagged_addr(start);
> +	return ksys_mlock(start, len, VM_LOCKED);
> +}
> +
> +SYSCALL_DEFINE2(arm64_munlock, unsigned long, start, size_t, len)
> +{
> +	start = untagged_addr(start);
> +	return ksys_munlock(start, len);
> +}
> +
> +SYSCALL_DEFINE3(arm64_mprotect, unsigned long, start, size_t, len,
> +		unsigned long, prot)
> +{
> +	start = untagged_addr(start);
> +	return ksys_mprotect_pkey(start, len, prot, -1);
> +}
> +
> +SYSCALL_DEFINE3(arm64_msync, unsigned long, start, size_t, len, int, flags)
> +{
> +	start = untagged_addr(start);
> +	return ksys_msync(start, len, flags);
> +}
> +
> +SYSCALL_DEFINE3(arm64_mincore, unsigned long, start, size_t, len,
> +		unsigned char __user *, vec)
> +{
> +	start = untagged_addr(start);
> +	return ksys_mincore(start, len, vec);
> +}

These look fine.

> +SYSCALL_DEFINE5(arm64_remap_file_pages, unsigned long, start,
> +		unsigned long, size, unsigned long, prot,
> +		unsigned long, pgoff, unsigned long, flags)
> +{
> +	start = untagged_addr(start);
> +	return ksys_remap_file_pages(start, size, prot, pgoff, flags);
> +}

While this has been deprecated for some time, I presume user space still
invokes it?

> +SYSCALL_DEFINE3(arm64_shmat, int, shmid, char __user *, shmaddr, int, shmflg)
> +{
> +	shmaddr = untagged_addr(shmaddr);
> +	return ksys_shmat(shmid, shmaddr, shmflg);
> +}
> +
> +SYSCALL_DEFINE1(arm64_shmdt, char __user *, shmaddr)
> +{
> +	shmaddr = untagged_addr(shmaddr);
> +	return ksys_shmdt(shmaddr);
> +}

Do we actually want to allow shared tagged memory? Who's going to tag
it? If not, we can document it as not supported.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
