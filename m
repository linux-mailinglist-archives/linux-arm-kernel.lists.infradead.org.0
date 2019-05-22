Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E444526323
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 13:45:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/en1g06jJs99CiXMWh9SV6JfYztJmlRx8vyM+vK268M=; b=ckCPp3w2E2GfaP
	9r7QA+TnjxwGzs0icETF5+jbeIm0PTUubwtHxtKAZh9QJYt3BCHEqPA4/z6hm8Mh0FWEy6TLr6yw9
	T/iEpmzHDcn45C8jGquKjgzBTbKDQ6a8QA2xCkxbyeuJJMPxdsypgE3OwKoK8/2icIptPlDaS0D8A
	kPoCuBbrysdP9Wyv3tkeWtR6Ks7IZY7gq2sgzqgvSbp321d1WYi8eYu7fmPkHK/ekGhPEGwsDlVOb
	tVlgoP8rowYeaZedp/mBoJg1jGzZuqlJxK6rVJhONJjS7GsHD18JSkA5zcJvjLlYb9o0AgW1+duhl
	Co39ma0aDH9KFv/InWew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTPg2-0000l2-Uk; Wed, 22 May 2019 11:44:58 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTPfv-0000kU-5C
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 11:44:53 +0000
Received: by mail-it1-x142.google.com with SMTP id i63so2546780ita.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 04:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=64VIbj7lTeoo5qnu4kEAKbi9tvANIAWvMoPtfvBmkwo=;
 b=bLZ4Uj2eN9M3KLbId2sQ3SZAZ3TQIaponyfZ9Bx8GFsd5n4+e40We1VyXHz9HlnUB7
 rExlzzT3WZOBY94rhyg3uB0IIYMxbB7vu8jZ12nX7/LuZLi3BO/z85KCajbcl6Tf+7eu
 Fdc4D2BDZ/0ZBIojcdIP2UaUV+uL5gU68SHTTTxLw4QEpH2SWOex9TF+qp5JqFmnBWio
 S1UvwDD0nAKAKEQCV2AKNOEj+5y1x0QJ9zWMDH2pouGfTaGwlsp8H/aTIBmmnXKJ6XAG
 NPNpIHw0IIA+pSIsQnzuyRj1eUHp5M8l4OZt1EBsXZf56cDiRk+xDjnpYMkQsYxQ13cz
 6Eng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=64VIbj7lTeoo5qnu4kEAKbi9tvANIAWvMoPtfvBmkwo=;
 b=idWoOGofkM4tLhxyhpJTTlncucw2AWPCk/leesXczLiJ1r5n6egltFoXmQWnCvdApT
 syPIcIsaUpxkinCI+z5OxH7IBirQsGwcHG5MqyvCxdtaLji5dAM2mXXQ+QVJ7ZNFuWOG
 kl3w1TheliXyOpUfevAuxKeQvruh2TrU5NpktEBeDyHxOfV/LfIAcuDHrU3uZV4dOsVC
 z4RGW7Ipy4xfvPtsbzi1IMqyRGZOuw01wJXjo/m9gL2dtbPaqTdfl/ifLrSScogx3+IG
 7ybEg/3nhFItdExXKzgY//NzeTOwC/qWfiIdpX4X5Jb8en4xHchzZc1PZhLRTW1j+z+7
 Zlnw==
X-Gm-Message-State: APjAAAVNbvAWLGd7UX4elKMt/qWzBX1INL8m1uS+gZqMyrpH8LWpXkBP
 9WDZxBcKzyEuO2RGHBjViVoL/MdjayoaogiiMEH8eg==
X-Google-Smtp-Source: APXvYqx0keyneW/17ECWp+J+xTDOIWqb8oMKJCYu85EUJB8ZTxGK3HlAIIuzIUOk/gMOpRok4Of6zFKs8QQEUe+bv5M=
X-Received: by 2002:a24:d00e:: with SMTP id m14mr7472750itg.153.1558525485892; 
 Wed, 22 May 2019 04:44:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190516155344.24060-1-andrew.murray@arm.com>
 <20190517072401.GI2623@hirez.programming.kicks-ass.net>
 <20190517100802.GS8268@e119886-lin.cambridge.arm.com>
 <CAKv+Gu_fhFB-fFw20OjhPt5BM2cFuYxbD99JJK963gQftAAn3Q@mail.gmail.com>
 <20190522104536.GA8268@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190522104536.GA8268@e119886-lin.cambridge.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 22 May 2019 12:44:35 +0100
Message-ID: <CAKv+Gu9sWBwCisYPd7eAH7YBC4RfeQNvGh2Tt_f2iXZ5UUbmsw@mail.gmail.com>
Subject: Re: [PATCH v1 0/5] arm64: avoid out-of-line ll/sc atomics
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_044451_205265_56577883 
X-CRM114-Status: GOOD (  35.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, 22 May 2019 at 11:45, Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Fri, May 17, 2019 at 12:29:54PM +0200, Ard Biesheuvel wrote:
> > On Fri, 17 May 2019 at 12:08, Andrew Murray <andrew.murray@arm.com> wrote:
> > >
> > > On Fri, May 17, 2019 at 09:24:01AM +0200, Peter Zijlstra wrote:
> > > > On Thu, May 16, 2019 at 04:53:39PM +0100, Andrew Murray wrote:
> > > > > When building for LSE atomics (CONFIG_ARM64_LSE_ATOMICS), if the hardware
> > > > > or toolchain doesn't support it the existing code will fallback to ll/sc
> > > > > atomics. It achieves this by branching from inline assembly to a function
> > > > > that is built with specical compile flags. Further this results in the
> > > > > clobbering of registers even when the fallback isn't used increasing
> > > > > register pressure.
> > > > >
> > > > > Let's improve this by providing inline implementatins of both LSE and
> > > > > ll/sc and use a static key to select between them. This allows for the
> > > > > compiler to generate better atomics code.
> > > >
> > > > Don't you guys have alternatives? That would avoid having both versions
> > > > in the code, and thus significantly cuts back on the bloat.
> > >
> > > Yes we do.
> > >
> > > Prior to patch 3 of this series, the ARM64_LSE_ATOMIC_INSN macro used
> > > ALTERNATIVE to either bl to a fallback ll/sc function (and nops) - or execute
> > > some LSE instructions.
> > >
> > > But this approach limits the compilers ability to optimise the code due to
> > > the asm clobber list being the superset of both ll/sc and LSE - and the gcc
> > > compiler flags used on the ll/sc functions.
> > >
> > > I think the alternative solution (excuse the pun) that you are suggesting
> > > is to put the body of the ll/sc or LSE code in the ALTERNATIVE oldinstr/newinstr
> > > blocks (i.e. drop the fallback branches). However this still gives us some
> > > bloat (but less than my current solution) because we're still now inlining the
> > > larger fallback ll/sc whereas previously they were non-inline'd functions. We
> > > still end up with potentially unnecessary clobbers for LSE code with this
> > > approach.
> > >
> > > Approach prior to this series:
> > >
> > >    BL 1 or NOP <- single alternative instruction
> > >    LSE
> > >    LSE
> > >    ...
> > >
> > > 1: LL/SC <- LL/SC fallback not inlined so reused
> > >    LL/SC
> > >    LL/SC
> > >    LL/SC
> > >
> > > Approach proposed by this series:
> > >
> > >    BL 1 or NOP <- single alternative instruction
> > >    LSE
> > >    LSE
> > >    BL 2
> > > 1: LL/SC <- inlined LL/SC and thus duplicated
> > >    LL/SC
> > >    LL/SC
> > >    LL/SC
> > > 2: ..
> > >
> > > Approach using alternative without braces:
> > >
> > >    LSE
> > >    LSE
> > >    NOP
> > >    NOP
> > >
> > > or
> > >
> > >    LL/SC <- inlined LL/SC and thus duplicated
> > >    LL/SC
> > >    LL/SC
> > >    LL/SC
> > >
> > > I guess there is a balance here between bloat and code optimisation.
> > >
> >
> >
> > So there are two separate questions here:
> > 1) whether or not we should merge the inline asm blocks so that the
> > compiler sees a single set of constraints and operands
> > 2) whether the LL/SC sequence should be inlined and/or duplicated.
> >
> > This approach appears to be based on the assumption that reserving one
> > or sometimes two additional registers for the LL/SC fallback has a
> > more severe impact on performance than the unconditional branch.
> > However, it seems to me that any call site that uses the atomics has
> > to deal with the possibility of either version being invoked, and so
> > the additional registers need to be freed up in any case. Or am I
> > missing something?
>
> Yes at compile time the compiler doesn't know which atomics path will
> be taken so code has to be generated for both (thus optimisation is
> limited). However due to this approach we no longer use hard-coded
> registers or restrict which/how registers can be used and therefore the
> compiler ought to have greater freedom to optimise.
>

Yes, I agree that is an improvement. But that doesn't require the
LL/SC and LSE asm sequences to be distinct.

> >
> > As for the duplication: a while ago, I suggested an approach [0] using
> > alternatives and asm subsections, which moved the duplicated LL/SC
> > fallbacks out of the hot path. This does not remove the bloat, but it
> > does mitigate its impact on I-cache efficiency when running on
> > hardware that does not require the fallbacks.#
>
> I've seen this. I guess its possible to incorporate subsections into the
> inline assembly in the __ll_sc_* functions of this series. If we wanted
> the ll/sc fallbacks not to be inlined, then I suppose we can put these
> functions in their own section to achieve the same goal.
>
> My toolchain knowledge is a limited here - but in order to use subsections
> you require a branch - in this case does the compiler optimise across the
> sub sections? If not then I guess there is no benefit to inlining the code
> in which case you may as well have a branch to a function (in its own
> section) and then you get both the icache gain and also avoid bloat. Does
> that make any sense?
>


Not entirely. A function call requires an additional register to be
preserved, and the bl and ret instructions are both indirect branches,
while subsections use direct unconditional branches only.

Another reason we want to get rid of the current approach (and the
reason I looked into it in the first place) is that we are introducing
hidden branches, which affects the reliability of backtraces and this
is an issue for livepatch.

> >
> >
> > [0] https://lore.kernel.org/linux-arm-kernel/20181113233923.20098-1-ard.biesheuvel@linaro.org/
> >
> >
> >
> > > >
> > > > > These changes add a small amount of bloat on defconfig according to
> > > > > bloat-o-meter:
> > > > >
> > > > > text:
> > > > >   add/remove: 1/108 grow/shrink: 3448/20 up/down: 272768/-4320 (268448)
> > > > >   Total: Before=12363112, After=12631560, chg +2.17%
> > > >
> > > > I'd say 2% is quite significant bloat.
> > >
> > > Thanks,
> > >
> > > Andrew Murray
> > >
> > > _______________________________________________
> > > linux-arm-kernel mailing list
> > > linux-arm-kernel@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
