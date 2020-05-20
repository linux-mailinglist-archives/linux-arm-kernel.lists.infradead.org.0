Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 508F11DB930
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 18:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LpMI1S1daGz9PkQww9sySg/EiDd4DpPHSQiso8ppuPU=; b=g+L9BDpJJD3LPT
	tMDEK/LycYUkVfFBc5nOEzKoSdo0wtAAygO4mC+cZpxyO+Lq+zTvjNwfZisMl9Rmz9AyPJzvaIh6x
	MPYyCsMuAL4q562gN3ypIcfjWew4SQIU74mxJWAWvse8O2zi1IKsAvOagcHU88fCFpc7lWVsZP0bT
	CQaAb/CbwiaWQac1iBlwVF3bxhzdwvYoT3kWR3tODqpo0lfH5qWZw3VJTTnLWIsojzR7jgIo53IrB
	bFw5P2XOcBtdozGrsLuDsgUtZi1sqp+dyrirIaNp5VG4zYUfciB3vIHy/GWqdf3xXDBAd6sMYDE3J
	4vuHHhs+FHiVHQS5vy+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbRS2-0002PP-77; Wed, 20 May 2020 16:20:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbRRi-0002Kq-IZ
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 16:19:56 +0000
Received: by mail-pf1-x443.google.com with SMTP id x15so1810747pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 09:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IEObS9qWpB+AbLMm/kvK2cUqzqqcGuDXnjK3PVfCHfw=;
 b=E5NWmiHTF69FCRCanpQg3vvwn77xAZQe37Qqa97tVqJ7EW1mWzQnuniaiQS5wfs52J
 t3ZDATQoFWFgp+tLwqv42TtkQ2AaCRqLPuHZ29qmkEjlMg+ieErC5vFQARwqYt2+jwPg
 g2SLkJDMvvl1FUWw/dOZyl/ReK0Wlg/ttpbgyYGLoidQBxLKS1RGjhsQkTp0eAGGF84g
 ZQ93vbDCFo3rRTF/khonwtOZ1073xk5UVjmcawiQ3KW80az0ffqE+hg/N/hR3llepr9q
 599W3VmVPLyztO1ajy3OGXVPNWjuL55Bq3Q7LfloiJ3FNZI6JGTTS8Cb2EUs1UNH0qCy
 6XpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IEObS9qWpB+AbLMm/kvK2cUqzqqcGuDXnjK3PVfCHfw=;
 b=RGlzo2dratE/atbBl7QpqVpzSNVI6dbe2I4/E3kthHrXRhNox78VxAmsB8pMdzOi/a
 ppErypy5LcO9THp8qVRUbIujY4BAnf8skbPppm+5+gM85p1/suwBn8NeDl7xunC4wJme
 o988FwyzvpIKDsesFAYMSIWAGR6ZuSPOAbE5dyccTGwzlBK+7JxfB/LClp89c6zitc05
 MUYfy4qD68ItuRLhbhpdIP232gsSzg5OeNle3tidVtCH4yCmimASXEhpLyW2z/Qxph18
 WSmrm3fbnchAcaMnO5ZSEeu6a860o6ABcFTy+ABhUeOfaXJMXgDa7CI8DsS3L+vngeAH
 ZklQ==
X-Gm-Message-State: AOAM533S8yTsm167OkrgC3px4Cbgy5Emq3YR9myqJKJG7TPhTUfyOKNZ
 Xd6XSTPxGtbGoOxzE+Qniwc2qLcYxvzG7VL9fcxT0w==
X-Google-Smtp-Source: ABdhPJzcB8MgWy8rQzlYICWijN1J82PlbtinkDB6zPpjpwuiEJi9vwrndwHoCqLKREaDiwXa1ExDTCH+Bzs4TmPKCb8=
X-Received: by 2002:a63:4f09:: with SMTP id d9mr4681983pgb.10.1589991591807;
 Wed, 20 May 2020 09:19:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200519220923.1601303-1-arnd@arndb.de>
 <CAKwvOdmH6bMJHzxSs2mVN=P5BBYjYrDs13-oq-Qq+S4ykHSYvA@mail.gmail.com>
 <CAKwvOd=EphyUWNOZ59FkrfDvDwHHU2yrXW+KML-w_6mHowK=QA@mail.gmail.com>
 <20200520083631.GJ27289@arm.com>
In-Reply-To: <20200520083631.GJ27289@arm.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 20 May 2020 09:19:40 -0700
Message-ID: <CAKwvOd=Ui8TdnCmkDLJz85zzkFtMDsmAFWPS1MYUFL8JffZhtw@mail.gmail.com>
Subject: Re: [PATCH] ARM: pass -msoft-float to gcc earlier
To: Szabolcs Nagy <szabolcs.nagy@arm.com>, Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_091954_631854_2074E7E8 
X-CRM114-Status: GOOD (  26.81  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, nd@arm.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 1:36 AM Szabolcs Nagy <szabolcs.nagy@arm.com> wrote:
>
> The 05/19/2020 17:38, Nick Desaulniers wrote:
> > sorry, hit tab/enter too soon...
> >
> > On Tue, May 19, 2020 at 5:37 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Tue, May 19, 2020 at 3:09 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > >
> > > > Szabolcs Nagy ran into a kernel build failure with a custom gcc
> > > > toochain that sets -mfpu=auto -mfloat-abi=hard:
> > > >
> > > >  /tmp/ccmNdcdf.s:1898: Error: selected processor does not support `cpsid i' in ARM mode
> > > >
> > > > The problem is that $(call cc-option, -march=armv7-a) fails before the
> > > > kernel overrides the gcc options to also pass -msoft-float.
> > >
> > > The call to `$(call cc-option, -march=armv7-a) is th
> >
> > The call to `$(call cc-option, -march=armv7-a) is the one that fails or...?
>
> the flag -march=armv7-a is invalid if the float abi
> is hard and no fpu is specified (since gcc-8).
>
> either an fpu should be specified or -march=armv7-a+fp
> (my toolchain was configured with the latter and it does
> not work if the kernel overrides it with -march=armv7-a)
>
> because of this cc-option failure the kernel goes on to
> pass nonsense flags everywhere (-march=armv5t) and some
> compilation eventually fails with an asm error.

Cool, thanks for the additional info.  Arnd, if you wanted to include
more of that snippet the commit message when submitting, I wouldn't
complain. :)
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> > > >
> > > > Move the option to the beginning the Makefile, before we call
> > >
> > > beginning of the
> > >
> > > > cc-option for the first time.
> > > >
> > > > Reported-by: Szabolcs Nagy <szabolcs.nagy@arm.com>
> > > > Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=87302
> > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > >
> > > Moving this looks harmless enough, though it's not clear to me how the
> > > failure you're describing would occur.  I don't see calls to as-instr
> > > in arch/arm/Makefile.  Which object is being built before -msoft-float
> > > is being set?
> >
> > ... ^
> >
> > >
> > > > ---
> > > >  arch/arm/Makefile | 4 +++-
> > > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > > > index 7d5cd0f85461..e428ea6eb0fa 100644
> > > > --- a/arch/arm/Makefile
> > > > +++ b/arch/arm/Makefile
> > > > @@ -16,6 +16,8 @@ LDFLAGS_vmlinux       += --be8
> > > >  KBUILD_LDFLAGS_MODULE  += --be8
> > > >  endif
> > > >
> > > > +KBUILD_CFLAGS  += -msoft-float
> > > > +
> > > >  ifeq ($(CONFIG_ARM_MODULE_PLTS),y)
> > > >  KBUILD_LDS_MODULE      += $(srctree)/arch/arm/kernel/module.lds
> > > >  endif
> > > > @@ -135,7 +137,7 @@ AFLAGS_ISA  :=$(CFLAGS_ISA)
> > > >  endif
> > > >
> > > >  # Need -Uarm for gcc < 3.x
> > > > -KBUILD_CFLAGS  +=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -msoft-float -Uarm
> > > > +KBUILD_CFLAGS  +=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -Uarm
> > > >  KBUILD_AFLAGS  +=$(CFLAGS_ABI) $(AFLAGS_ISA) $(arch-y) $(tune-y) -include asm/unified.h -msoft-float
> > > >
> > > >  CHECKFLAGS     += -D__arm__
> > > > --
> > > > 2.26.2
> > > >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
>
> --



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
