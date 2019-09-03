Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54847A7717
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 00:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0IN+6FUOme7LzBtLSk0GZgnv+RAR91I7Vv1SHoZs9A=; b=OVGwkyB1m0JNCG
	Nz7US6Y8KV/3cAO1eDBTfPld3pcfnDxGWJiwevkdMFjnq2PBShTTptJ45NzVCdTOWzOgB/1xoqkby
	jqm3Hd4J9689tNEGHQSzx9kysIy6eVCOFY6Ek6pkTUCYU9z2djPn2bafVEqh4VsNQJTJVlaczYME6
	/REZrb/jPkfx1yFM2fQbzljq9DJAI52PUHx1uEgkMac4BM+KFb/06nHj3s15UbPI9NwgL4oBaY7jH
	e4d6L6JWnTTJK1Og8v4M4N8JaXDRinRdudIAtnQymLwmmWGXw50HyJV7cO6xb1vC1WDEYdHs/s0+U
	nxytExkp3/rACxy29zVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5HOm-0000Er-C7; Tue, 03 Sep 2019 22:35:40 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5HOY-0000EV-CC
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 22:35:28 +0000
Received: by mail-pf1-x444.google.com with SMTP id y22so6172588pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 15:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i18uPvFGZAVZIfmuUXHjXlYGjp82E9WPX/8JA0g1aAY=;
 b=Fh3GNg2Re3vuyR58X2u+Inu4VpXUz7ev3K/RQ16xjMxBY9A7F5fXRfvgx2iECyJQFt
 l297aoMzp+oOJJWCdob+f3cEAe2olm+E1VHs4CWhbLl7uMUT3iA9lPSeYf/sOXZ8kkFm
 JHsUKUAmReDKDMBqnDZpRVATcxXv+nYS7c0BPsR6k/PwkDh6yjcB2p82boSu+ouapaKY
 Ky0L2Td2y1ZJuw1m4wkvZwqcl3vo2p5dYcZLGh4td6BJN1/Sgyg4+41Pl0OQ/Gdlj761
 t/AojmjqtxZqzVJEBih3pDhslZ+TWqQEAyJ7kkQPuOfJtG1uoxQ8AYTDdxb/+M6HQNnd
 QGWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i18uPvFGZAVZIfmuUXHjXlYGjp82E9WPX/8JA0g1aAY=;
 b=fXDm3hYagEnjnFQNtd4KELxWvFtUoje/5SIU2crb+2ulVxUKH/R4PQgxJn8k6m868M
 Xu0US5/l1fXJgRZY+UCmT32bu+mtQbcBUjLPc09VjcsNdpR4gzq/YjuxaRZ64lQy5A2n
 o9EQTEHcSwLmQ1z25QDuU8v1w9KqNri6xtV1l/AZxvvpcMdwUbeVRrsWMUC+/sfaksgS
 hFOgvmqSAX0RRFcisheswwnu0RJ+OhVow9sQ4qMc7c4TE5QStwym043cokYwoxAlt40r
 otpbdvMKH9S9OQoTZjf8149ptkzr4X7e5jQG6VzdZdYTpAPTzyFQQsHV3EHl986G+waY
 MYLg==
X-Gm-Message-State: APjAAAWNOCb8O9dxiqiZ2+9zRF1cI2hBxrW5Fq46tHhd2Vs1bAi1Oli/
 Tg7rSJWIzUoxiyNIdYh8aXXYSY+lZB+3tE/a5N6sXg==
X-Google-Smtp-Source: APXvYqxpktL7ovZwTYt/volDrVHbUp3SChpiQGuMrnkiqoJaP94lvMYp+GgEuUTUHGIxALqslt6M1Pg5nVHVcjmOqJw=
X-Received: by 2002:a65:690b:: with SMTP id s11mr30079225pgq.10.1567550121219; 
 Tue, 03 Sep 2019 15:35:21 -0700 (PDT)
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
Date: Tue, 3 Sep 2019 15:35:10 -0700
Message-ID: <CAKwvOdnoZQMCc9rWEtQm1PVxUU8bJqaZHO9jcfdODL7mhvRtQQ@mail.gmail.com>
Subject: Re: [PATCH v5 03/10] arm64: atomics: avoid out-of-line ll/sc atomics
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_153526_444794_AACBBDB1 
X-CRM114-Status: GOOD (  23.65  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Indeed, I can reproduce the hang with `-cpu cortex-a57` and `-cpu
cortex-a73` in QEMU.  Looks like my qemu (3.1.0) doesn't recognizer
newer cores, so I might have to build QEMU from source to test the
v8.2 extension support.
https://en.wikipedia.org/wiki/Comparison_of_ARMv8-A_cores

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

Thanks for the report.  We squashed many bugs related to asm goto, but
it's difficult to say with 100% certainty that the current
implementation is bug free.  Simply throwing more exotic forms of
control flow at it often shake out corner cases.  Thank you very much
for the reduced test case, and I'll look into getting a fix ready
hopefully in time to make the clang-9 release train.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
