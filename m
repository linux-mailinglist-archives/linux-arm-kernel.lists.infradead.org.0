Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7CA1FFC7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 22:29:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AxSHq6utPDwOVut7hMK9wpVr0XpE23ArsZqPhGNSOcY=; b=aCL4DY85GxZup2
	+8R1YcR327OHpPVivMu/XjN2R+fj6xzEdFAFglZrAwExAnWv2tkwnjZ6C2Xrc7r8IyBW7eSKK/swx
	x5whey1NgV1U2jVSTowBNRT5mDZKv3hEuUOUmU9qtzBKMF/6bqT7eMRWUCu+T3m48vR2yRs2KE4qI
	VcbKuWMCsoq/B2GLQZ+TqnLYSS9o5kC9JWAJwGMdoo3YFTJABgQiOqgmPq6tdyQwmzVcIW0vBeKaO
	ZAS/HtNA5MhkpjuP3M7xtIHw02UgSltT1fAYyYWytX7iKRjgHg0ezEtIFVQ1ztO4fKlckSM5vXuVs
	WXvN+wfnT3SDxZYmGOKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm1A3-0001R0-Kr; Thu, 18 Jun 2020 20:29:23 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm19t-0001Qd-Vq
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 20:29:15 +0000
Received: by mail-pl1-x644.google.com with SMTP id g12so2925711pll.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 13:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ApmvY4NUh4oE4rGYTLrhVzjNJ6MG1aD54ijaoWc+qQQ=;
 b=Mg8xt2oOvSVJzdadsLPdjjKqP24SfmArTOufNfznQyUZcY1XPsLBbTgvCVJWSX23t1
 zlpTrHNr+laRY2ihyOiL5y0qWnyU7iOidLPFb/3RVtE/52HkV3ziLN6ooNxyhjYYMp2o
 ZYgnU5Uwv+1P8BufZc/VcW8TQCVa4h83/NtTx/fWssW0TjsgWTMlBq5/y7r9eRSjrACh
 MKajyjltSPlhfBv9mvwMLTAzBiGi1tA1bqWc5jNwv8QjQJHVZj9wOOXPVL5TN+rTEoJa
 LurVgqBnek49Ec5FNrnxuD74mbVSwh3av+KXedrr52YLkEdMb2Fe01DerkWmloglOOAc
 NH0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ApmvY4NUh4oE4rGYTLrhVzjNJ6MG1aD54ijaoWc+qQQ=;
 b=YqUDf7ckg2VBwBo7ti1dJYgu+elo2olWWdcMwd0xQR4QBtXySQJ46M8jTCsp8PBt5M
 VRzSMXH/TeHFV7DE9mKRyfInqp7VD+oakmCjmYfBb08MWZ4SlfnO81eGhNLMj2d5YhLd
 NEuGwHkFifOPIFzPVx2EoiRQf7qCn5xPz+wYRJJIOkeOs52t+JAVtz4gj8tGxYyNSNTs
 50plTN7SgZ/WR6gDhajvUfXOIXpx6v+Lf8H66usSPjeDNvwKmzq3HcrBsMss1dkjzfyQ
 4/1nBuQL3tKN0t0F6MkZ+L1jEZQqBakKIaHR+/crNm/jI7rgDDw+NtdDifX+mP0jmMso
 jguA==
X-Gm-Message-State: AOAM533W2K9pq5qX8aIeV8y/jIE0d/Pxq74EFp/Ft8musNCRjbIXo2Ax
 WrNY+gh1Humi+zOjVX9ETT5BXD4/z4wkZoFX/HiuVw==
X-Google-Smtp-Source: ABdhPJxn8QzmdoT0TNDCjswW3rDFhlLfydkfXBmvsim9YT+1fYy25hVUP+vlnFIOHcfQ9eYJZXNAFT0x7ZPJ/54NoE4=
X-Received: by 2002:a17:90a:e2c4:: with SMTP id
 fr4mr127063pjb.32.1592512153032; 
 Thu, 18 Jun 2020 13:29:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200616223633.73971-1-nhuck@google.com>
 <CAKwvOdkibnsr+z8-pXG1RjOEcrGQ6HQ0=PM-B9p-i85_BKS0cQ@mail.gmail.com>
In-Reply-To: <CAKwvOdkibnsr+z8-pXG1RjOEcrGQ6HQ0=PM-B9p-i85_BKS0cQ@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 18 Jun 2020 13:29:01 -0700
Message-ID: <CAKwvOd=rTPS6xgfV7kLsuA-_=ghqE9HWu=6HyTFOMd_-THWaCg@mail.gmail.com>
Subject: Re: [PATCH] Fix unwind_frame for clang-built kernels
To: Nathan Huckleberry <nhuck@google.com>,
 =?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_132914_043269_43FA9DB4 
X-CRM114-Status: GOOD (  31.05  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Russell King <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sedat Dilek <sedat.dilek@gmail.com>, Kristof Beyls <Kristof.Beyls@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 1:22 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Jun 16, 2020 at 3:36 PM 'Nathan Huckleberry' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > Since clang does not push pc and sp in function prologues, the current
> > implementation of unwind_frame does not work. By using the previous
> > frame's lr/fp instead of saved pc/sp we get valid unwinds on clang-built
> > kernels.
> >
> > The bounds check on next frame pointer must be changed as well since
> > there are 8 less bytes between frames.
> >
> > This fixes /proc/<pid>/stack.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/912
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
>
> Thanks for the patch, Nathan!  When I looked into this, I found the
> latest ARM AAPCS [0] specifically says (with `it` referring to `a
> platform`: "It may permit the frame pointer register to be used as a
> general-purpose callee-saved register, but provide a platform-specific
> mechanism for external agents to reliably locate the chain of frame
> records."   While it's good that's acknowledged in the documentation,
> the current wording is relaxed in order to not force current
> implementations to converge.  This has the unfortunate side effect of
> making finding the frame pointer toolchain dependendent, hence this
> patch and your previous commit 6dc5fd93b2f1 ("ARM: 8900/1:
> UNWINDER_FRAME_POINTER implementation for Clang").  Being more
> specific in the documentation would force at least one implementation
> to change, and I think that would also imply an ABI break.  So I can
> see it both ways, though I still would prefer that the language pin
> this down, even if we had to change LLVM.  Just providing additional
> context for folks on the thread.
>
> This should also have a reported by tag from Miles, in v2.
>
> Reported-by: Miles Chen <Miles.Chen@mediatek.com>
>
> Miles mentioned to me that he tested it, but maybe Miles can confirm
> that publicly on-list via an explicit Tested-by: tag?
>
> This would be useful for us to have in stable; otherwise we'll have to
> carry out of tree in Android and CrOS, which I'd rather not do.  Via
> Documentation/process/stable-kernel-rules.rst, if you add this tag to
> V2, that will greatly simplify submitting this to stable:
> Cc: stable@vger.kernel.org
>
> Miles also showed me the behavior of this patch for different kernel

s/this patch/this function before this patch is applied/

> versions, which varies anywhere from empty or single entry traces to
> panics, so this is pretty important that this works for Clang builds.
>
> [0] https://static.docs.arm.com/ihi0042/i/aapcs32.pdf
>
> > ---
> >  arch/arm/kernel/stacktrace.c | 24 ++++++++++++++++++++++++
> >  1 file changed, 24 insertions(+)
> >
> > diff --git a/arch/arm/kernel/stacktrace.c b/arch/arm/kernel/stacktrace.c
> > index cc726afea023..76ea4178a55c 100644
> > --- a/arch/arm/kernel/stacktrace.c
> > +++ b/arch/arm/kernel/stacktrace.c
> > @@ -22,6 +22,19 @@
> >   * A simple function epilogue looks like this:
> >   *     ldm     sp, {fp, sp, pc}
> >   *
> > + * When compiled with clang, pc and sp are not pushed. A simple function
> > + * prologue looks like this when built with clang:
> > + *
> > + *     stmdb   {..., fp, lr}
> > + *     add     fp, sp, #x
> > + *     sub     sp, sp, #y
> > + *
> > + * A simple function epilogue looks like this when built with clang:
> > + *
> > + *     sub     sp, fp, #x
> > + *     ldm     {..., fp, pc}
> > + *
> > + *
> >   * Note that with framepointer enabled, even the leaf functions have the same
> >   * prologue and epilogue, therefore we can ignore the LR value in this case.
> >   */
> > @@ -34,6 +47,16 @@ int notrace unwind_frame(struct stackframe *frame)
> >         low = frame->sp;
> >         high = ALIGN(low, THREAD_SIZE);
> >
> > +#ifdef CONFIG_CC_IS_CLANG
> > +       /* check current frame pointer is within bounds */
> > +       if (fp < low + 4 || fp > high - 4)
>
> The patch LGTM; maybe Russell or Catalin could triple check this
> bounds check?  Assuming there's no issue, you can include on a v2 my
> reviewed by:
>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> I'd probably wait the remainder of a week before sending a v2 to
> collect additional feedback.  Thank you again.
>
> > +               return -EINVAL;
> > +
> > +       frame->sp = frame->fp;
> > +       frame->fp = *(unsigned long *)(fp);
> > +       frame->pc = frame->lr;
> > +       frame->lr = *(unsigned long *)(fp + 4);
> > +#else
> >         /* check current frame pointer is within bounds */
> >         if (fp < low + 12 || fp > high - 4)
> >                 return -EINVAL;
> > @@ -42,6 +65,7 @@ int notrace unwind_frame(struct stackframe *frame)
> >         frame->fp = *(unsigned long *)(fp - 12);
> >         frame->sp = *(unsigned long *)(fp - 8);
> >         frame->pc = *(unsigned long *)(fp - 4);
> > +#endif
> >
> >         return 0;
> >  }
> > --
> > 2.27.0.290.gba653c62da-goog
> >
> > --
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
