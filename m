Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A87A76AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 00:04:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oTyJjT11h1s4gPEjAF/6UEusAjQtQR3rNMgIJ73BXfo=; b=R4LAOHwX9KeVEU
	lE0kltbHm3MMc1IH4v8+ZkhOtIBtJ4Rntfdt9SgAoePgtBUfqdZB8O9XsmJEYJGXD5EMf7/RNMaMq
	QJ4AmfH1lOSp/Mf1C7o1BynO4RXqR2D+TIZ2V3wZgHgNxxZsKnIG+nNJ/XtAbvaUxnZLkLDYaQgXb
	Xzck1h1SVt1dJjqS2iB7pKW9pRPnnKu1FYGhIAzmjX5dL8A52aD76zFIXh2N3YdR1s/gIk2faeGMP
	leyWXeVeTDWG4UumCiics1GVQdBuGoLSmTIsaMEpA0PG2qInJxRKM2OTkomqlXbDG9yVw4wU/JURc
	dk4HM4XK0mZtr1SbiQ2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5GuZ-0004SE-8Q; Tue, 03 Sep 2019 22:04:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5GuO-0004Rs-7Y
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 22:04:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BEB46337;
 Tue,  3 Sep 2019 15:04:14 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 35BCF3F718;
 Tue,  3 Sep 2019 15:04:14 -0700 (PDT)
Date: Tue, 3 Sep 2019 23:04:12 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v5 03/10] arm64: atomics: avoid out-of-line ll/sc atomics
Message-ID: <20190903220412.GU9720@e119886-lin.cambridge.arm.com>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-4-will@kernel.org>
 <20190903060011.GA60737@archlinux-threadripper>
 <20190903143117.GR9720@e119886-lin.cambridge.arm.com>
 <20190903144534.h2rp3cyd3ryohhgj@willie-the-truck>
 <20190903151544.GS9720@e119886-lin.cambridge.arm.com>
 <20190903153120.GT9720@e119886-lin.cambridge.arm.com>
 <20190903163753.huk5sjg4m27qu2zu@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903163753.huk5sjg4m27qu2zu@willie-the-truck>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_150416_364368_44CE437A 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, Ard.Biesheuvel@arm.com,
 Nathan Chancellor <natechancellor@gmail.com>, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 05:37:55PM +0100, Will Deacon wrote:
> On Tue, Sep 03, 2019 at 04:31:20PM +0100, Andrew Murray wrote:
> > On Tue, Sep 03, 2019 at 04:15:44PM +0100, Andrew Murray wrote:
> > > On Tue, Sep 03, 2019 at 03:45:34PM +0100, Will Deacon wrote:
> > > > Does it work if the only thing you change is the toolchain, and use GCC
> > > > instead? 
> > > 
> > > Yup.
> > 
> > Also this is Clang generation:
> > 
> > ffff8000100f2700 <__ptrace_link>:
> > ffff8000100f2700:       f9426009        ldr     x9, [x0, #1216]
> > ffff8000100f2704:       91130008        add     x8, x0, #0x4c0
> > ffff8000100f2708:       eb09011f        cmp     x8, x9
> > ffff8000100f270c:       540002a1        b.ne    ffff8000100f2760 <__ptrace_link+0x60>  // b.any
> > ffff8000100f2710:       f9425829        ldr     x9, [x1, #1200]
> > ffff8000100f2714:       9112c02a        add     x10, x1, #0x4b0
> > ffff8000100f2718:       f9000528        str     x8, [x9, #8]
> > ffff8000100f271c:       f9026009        str     x9, [x0, #1216]
> > ffff8000100f2720:       f902640a        str     x10, [x0, #1224]
> > ffff8000100f2724:       f9025828        str     x8, [x1, #1200]
> > ffff8000100f2728:       f9024001        str     x1, [x0, #1152]
> > ffff8000100f272c:       b4000162        cbz     x2, ffff8000100f2758 <__ptrace_link+0x58>
> > ffff8000100f2730:       b900985f        str     wzr, [x2, #152]
> > ffff8000100f2734:       14000004        b       ffff8000100f2744 <__ptrace_link+0x44>
> > ffff8000100f2738:       14000001        b       ffff8000100f273c <__ptrace_link+0x3c>
> > ffff8000100f273c:       14000006        b       ffff8000100f2754 <__ptrace_link+0x54>
> > ffff8000100f2740:       14000001        b       ffff8000100f2744 <__ptrace_link+0x44>
> > ffff8000100f2744:       52800028        mov     w8, #0x1                        // #1
> > ffff8000100f2748:       b828005f        stadd   w8, [x2]
> > ffff8000100f274c:       f9030002        str     x2, [x0, #1536]
> > ffff8000100f2750:       d65f03c0        ret
> > ffff8000100f2754:       140007fd        b       ffff8000100f4748 <ptrace_check_attach+0xf8>
> > ...
> > 
> > This looks like the default path (before we write over it) will take you to
> > the LSE code (e.g. ffff8000100f2734). I'm pretty sure this is wrong, or at
> > least not what we expected to see. Also why 4 branches?
> 
> So I reproduced this with a silly atomic_inc wrapper:
> 
> void will_atomic_inc(atomic_t *v)
> {
>         atomic_inc(v);
> }
> 
> Compiles to:
> 
> 0000000000000018 <will_atomic_inc>:
>   18:	14000004 	b	28 <will_atomic_inc+0x10>
>   1c:	14000001 	b	20 <will_atomic_inc+0x8>
>   20:	14000005 	b	34 <will_atomic_inc+0x1c>
>   24:	14000001 	b	28 <will_atomic_inc+0x10>
>   28:	52800028 	mov	w8, #0x1                   	// #1
>   2c:	b828001f 	stadd	w8, [x0]
>   30:	d65f03c0 	ret
>   34:	14000027 	b	d0 <dump_kernel_offset+0x60>
>   38:	d65f03c0 	ret
> 
> which is going to explode.

I've come up with a simple reproducer for this issue:

static bool branch_jump()
{
        asm_volatile_goto(
                "1: b %l[l_yes2]"
                 : : : : l_yes2);

        return false;
l_yes2:
        return true;
}

static bool branch_test()
{
        return (!branch_jump() && !branch_jump());
}

void andy_test(int *v)
{
        if (branch_test())
                *v = 0xff;
}

This leads to the following (it shouldn't do anything):

0000000000000000 <andy_test>:
   0:   14000004        b       10 <andy_test+0x10>
   4:   14000001        b       8 <andy_test+0x8>
   8:   14000004        b       18 <andy_test+0x18>
   c:   14000001        b       10 <andy_test+0x10>
  10:   52801fe8        mov     w8, #0xff                       // #255
  14:   b9000008        str     w8, [x0]
  18:   d65f03c0        ret

The issue goes away with any of the following hunks:


@@ -55,7 +55,7 @@ static bool branch_jump()
 
 static bool branch_test()
 {
-       return (!branch_jump() && !branch_jump());
+       return (!branch_jump());
 }
 
 void andy_test(int *v)


or:


@@ -53,14 +53,10 @@ static bool branch_jump()
         return true;
 }
 
-static bool branch_test()
-{
-       return (!branch_jump() && !branch_jump());
-}
 
 void andy_test(int *v)
 {
-       if (branch_test())
+       if (!branch_jump() && !branch_jump())
                *v = 0xff;
 }



Thanks,

Andrew Murray

> 
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
