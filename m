Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58895EB48
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 20:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eoRZrDYP/TZcaNXD1f+KTJcGGxCZbNTqV6kVXMgH6uU=; b=rLB+UygGCdQo0t
	yvWa7esE7o+HPIgpWLsD2QdPHocfwfIWitpySWE4UPA81pkZfcb8YDn1flbCJ4tl2Juebsq/HAeys
	YCntV40aFfuSAzwDthsVIebebYhAn+ks+pyx+Z2v4ghE+K+ILYiybzhSlJ9MHcyofwnFWlyngTbnx
	9f7dQ0AM5PaD+7FP0ap+LUbbnh3JdgRJokNvLm+pXbv6cTxHSO4d8n0RcnYeCg2WTNjQkG6oobzpw
	1Prv5MegsToHj8eXe1OyQP/bVymKx0A7nEqLb6JoNqfeWyJ9DNTQsdq82LVfo48Tu4u1KfiXEmIR8
	ScxMQ9RuP62rnxR8rPEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hijkI-0003qf-EU; Wed, 03 Jul 2019 18:12:42 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hijk6-0003q1-In
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 18:12:32 +0000
Received: by mail-wm1-x341.google.com with SMTP id x15so3161386wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 11:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1Zu+iQbOSEd0rMrREHLa5z1p4r2/gyHlDFJcNe0nihk=;
 b=j4w8VEylhwzWb53tz1zaVAvW/HVTvZ3zWoi4f3tN9fDVe9jqMbMAsgDiM9Vxplv7O2
 LeCjvqajuBASWMDE6UbM5dqF4GoQMXb8CVGe042E5NXYrciY5R1+b4GAgpjYUtinuLLC
 5MS8CDrHlrJN3/4QBH9Nrf3e1qwuOpSjlgnEsjK7PBjlqB/IqraWWFAVoOZ6kWe8LbRq
 b0/q+xB7xHCJ3iLDJSB24mJne1ICFwgQP1xbRpNvQF15Qju68H8yWQmMzfQNgjxRBXhG
 AKanBAwwmFsyTFeqUcZYkSxA/x/rsihsen9lkjQqFvWYJ4isljosRe1uT4Rr02eMrgSP
 T24g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1Zu+iQbOSEd0rMrREHLa5z1p4r2/gyHlDFJcNe0nihk=;
 b=i9aq+NGTZ8937pFVducAQABNeikpi97cf+L/A95uI3YTuqpIjYEZeyJg3LY82bXyYQ
 XZJsuNw27goVUJhboILetmcCLwGcsdjn2STGAqCO03+iy8g8Fhka6GyM2lpapuaagU1m
 D96InCRDg7oQpOZe8txK6PmEUgxI8YOt62a3Q4EUzspCyvvty8EVVRQcQ9mQ9UxpM0MW
 JPQ0sQu1eOgxj8nTbsgX1v/yPaorTvrKRl8DSJfmk4nBF6I57ye3x6WQU4TuwK3CWGDd
 9zs98WrboUyTcdaT9z5qgXhzUS+ziT2WzhTSiHO7Eou0lliWYjVlgKpGbl4GkX/08b9P
 wSNA==
X-Gm-Message-State: APjAAAU/kVYhaPSO7OemoeFbuULdHXh6hG7C+pVk4dM/7uJcr+xdb/2T
 HJGMyZm/r42x5JSZMJcP5pQopNWLN51+tHr4qvmmcA==
X-Google-Smtp-Source: APXvYqwgSiXJ/x8P9392VinOJNhPhyU6xHNrU7W7zk3RnAn8ApzgtMd2MiNU2+ijGzq7awIRltR3R2CMqZM5Kh+VU94=
X-Received: by 2002:a1c:b706:: with SMTP id h6mr8554088wmf.119.1562177548139; 
 Wed, 03 Jul 2019 11:12:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190619105431.2630-1-ard.biesheuvel@linaro.org>
 <20190703134028.6aru52r2zd2jnpm4@willie-the-truck>
In-Reply-To: <20190703134028.6aru52r2zd2jnpm4@willie-the-truck>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 3 Jul 2019 20:12:12 +0200
Message-ID: <CAKv+Gu9bCuXxJ54WMt=GcsRhkbwn_jXnjwJGuopS-7V3dHipLw@mail.gmail.com>
Subject: Re: [PATCH v5] arm64: kernel: implement fast refcount checking
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_111230_690171_39543805 
X-CRM114-Status: GOOD (  22.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 3 Jul 2019 at 15:40, Will Deacon <will@kernel.org> wrote:
>
> Hi Ard,
>
> On Wed, Jun 19, 2019 at 12:54:31PM +0200, Ard Biesheuvel wrote:
> > This adds support to arm64 for fast refcount checking, as contributed
> > by Kees for x86 based on the implementation by grsecurity/PaX.
> >
> > The general approach is identical: the existing atomic_t helpers are
> > cloned for refcount_t, with the arithmetic instruction modified to set
> > the PSTATE flags, and one or two branch instructions added that jump to
> > an out of line handler if overflow, decrement to zero or increment from
> > zero are detected.
> >
> > One complication that we have to deal with on arm64 is the fact that
> > it has two atomics implementations: the original LL/SC implementation
> > using load/store exclusive loops, and the newer LSE one that does mostly
> > the same in a single instruction. So we need to clone some parts of
> > both for the refcount handlers, but we also need to deal with the way
> > LSE builds fall back to LL/SC at runtime if the hardware does not
> > support it.
>
> I've been looking at this today and I still don't understand why this can't
> be written as simple wrappers around atomic_t. What am I missing? To be more
> concrete, why can't we implement the refcount functions along the lines of
> the code below?
>

There was a lot of pushback against the use of refcount_t in the
beginning, given that the checked flavor was slower than unchecked
atomic_t, and IIRC, it was mainly the networking folks that opposed
it. So the whole idea is that the code performs as closely to atomic_t
as possible, which is why the code is simply the atomic_t asm
implementations, but with a -s suffix added to the arithmetic
instructions so they set PSTATE, and one or two conditional branch
instructions added.

Your approach is going to require one or two additional compare
instructions, increasing the instruction count. This may not matter on
fast OoO cores, but it probably will affect somebody's benchmark
somewhere.

However, I'd be in favour of switching to your code, since it is much
simpler and more maintainable, so if you spin it as a proper patch, we
can do some comparative analysis of the performance.

> We can't call refcount_error_report() like this, but perhaps a
> WARN_ON_RATELIMIT would be enough. However, I'm sure there's a reason
> for the complexity in your proposal -- I just can't spot it.
>


> --->8
>
> static __always_inline void refcount_add(int i, refcount_t *r)
> {
>         int old = atomic_fetch_add_relaxed(i, &r->refs);
>
>         if (unlikely(old <= 0 || old + i <= 0))
>                 refcount_set(r, INT_MIN / 2);
> }
>
> static __always_inline void refcount_inc(refcount_t *r)
> {
>         refcount_add(1, r);
> }
>
> static __always_inline void refcount_dec(refcount_t *r)
> {
>         int old = atomic_fetch_sub_release(1, &r->refs);
>
>         if (unlikely(old <= 1))
>                 refcount_set(r, INT_MIN / 2);
> }
>
> static __always_inline __must_check bool refcount_sub_and_test(int i,
>                                                                refcount_t *r)
> {
>         int old = atomic_fetch_sub(i, &r->refs);
>
>         if (old - i < 0)
>                 refcount_set(r, INT_MIN / 2);
>
>         return old == i;
> }
>
> static __always_inline __must_check bool refcount_dec_and_test(refcount_t *r)
> {
>         return refcount_sub_and_test(1, r);
> }
>
> static __always_inline __must_check bool refcount_add_not_zero(int i,
>                                                                refcount_t *r)
> {
>         int old = refcount_read(r);
>
>         do {
>                 if (!old)
>                         break;
>         } while (!atomic_try_cmpxchg_relaxed(&r->refs, &old, old + i));
>
>         if (old < 0 || old + i < 0)
>                 refcount_set(r, INT_MIN / 2);
>
>         return old;
> }
>
> static __always_inline __must_check bool refcount_inc_not_zero(refcount_t *r)
> {
>         return refcount_add_not_zero(1, r);
> }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
