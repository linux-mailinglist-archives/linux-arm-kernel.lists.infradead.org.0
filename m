Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B113FA86FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 19:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LmIuAlicZzA3q+vCMnmgkZLoHAjN4AqmgxUmGtCSimU=; b=ZHQlQ+FhWhee9V
	xRGHQYIaMNdCaSDwaY3lf2Mfzhm3myIyqtKDuGsYxxm/f6YV0Lf/l1Mq4+WuDamkMoiYG3189/FRQ
	Ipc0X9UTxZA9AIQ3eu3ngYydsjRu1opIiPT8E7ETMu4P1PU23QCvynpsTNk1KyFWW9KXKYxwu9thV
	bVDHz2CytTi9VqwF12WKVTdP8xaq3WdcMU4safGnIhmsm5Bp/mPF4WsuhV0hJ27iKmjbqgKgftpVy
	ycBK0TlsJBPxE8TBXWqFdUicGutnWd68ugXaSO0OyomH6a2wOrArN0NtD7uBHz8GCHyscIxmk291S
	pQ1jTdQnJ5+Vzkr649Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Z5C-0007Wl-Ee; Wed, 04 Sep 2019 17:28:38 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Z52-0007WP-9X
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 17:28:30 +0000
Received: by mail-pf1-x442.google.com with SMTP id q21so8638025pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 10:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yUc21Vz3BIkQpCfNagyfmQv0ZNjUUdwp1YUd0mu59Sg=;
 b=Qc94472BeOlgt4qcmeXGfKclh4BmrwUjHw5IdBWFEDaF5UZWP8z8FEjqkCKckaptaf
 4wJdyfe5oRMQ/O6H0QGdsK5sT3wi9xJte5dREiHnxd8YOCrgyr3uPZAinVrH04HZxAFd
 nFWzzK64o07wwx6txIYt7XDKWSDTIdq9DaF7phhIDbDeAzjevxy4YlT+6TR24El/HTrG
 0iUxWE9be4J9kkHR5pBmNadktUQPuV9vnShS6LGqad2NMrcsR9/mm2930Mm8B7N9rSuD
 qP9ba34Cf0jgUddF0Uns3yZNW9igP7tet13ExwNJOHhQq5k19sxUTXjH8PIkjr+S9/ZX
 YSxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yUc21Vz3BIkQpCfNagyfmQv0ZNjUUdwp1YUd0mu59Sg=;
 b=Y+Ad5Y9PvWazCpLg2u7uT/j7p4q4ml+aj6zqaxn4A5TPO24ViflAOELFhwapJUjI31
 idZNSlOBXMMbWKwR6ClD6/j4SMFuJklmV55Gr9Ir80Uy6Fz1/QHrH5jk+D4Z9v6M/1/q
 9GqeTsh3qVXQs0udixlm9t8l29LJOHzN4R29kXVzYdZh+TnaeaucM0GJGV6w2AhNKUqZ
 rdWW6pneA+3yvnTXARkw78LL6Ek2ellT5SZ3oTw7gkKdA8Tth5pChK1MF+ayPdO841J2
 5x9twBGl6GHLjrxlxEb/0KevXB75kDg1FVPJ4hKiBJ1PytIExsbtEeZx5h98riD21h5R
 naLw==
X-Gm-Message-State: APjAAAV4rzPJOHmjekSGBL9YmMkYhQMsT3sqh24oAcJzzXJ7Tx4Sl1a+
 hPZh+TnsYOFihvFRFt46Lpxju+9FjwKb2rx90YdNFQ==
X-Google-Smtp-Source: APXvYqyeD+YKNDpDRyd8DoswFkS/Oui+ERYfX/19w4Emik+sqHD9tGu52YYQ41Yr/c8Y68M/3eqqeM3AxlImasEdW2o=
X-Received: by 2002:a62:cec4:: with SMTP id y187mr14876711pfg.84.1567618107049; 
 Wed, 04 Sep 2019 10:28:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-4-will@kernel.org>
 <20190903060011.GA60737@archlinux-threadripper>
 <20190903143117.GR9720@e119886-lin.cambridge.arm.com>
 <20190903144534.h2rp3cyd3ryohhgj@willie-the-truck>
 <20190903151544.GS9720@e119886-lin.cambridge.arm.com>
 <20190903153120.GT9720@e119886-lin.cambridge.arm.com>
 <20190903163753.huk5sjg4m27qu2zu@willie-the-truck>
 <20190903220412.GU9720@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190903220412.GU9720@e119886-lin.cambridge.arm.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 4 Sep 2019 10:28:14 -0700
Message-ID: <CAKwvOdkVatgMBLiuKV1bLdDKj_czsaGXuXWXp-9VR6zLyv+U4g@mail.gmail.com>
Subject: Re: [PATCH v5 03/10] arm64: atomics: avoid out-of-line ll/sc atomics
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_102828_386231_50275E67 
X-CRM114-Status: GOOD (  24.47  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Ard.Biesheuvel@arm.com, Nathan Chancellor <natechancellor@gmail.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 3, 2019 at 3:04 PM Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Tue, Sep 03, 2019 at 05:37:55PM +0100, Will Deacon wrote:
> > On Tue, Sep 03, 2019 at 04:31:20PM +0100, Andrew Murray wrote:
> > > On Tue, Sep 03, 2019 at 04:15:44PM +0100, Andrew Murray wrote:
> > > > On Tue, Sep 03, 2019 at 03:45:34PM +0100, Will Deacon wrote:
> > > > > Does it work if the only thing you change is the toolchain, and use GCC
> > > > > instead?
> > > >
> > > > Yup.
> > >
> > > Also this is Clang generation:
> > >
> > > ffff8000100f2700 <__ptrace_link>:
> > > ffff8000100f2700:       f9426009        ldr     x9, [x0, #1216]
> > > ffff8000100f2704:       91130008        add     x8, x0, #0x4c0
> > > ffff8000100f2708:       eb09011f        cmp     x8, x9
> > > ffff8000100f270c:       540002a1        b.ne    ffff8000100f2760 <__ptrace_link+0x60>  // b.any
> > > ffff8000100f2710:       f9425829        ldr     x9, [x1, #1200]
> > > ffff8000100f2714:       9112c02a        add     x10, x1, #0x4b0
> > > ffff8000100f2718:       f9000528        str     x8, [x9, #8]
> > > ffff8000100f271c:       f9026009        str     x9, [x0, #1216]
> > > ffff8000100f2720:       f902640a        str     x10, [x0, #1224]
> > > ffff8000100f2724:       f9025828        str     x8, [x1, #1200]
> > > ffff8000100f2728:       f9024001        str     x1, [x0, #1152]
> > > ffff8000100f272c:       b4000162        cbz     x2, ffff8000100f2758 <__ptrace_link+0x58>
> > > ffff8000100f2730:       b900985f        str     wzr, [x2, #152]
> > > ffff8000100f2734:       14000004        b       ffff8000100f2744 <__ptrace_link+0x44>
> > > ffff8000100f2738:       14000001        b       ffff8000100f273c <__ptrace_link+0x3c>
> > > ffff8000100f273c:       14000006        b       ffff8000100f2754 <__ptrace_link+0x54>
> > > ffff8000100f2740:       14000001        b       ffff8000100f2744 <__ptrace_link+0x44>
> > > ffff8000100f2744:       52800028        mov     w8, #0x1                        // #1
> > > ffff8000100f2748:       b828005f        stadd   w8, [x2]
> > > ffff8000100f274c:       f9030002        str     x2, [x0, #1536]
> > > ffff8000100f2750:       d65f03c0        ret
> > > ffff8000100f2754:       140007fd        b       ffff8000100f4748 <ptrace_check_attach+0xf8>
> > > ...
> > >
> > > This looks like the default path (before we write over it) will take you to
> > > the LSE code (e.g. ffff8000100f2734). I'm pretty sure this is wrong, or at
> > > least not what we expected to see. Also why 4 branches?
> >
> > So I reproduced this with a silly atomic_inc wrapper:
> >
> > void will_atomic_inc(atomic_t *v)
> > {
> >         atomic_inc(v);
> > }
> >
> > Compiles to:
> >
> > 0000000000000018 <will_atomic_inc>:
> >   18: 14000004        b       28 <will_atomic_inc+0x10>
> >   1c: 14000001        b       20 <will_atomic_inc+0x8>
> >   20: 14000005        b       34 <will_atomic_inc+0x1c>
> >   24: 14000001        b       28 <will_atomic_inc+0x10>
> >   28: 52800028        mov     w8, #0x1                        // #1
> >   2c: b828001f        stadd   w8, [x0]
> >   30: d65f03c0        ret
> >   34: 14000027        b       d0 <dump_kernel_offset+0x60>
> >   38: d65f03c0        ret
> >
> > which is going to explode.
>
> I've come up with a simple reproducer for this issue:
>
> static bool branch_jump()
> {
>         asm_volatile_goto(
>                 "1: b %l[l_yes2]"
>                  : : : : l_yes2);
>
>         return false;
> l_yes2:
>         return true;
> }
>
> static bool branch_test()
> {
>         return (!branch_jump() && !branch_jump());
> }
>
> void andy_test(int *v)
> {
>         if (branch_test())
>                 *v = 0xff;
> }
>
> This leads to the following (it shouldn't do anything):
>
> 0000000000000000 <andy_test>:
>    0:   14000004        b       10 <andy_test+0x10>
>    4:   14000001        b       8 <andy_test+0x8>
>    8:   14000004        b       18 <andy_test+0x18>
>    c:   14000001        b       10 <andy_test+0x10>
>   10:   52801fe8        mov     w8, #0xff                       // #255
>   14:   b9000008        str     w8, [x0]
>   18:   d65f03c0        ret
>
> The issue goes away with any of the following hunks:
>
>
> @@ -55,7 +55,7 @@ static bool branch_jump()
>
>  static bool branch_test()
>  {
> -       return (!branch_jump() && !branch_jump());
> +       return (!branch_jump());
>  }
>
>  void andy_test(int *v)
>
>
> or:
>
>
> @@ -53,14 +53,10 @@ static bool branch_jump()
>          return true;
>  }
>
> -static bool branch_test()
> -{
> -       return (!branch_jump() && !branch_jump());
> -}
>
>  void andy_test(int *v)
>  {
> -       if (branch_test())
> +       if (!branch_jump() && !branch_jump())
>                 *v = 0xff;
>  }

Indeed, playing with the definition of `__lse_ll_sc_body`, I can get
the kernel to boot again.

So I think your very helpful test cases are illustrating two different problems:
https://godbolt.org/z/dMf7x-
See the disassembly of `andy_test2`.  Reference to the correct label
is emitted in the inline asm, but there's some silly unconditional
branches to the next instruction.  That's issue #1 and part of the
reason you see superfluous branches.  With that fixed, `andy_test2`
would match between GCC and Clang.  I think that can be a very late
peephole optimization (and further, we could probably combine labels
that refer to the same location, oh and .Lfunc_endX could just use
`.`, too!). LLVM devs noted that the x86 backend doesn't have this
issue, but this is a curiously recurring pattern I'm noticing in LLVM
where some arch agnostic optimization is only implemented for x86...
I'm reading through our Branch Folding pass which I think should
handle this, but I'll need to fire up a debugger.

Issue #2 is the more critical issue, but may be conflated with issue
#1.  Issue #2 is the nonsensical control flow with one level of
inlining.  See how in the disassembly of `andy_test`, the first label
referenced from inline assembly is *before* the mov/str when it should
have been *after*.  Not sure where we could be going wrong, but it's
straightforward for me to observe the code change as its transformed
through LLVM, and I've debugged and fixed issues related to inlining
asm goto before.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
