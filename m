Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 120F9FFAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 20:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pe2UZtTRV7sJDpstaIYJ5ueloXLrgnVVqxu2zUmikyE=; b=Irp21VfEA/DcqD
	F3qAQlU1nEVu3P8N3DaN0jL8m36KfTr7P5gHsGnt2G+kApDqBL61UBbIpfuzr3unw9XB5dxNw4vkP
	6DuyNfQ2YcKFYbEI7zqkNwMVqVFyxrfytQjuALNn1CuGn4v1PCmnbj4vIIEi5ZpHZp01ohVMA7aHO
	Ml9OEoJK2P35OBVyUgbOQe4C73L4K5ZxTUQWW30k1IIEh0ed8rC7wgY1BRQXsJ4X6w265h1SFCsRL
	baFdHm7GxYPF5g9RNDOWJ4yHKA0BkIw8AgB8zPbuNywmt+7SwbZtxfPciseJZQauGuQldcYQyocHc
	CdfoDiYnoqJLbjOVf+xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLXP8-0002FF-EF; Tue, 30 Apr 2019 18:22:58 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLXP0-0002EK-Eg
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 18:22:51 +0000
Received: by mail-pg1-x543.google.com with SMTP id k19so7236065pgh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 11:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gh+NJvTsghWDsJJd+KP5aQAqiQ/BIEZcAYj6W4VprQI=;
 b=RCYP50pmtnK2vIKT9YIdEJ1LQlSTEIZA674chw7eV/BFW7oEN9ceMrVTyHwyyYdIVL
 eBiRdidlLXaqDm+3BDlBGDTJUwmtIMSeYzNbniW9CkMal12siiQrId6hSc1qpXiLbNt3
 zjNUwiXMBBa8dt+enbzp/1zREVJ0iknI2ZHICzpOj4DSN2zZroYveJ9mGsiZbVkWAedo
 75RPjhD1i6p5D86+My+jQygzq85/wpamrIQVGuKRKfF63IY5bqEGhBegKCoRBHqqkUga
 Fn/q7tyEMWu3i2Hq5TTz2ic/ow0PVmrkimF6m0HemT4V2u45+qL/J03rxicCN+Bt6hhY
 lmqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gh+NJvTsghWDsJJd+KP5aQAqiQ/BIEZcAYj6W4VprQI=;
 b=gyuZRM31K8ge4gOFhCsWwyzfTg5Tj70dE68gb8IFKr0lwzFOWXoGby90aIskZFsQIO
 tMLBcbAW5sFZqLuAE0DIJJ0KPmTIig5MSZafGMb7WmcxDrzetA9hSzteIAMNgaX7XoRL
 y/yymZULt4g6bFEK1tHHazQ9YeXPg4/Tgg52J1H56t+aU3cdl/EVUgVRcf6vbto+2poT
 QpxMVNdx6a8O3yOGlMM9jHnttXSB4UIaLichXZ7+EPLve2DvdWuWto+ILfWb+r9fW19a
 CRdhXI6Fn9fAtVDEkbgPAlyPuvWd9AWzAiNHJynfS/0Xc23WHUxTnmDqZdZwoJkvIeQS
 ZASA==
X-Gm-Message-State: APjAAAXszSxTt51c3h0HPmUsolj18Its2qS4wxO3uyG/C2rXe/lHKTZb
 9/brhtuMihfrqANv4S4HMK89YAvszsD3yY425jLphw==
X-Google-Smtp-Source: APXvYqwYJ6eM52XsMZDC7jBMvQu3AJAj2ucSapdyiDxTsHaIu2jVgdxiKCAoV5btcg3+Zu5s9FTQLHarko4Yg47qjG0=
X-Received: by 2002:a63:4558:: with SMTP id u24mr65263866pgk.225.1556648566822; 
 Tue, 30 Apr 2019 11:22:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190426130015.GA12483@archlinux-i9>
 <20190426190603.5982-1-linux@rasmusvillemoes.dk>
 <CAKwvOd=Qzs8gAenS6-GkiSmrwxwJA7wChJ6FUE5+=LPAj4XSfQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=Qzs8gAenS6-GkiSmrwxwJA7wChJ6FUE5+=LPAj4XSfQ@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 30 Apr 2019 11:22:35 -0700
Message-ID: <CAKwvOdkg=Xo_C_hQrnHt-t-RfcDrBYsrBZUwsKjfXSPhkynOHQ@mail.gmail.com>
Subject: Re: [PATCH 11/10] arm64: unbreak DYNAMIC_DEBUG=y build with clang
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_112250_513820_5F7EDE47 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Dan Rue <dan.rue@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Will Deacon <will.deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Jason Baron <jbaron@akamai.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 10:32 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Apr 26, 2019 at 12:06 PM Rasmus Villemoes
> <linux@rasmusvillemoes.dk> wrote:
> >
> > Current versions of clang does not like the %c modifier in inline
> > assembly for targets other than x86, so any DYNAMIC_DEBUG=y build
> > fails on arm64. A fix is likely to land in 9.0 (see
> > https://github.com/ClangBuiltLinux/linux/issues/456), but unbreak the
> > build for older versions.
> >
> > Fixes: arm64: select DYNAMIC_DEBUG_RELATIVE_POINTERS
> > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > Reported-by: Arnd Bergmann <arnd@arndb.de>
> > Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> > ---
> > Andrew, please apply and/or fold into 9/10.
> >
> >  arch/arm64/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index d0871d523d5d..315992e33b17 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -83,7 +83,7 @@ config ARM64
> >         select CRC32
> >         select DCACHE_WORD_ACCESS
> >         select DMA_DIRECT_REMAP
> > -       select DYNAMIC_DEBUG_RELATIVE_POINTERS
> > +       select DYNAMIC_DEBUG_RELATIVE_POINTERS if CC_IS_GCC || CLANG_VERSION >= 90000
>
> I just landed the fix for this in Clang, I think around the time you
> sent the patch.  Should ship in Clang 9.  Thanks for unbreaking our
> build.
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

+ Dan
who's looking for this to get picked up to unbreak KernelCI arm64+clang builds
https://staging.kernelci.org/build/id/5cc6e080cf3a0f9d66257f6d/
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
