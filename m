Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C486AA144
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:25:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqkzE6tIRd23QBN+hnfKNmY26nJyyCGxLdCcjTP/Tk0=; b=FSAHbjVkxBYmdV
	wyAO02tVc+DQRLpFPH6DBSJf3KSTBsFA3jVbqSMNk4g84a5ty7oOOJn5oXBBAUKbsU3vWq1sPLT/v
	L/iX/BmhNqF1DaphQTPRlK5L57qGuBGsJGdS9XvC3gumi5fDRVpBlQS6rwaNK0OpHdzO7R9kFa1kO
	T3QSEz/tdeAaRE5KTPyqjmp55iFeFwvfrKaxC2qx0Dl4SkFg3jgnKr1Gd5sUxqnvGV6sekeG6ULkO
	OpQap1+ySGxh5XZ+3Bh7ScVvTCo4vVP01ZpTHD6n3dnPhC4HJJPPvCtr1/1YupgacnJWt0/v8EXV/
	l7fZaaVgbQ45ZuvgtcRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ptY-0004xa-Ip; Thu, 05 Sep 2019 11:25:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ptH-0004wj-UD
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 11:25:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 20E4728;
 Thu,  5 Sep 2019 04:25:22 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8C3D93F718;
 Thu,  5 Sep 2019 04:25:21 -0700 (PDT)
Date: Thu, 5 Sep 2019 12:25:19 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v5 03/10] arm64: atomics: avoid out-of-line ll/sc atomics
Message-ID: <20190905112519.GY9720@e119886-lin.cambridge.arm.com>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-4-will@kernel.org>
 <20190903060011.GA60737@archlinux-threadripper>
 <20190903143117.GR9720@e119886-lin.cambridge.arm.com>
 <20190903144534.h2rp3cyd3ryohhgj@willie-the-truck>
 <20190903151544.GS9720@e119886-lin.cambridge.arm.com>
 <20190903153120.GT9720@e119886-lin.cambridge.arm.com>
 <20190903163753.huk5sjg4m27qu2zu@willie-the-truck>
 <20190903220412.GU9720@e119886-lin.cambridge.arm.com>
 <CAKwvOdkVatgMBLiuKV1bLdDKj_czsaGXuXWXp-9VR6zLyv+U4g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdkVatgMBLiuKV1bLdDKj_czsaGXuXWXp-9VR6zLyv+U4g@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_042528_070213_F711E924 
X-CRM114-Status: GOOD (  31.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, Sep 04, 2019 at 10:28:14AM -0700, Nick Desaulniers wrote:
> On Tue, Sep 3, 2019 at 3:04 PM Andrew Murray <andrew.murray@arm.com> wrote:
> >
> > On Tue, Sep 03, 2019 at 05:37:55PM +0100, Will Deacon wrote:
> > > On Tue, Sep 03, 2019 at 04:31:20PM +0100, Andrew Murray wrote:
> > > > On Tue, Sep 03, 2019 at 04:15:44PM +0100, Andrew Murray wrote:
> > > > > On Tue, Sep 03, 2019 at 03:45:34PM +0100, Will Deacon wrote:
> > > > > > Does it work if the only thing you change is the toolchain, and use GCC
> > > > > > instead?
> > > > >
> > > > > Yup.
> > > >
> > > > Also this is Clang generation:
> > > >
> > > > ffff8000100f2700 <__ptrace_link>:
> > > > ffff8000100f2700:       f9426009        ldr     x9, [x0, #1216]
> > > > ffff8000100f2704:       91130008        add     x8, x0, #0x4c0
> > > > ffff8000100f2708:       eb09011f        cmp     x8, x9
> > > > ffff8000100f270c:       540002a1        b.ne    ffff8000100f2760 <__ptrace_link+0x60>  // b.any
> > > > ffff8000100f2710:       f9425829        ldr     x9, [x1, #1200]
> > > > ffff8000100f2714:       9112c02a        add     x10, x1, #0x4b0
> > > > ffff8000100f2718:       f9000528        str     x8, [x9, #8]
> > > > ffff8000100f271c:       f9026009        str     x9, [x0, #1216]
> > > > ffff8000100f2720:       f902640a        str     x10, [x0, #1224]
> > > > ffff8000100f2724:       f9025828        str     x8, [x1, #1200]
> > > > ffff8000100f2728:       f9024001        str     x1, [x0, #1152]
> > > > ffff8000100f272c:       b4000162        cbz     x2, ffff8000100f2758 <__ptrace_link+0x58>
> > > > ffff8000100f2730:       b900985f        str     wzr, [x2, #152]
> > > > ffff8000100f2734:       14000004        b       ffff8000100f2744 <__ptrace_link+0x44>
> > > > ffff8000100f2738:       14000001        b       ffff8000100f273c <__ptrace_link+0x3c>
> > > > ffff8000100f273c:       14000006        b       ffff8000100f2754 <__ptrace_link+0x54>
> > > > ffff8000100f2740:       14000001        b       ffff8000100f2744 <__ptrace_link+0x44>
> > > > ffff8000100f2744:       52800028        mov     w8, #0x1                        // #1
> > > > ffff8000100f2748:       b828005f        stadd   w8, [x2]
> > > > ffff8000100f274c:       f9030002        str     x2, [x0, #1536]
> > > > ffff8000100f2750:       d65f03c0        ret
> > > > ffff8000100f2754:       140007fd        b       ffff8000100f4748 <ptrace_check_attach+0xf8>
> > > > ...
> > > >
> > > > This looks like the default path (before we write over it) will take you to
> > > > the LSE code (e.g. ffff8000100f2734). I'm pretty sure this is wrong, or at
> > > > least not what we expected to see. Also why 4 branches?
> > >
> > > So I reproduced this with a silly atomic_inc wrapper:
> > >
> > > void will_atomic_inc(atomic_t *v)
> > > {
> > >         atomic_inc(v);
> > > }
> > >
> > > Compiles to:
> > >
> > > 0000000000000018 <will_atomic_inc>:
> > >   18: 14000004        b       28 <will_atomic_inc+0x10>
> > >   1c: 14000001        b       20 <will_atomic_inc+0x8>
> > >   20: 14000005        b       34 <will_atomic_inc+0x1c>
> > >   24: 14000001        b       28 <will_atomic_inc+0x10>
> > >   28: 52800028        mov     w8, #0x1                        // #1
> > >   2c: b828001f        stadd   w8, [x0]
> > >   30: d65f03c0        ret
> > >   34: 14000027        b       d0 <dump_kernel_offset+0x60>
> > >   38: d65f03c0        ret
> > >
> > > which is going to explode.
> >
> > I've come up with a simple reproducer for this issue:
> >
> > static bool branch_jump()
> > {
> >         asm_volatile_goto(
> >                 "1: b %l[l_yes2]"
> >                  : : : : l_yes2);
> >
> >         return false;
> > l_yes2:
> >         return true;
> > }
> >
> > static bool branch_test()
> > {
> >         return (!branch_jump() && !branch_jump());
> > }
> >
> > void andy_test(int *v)
> > {
> >         if (branch_test())
> >                 *v = 0xff;
> > }
> >
> > This leads to the following (it shouldn't do anything):
> >
> > 0000000000000000 <andy_test>:
> >    0:   14000004        b       10 <andy_test+0x10>
> >    4:   14000001        b       8 <andy_test+0x8>
> >    8:   14000004        b       18 <andy_test+0x18>
> >    c:   14000001        b       10 <andy_test+0x10>
> >   10:   52801fe8        mov     w8, #0xff                       // #255
> >   14:   b9000008        str     w8, [x0]
> >   18:   d65f03c0        ret
> >
> > The issue goes away with any of the following hunks:
> >
> >
> > @@ -55,7 +55,7 @@ static bool branch_jump()
> >
> >  static bool branch_test()
> >  {
> > -       return (!branch_jump() && !branch_jump());
> > +       return (!branch_jump());
> >  }
> >
> >  void andy_test(int *v)
> >
> >
> > or:
> >
> >
> > @@ -53,14 +53,10 @@ static bool branch_jump()
> >          return true;
> >  }
> >
> > -static bool branch_test()
> > -{
> > -       return (!branch_jump() && !branch_jump());
> > -}
> >
> >  void andy_test(int *v)
> >  {
> > -       if (branch_test())
> > +       if (!branch_jump() && !branch_jump())
> >                 *v = 0xff;
> >  }
> 
> Indeed, playing with the definition of `__lse_ll_sc_body`, I can get
> the kernel to boot again.

Thanks for investigating this.

Did it boot to a prompt? I played with the structure of the code and
too was able to get it to boot, but I found that it hung later-on during
boot. Thus I lost a bit of confidence in it.

> 
> So I think your very helpful test cases are illustrating two different problems:
> https://godbolt.org/z/dMf7x-
> See the disassembly of `andy_test2`.  Reference to the correct label
> is emitted in the inline asm, but there's some silly unconditional
> branches to the next instruction.  That's issue #1 and part of the
> reason you see superfluous branches.  With that fixed, `andy_test2`
> would match between GCC and Clang.  I think that can be a very late
> peephole optimization (and further, we could probably combine labels
> that refer to the same location, oh and .Lfunc_endX could just use
> `.`, too!). LLVM devs noted that the x86 backend doesn't have this
> issue, but this is a curiously recurring pattern I'm noticing in LLVM
> where some arch agnostic optimization is only implemented for x86...
> I'm reading through our Branch Folding pass which I think should
> handle this, but I'll need to fire up a debugger.
> 
> Issue #2 is the more critical issue, but may be conflated with issue
> #1.  Issue #2 is the nonsensical control flow with one level of
> inlining.  See how in the disassembly of `andy_test`, the first label
> referenced from inline assembly is *before* the mov/str when it should
> have been *after*.  Not sure where we could be going wrong, but it's
> straightforward for me to observe the code change as its transformed
> through LLVM, and I've debugged and fixed issues related to inlining
> asm goto before.

You may also be interested in this:

https://godbolt.org/z/8OthP2

void andy_test3(int *v)
{
    if (!branch_jump())
        return;

    if (!branch_jump())
        return;

    *v = 0xff;
}

(I used a similar approach with system_uses_lse_atomics to get the
kernel to boot a bit more).

This generated code does the right thing here (in comparison to andy_test2).
I felt like this gave an insight as to what is going on, but I don't
have the knowledge to know what. It's as if the early return prevents the
compiler from getting confused when it should otherwise jump to the second
goto.

Thanks,

Andrew Murray

> -- 
> Thanks,
> ~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
