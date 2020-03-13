Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0567184A27
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 16:03:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=waDRQs09B8mQcoLp04sHgs179GzTCjUVal56dKDu2Zg=; b=Ni4gwqdGHwcyKi
	0lQGXtFnKlsdtCV1GZDeUYo026cCXmXYL1SBs6dhqCPaMOlHepjgvvaIiyYdYbrnrD1iZ4iZo43F9
	Mm6r743cZQ7+bXixNAeS01SM1T0mP1x2jwPS+S5c8I6lUsbbF73e9z8jno0PDNtskzA/d2zKXF8Yx
	u8/rXDCfGstINS6ds1zmJ0Wf8QDL990tfEdVubP6heSTv5O5rjsuloLFZ5k9JqU1HuKcHCmzO1++1
	+UA2sk7ErKZkaHGU+X/LHIiO0PcuqVVUladqHAtk18SwdpS0kSQoNMAVeoTijMtt4mI41cy41T0XT
	FlcDEmXJCoBHE63l6rtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jClqC-0007Qs-VF; Fri, 13 Mar 2020 15:03:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jClq5-0007Q8-MH
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 15:03:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7DC3331B;
 Fri, 13 Mar 2020 08:03:03 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 7A1893F67D; Fri, 13 Mar 2020 08:03:02 -0700 (PDT)
Date: Fri, 13 Mar 2020 15:03:00 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Alexander Potapenko <glider@google.com>
Subject: Re: [PATCH] arm64: define __alloc_zeroed_user_highpage
Message-ID: <20200313150300.GD3857972@arrakis.emea.arm.com>
References: <20200312155920.50067-1-glider@google.com>
 <20200312164922.GC21120@lakrids.cambridge.arm.com>
 <CAG_fn=VfRW6Gi-a9WCMwoK1-Nc+i+NFLN3ZyhFAUzr-K3LeaZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG_fn=VfRW6Gi-a9WCMwoK1-Nc+i+NFLN3ZyhFAUzr-K3LeaZQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_080305_771867_4BA4C4DE 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Will Deacon <will.deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 08:59:28PM +0100, Alexander Potapenko wrote:
> On Thu, Mar 12, 2020 at 5:49 PM Mark Rutland <mark.rutland@arm.com> wrote:
> >
> > On Thu, Mar 12, 2020 at 04:59:20PM +0100, glider@google.com wrote:
> > > When running the kernel with init_on_alloc=1, calling the default
> > > implementation of __alloc_zeroed_user_highpage() from include/linux/highmem.h
> > > leads to double-initialization of the allocated page (first by the page
> > > allocator, then by clear_user_page().
> > > Calling alloc_page_vma() with __GFP_ZERO, similarly to e.g. x86, seems
> > > to be enough to ensure the user page is zeroed only once.
> >
> > Just to check, is there a functional ussue beyond the redundant zeroing,
> > or is this jsut a performance issue?
> 
> This is just a performance issue that only manifests when running the
> kernel with init_on_alloc=1.
> 
> > On architectures with real highmem, does GFP_HIGHUSER prevent the
> > allocator from zeroing the page in this case, or is the architecture
> > prevented from allocating from highmem?
> 
> I was hoping one of ARM maintainers can answer this question. My
> understanding was that __GFP_ZERO should be sufficient, but there's
> probably something I'm missing.

On architectures with aliasing D-cache (whether it's VIVT or aliasing
VIPT), clear_user_highpage() ensures that the correct alias, as seen by
the user, is cleared (see the arm32 v6_clear_user_highpage_aliasing() as
an example). The clear_highpage() call as done by page_alloc.c does not
have the user address information, so it can only clear the kernel
alias.

On arm64 we don't have such issue, so we can optimise this case as per
your patch. We may change this function later with MTE if we allow tags
other than 0 on the first allocation of anonymous pages.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
