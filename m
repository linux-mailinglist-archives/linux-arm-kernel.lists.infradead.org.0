Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D91162633
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 13:34:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CcbOTdgvINZlAZ0jgQVH6YU4FcIooiwI19Hyn94Tj/g=; b=NpwXrRp2jVmwl8
	emBu3+TX6DkfeQmLpopFJFKKbkg2n8S1razU0LoSvmgwvXyBykM2ku5T6kXyfOPIpT+Ax4ibup8j7
	wBtiYDgV7fY3sM2nUFDORfKdTWE/tN6/3z81eZJdoShhUvJ7KURENGzhXxXDMnvYB91ezTlVnJuNq
	5IXApJo8Iq0j9K+OSdJc+bUF8xBNlH3+hNIlUumTJTFTrEzGM6xySv7VMRf7+Z8pE5ZsXK/65tP/1
	0ael+55kNq+78Hsw381yBaWoNYxqbWoadHpJY62jZECZ9f7pAXAcqLEbSAAaHeUOfHtCSW0CmXHGZ
	F3XVWWZk3FydKkKFNtfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j425J-0005VZ-PE; Tue, 18 Feb 2020 12:34:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j425A-0005VE-Fl
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 12:34:33 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 593D22176D;
 Tue, 18 Feb 2020 12:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582029271;
 bh=KDL23XVFLeKVTxiEhY0FXtoYd2oFq3CDaL6YbxA1Xsg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A4LEQwuZfnWVTSl9AAd5GsxoXAM1lP3NLtvaNSsSoy/AUziCAjMIHPEMEK6/ZicNQ
 YaJSiWG/44CKoYX39oa22bnryRq3BGRTO717zKyRKkfPQ3Q40Er4PNvvimg/0cBDDf
 yuqdgeGQ3Rc9AnoKeq9n3mCIKes2CH0YXW+E0grI=
Date: Tue, 18 Feb 2020 12:34:26 +0000
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] mm: Avoid creating virtual address aliases in
 brk()/mmap()/mremap()
Message-ID: <20200218123426.GA19776@willie-the-truck>
References: <20200218122310.72710-1-catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218122310.72710-1-catalin.marinas@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_043432_561407_E52C45FA 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Weimer <fweimer@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, linux-mm@kvack.org,
 Victor Stinner <vstinner@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 12:23:10PM +0000, Catalin Marinas wrote:
> Currently the arm64 kernel ignores the top address byte passed to brk(),
> mmap() and mremap(). When the user is not aware of the 56-bit address
> limit or relies on the kernel to return an error, untagging such
> pointers has the potential to create address aliases in user-space.
> Passing a tagged address to munmap(), madvise() is permitted since the
> tagged pointer is expected to be inside an existing mapping.

Might be worth mentioning that this is causing real issues for existing
userspace:

https://bugzilla.redhat.com/show_bug.cgi?id=1797052

and so should be merged as a fix.

> Remove untagging in the above functions by partially reverting commit
> ce18d171cb73 ("mm: untag user pointers in mmap/munmap/mremap/brk"). In
> addition, update the arm64 tagged-address-abi.rst document accordingly.
> 
> Fixes: ce18d171cb73 ("mm: untag user pointers in mmap/munmap/mremap/brk")
> Cc: <stable@vger.kernel.org> # 5.4.x-
> Cc: Andrey Konovalov <andreyknvl@google.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Florian Weimer <fweimer@redhat.com>
> Reported-by: Victor Stinner <vstinner@redhat.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  Documentation/arm64/tagged-address-abi.rst | 7 +++++--
>  mm/mmap.c                                  | 4 ----
>  mm/mremap.c                                | 1 -
>  3 files changed, 5 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/arm64/tagged-address-abi.rst b/Documentation/arm64/tagged-address-abi.rst
> index d4a85d535bf9..1771a8b5712e 100644
> --- a/Documentation/arm64/tagged-address-abi.rst
> +++ b/Documentation/arm64/tagged-address-abi.rst
> @@ -44,8 +44,11 @@ The AArch64 Tagged Address ABI has two stages of relaxation depending
>  how the user addresses are used by the kernel:
>  
>  1. User addresses not accessed by the kernel but used for address space
> -   management (e.g. ``mmap()``, ``mprotect()``, ``madvise()``). The use
> -   of valid tagged pointers in this context is always allowed.
> +   management (e.g. ``mprotect()``, ``madvise()``). The use of valid
> +   tagged pointers in this context is allowed with the exception of
> +   ``brk()``, ``mmap()`` and the ``new_address`` argument to
> +   ``mremap()`` as these have the potential of aliasing with existing
> +   user addresses.

Given that we're backporting this to stable kernels, perhaps it's worth
a note here along the lines of:

NOTE: This behaviour changed in v5.6 and so some earlier kernels may
incorrectly accept valid tagged pointers for these system calls.

With that:

Acked-by: Will Deacon <will@kernel.org>

Happy to take this as an arm64 fix for 5.6, unless Andrew would prefer
to route it via his tree.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
