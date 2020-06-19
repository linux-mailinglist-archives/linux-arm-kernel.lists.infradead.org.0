Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E50D1FFFF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 03:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAZSjKlMx7uJnm1Nr2dJZ6dWe2oAQ6P/1M6G6naAd/E=; b=IILp1V+YDgEAiv
	AvOlGbxFC7ZpjaGqZap7kHO0pg6tVYg++xRS9ptYkDiYYkaydXldQ7O+mRCauGLyv77ZP9MZb47rL
	cEAiKJUDde+UDVatXGo26HK4l6rqBWf4ystOfLuDWn3ANOup/ubEkTt2A7ygQut9GkpugacgsoBPm
	05EMEavibioE3ajmKfFUJur2vtwS66TA/PxLGSLpM4+urFQZx3wOJdfdzOvioT9b4ZWx2Wxn2AlaF
	QP6mQrb0WHZg4wBnbRd5x6Qfx9M0D+fi5cUCqoqQso6s/kG9Kj3VIhX29v0zvhmLkir1qKl/QQA2r
	dQ6qLQSiHsysvSO/HHPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm6FX-0007kh-0j; Fri, 19 Jun 2020 01:55:23 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm6FM-0007jA-E6
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 01:55:14 +0000
X-UUID: a3bb5afe98324b3aa62b8a5dfc5be409-20200618
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=eSIoLyaJEFkINxafFPsx03C8ForADV0MP2v7hBefnU4=; 
 b=YSqcfWE73wFZ8YSKTFDeIGjJJ1UHFXicZar1Ymvmsd/Xio3KddIHfo8pbZEQ1e1JFCcEe2ix8GIf9q4uiZwmK2qvJ4nHNv3zfqiA6LDxvaluGjFoscorshvJNIShs1IXpEUnGAl3YhgyljfO4kHMkrYXLhqxUYV3Pyw37xpr7bc=;
X-UUID: a3bb5afe98324b3aa62b8a5dfc5be409-20200618
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 999691455; Thu, 18 Jun 2020 17:55:09 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 18:55:07 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 09:54:58 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 19 Jun 2020 09:55:04 +0800
Message-ID: <1592531704.23014.1.camel@mtkswgap22>
Subject: Re: [PATCH] Fix unwind_frame for clang-built kernels
From: Miles Chen <miles.chen@mediatek.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 19 Jun 2020 09:55:04 +0800
In-Reply-To: <CAKwvOdkibnsr+z8-pXG1RjOEcrGQ6HQ0=PM-B9p-i85_BKS0cQ@mail.gmail.com>
References: <20200616223633.73971-1-nhuck@google.com>
 <CAKwvOdkibnsr+z8-pXG1RjOEcrGQ6HQ0=PM-B9p-i85_BKS0cQ@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 7E2F102F10D549D6E1CCFDFA8195D3DEE40C7CE5360F0C642E1E211402486FC02000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_185512_485499_1593CD1D 
X-CRM114-Status: GOOD (  30.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 LKML <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sedat Dilek <sedat.dilek@gmail.com>, Kristof Beyls <Kristof.Beyls@arm.com>,
 Nathan Huckleberry <nhuck@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-06-18 at 13:22 -0700, Nick Desaulniers wrote:
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

Thanks for the patch.

Tested-by: Miles Chen <miles.chen@mediatek.com>

> 
> This would be useful for us to have in stable; otherwise we'll have to
> carry out of tree in Android and CrOS, which I'd rather not do.  Via
> Documentation/process/stable-kernel-rules.rst, if you add this tag to
> V2, that will greatly simplify submitting this to stable:
> Cc: stable@vger.kernel.org
> 
> Miles also showed me the behavior of this patch for different kernel
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
