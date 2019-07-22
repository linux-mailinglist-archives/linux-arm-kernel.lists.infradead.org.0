Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C9370685
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+feMhAAIs65VzE4PJXPJep0hwQN1EY1pQHnGFUCbNNk=; b=AJscvtkaVXC7+P
	Nr2m0v708gTApqpi4E6QMdZ8KefnO1HJRyL+e3tvkp6/PaXtKdiCfbpXbbScWtUyqX+Ve7o+lnG7m
	8UnAsYzrDdJ3y55/+qIHHmbaOqxEG1EWIBAfxgbN8sgoabHQyDfHc7HfblF36CBpS+MM1hIoC8sP8
	iny2rvXovja6yl1eOusQNfGDhqo12pHU15Tg+jFxb7916MTFgDPF8WAZfF0gvYKMFKym3mPzeSged
	fcY7o5X9GJ6qebCAg1cRaznB6Gtif6vGkm3JPJET77HMcDhQqdCdpOQA5aUQwc8gT668HzbgZdTPT
	Kydo68QWWyJe8amwtjEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpbr9-0005cz-Ci; Mon, 22 Jul 2019 17:12:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpbql-0005cX-Nw
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 17:11:49 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 33A722190F;
 Mon, 22 Jul 2019 17:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563815506;
 bh=ltN7YKUR8+3QtFyOtpTd9zTIJY9jEHfuXBb6WIPFEm0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AplUCyU4KkAUPwnUpxBU77tliFxaqI3gUB93w0bCWOrFZaOwpNoJ4OKsjOKJWm1Ys
 7J09SvBELzMeqkyC4ZnDujHCNu8JzZEvXkCWz2xj1vbzMfR3wtkna5DDK+MszLtG/y
 a6HOG7Tp7SlkorqtPCx2bvSa6nnzdbAbyIXAJKcw=
Date: Mon, 22 Jul 2019 18:11:42 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v5] arm64: kernel: implement fast refcount checking
Message-ID: <20190722171141.3cgmw5ej7p2caddn@willie-the-truck>
References: <20190619105431.2630-1-ard.biesheuvel@linaro.org>
 <20190703134028.6aru52r2zd2jnpm4@willie-the-truck>
 <CAKv+Gu9bCuXxJ54WMt=GcsRhkbwn_jXnjwJGuopS-7V3dHipLw@mail.gmail.com>
 <20190710122117.kk5xgei56r7vfmmj@willie-the-truck>
 <201907220942.69F916657@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201907220942.69F916657@keescook>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_101147_796065_BC35FFFE 
X-CRM114-Status: GOOD (  20.22  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jan Glauber <jglauber@marvell.com>,
 Will Deacon <will.deacon@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Hanjun Guo <guohanjun@huawei.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 09:43:54AM -0700, Kees Cook wrote:
> On Wed, Jul 10, 2019 at 01:21:18PM +0100, Will Deacon wrote:
> > On Wed, Jul 03, 2019 at 08:12:12PM +0200, Ard Biesheuvel wrote:
> > > There was a lot of pushback against the use of refcount_t in the
> > > beginning, given that the checked flavor was slower than unchecked
> > > atomic_t, and IIRC, it was mainly the networking folks that opposed
> > > it. So the whole idea is that the code performs as closely to atomic_t
> > > as possible, which is why the code is simply the atomic_t asm
> > > implementations, but with a -s suffix added to the arithmetic
> > > instructions so they set PSTATE, and one or two conditional branch
> > > instructions added.
> > > 
> > > Your approach is going to require one or two additional compare
> > > instructions, increasing the instruction count. This may not matter on
> > > fast OoO cores, but it probably will affect somebody's benchmark
> > > somewhere.
> > > 
> > > However, I'd be in favour of switching to your code, since it is much
> > > simpler and more maintainable, so if you spin it as a proper patch, we
> > > can do some comparative analysis of the performance.
> > 
> > I'll post the patches after the merge window, but I've pushed them here in
> > the meantime in case anybody gets a chance to take them for a spin:
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=refcount/full
> 
> Can the last patch get split up a bit? There's the inlining move, then
> there is the atomic_fetch*() changes. Putting that all in one patch
> makes the series a bit harder to review.

Sure thing, I'll do that when I get round to posting them properly, since
the feedback so far on the performance front looks positive.

> (Also, what happened to the *_checked() variations?)

The new implementation is intended to replace the *_checked() variants,
and the discrepancy in naming doesn't make any sense to me once everything
is inline in the header file. Am I missing something?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
