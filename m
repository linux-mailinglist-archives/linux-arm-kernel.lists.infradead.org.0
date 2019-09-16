Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FC1B3BEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 15:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVdKWBovt3zC/8rjjJxqNzku/pZGkpsYpZCmqNyaKLo=; b=DnqK4LZh+OpTjm
	IgdYQG5ke4P7Li0rLCsMX+VvkQ2SRUERtSRwpaZ0X6y93dRQor7JiFLTeNnqSNV0krrFu9935SFLK
	aywIvpqA68TbTPOMJqrt+1pjjBQtfqtSZn8gmx7BMWmsWfCECZWA964lGhEMopaOLlujEs5A9u1ih
	tdIc1n9VYpLzAik/8fQed3A0zgV3WS/c3M395YNQzDaqcLFCR/VqW8uPb8dwGzPKrqMGE/YIEvo4L
	jS39NqsvMaAR1W9VQ2guVeK4BIcpLxbYHcILVuZUjYiC+Lz9jekQ9d5NqUA8y14x+jlsokqg57eIP
	Y/FNK4gOikuvNbwgYYFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9rUD-0006vn-AL; Mon, 16 Sep 2019 13:56:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9rTq-0006uW-1u
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 13:55:51 +0000
Received: from rapoport-lnx (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5F82214AF;
 Mon, 16 Sep 2019 13:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568642149;
 bh=Qw6DlJe9h17KJF1+v+dT72oQWDOddUyjHUhlMCEhp8c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XPTufvuH1UTy/pOvMGZQdOF7SQV3VB01raZ4EKG+o4EXiEY3D2hLRYUlRw3OYTudk
 7ifs3vTA3J/UlC1HeoIc5365txH9KKqQGWl5ssh7Ckkc1fx6SAp9yZrtpcJUD2NkJz
 eu1aaMNnpR6YsHUTCAo2eol6j0CPHLbbhM6NdbPg=
Date: Mon, 16 Sep 2019 16:55:43 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Laura Abbott <labbott@redhat.com>
Subject: Re: [PATCH] arm64: use generic free_initrd_mem()
Message-ID: <20190916135542.GC5196@rapoport-lnx>
References: <1568618488-19055-1-git-send-email-rppt@kernel.org>
 <0ba20aa4-d2dd-2263-6b5f-16a5c8a39f67@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ba20aa4-d2dd-2263-6b5f-16a5c8a39f67@redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_065550_318079_1A6A0042 
X-CRM114-Status: GOOD (  20.19  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arch@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(added linux-arch)

On Mon, Sep 16, 2019 at 08:23:29AM -0400, Laura Abbott wrote:
> On 9/16/19 8:21 AM, Mike Rapoport wrote:
> >From: Mike Rapoport <rppt@linux.ibm.com>
> >
> >arm64 calls memblock_free() for the initrd area in its implementation of
> >free_initrd_mem(), but this call has no actual effect that late in the boot
> >process. By the time initrd is freed, all the reserved memory is managed by
> >the page allocator and the memblock.reserved is unused, so there is no
> >point to update it.
> >
> 
> People like to use memblock for keeping track of memory even if it has no
> actual effect. We made this change explicitly (see 05c58752f9dc ("arm64: To remove
> initrd reserved area entry from memblock") That said, moving to the generic
> APIs would be nice. Maybe we can find another place to update the accounting?

Any other place in arch/arm64 would make it messy because it would have to
duplicate keepinitrd logic.

We could put the memblock_free() in the generic free_initrd_mem() with
something like:

diff --git a/init/initramfs.c b/init/initramfs.c
index c47dad0..403c6a0 100644
--- a/init/initramfs.c
+++ b/init/initramfs.c
@@ -531,6 +531,10 @@ void __weak free_initrd_mem(unsigned long start,
unsigned long end)
 {
        free_reserved_area((void *)start, (void *)end, POISON_FREE_INITMEM,
                        "initrd");
+
+#ifdef CONFIG_ARCH_KEEP_MEMBLOCK
+       memblock_free(__virt_to_phys(start), end - start);
+#endif
 }
 
 #ifdef CONFIG_KEXEC_CORE


Then powerpc and s390 folks will also be able to track the initrd memory :)

> >Without the memblock_free() call the only difference between arm64 and the
> >generic versions of free_initrd_mem() is the memory poisoning. Switching
> >arm64 to the generic version will enable the poisoning.
> >
> >Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> >---
> >
> >I've boot tested it on qemu and I've checked that kexec works.
> >
> >  arch/arm64/mm/init.c | 8 --------
> >  1 file changed, 8 deletions(-)
> >
> >diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> >index f3c7952..8ad2934 100644
> >--- a/arch/arm64/mm/init.c
> >+++ b/arch/arm64/mm/init.c
> >@@ -567,14 +567,6 @@ void free_initmem(void)
> >  	unmap_kernel_range((u64)__init_begin, (u64)(__init_end - __init_begin));
> >  }
> >-#ifdef CONFIG_BLK_DEV_INITRD
> >-void __init free_initrd_mem(unsigned long start, unsigned long end)
> >-{
> >-	free_reserved_area((void *)start, (void *)end, 0, "initrd");
> >-	memblock_free(__virt_to_phys(start), end - start);
> >-}
> >-#endif
> >-
> >  /*
> >   * Dump out memory limit information on panic.
> >   */
> >
> 

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
