Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA611DA6B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 02:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+4nBMfTY4+g7mnuqXC5stoo2nsFpAw/99ZgMByEMt0=; b=DMK33JluSlR2Ca
	d5mqeLFe0ySE7sSxI4jeFhqG9A4dZScclpWN/LC3AYmP/4lCNkPVniHufAupSlybXhsjFLGRDGdey
	xNv4iZ9klSjz36UOY5i63Lc1RayDFgzTaMPzmPjInXGVuLuWgHGpEDaluDoD6JlK4UBLO19Z3i/fo
	C0H2PHvSewDRRMNJdO+g5Odj3GfZH0uVDOeIimBNYnG8/TiDqGNRSiFIDa0HIjjvFgP/coYcono6r
	LZyj+0Oxa99Kf94mdGgikUf1riqERhz6lP9axZ7HHq7f+CJnIqZCoPaOC98n+2AR7ZXtno3qbS6hd
	NaKwZ1mTuls4BdkG3uKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbClH-00062g-CX; Wed, 20 May 2020 00:39:07 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCl6-00062E-Tk
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 00:38:58 +0000
Received: by mail-pf1-x441.google.com with SMTP id q8so731736pfu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 17:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LUd/WgjoZPsx+toSaRGP/ejM9YY6HjPYSZOKYhK7Aq4=;
 b=FcZxfBfHJ/OI6RRmKYEaeLCAdglZPcdKY04CaufK/RV3QdW3p2Q7xLCONkzEkxmwF9
 6U57NQNUqXw15Qm+aITU0/QV/BoxdY2UiVj9Ot+RvuNdefgzXXGS8RTSeX//wZrypEK7
 3OLBRzguhKnOJp8khZh94qz69ZRm7+XReh1na6pKOfXcnAE7frtjtzVQeWZaI/6v0z6d
 TS67jkZIFBB5rX4oyCUl1McYwEOxEabF8tnnh4N0dy+TylPKFBXfSwfID+3M8w9YsOvN
 gZlaLIHHCv3ckZ+YzWc0GrpZhgkdh/1HvHut7d+oUbc3eXxC1wrTsNoBSDz4DH58X2tw
 G6Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LUd/WgjoZPsx+toSaRGP/ejM9YY6HjPYSZOKYhK7Aq4=;
 b=M25x9yqpkAK/FXcDS2fheVttaAZ2AMpY3UQPBnPQfg0AtWzd/HbhgU2Fp3Jw0Eq7B8
 6l46Cdic/nz2NE1n9TZeopUB/gP7jOfkmTxaCUdrbvsR+vJhvN1w7EtSbOV6Bf09QXzJ
 SLN1Ae++esNNtgujGmt9NRRz9ByIb4L6aw45Dzr2G/Yz782wENoD/kbGmmsGnNc+yyPX
 wleJ3a4AY+mKAaioOPgzwp8oK9PuF4BHWbryZYyQ96pUQi3r2H3wASPDA4ksjjYtwF3/
 HmJ3tFbuZ1oV5Y2hd2ghU69nEUCOw7T+eYKByY5M9Ka1oy4bNEfdOY1mNeiwToqnExJk
 qwaA==
X-Gm-Message-State: AOAM533Xf8I27lzKIz+tNCp/UjShOWqj8mLn6hWd/hZvoSwkVIG/nfgm
 cxDslp8ncTlrIQg/qL6J+XrwVWG4weVZCCHv/Xlstw==
X-Google-Smtp-Source: ABdhPJy8WmD7U3F+xMtZlJi00vLpJ42adVkJ+ZO0KSJVg33XDjtJiYA+NLVM3BsPMsK41bDBzpvYpZbtoYpCde0EkVs=
X-Received: by 2002:aa7:8084:: with SMTP id v4mr1674036pff.39.1589935136101;
 Tue, 19 May 2020 17:38:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200519220923.1601303-1-arnd@arndb.de>
 <CAKwvOdmH6bMJHzxSs2mVN=P5BBYjYrDs13-oq-Qq+S4ykHSYvA@mail.gmail.com>
In-Reply-To: <CAKwvOdmH6bMJHzxSs2mVN=P5BBYjYrDs13-oq-Qq+S4ykHSYvA@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 19 May 2020 17:38:44 -0700
Message-ID: <CAKwvOd=EphyUWNOZ59FkrfDvDwHHU2yrXW+KML-w_6mHowK=QA@mail.gmail.com>
Subject: Re: [PATCH] ARM: pass -msoft-float to gcc earlier
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_173856_977932_030AD0CA 
X-CRM114-Status: GOOD (  20.82  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 LKML <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

sorry, hit tab/enter too soon...

On Tue, May 19, 2020 at 5:37 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, May 19, 2020 at 3:09 PM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > Szabolcs Nagy ran into a kernel build failure with a custom gcc
> > toochain that sets -mfpu=auto -mfloat-abi=hard:
> >
> >  /tmp/ccmNdcdf.s:1898: Error: selected processor does not support `cpsid i' in ARM mode
> >
> > The problem is that $(call cc-option, -march=armv7-a) fails before the
> > kernel overrides the gcc options to also pass -msoft-float.
>
> The call to `$(call cc-option, -march=armv7-a) is th

The call to `$(call cc-option, -march=armv7-a) is the one that fails or...?

>
> >
> > Move the option to the beginning the Makefile, before we call
>
> beginning of the
>
> > cc-option for the first time.
> >
> > Reported-by: Szabolcs Nagy <szabolcs.nagy@arm.com>
> > Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=87302
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Moving this looks harmless enough, though it's not clear to me how the
> failure you're describing would occur.  I don't see calls to as-instr
> in arch/arm/Makefile.  Which object is being built before -msoft-float
> is being set?

... ^

>
> > ---
> >  arch/arm/Makefile | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > index 7d5cd0f85461..e428ea6eb0fa 100644
> > --- a/arch/arm/Makefile
> > +++ b/arch/arm/Makefile
> > @@ -16,6 +16,8 @@ LDFLAGS_vmlinux       += --be8
> >  KBUILD_LDFLAGS_MODULE  += --be8
> >  endif
> >
> > +KBUILD_CFLAGS  += -msoft-float
> > +
> >  ifeq ($(CONFIG_ARM_MODULE_PLTS),y)
> >  KBUILD_LDS_MODULE      += $(srctree)/arch/arm/kernel/module.lds
> >  endif
> > @@ -135,7 +137,7 @@ AFLAGS_ISA  :=$(CFLAGS_ISA)
> >  endif
> >
> >  # Need -Uarm for gcc < 3.x
> > -KBUILD_CFLAGS  +=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -msoft-float -Uarm
> > +KBUILD_CFLAGS  +=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -Uarm
> >  KBUILD_AFLAGS  +=$(CFLAGS_ABI) $(AFLAGS_ISA) $(arch-y) $(tune-y) -include asm/unified.h -msoft-float
> >
> >  CHECKFLAGS     += -D__arm__
> > --
> > 2.26.2
> >

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
