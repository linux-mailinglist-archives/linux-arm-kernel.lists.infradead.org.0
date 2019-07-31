Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2C87B83B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 05:31:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Ip1REzXEAMYeukcZbPB02Zv2EPvLWbjAWLTYSOXcQg=; b=lg0+GGNIAS46Av
	zUnIYWPUdpSBfVVN8/xSxUUGmdP2X6jVEznW9OrW3q/a3lgovTfNn7QRW6rCVsmadGwjy6OSZTVS2
	s4qeiJSJE4x+NZy20RJvEaQmawC+VBs/bMN4ZVsjS5DPTc9ztbwwO7uo+lyj2QkkNmKnIFBUNLEDP
	QwiCqAMRH4HSQMsvy08OQNgIV+IOnSUY90xWUiy5aH1qHTJPmtgZrX80i+HHhjM6BEbWIXrTpT93M
	sKjN9LtEGU4SoEoEnavVDjNXXXbNbEH2fI8Q3Dt1eYdauaSiIDG2Kq8RbnmoyNp0Pvd7fpK0hedaS
	ZJUjJDCw/JuW+LOxsfvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsfKW-0006Wf-Ky; Wed, 31 Jul 2019 03:31:08 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsfKP-0006WI-84
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 03:31:02 +0000
Received: by mail-wr1-x442.google.com with SMTP id 31so67985007wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 20:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=atyUolA0eJzVAQbGvrRql9UrHUdFF1jgbg7pUV5Ee5k=;
 b=UlKhCE5DTH67YsTqyfTiaKsmJS4WGCz4V8NwIwNoOkZbD6vEDiUjn7xt2+voHYlnAr
 I4+/bAuHDu1tbWYwI1eRPwkKz+QptFylA1Tpct1e0C2/iJSgtYXU3rniwFeeSsdLlGag
 8XjEOhOkXfz1XGFsu+HK5Cn+10fRFPgKpDA/fmjvw+PwvMQtH7ZvvkTXdkXViIFhAKpv
 A/dRpwMICdRjqsWyGmqkS8tbP8AH90uFAiuDMGbZD3ut4/FIOIckS8+7wu7RDIc8smQ2
 gScyIqzfbhj+uagU5x+UfeRG7WmRAC8iqTDOL9gRycGDrLQq28VbYsxuh0ofC+nZIQw2
 xvKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=atyUolA0eJzVAQbGvrRql9UrHUdFF1jgbg7pUV5Ee5k=;
 b=archLjKju7uAuTjRaNpIm2A9Kxnm4SXM1ToQGWOvvVGMh7RltkUxGjP0em/VyJNH/J
 58TIlF2yW+p3BFMRvmG+QD7sH+aea7ElIOavCbGMk9sV+uFlu18BHY10bY271GWLsKsF
 TxXu8bZpE4oCEhykJxZhOMRTmLyWjVfuyPAEDY44dyzM2VQlU4Xhi8q13oe8RVOtdYgW
 EdPQVdWmWjg0uc5cunLa7FmZ3FbtUmhExPJplntcisZArk+gJn117YeDyh7m042DSItV
 Cwu82CPXLopQEl4F60CJrGqLgMMsL2FCwHqiCAIrnKgBAKRpJzvsOfECocCMeNVkU1Ep
 Nrog==
X-Gm-Message-State: APjAAAXKSCdqGJxSWvuZPEaxuNeiyn3p8XhvNR/72eEYd7E+5RLpFy+8
 dwTWbnDFDbSMH4uVMMaHwZnqIFYPhmlWA8p0waw=
X-Google-Smtp-Source: APXvYqzMhgdZXK8upHjBPeiMFif34tHaHGLNz56kjr/qsVHA5wu35rMW0ISbG0qHRbD+PAYsbddI9bA1xBgaBXEB+f0=
X-Received: by 2002:a5d:6389:: with SMTP id p9mr105527750wru.297.1564543859209; 
 Tue, 30 Jul 2019 20:30:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190722071122.22434-1-zhang.lyra@gmail.com>
 <20190722071419.22535-1-zhang.lyra@gmail.com>
 <CAAfSe-tPVsMjmu0CoUATGRGevCpgqk999-rpfMuXqZ-V9ft7gg@mail.gmail.com>
 <20190730110204.GB1330@shell.armlinux.org.uk>
In-Reply-To: <20190730110204.GB1330@shell.armlinux.org.uk>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Wed, 31 Jul 2019 11:30:22 +0800
Message-ID: <CAAfSe-s=UFMvLfVq1xw1OuAwgdiyg-kcFa6ZyAUkkDLnTVuWmQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: check stmfd instruction using right shift
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_203101_315008_C1B78294 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zhang.lyra[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lvqiang Huang <lvqiang.huang@unisoc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 30 Jul 2019 at 19:02, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Tue, Jul 30, 2019 at 03:18:31PM +0800, Chunyan Zhang wrote:
> > Gentle ping
> >
> > probably this patch was missed or entered into spam?
>
> Please submit it to the patch system, thanks.

Ok, thanks.

>
> >
> > On Mon, 22 Jul 2019 at 15:14, Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > >
> > > From: Lvqiang Huang <Lvqiang.Huang@unisoc.com>
> > >
> > > In the commit ef41b5c92498 ("ARM: make kernel oops easier to read"),
> > > -               .word   0xe92d0000 >> 10        @ stmfd sp!, {}
> > > +               .word   0xe92d0000 >> 11        @ stmfd sp!, {}
> > > then the shift need to change to 11.
> > >
> > > Fixes: ef41b5c92498 ("ARM: make kernel oops easier to read")
> > > Signed-off-by: Lvqiang Huang <Lvqiang.Huang@unisoc.com>
> > > Signed-off-by: Chunyan Zhang <zhang.lyra@gmail.com>
> > > ---
> > >  arch/arm/lib/backtrace.S |    2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm/lib/backtrace.S b/arch/arm/lib/backtrace.S
> > > index 7d7952e..926851b 100644
> > > --- a/arch/arm/lib/backtrace.S
> > > +++ b/arch/arm/lib/backtrace.S
> > > @@ -70,7 +70,7 @@ for_each_frame:       tst     frame, mask             @ Check for address exceptions
> > >
> > >  1003:          ldr     r2, [sv_pc, #-4]        @ if stmfd sp!, {args} exists,
> > >                 ldr     r3, .Ldsi+4             @ adjust saved 'pc' back one
> > > -               teq     r3, r2, lsr #10         @ instruction
> > > +               teq     r3, r2, lsr #11         @ instruction
> > >                 subne   r0, sv_pc, #4           @ allow for mov
> > >                 subeq   r0, sv_pc, #8           @ allow for mov + stmia
> > >
> > > --
> > > 1.7.9.5
> > >
> >
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
