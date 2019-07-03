Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9145E5A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 15:40:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7qMAWia8rCd0Gahdl33LQwSdI/RcrgL05EyVfrc9Irc=; b=Fp5Mrp7BuXMoP6
	aofagHPLdB4LYahX4VZw3EyElKqbH3bZx9yuTOqAJpn1t+llhoLR4yJGrrffb7YIMlqljYAMxHAfq
	t0Y8ZwH7tMeFoSeQNcw+5lgJAGRpJ7qtrL6Cy/q6BOd5G/epeOYtivlU1X5hP0TS/jQKO9Zc7kztW
	Hd+N3CCkDW6karybRClzhpLXWhfD56uqv3l74UPMi+ern6Zf1F38h+W7ITEBCpkhT2nSZ+gKm4WIE
	18FLTog/Njijl6xC9YdQB4H+zRj9lvWZq7v0NuWl+/Kpt9PAaK6m/7XaGzU2nkHIbgVny7QW37T42
	KcJUEguYfXWdRjgb3ZuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hifVC-0000io-Hs; Wed, 03 Jul 2019 13:40:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hifUx-0000iT-30
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 13:40:36 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8695E218A4;
 Wed,  3 Jul 2019 13:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562161234;
 bh=iiZYJUTmXTahovWO+uzNBwAagJgLV9416eN7X5yYOIU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e3Npt7CPoH857BiaHSLbfm/YWLVKUTS+3VzdKLUsJt0EHgaRT1lE4Zi9HTE45y1UB
 bt6LSz3jh0RSV/lu3Z00ZEl5Ohbg2wslkdSczZKRJ5ToOlC47SewS3ra42mrspVhCQ
 e4wZyxQn/ZLsJedO7dJlXo8mYXO4V62uRg+Oi7jE=
Date: Wed, 3 Jul 2019 14:40:29 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v5] arm64: kernel: implement fast refcount checking
Message-ID: <20190703134028.6aru52r2zd2jnpm4@willie-the-truck>
References: <20190619105431.2630-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619105431.2630-1-ard.biesheuvel@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_064035_162824_770CE466 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jan Glauber <jglauber@marvell.com>,
 Will Deacon <will.deacon@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Hanjun Guo <guohanjun@huawei.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard,

On Wed, Jun 19, 2019 at 12:54:31PM +0200, Ard Biesheuvel wrote:
> This adds support to arm64 for fast refcount checking, as contributed
> by Kees for x86 based on the implementation by grsecurity/PaX.
> 
> The general approach is identical: the existing atomic_t helpers are
> cloned for refcount_t, with the arithmetic instruction modified to set
> the PSTATE flags, and one or two branch instructions added that jump to
> an out of line handler if overflow, decrement to zero or increment from
> zero are detected.
> 
> One complication that we have to deal with on arm64 is the fact that
> it has two atomics implementations: the original LL/SC implementation
> using load/store exclusive loops, and the newer LSE one that does mostly
> the same in a single instruction. So we need to clone some parts of
> both for the refcount handlers, but we also need to deal with the way
> LSE builds fall back to LL/SC at runtime if the hardware does not
> support it.

I've been looking at this today and I still don't understand why this can't
be written as simple wrappers around atomic_t. What am I missing? To be more
concrete, why can't we implement the refcount functions along the lines of
the code below?

We can't call refcount_error_report() like this, but perhaps a
WARN_ON_RATELIMIT would be enough. However, I'm sure there's a reason
for the complexity in your proposal -- I just can't spot it.

Will

--->8

static __always_inline void refcount_add(int i, refcount_t *r)
{
	int old = atomic_fetch_add_relaxed(i, &r->refs);

	if (unlikely(old <= 0 || old + i <= 0))
		refcount_set(r, INT_MIN / 2);
}

static __always_inline void refcount_inc(refcount_t *r)
{
	refcount_add(1, r);
}

static __always_inline void refcount_dec(refcount_t *r)
{
	int old = atomic_fetch_sub_release(1, &r->refs);

	if (unlikely(old <= 1))
		refcount_set(r, INT_MIN / 2);
}

static __always_inline __must_check bool refcount_sub_and_test(int i,
							       refcount_t *r)
{
	int old = atomic_fetch_sub(i, &r->refs);

	if (old - i < 0)
		refcount_set(r, INT_MIN / 2);

	return old == i;
}

static __always_inline __must_check bool refcount_dec_and_test(refcount_t *r)
{
	return refcount_sub_and_test(1, r);
}

static __always_inline __must_check bool refcount_add_not_zero(int i,
							       refcount_t *r)
{
	int old = refcount_read(r);

	do {
		if (!old)
			break;
	} while (!atomic_try_cmpxchg_relaxed(&r->refs, &old, old + i));

	if (old < 0 || old + i < 0)
		refcount_set(r, INT_MIN / 2);

	return old;
}

static __always_inline __must_check bool refcount_inc_not_zero(refcount_t *r)
{
	return refcount_add_not_zero(1, r);
}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
