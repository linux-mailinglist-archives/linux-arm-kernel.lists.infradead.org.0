Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B083B21814
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 14:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EhZI520Vljnb3SlrRsH6fNXWhjbQ+FZqVqs8xpweb8o=; b=LFt5+h2vnxGe62
	rczhTh441ZecKoRrJBthySNwYYcOY8qb4da7ybRvekA+eJYqWWL3VtWM/vZyvhfbrAfKadkTRkmmo
	+r2rnvSvVCFwRHMyBTpyS7UXOlAZrfYla/9EfdsiOzVG6PYJrI2AZclfhr7KYN4cDgBUCUKJerC0p
	8ufv0TG/mtbLpj9DiwqIpcq790Z4cJfXiG9g+DQxeAC5qu5NuOnwo42VG9vYs9VveTrYzBBCZl+vi
	Ly2FOOEJTlHTg2agX2r2CbSPTXf5s+cPiCWsuz9PLycaKS2sHGR79+h11xNjmXJerKeION76DvgVq
	D9YmNFES2RKIrRNe7m2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRbpn-0003JX-AG; Fri, 17 May 2019 12:19:35 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRbpf-0003J3-Jc
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 12:19:29 +0000
Received: by mail-io1-xd41.google.com with SMTP id p2so5322778iol.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 05:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+/iYcn4SxNxGPbwEDe0bNGQX6SeG6H2q/oSMviDjYEI=;
 b=Tbs1pxjjWYLhirdUNbxD4raimCUofnQRequE0SeHd9lrAixZt0S7P57dr3yjoA+Va8
 JEN3aO/nylLl4cy7S5gdTc8LKe0VTKfWTOuF/pNR+s3taBVKYXHjr3wFyR5yG81tz4Pr
 d+j7O8T6VDLp2YuDxnj25UnnJb8yWnw9afkYs4i6889qfrsVvpHEEA6ddbnLr2kvXP9Y
 yIielfM9fB7rFk/zuC+imuw7eYDR0DIBRPSFDX1+2rGoJMSMvJPX9ZhG9Oc2o59BYYJb
 hwS8gkj/EphFMxswm9KKwOvaNF7M/BmQB4xfcVfxaC7XpYFce5HF90s3/PC7oluYRbvI
 oZwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+/iYcn4SxNxGPbwEDe0bNGQX6SeG6H2q/oSMviDjYEI=;
 b=cfewsUP+pfCZhr6TbgXA3hsjXcNv53qhKmhuHhY/4U+S2wixg2XX57+2wME0GfF2sN
 mvfwMwdK66wSRBJGVCNReme+gzdT2J/EE3IbJ8Ro0YDPC9EfMCs+miTWxzoasHNEWuQV
 5LAPPYLGj1jaYVq81PrNTS2BQzM4Agz1bcjlXWDAR9Ug5UAW5Xm3Ao3jgUx5R3X5I8CG
 Rjw0qM9uhm0QRRF/SWvlilp1V8ZxjrrtXZHM82pvFLOL6EHF5amDafXP4ITaDAIWdtYw
 OpkC2ERdhYuYzn0Eu0wmlDSttVykZv/U8cPgL+XXdIgg5MoL02wHYR64NUJavh0Ctsu7
 u9Iw==
X-Gm-Message-State: APjAAAUTkdMr5t2myZ4Iwp6KjE76DvzBcnzHGh5wzv/7cxRNVXWVEAWa
 XWVg+HQjy/EcYOSNensRCU8nAOiI1vZ/R5V2w3xen20PvNewVw==
X-Google-Smtp-Source: APXvYqx4CYHFPHmlOYQUuCVWsbh6I5i7OymxssgKrHHIxyAyAR8CGFqJIJ5/EuuEAu1c+f0bfDqRwbijl6XzrLyKDOs=
X-Received: by 2002:a05:6602:2109:: with SMTP id
 x9mr9381717iox.128.1558095565345; 
 Fri, 17 May 2019 05:19:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190516155344.24060-1-andrew.murray@arm.com>
 <20190517072401.GI2623@hirez.programming.kicks-ass.net>
 <20190517100802.GS8268@e119886-lin.cambridge.arm.com>
 <20190517120522.GM2623@hirez.programming.kicks-ass.net>
In-Reply-To: <20190517120522.GM2623@hirez.programming.kicks-ass.net>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 17 May 2019 14:19:13 +0200
Message-ID: <CAKv+Gu8390GxxxzQb4phoCeGhNaXpHBSen-mEz1HUp7OAc=5vw@mail.gmail.com>
Subject: Re: [PATCH v1 0/5] arm64: avoid out-of-line ll/sc atomics
To: Peter Zijlstra <peterz@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_051927_709592_C2F08B9C 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Boqun Feng <boqun.feng@gmail.com>, Will Deacon <will.deacon@arm.com>,
 Ard.Biesheuvel@arm.com, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 May 2019 at 14:05, Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Fri, May 17, 2019 at 11:08:03AM +0100, Andrew Murray wrote:
>
> > I think the alternative solution (excuse the pun) that you are suggesting
> > is to put the body of the ll/sc or LSE code in the ALTERNATIVE oldinstr/newinstr
> > blocks (i.e. drop the fallback branches). However this still gives us some
> > bloat (but less than my current solution) because we're still now inlining the
> > larger fallback ll/sc whereas previously they were non-inline'd functions. We
> > still end up with potentially unnecessary clobbers for LSE code with this
> > Approach prior to this series:
>
> > Approach using alternative without braces:
> >
> >    LSE
> >    LSE
> >    NOP
> >    NOP
> >
> > or
> >
> >    LL/SC <- inlined LL/SC and thus duplicated
> >    LL/SC
> >    LL/SC
> >    LL/SC
>
> Yes that. And if you worry about the extra clobber for LL/SC, you could
> always stuck a few PUSH/POPs around the LL/SC block.

Patching in pushes and pops replaces a potential performance hit in
the LSE code with a guaranteed performance hit in the LL/SC code, and
you may end up pushing and popping dead registers. So it would be nice
to see some justification for disproportionately penalizing the LL/SC
code (which will be used on low end cores where stack accesses are
relatively expensive) relative to the LSE code, rather than assuming
that relieving the register pressure on the current hot paths will
result in a measurable performance improvement on LSE systems.

>  Although I'm not
> exactly sure where the x16,x17,x30 clobbers come from; then I look at
> the LL/SC code, there aren't any hard-coded regs in there.
>

The out of line LL/SC code is invoked as a function call, and so we
need to preserve x30 which contains the return value.

x16 and x17 are used by the PLT branching code, in case the module
invoking the atomics is too far away from the core kernel for an
ordinary relative branch.

> Also, the safe approach is to emit LL/SC as the default and only patch
> in LSE when you know the machine supports them.
>

Given that it is not only the safe approach, but the only working
approach, we are obviously already doing that both in the old and the
new version of the code.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
