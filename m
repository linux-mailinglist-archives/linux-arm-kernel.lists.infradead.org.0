Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9011A1C9871
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BGN2IarBiNlbi+tAN889fEpFdpiEzAHFy71o8sk9Qig=; b=F/ibcFZ7NuBbzq
	FhGOIXK/Iye1uA/V7nwBhiNdDZVXgSU6okVw0G3cBS9UXIl+B6k7vNoiVRR4zOUgIG76vpJTASOTc
	4L0WC0+Z9Xh9CWdp5HJLCpOIruPPMdYPeHN+RPlxp8mDBQlPjne0zXN8ellHRA2J6CxFpQYIEMCIG
	ehRe6oJL79ciJkuaJKisF+1Cv8FoWb1OE8/LhOWkjrX47WjHHG/iVLD7sdyXLk4pWmxw43C/my6vy
	w4Al00z2XoeP+FGcnt97KqUXWemCTAEg6tpC10ih2RX9tTZxUWFjTz3pnsybGMiCRZncJ2ZOsGvHa
	twH7HN5dJrzS5qyRI9vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkk4-0006ZY-Ms; Thu, 07 May 2020 17:55:28 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkjv-0006Ye-72
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:55:20 +0000
Received: by mail-vs1-xe42.google.com with SMTP id l25so3942209vso.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 10:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uMpPiOzBkmB6xDk0G09gFM1w6qjfq7TzpEbkKZl412U=;
 b=ctZLgrnwqXNuDKZfBewrgPa7S9oBwbfsreC5IqYfj+TV3WDWfF2zpx9noD1ZQmpcay
 1nmhPpFBg8oci0505IKX/tbvRrSrlBlDeJXbYWcDtjT+i6/LyYgsytArpVV7Nq4Ob5pK
 jIyJJKkWWJqJ8Yp5SlmCrBBxrcObxgXdHU5SUK2p+gVcR2OsnesX91fcGH/ewLbJoSJW
 5TwQZ071CKevDA9wpdlrh/fs1cKLOXMb0LrEKbBl7HicDVWl6CiquXwOSSDOA4PbU9qH
 BBuMEeNqHQZ58/Gz2r3X/wAYGQYabRKBTwDiltuAwkyvl6fuFqctVXDE4ZkJx0Zmlg7Y
 pcEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uMpPiOzBkmB6xDk0G09gFM1w6qjfq7TzpEbkKZl412U=;
 b=CNPToObsDu7/y3e2nLkT1+4vfD6lnzi/xsADTK0cWPNgKWbilrGCLBIiVdHlrcgn3+
 Z9itv0kxOK0kxILDCq5IJ8xGjjog6fb6wBX7gB0RcCDyg9HxfjtNn4dEVpuAO1F5HKgh
 KWZeULxBbR6voR45syUGLeJS/GY1lissYFIty3DbGZuU8ZuRZz9PHZb3zZJtFtVK2VEG
 qOVNSLiqkjUrsiBzHN47cu0Scjc9HlucqSKttaYMlT0bXledqkmLbA5Tw5t9EC8qRk9k
 +2K8bPLP5U+9tK69QBgYiE6yJgo2f5EN8p/CUvGCcxIMRqn9EqR1xetxb+tIvxhE8Syi
 80fA==
X-Gm-Message-State: AGi0PuZZSOeRRwcfEsX9t8xSzmP0HDl1nRTmaUoETW8l9JNfm3xxdADF
 NTI5NajoTImty29sRvBshoftY/4jA/HkwiLkYMEyoA==
X-Google-Smtp-Source: APiQypIy8/Ll1LEVQXvbrciaSGx863r5hs+OT9SJl6mwG/9P7UKda5hGBkBjLi3K/cB3DEqXVG6vkv1vZENmeq9W7Dc=
X-Received: by 2002:a67:7fd1:: with SMTP id
 a200mr13864008vsd.114.1588874113601; 
 Thu, 07 May 2020 10:55:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200325174001.234803-1-pcc@google.com>
 <20200327191915.257116-1-pcc@google.com>
 <20200504101930.GG30377@arm.com>
In-Reply-To: <20200504101930.GG30377@arm.com>
From: Peter Collingbourne <pcc@google.com>
Date: Thu, 7 May 2020 10:55:02 -0700
Message-ID: <CAMn1gO4j3T5HjhZ32-mtMoXoKJkUKPxG_FWVdAFx6nOCOw3r_A@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: Expose original FAR_EL1 value in sigcontext
To: Dave Martin <Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_105519_283791_2EF714C5 
X-CRM114-Status: GOOD (  35.29  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kostya Serebryany <kcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Evgenii Stepanov <eugenis@google.com>, Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 4, 2020 at 3:19 AM Dave Martin <Dave.Martin@arm.com> wrote:
>
> On Fri, Mar 27, 2020 at 12:19:15PM -0700, Peter Collingbourne wrote:
> > The kernel currently clears the tag bits (i.e. bits 56-63) in the fault
> > address exposed via siginfo.si_addr and sigcontext.fault_address. However,
> > the tag bits may be needed by tools in order to accurately diagnose
> > memory errors, such as HWASan [1] or future tools based on the Memory
> > Tagging Extension (MTE).
> >
> > We should not stop clearing these bits in the existing fault address
> > fields, because there may be existing userspace applications that are
> > expecting the tag bits to be cleared. Instead, create a far_context in
> > sigcontext (similar to the existing esr_context), and store the original
> > value of FAR_EL1 (including the tag bits) there.
> >
> > [1] http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html
> >
> > Signed-off-by: Peter Collingbourne <pcc@google.com>
> > ---
> > v3:
> > - add documentation to tagged-pointers.rst
> > - update comments in sigcontext.h
> >
> > v2:
> > - revert changes to hw_breakpoint.c
> > - rename set_thread_esr to set_thread_far_esr
> >
> >  Documentation/arm64/tagged-pointers.rst  | 17 +++++----
> >  arch/arm64/include/asm/exception.h       |  2 +-
> >  arch/arm64/include/asm/processor.h       |  2 +-
> >  arch/arm64/include/uapi/asm/sigcontext.h | 21 +++++++----
> >  arch/arm64/kernel/entry-common.c         |  2 --
> >  arch/arm64/kernel/signal.c               | 20 ++++++++++-
> >  arch/arm64/mm/fault.c                    | 45 ++++++++++++++----------
> >  7 files changed, 74 insertions(+), 35 deletions(-)
>
> [...]
>
> > diff --git a/arch/arm64/include/uapi/asm/sigcontext.h b/arch/arm64/include/uapi/asm/sigcontext.h
> > index 8b0ebce92427..6782394633cb 100644
> > --- a/arch/arm64/include/uapi/asm/sigcontext.h
> > +++ b/arch/arm64/include/uapi/asm/sigcontext.h
> > @@ -44,11 +44,12 @@ struct sigcontext {
> >   *
> >   *   0x210           fpsimd_context
> >   *    0x10           esr_context
> > + *    0x10           far_context
> >   *   0x8a0           sve_context (vl <= 64) (optional)
> >   *    0x20           extra_context (optional)
> >   *    0x10           terminator (null _aarch64_ctx)
> >   *
> > - *   0x510           (reserved for future allocation)
> > + *   0x500           (reserved for future allocation)
> >   *
> >   * New records that can exceed this space need to be opt-in for userspace, so
> >   * that an expanded signal frame is not generated unexpectedly.  The mechanism
> > @@ -94,17 +95,25 @@ struct esr_context {
> >       __u64 esr;
> >  };
> >
> > +/* FAR_EL1 context */
> > +#define FAR_MAGIC    0x46415201
> > +
> > +struct far_context {
> > +     struct _aarch64_ctx head;
> > +     __u64 far;
> > +};
> > +
> >  /*
> >   * extra_context: describes extra space in the signal frame for
> >   * additional structures that don't fit in sigcontext.__reserved[].
> >   *
> >   * Note:
> >   *
> > - * 1) fpsimd_context, esr_context and extra_context must be placed in
> > - * sigcontext.__reserved[] if present.  They cannot be placed in the
> > - * extra space.  Any other record can be placed either in the extra
> > - * space or in sigcontext.__reserved[], unless otherwise specified in
> > - * this file.
> > + * 1) fpsimd_context, esr_context, far_context and extra_context must be
> > + * placed in sigcontext.__reserved[] if present.  They cannot be placed
> > + * in the extra space.  Any other record can be placed either in the
> > + * extra space or in sigcontext.__reserved[], unless otherwise specified
> > + * in this file.
>
> This is for backwards compatibility only.  We don't need this constraint
> for any new field, so you can probably leave the paragraph as-is.
>
> Removing this would mean constraint would mean that userspace must be
> prepared to traverse extra_context when looking for far_context.  But
> really we want modern userspace to do this anyway, since it reduces
> backwards compatibilty worries when adding more new records in the
> future.

My original reason for updating this comment was that I figured that
this record was small enough that we could just always include it in
__reserved.

But thinking about this a bit more, it doesn't seem that just wanting
userspace to read extra_context will guarantee that it will do so. In
practice, it would be easy to write userspace code that works right
now but doesn't read extra_context correctly (either because
extra_context wasn't considered at all, or because the code purporting
to read the record from extra_context contains a latent bug because it
wasn't exercised). Since we may be practically constrained from moving
the record anyway, we might as well document it and allow the
userspace code to be a little simpler.

I guess one alternative is that we always place this record in
extra_context, which would force userspace to read it correctly. That
has something of the opposite problem (userspace code could be written
to only expect the record in extra_context), but at least we're less
constrained there, and it's more likely that the code would be parsing
__reserved correctly since it would need to do so in order to find
extra_context.

Anyway, I've reverted the comment change for now in v4, but let me
know what you think.


Peter

>
>
> The nasty loop in parse_user_sigframe() allows some flexibility
> regarding the order of records, but prior to this patch there is no
> record that can be actually be moved, due to other backwards
> compatibility constraints -- so the flexibility isn't used today.  I'd
> like to avoid reorderability creeping in, so that we can get rid of the
> loop.
>
> So, mandating that records must be in a consistent order to sigcontext.h
> could be helpful.  inserting new records in the middle should be fine,
> so long as there is no shuffling.
>
> I'm not sure this patch needs to do anything extra for that: perhaps we
> can leave this no-shuffling rule implicit for now (?)
>
> People already get shouted at for needslessly noisy diffs, so there is a
> strong disincentive to shuffle existing headers in any case...
>
> [...]
>
> Cheers
> ---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
