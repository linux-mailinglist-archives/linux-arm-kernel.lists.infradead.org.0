Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E08216ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 12:30:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3CcyMbqv585HxAQ30zD8Nv+wpGl7vvXhyKyp9QMzT8g=; b=WbQmzecJnBL9eU
	neU4/WnICinneb8V/e9HRyz6osop42l3cyJnAiYnPNfV/oLHmqsn2HL3CnzMdJHAcRrXNU6kasoxd
	YD/aJEHb5v4jwbCnWHpCmeQO8iAgZRqws1igk0oN47/FggRIvDV4YK8Q56EtdI7cp0td2TBYWdHOX
	eWQxa24IW8Kb7EfYK4GhSD134bGE0qZZZE8mkMewGI3AsqtdY0lEElmV/IdjZ/7EScII1q9307dP2
	0G5+FXhokm048DSwqCmwlgMVmpqqxrvCgxnENpTo8CO075dARY/FGGFbkkF91fJflHSB6PUj8lqfy
	w3Xtw7Gs8vm/d6WyUE5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRa81-0008Gn-L9; Fri, 17 May 2019 10:30:17 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRa7s-0007aM-O3
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 10:30:11 +0000
Received: by mail-io1-xd43.google.com with SMTP id z4so5108381iol.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 03:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TVFfYduXi8K2muk53D3e0hRKiDGZn3xrJXEaso/BT0c=;
 b=poVJefL8EYgREhLeKUmcV9EVQNMDYuI7MiSIrbfgdth52FRH8HWjaGpcFylV08HYzC
 jR8ZPqfOlICn08QsQrhohOEmM6ZLrEZsg8NAcQvcsRO+0vfRXU8G5xOiYeaRI6eDNjer
 uo5YT+qNRgZliQ1Bty2UzTW+HLAqO/0L4rrY5YHGp0jGF1/2g+VN7PolL237Iwsh/soP
 qtEjRYIT4IEj8mMFkvac7J4KlftBwjiKkYybVOD4vGp75SfbF0j64CRiwX6PnqiclVKH
 GeT/sdLLJNDK6YlYLAGtZvE/Dr95ghnZ/45DkzqCAMIqSXfTUNOm8ZWfM7LEevMv8Q5B
 k/8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TVFfYduXi8K2muk53D3e0hRKiDGZn3xrJXEaso/BT0c=;
 b=fJLDhx643g3b2fd7h3vBJ5dSspRoqzBT5sQdBdRknvsUAKeA5WsFklwRlOz5msAYov
 EpuRirGUFhlY17selIqPtiTZoykX+UNZ57yuGlG+4Uzw5C3FYUdGE4Pj4aqtulrQzmx1
 Z4jpD5rSWYKi987wzbZmqR8iaFD0ZjU0ydWXl13LOXtWtX9i9DQmH2+kPqPdWTsxq1Bf
 e/pSN6yqScBux1o+bDCe2+U0r82HDrjzYYnu724DVjofR3G27I0F0Ivas/DnpSbNOc24
 MhmimbsndcD6ww1hiOV24iKVeSiEsQEvW+8vMR4+MWXQgdbShMHPdb9LnaG6R9Xs1eJK
 jS6w==
X-Gm-Message-State: APjAAAU99rUOP2dx4RkMF4XCWoT/Ek+O8fneN2dMJwLTg9MzdbaJarv5
 xnH3WyB5gd6arvl0NzBH48tUWt5f7cZEICj3NtPlfg==
X-Google-Smtp-Source: APXvYqx9RxX8dL80QC/F+n6GcM5TVIZ+8rwe94jqIY+zmfXkwVJBWyupInwmpXv3w6cmMdSdkHsjbUliRfHm3oSAdzE=
X-Received: by 2002:a05:6602:2109:: with SMTP id
 x9mr9084445iox.128.1558089007392; 
 Fri, 17 May 2019 03:30:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190516155344.24060-1-andrew.murray@arm.com>
 <20190517072401.GI2623@hirez.programming.kicks-ass.net>
 <20190517100802.GS8268@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190517100802.GS8268@e119886-lin.cambridge.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 17 May 2019 12:29:54 +0200
Message-ID: <CAKv+Gu_fhFB-fFw20OjhPt5BM2cFuYxbD99JJK963gQftAAn3Q@mail.gmail.com>
Subject: Re: [PATCH v1 0/5] arm64: avoid out-of-line ll/sc atomics
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_033008_985156_4009071B 
X-CRM114-Status: GOOD (  25.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Boqun Feng <boqun.feng@gmail.com>,
 Will Deacon <will.deacon@arm.com>, Ard.Biesheuvel@arm.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 May 2019 at 12:08, Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Fri, May 17, 2019 at 09:24:01AM +0200, Peter Zijlstra wrote:
> > On Thu, May 16, 2019 at 04:53:39PM +0100, Andrew Murray wrote:
> > > When building for LSE atomics (CONFIG_ARM64_LSE_ATOMICS), if the hardware
> > > or toolchain doesn't support it the existing code will fallback to ll/sc
> > > atomics. It achieves this by branching from inline assembly to a function
> > > that is built with specical compile flags. Further this results in the
> > > clobbering of registers even when the fallback isn't used increasing
> > > register pressure.
> > >
> > > Let's improve this by providing inline implementatins of both LSE and
> > > ll/sc and use a static key to select between them. This allows for the
> > > compiler to generate better atomics code.
> >
> > Don't you guys have alternatives? That would avoid having both versions
> > in the code, and thus significantly cuts back on the bloat.
>
> Yes we do.
>
> Prior to patch 3 of this series, the ARM64_LSE_ATOMIC_INSN macro used
> ALTERNATIVE to either bl to a fallback ll/sc function (and nops) - or execute
> some LSE instructions.
>
> But this approach limits the compilers ability to optimise the code due to
> the asm clobber list being the superset of both ll/sc and LSE - and the gcc
> compiler flags used on the ll/sc functions.
>
> I think the alternative solution (excuse the pun) that you are suggesting
> is to put the body of the ll/sc or LSE code in the ALTERNATIVE oldinstr/newinstr
> blocks (i.e. drop the fallback branches). However this still gives us some
> bloat (but less than my current solution) because we're still now inlining the
> larger fallback ll/sc whereas previously they were non-inline'd functions. We
> still end up with potentially unnecessary clobbers for LSE code with this
> approach.
>
> Approach prior to this series:
>
>    BL 1 or NOP <- single alternative instruction
>    LSE
>    LSE
>    ...
>
> 1: LL/SC <- LL/SC fallback not inlined so reused
>    LL/SC
>    LL/SC
>    LL/SC
>
> Approach proposed by this series:
>
>    BL 1 or NOP <- single alternative instruction
>    LSE
>    LSE
>    BL 2
> 1: LL/SC <- inlined LL/SC and thus duplicated
>    LL/SC
>    LL/SC
>    LL/SC
> 2: ..
>
> Approach using alternative without braces:
>
>    LSE
>    LSE
>    NOP
>    NOP
>
> or
>
>    LL/SC <- inlined LL/SC and thus duplicated
>    LL/SC
>    LL/SC
>    LL/SC
>
> I guess there is a balance here between bloat and code optimisation.
>


So there are two separate questions here:
1) whether or not we should merge the inline asm blocks so that the
compiler sees a single set of constraints and operands
2) whether the LL/SC sequence should be inlined and/or duplicated.

This approach appears to be based on the assumption that reserving one
or sometimes two additional registers for the LL/SC fallback has a
more severe impact on performance than the unconditional branch.
However, it seems to me that any call site that uses the atomics has
to deal with the possibility of either version being invoked, and so
the additional registers need to be freed up in any case. Or am I
missing something?

As for the duplication: a while ago, I suggested an approach [0] using
alternatives and asm subsections, which moved the duplicated LL/SC
fallbacks out of the hot path. This does not remove the bloat, but it
does mitigate its impact on I-cache efficiency when running on
hardware that does not require the fallbacks.


[0] https://lore.kernel.org/linux-arm-kernel/20181113233923.20098-1-ard.biesheuvel@linaro.org/



> >
> > > These changes add a small amount of bloat on defconfig according to
> > > bloat-o-meter:
> > >
> > > text:
> > >   add/remove: 1/108 grow/shrink: 3448/20 up/down: 272768/-4320 (268448)
> > >   Total: Before=12363112, After=12631560, chg +2.17%
> >
> > I'd say 2% is quite significant bloat.
>
> Thanks,
>
> Andrew Murray
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
