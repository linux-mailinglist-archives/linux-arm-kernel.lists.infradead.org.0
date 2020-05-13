Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDBF1D1CC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 20:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bsBEPV9vkJc/pd95kHRZ07i1OfIP5mrYtswzm4eXM1c=; b=ujEHlLT2l1wz+e
	TzDNbEe5grx2/r0GpNABZ4n3HSwKjvnB515RhsAfdDGfiOqKWc3QSoUdHKa98pcoKMCKhhn80ZroU
	1xkCgrVTLK2bfUgmsUiG6rYku4Z4nXAwD3XSek/MJoHf4X8N3aVjgVBQIT2GhOUrIGE5ihLxOdNul
	vwdsFlZX9lkoUKj6ZqXV+CPOrS6xygWrHqWIMgLP9Ru/h/VlIQMToFwGDD+Irw+zEtogK6u7GzGog
	Mfrleh+jzzPPic6Amo6bkOSdBS0nUO940oNsobYFh0tBFvBZbkmnQU3IhD7sWpGTJMBLkv6zaFRlA
	5hPFZE5nlvu5gXqiNyrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYvgJ-0002jo-NF; Wed, 13 May 2020 18:00:35 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYvg8-0002dD-3U
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 18:00:26 +0000
Received: by mail-vs1-xe42.google.com with SMTP id v26so250026vsa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 11:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PKUw6rSWIgdGa/81xJcgmrbbOsZc5Hn5SM/i8b94cc4=;
 b=Dab7+W9S6kTbBqMlwDnOB5rj/oTIPtMMmrDbb6PZRm5x/wlBPIdzG5kS1oGB/KAnoj
 9koOI4GhLCmBAm+wKNt7civWAM9Gi8irq3A57gJ1W5to85EZwgGJxj0YXb4XhEADrkrn
 +0pSlUXWFA/DrlNaBZwcccegMLDQbzznCkUHP3HM825PRejyy3DYopyNGtcG9m7Ppo3h
 VGeNInXixnB3Ik1EOmg1TGyyY6ZcsFO+GeSqiK5B6nLI5U4MXd0s9r580ylM3VU/6yw2
 qUdm4Xq1ct6rh57w6uy6BpNhqDkseaMRdFbNT/ei2EywJUA9Ho2o0Pjzx79U/wq8HdGJ
 PKGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PKUw6rSWIgdGa/81xJcgmrbbOsZc5Hn5SM/i8b94cc4=;
 b=gyhKdYt0XBVDRf6Ti55Hpyt5Dfv5mZt7rpeYbrZH8A8gYpxWh3doaVX0JmGsIbJvxq
 bBZAKIgSTy2BHbMNHG6hTYZgGD9zXp5Z/Erf+BfNrCOE+Rn0PM7sSRrCi7Aamz+UAsLC
 0/M5GG1G/w37xbTSIiF6X1E73EMCv3UrV5FqwFMEgFPrDuwe5+Ir1UsShCXX9zcfcu6h
 wi3xfhG7AoYcQD6sxBaB/AAq8WIHTWWzy420dYTadYhqcwVYljd+/cKVoCSRsaL/qAf0
 EHS3eub3Ue2AVb2e/iPNCHbLSqsR/hz1rnevB6uGRN4M153PhIYEh7cn+48ECUs2snZL
 LjtQ==
X-Gm-Message-State: AOAM530mEK/+lTPem5siakyqBpU/0BqRM9cgKq9tAhq82FaP9IrwzO8/
 UWPmrCKFQmmlPpaHXXSCfWWWD7VmDT6SQD1hx4yY8w==
X-Google-Smtp-Source: ABdhPJzhoyXI7BksG0ZFRoiHQt0k81P7xFc2GwsUiuDMdeAZS4XrxfOcmPo9pjCRdsfO6jBDIyUTNmTAeylYCSW2UAw=
X-Received: by 2002:a67:ef4a:: with SMTP id k10mr300817vsr.20.1589392819898;
 Wed, 13 May 2020 11:00:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200325174001.234803-1-pcc@google.com>
 <20200327191915.257116-1-pcc@google.com>
 <20200504101930.GG30377@arm.com>
 <CAMn1gO4j3T5HjhZ32-mtMoXoKJkUKPxG_FWVdAFx6nOCOw3r_A@mail.gmail.com>
 <20200513172745.GX21779@arm.com>
In-Reply-To: <20200513172745.GX21779@arm.com>
From: Peter Collingbourne <pcc@google.com>
Date: Wed, 13 May 2020 11:00:08 -0700
Message-ID: <CAMn1gO5GvTjUwFZh=JqWw6Xfx+TkaT7zWNb=ykSzjrVApYcuqg@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: Expose original FAR_EL1 value in sigcontext
To: Dave Martin <Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_110024_176009_D87DE777 
X-CRM114-Status: GOOD (  38.59  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
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
 Evgenii Stepanov <eugenis@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 10:27 AM Dave Martin <Dave.Martin@arm.com> wrote:
>
> On Thu, May 07, 2020 at 10:55:02AM -0700, Peter Collingbourne wrote:
> > On Mon, May 4, 2020 at 3:19 AM Dave Martin <Dave.Martin@arm.com> wrote:
> > >
> > > On Fri, Mar 27, 2020 at 12:19:15PM -0700, Peter Collingbourne wrote:
> > > > The kernel currently clears the tag bits (i.e. bits 56-63) in the fault
> > > > address exposed via siginfo.si_addr and sigcontext.fault_address. However,
> > > > the tag bits may be needed by tools in order to accurately diagnose
> > > > memory errors, such as HWASan [1] or future tools based on the Memory
> > > > Tagging Extension (MTE).
> > > >
> > > > We should not stop clearing these bits in the existing fault address
> > > > fields, because there may be existing userspace applications that are
> > > > expecting the tag bits to be cleared. Instead, create a far_context in
> > > > sigcontext (similar to the existing esr_context), and store the original
> > > > value of FAR_EL1 (including the tag bits) there.
> > > >
> > > > [1] http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html
> > > >
> > > > Signed-off-by: Peter Collingbourne <pcc@google.com>
> > > > ---
> > > > v3:
> > > > - add documentation to tagged-pointers.rst
> > > > - update comments in sigcontext.h
> > > >
> > > > v2:
> > > > - revert changes to hw_breakpoint.c
> > > > - rename set_thread_esr to set_thread_far_esr
> > > >
> > > >  Documentation/arm64/tagged-pointers.rst  | 17 +++++----
> > > >  arch/arm64/include/asm/exception.h       |  2 +-
> > > >  arch/arm64/include/asm/processor.h       |  2 +-
> > > >  arch/arm64/include/uapi/asm/sigcontext.h | 21 +++++++----
> > > >  arch/arm64/kernel/entry-common.c         |  2 --
> > > >  arch/arm64/kernel/signal.c               | 20 ++++++++++-
> > > >  arch/arm64/mm/fault.c                    | 45 ++++++++++++++----------
> > > >  7 files changed, 74 insertions(+), 35 deletions(-)
> > >
> > > [...]
> > >
> > > > diff --git a/arch/arm64/include/uapi/asm/sigcontext.h b/arch/arm64/include/uapi/asm/sigcontext.h
> > > > index 8b0ebce92427..6782394633cb 100644
> > > > --- a/arch/arm64/include/uapi/asm/sigcontext.h
> > > > +++ b/arch/arm64/include/uapi/asm/sigcontext.h
> > > > @@ -44,11 +44,12 @@ struct sigcontext {
> > > >   *
> > > >   *   0x210           fpsimd_context
> > > >   *    0x10           esr_context
> > > > + *    0x10           far_context
> > > >   *   0x8a0           sve_context (vl <= 64) (optional)
> > > >   *    0x20           extra_context (optional)
> > > >   *    0x10           terminator (null _aarch64_ctx)
> > > >   *
> > > > - *   0x510           (reserved for future allocation)
> > > > + *   0x500           (reserved for future allocation)
> > > >   *
> > > >   * New records that can exceed this space need to be opt-in for userspace, so
> > > >   * that an expanded signal frame is not generated unexpectedly.  The mechanism
> > > > @@ -94,17 +95,25 @@ struct esr_context {
> > > >       __u64 esr;
> > > >  };
> > > >
> > > > +/* FAR_EL1 context */
> > > > +#define FAR_MAGIC    0x46415201
> > > > +
> > > > +struct far_context {
> > > > +     struct _aarch64_ctx head;
> > > > +     __u64 far;
> > > > +};
> > > > +
> > > >  /*
> > > >   * extra_context: describes extra space in the signal frame for
> > > >   * additional structures that don't fit in sigcontext.__reserved[].
> > > >   *
> > > >   * Note:
> > > >   *
> > > > - * 1) fpsimd_context, esr_context and extra_context must be placed in
> > > > - * sigcontext.__reserved[] if present.  They cannot be placed in the
> > > > - * extra space.  Any other record can be placed either in the extra
> > > > - * space or in sigcontext.__reserved[], unless otherwise specified in
> > > > - * this file.
> > > > + * 1) fpsimd_context, esr_context, far_context and extra_context must be
> > > > + * placed in sigcontext.__reserved[] if present.  They cannot be placed
> > > > + * in the extra space.  Any other record can be placed either in the
> > > > + * extra space or in sigcontext.__reserved[], unless otherwise specified
> > > > + * in this file.
> > >
> > > This is for backwards compatibility only.  We don't need this constraint
> > > for any new field, so you can probably leave the paragraph as-is.
> > >
> > > Removing this would mean constraint would mean that userspace must be
> > > prepared to traverse extra_context when looking for far_context.  But
> > > really we want modern userspace to do this anyway, since it reduces
> > > backwards compatibilty worries when adding more new records in the
> > > future.
> >
> > My original reason for updating this comment was that I figured that
> > this record was small enough that we could just always include it in
> > __reserved.
> >
> > But thinking about this a bit more, it doesn't seem that just wanting
> > userspace to read extra_context will guarantee that it will do so. In
> > practice, it would be easy to write userspace code that works right
> > now but doesn't read extra_context correctly (either because
> > extra_context wasn't considered at all, or because the code purporting
> > to read the record from extra_context contains a latent bug because it
> > wasn't exercised). Since we may be practically constrained from moving
> > the record anyway, we might as well document it and allow the
> > userspace code to be a little simpler.
> >
> > I guess one alternative is that we always place this record in
> > extra_context, which would force userspace to read it correctly. That
> > has something of the opposite problem (userspace code could be written
> > to only expect the record in extra_context), but at least we're less
> > constrained there, and it's more likely that the code would be parsing
> > __reserved correctly since it would need to do so in order to find
> > extra_context.
> >
> > Anyway, I've reverted the comment change for now in v4, but let me
> > know what you think.
>
> Apologies for the delay in responding -- I think it does make sense to
> reserve space in __reserved[] for the new record, the the location you
> suggested for it is sensible.
>
> __reserved[] is a scarce resource, and should only be burned on "small"
> records, but far_context is small.
>
>
> here's another reason too, which is that we don't want to needlessly
> block new software from using this field without allocating larger
> stacks -- not least because they just won't, and the problem won't
> bite them until much later.
>
>
> Hope that helps clarify things.

Thanks, that makes sense. I will send a v6 with the comment brought back.

Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
