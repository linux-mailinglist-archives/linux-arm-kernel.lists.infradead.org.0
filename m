Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4F3C100C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 09:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lz840yvy5GrzpKIGUtH8EgXg2NrDpYeaN/M+a7VSUGI=; b=rg4cZfyH+l0QMo
	j7YTm4tejR98xaWuWR0bhupK72UI/q8L5QaMeMCKfLA5fD1LT0xIbEWyI5aioXEpgPvcHG50hDtJT
	HKhmRokQcjnFpPlqq5akyihNI+DgGgQSPq+AN6ZIcfNr9cBKstAM4YIpAqExllnzlSHgCLDYzw0nD
	fx8S1y8DtrG2itz6v7/w01yI66XRdjDAYXtjyd/Gw92bCxIGGqDG8vPUlTrqDh+ieZyAC1l9XBW6r
	8sMsE7xiiKeKHx0nsh/UopnACt034z1avvMj5DgiquiI/ab4FteL6jo0x6pRZ2hNa49yRWtgMkgdy
	4+5ki13YeaWJU6eHNkSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iE70i-00054g-K5; Sat, 28 Sep 2019 07:19:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iE70Z-00053N-Iu
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 07:19:13 +0000
Received: from rapoport-lnx (unknown [87.70.86.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F3E3F207FA;
 Sat, 28 Sep 2019 07:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569655149;
 bh=7Shm2B/zlmlKL3pXHRJPueR0lZN16Qkmk5dclKLpT4Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oBejyXdzz4rgvKVIlusJOqUyYjLlcxGPKWA8NvQRYwv/a6T4RVFhDzz69bRTQQMfm
 8ML/TYEpo0GAa8y9Lc06KceJL27dvkuxdjuG+6wXArOPovYJxSwxMM6bswsAOYscC+
 ZGPaGhcE6hTHkj0IodumScF7u2RD6n5TKFBBmhlo=
Date: Sat, 28 Sep 2019 10:19:02 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH v3] arm64: use generic free_initrd_mem()
Message-ID: <20190928071901.GA3510@rapoport-lnx>
References: <1569388180-28274-1-git-send-email-rppt@kernel.org>
 <76b49810-c59f-8cf1-7401-1f7262873601@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <76b49810-c59f-8cf1-7401-1f7262873601@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_001911_668407_FB7A2935 
X-CRM114-Status: GOOD (  23.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 11:50:42AM +0530, Anshuman Khandual wrote:
> 
> On 09/25/2019 10:39 AM, Mike Rapoport wrote:
> > From: Mike Rapoport <rppt@linux.ibm.com>
> > 
> > arm64 calls memblock_free() for the initrd area in its implementation of
> > free_initrd_mem(), but this call has no actual effect that late in the boot
> > process. By the time initrd is freed, all the reserved memory is managed by
> > the page allocator and the memblock.reserved is unused, so the only purpose
> > of the memblock_free() call is to keep track of initrd memory for debugging
> > and accounting.
> > 
> > Without the memblock_free() call the only difference between arm64 and the
> > generic versions of free_initrd_mem() is the memory poisoning.
> > 
> > Move memblock_free() call to the generic code, enable it there
> > for the architectures that define ARCH_KEEP_MEMBLOCK and use the generic
> > implementaion of free_initrd_mem() on arm64.
> 
> Small nit. s/implementaion/implementation.
> 
> > 
> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> > ---
> > 
> > v3:
> > * fix powerpc build
> > 
> > v2: 
> > * add memblock_free() to the generic free_initrd_mem()
> > * rebase on the current upstream
> > 
> > 
> >  arch/arm64/mm/init.c | 12 ------------
> >  init/initramfs.c     |  5 +++++
> >  2 files changed, 5 insertions(+), 12 deletions(-)
> > 
> > diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> > index 45c00a5..87a0e3b 100644
> > --- a/arch/arm64/mm/init.c
> > +++ b/arch/arm64/mm/init.c
> > @@ -580,18 +580,6 @@ void free_initmem(void)
> >  	unmap_kernel_range((u64)__init_begin, (u64)(__init_end - __init_begin));
> >  }
> >  
> > -#ifdef CONFIG_BLK_DEV_INITRD
> > -void __init free_initrd_mem(unsigned long start, unsigned long end)
> > -{
> > -	unsigned long aligned_start, aligned_end;
> > -
> > -	aligned_start = __virt_to_phys(start) & PAGE_MASK;
> > -	aligned_end = PAGE_ALIGN(__virt_to_phys(end));
> > -	memblock_free(aligned_start, aligned_end - aligned_start);
> > -	free_reserved_area((void *)start, (void *)end, 0, "initrd");
> > -}
> > -#endif
> > -
> >  /*
> >   * Dump out memory limit information on panic.
> >   */
> > diff --git a/init/initramfs.c b/init/initramfs.c
> > index c47dad0..3d61e13 100644
> > --- a/init/initramfs.c
> > +++ b/init/initramfs.c
> > @@ -10,6 +10,7 @@
> >  #include <linux/syscalls.h>
> >  #include <linux/utime.h>
> >  #include <linux/file.h>
> > +#include <linux/memblock.h>
> >  
> >  static ssize_t __init xwrite(int fd, const char *p, size_t count)
> >  {
> > @@ -531,6 +532,10 @@ void __weak free_initrd_mem(unsigned long start, unsigned long end)
> >  {
> >  	free_reserved_area((void *)start, (void *)end, POISON_FREE_INITMEM,
> >  			"initrd");
> > +
> > +#ifdef CONFIG_ARCH_KEEP_MEMBLOCK
> 
> Should not the addresses here be aligned first before calling memblock_free() ?
> Without alignment, it breaks present behavior on arm64 which was explicitly added
> with 13776f9d40a0 ("arm64: mm: free the initrd reserved memblock in a aligned manner").

Well, the present behaviour as of v5.3[.1] is call memblock_free() for the
unaligned initrd area. The commit 13776f9d40a0 ("arm64: mm: free the initrd
reserved memblock in a aligned manner") indeed would fix the reporting in
/sys/fs/memblock/reserved, but it won't change anything beyond that despite
its commit log implies otherwise.

> Or does initrd always gets allocated with page alignment on other architectures.

powerpc reserves aligned area and s390 does not. Other architectures do not
keep memblock  after init.

I'll re-send with the aligned addresses.


> > +	memblock_free(__pa(start), end - start);
> > +#endif
> >  }
> >  
> >  #ifdef CONFIG_KEXEC_CORE
> > 

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
