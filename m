Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4631645E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 14:46:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FYKtPT/0GFIS42WI/cQj9SFUhSk+gFYqTbvzxU3KGE=; b=DQWYvQlIcg2qHR
	zmcl5RdUh1c2kkdKhfNIpzQDlte4xHBMI1E/5WJkz1Y8KOE6zmyJBQUewcXI7ZMoSvzZMOoUXypJ8
	ml4r+QCO3fe77i8EvPXb5YsXuymAMMGKEAWjObBDNWVWYztUDoJi31cF75OUnQUINVkb1PqAlCH//
	+JXPDCeN0TEUQPmVnMIIZ4Lh4CZmr1quXLMgzrCfi3g9fp15hkSRnU1DP8XSAl0b5gWrNcAauv3BE
	y7X79P4I7IszChMgPSorJB+sNjFUT/W7SUoMiW3kbCs8Ca0Rw/wHn76uh5Xx2E5d2D6TWcuaOCvnX
	ouDr3GYdT39iRSLUJAig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Pg7-0002Jw-SG; Wed, 19 Feb 2020 13:46:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Pg0-0002JX-CC
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 13:46:09 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6DC3620801;
 Wed, 19 Feb 2020 13:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582119967;
 bh=VCz4kDLLIpq2JqdJ2+ipuFM04RiXeKKl9ftTf4Uhf9g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=01zXz8eVQgvO3Y0oNpfFarZ6/ghmQR7gOQRql/5wwt7GH8yf2OtsglMlvrB8ByNQm
 UQ980QXBiWBG+hKPpDzfN5B9OdTVsXX0/2WiKZYaoPMmHDLFQEY02AmHPb6tCeqfyU
 NY+bFafPiHq6dlwyNqxzWUkQtMPLcX5iK3MQK6cE=
Date: Wed, 19 Feb 2020 13:46:03 +0000
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2] mm: Avoid creating virtual address aliases in
 brk()/mmap()/mremap()
Message-ID: <20200219134602.GB21366@willie-the-truck>
References: <20200219123156.86952-1-catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219123156.86952-1-catalin.marinas@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_054608_439389_02E1B0EE 
X-CRM114-Status: GOOD (  15.66  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Weimer <fweimer@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Victor Stinner <vstinner@redhat.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 12:31:56PM +0000, Catalin Marinas wrote:
> Currently the arm64 kernel ignores the top address byte passed to brk(),
> mmap() and mremap(). When the user is not aware of the 56-bit address
> limit or relies on the kernel to return an error, untagging such
> pointers has the potential to create address aliases in user-space.
> Passing a tagged address to munmap(), madvise() is permitted since the
> tagged pointer is expected to be inside an existing mapping.
> 
> The current behaviour breaks the existing glibc malloc() implementation
> which relies on brk() with an address beyond 56-bit to be rejected by
> the kernel.
> 
> Remove untagging in the above functions by partially reverting commit
> ce18d171cb73 ("mm: untag user pointers in mmap/munmap/mremap/brk"). In
> addition, update the arm64 tagged-address-abi.rst document accordingly.
> 
> Link: https://bugzilla.redhat.com/1797052
> Fixes: ce18d171cb73 ("mm: untag user pointers in mmap/munmap/mremap/brk")
> Cc: <stable@vger.kernel.org> # 5.4.x-
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Florian Weimer <fweimer@redhat.com>
> Reported-by: Victor Stinner <vstinner@redhat.com>
> Acked-by: Will Deacon <will@kernel.org>
> Acked-by: Andrey Konovalov <andreyknvl@google.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
> 
> Changes in v2:
> 
> - Added note to tagged-address-abi.rst that this behaviour changed in v5.6 and
>   some older kernel may still have the old behaviour.
> 
> - Updated the commit log to make it clearer we broke the user ABI, also adding
>   link to the Red Hat bugzilla entry.

Cheers, I'll queue this up as I have a couple of other arm64 fixes pending
now. (Andrew, please shout if you'd prefer to take it).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
