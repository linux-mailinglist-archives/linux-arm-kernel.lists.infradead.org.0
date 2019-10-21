Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F130DDF2D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 18:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHhtCXSfrgfA9g7AoPRd366YLIeeN84orXRWv8iRmzQ=; b=T+fltjQRT5a9gy
	psIuwuTJgtXy8XfKzcV9x59BS5xWRF266E6siEzneSGAwR1Y4ZUiP6j0B1BEJgvzt07LqeNPtb7rj
	Z1sNdOoV/Hb28g24sUi/taHo1iLWT1qXSG8MmRJMv3MjkhumW0bSs5vbRC7MPuBmi7IJWvkJ/qTzv
	ckskXtobm3vZiXVoFumxcloZZ8NTAErQyQujrwOZhpMyxzh7tsiE9ZvQq4AlnxOmlW/MjGb6k92/r
	3/u8flTrRdQSV+qezfMshfTSjtTeRoRLYqnCttkyxiIU1MvfO/V0oBHlTRLYV3q5Z/SmqNFxBOGvQ
	LX31QmCFgNwmrh0r+1Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMaQz-0006WV-P6; Mon, 21 Oct 2019 16:21:29 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMaQp-0006W5-TC
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 16:21:21 +0000
Received: by mail-ed1-f67.google.com with SMTP id y7so2959746edo.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 09:21:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=J7kXhyBYin2hNshrQsLbIqexvEmaaX5JxfmgulPDAhs=;
 b=Pl6B5jVyiHIFBNHIq9w2iUcrx0G6SJiA8/5ie4Xk/iuo4LiGuleccnQi3aS/QdWp88
 vrpzjAZw4G8cbT9w+gaMi2LCSnUUEIobbT9c4OORMS5TF/WKSveGLLkj+TbmkbODjWnc
 ALYmD/5UU7A1ruzE5Kaa30vCjJ817B2qZw/q/HC1KPmspUwggqKs8/BmaBeCBqPXnPQI
 d7+K/L2cv6NfHcZE0VSAm9g4h2gf+RDifUFUNCrlG6fTx3NvO9e36Q/CF53HrWcUha81
 1Ta5yFOOh5H5g/5yXZ6fp5lw+Q5nZENPu2qODtA0LL3es4a/6phv/sp8oJhA4YbvD9IB
 FGVw==
X-Gm-Message-State: APjAAAVrMBEC8fb56WjeqvyIGCT5WxzhfGY1Txo3Te9sHJTqvdTX7Im3
 IFAaemibUoK+0XmmQDKw4Tw1+QKX
X-Google-Smtp-Source: APXvYqzJjaDGk3bh7Rvx5mKz/l/mNrNxKhU6SPIZK78xraCXfMm3Bl9vspYovV2bf8f1O66wvaY1DQ==
X-Received: by 2002:aa7:d915:: with SMTP id a21mr26132055edr.46.1571674877915; 
 Mon, 21 Oct 2019 09:21:17 -0700 (PDT)
Received: from kozik-lap ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id s4sm363303edt.34.2019.10.21.09.21.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 21 Oct 2019 09:21:17 -0700 (PDT)
Date: Mon, 21 Oct 2019 18:21:15 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Alim Akhtar <alim.akhtar@gmail.com>
Subject: Re: [PATCH] ARM: dts: exynos: Rename children of SysRAM node to "sram"
Message-ID: <20191021162115.GA21883@kozik-lap>
References: <20191021151440.13505-1-krzk@kernel.org>
 <CAGOxZ531SdYcud3nQ-6hbCRZptUYznTRajVyxwEi-mFmm8-zPg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGOxZ531SdYcud3nQ-6hbCRZptUYznTRajVyxwEi-mFmm8-zPg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_092119_946364_8E0889A2 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 09:37:24PM +0530, Alim Akhtar wrote:
> On Mon, Oct 21, 2019 at 8:45 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > The device node name should reflect generic class of a device so rename
> > the children of SysRAM node to "smp-sysram".  This will be also in sync
> Typo "smp-sram"

Thanks, indeed.

> > with upcoming DT schema.  No functional change.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> Looks good to me.

Shall I add your review-tag?

Best regards,
Krzysztof


> 
> >  arch/arm/boot/dts/exynos3250.dtsi               | 4 ++--
> >  arch/arm/boot/dts/exynos4210-universal_c210.dts | 6 +++---
> >  arch/arm/boot/dts/exynos4210.dtsi               | 4 ++--
> >  arch/arm/boot/dts/exynos4412.dtsi               | 4 ++--
> >  arch/arm/boot/dts/exynos5250.dtsi               | 4 ++--
> >  arch/arm/boot/dts/exynos54xx.dtsi               | 4 ++--
> >  6 files changed, 13 insertions(+), 13 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/exynos3250.dtsi b/arch/arm/boot/dts/exynos3250.dtsi
> > index b016b0b68306..044e5da64a76 100644
> > --- a/arch/arm/boot/dts/exynos3250.dtsi
> > +++ b/arch/arm/boot/dts/exynos3250.dtsi
> > @@ -145,12 +145,12 @@
> >                         #size-cells = <1>;
> >                         ranges = <0 0x02020000 0x40000>;
> >
> > -                       smp-sysram@0 {
> > +                       smp-sram@0 {
> >                                 compatible = "samsung,exynos4210-sysram";
> >                                 reg = <0x0 0x1000>;
> >                         };
> >
> > -                       smp-sysram@3f000 {
> > +                       smp-sram@3f000 {
> >                                 compatible = "samsung,exynos4210-sysram-ns";
> >                                 reg = <0x3f000 0x1000>;
> >                         };
> > diff --git a/arch/arm/boot/dts/exynos4210-universal_c210.dts b/arch/arm/boot/dts/exynos4210-universal_c210.dts
> > index 09d3d54d09ff..a1bdf7830a87 100644
> > --- a/arch/arm/boot/dts/exynos4210-universal_c210.dts
> > +++ b/arch/arm/boot/dts/exynos4210-universal_c210.dts
> > @@ -590,16 +590,16 @@
> >  };
> >
> >  &sysram {
> > -       smp-sysram@0 {
> > +       smp-sram@0 {
> >                 status = "disabled";
> >         };
> >
> > -       smp-sysram@5000 {
> > +       smp-sram@5000 {
> >                 compatible = "samsung,exynos4210-sysram";
> >                 reg = <0x5000 0x1000>;
> >         };
> >
> > -       smp-sysram@1f000 {
> > +       smp-sram@1f000 {
> >                 status = "disabled";
> >         };
> >  };
> > diff --git a/arch/arm/boot/dts/exynos4210.dtsi b/arch/arm/boot/dts/exynos4210.dtsi
> > index 554819ae1446..b4466232f0c1 100644
> > --- a/arch/arm/boot/dts/exynos4210.dtsi
> > +++ b/arch/arm/boot/dts/exynos4210.dtsi
> > @@ -79,12 +79,12 @@
> >                         #size-cells = <1>;
> >                         ranges = <0 0x02020000 0x20000>;
> >
> > -                       smp-sysram@0 {
> > +                       smp-sram@0 {
> >                                 compatible = "samsung,exynos4210-sysram";
> >                                 reg = <0x0 0x1000>;
> >                         };
> >
> > -                       smp-sysram@1f000 {
> > +                       smp-sram@1f000 {
> >                                 compatible = "samsung,exynos4210-sysram-ns";
> >                                 reg = <0x1f000 0x1000>;
> >                         };
> > diff --git a/arch/arm/boot/dts/exynos4412.dtsi b/arch/arm/boot/dts/exynos4412.dtsi
> > index 5022aa574b26..48868947373e 100644
> > --- a/arch/arm/boot/dts/exynos4412.dtsi
> > +++ b/arch/arm/boot/dts/exynos4412.dtsi
> > @@ -195,12 +195,12 @@
> >                         #size-cells = <1>;
> >                         ranges = <0 0x02020000 0x40000>;
> >
> > -                       smp-sysram@0 {
> > +                       smp-sram@0 {
> >                                 compatible = "samsung,exynos4210-sysram";
> >                                 reg = <0x0 0x1000>;
> >                         };
> >
> > -                       smp-sysram@2f000 {
> > +                       smp-sram@2f000 {
> >                                 compatible = "samsung,exynos4210-sysram-ns";
> >                                 reg = <0x2f000 0x1000>;
> >                         };
> > diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
> > index e1f0215e3985..ec983283f573 100644
> > --- a/arch/arm/boot/dts/exynos5250.dtsi
> > +++ b/arch/arm/boot/dts/exynos5250.dtsi
> > @@ -171,12 +171,12 @@
> >                         #size-cells = <1>;
> >                         ranges = <0 0x02020000 0x30000>;
> >
> > -                       smp-sysram@0 {
> > +                       smp-sram@0 {
> >                                 compatible = "samsung,exynos4210-sysram";
> >                                 reg = <0x0 0x1000>;
> >                         };
> >
> > -                       smp-sysram@2f000 {
> > +                       smp-sram@2f000 {
> >                                 compatible = "samsung,exynos4210-sysram-ns";
> >                                 reg = <0x2f000 0x1000>;
> >                         };
> > diff --git a/arch/arm/boot/dts/exynos54xx.dtsi b/arch/arm/boot/dts/exynos54xx.dtsi
> > index f78dee801cd9..8aa5117e58ce 100644
> > --- a/arch/arm/boot/dts/exynos54xx.dtsi
> > +++ b/arch/arm/boot/dts/exynos54xx.dtsi
> > @@ -62,12 +62,12 @@
> >                         #size-cells = <1>;
> >                         ranges = <0 0x02020000 0x54000>;
> >
> > -                       smp-sysram@0 {
> > +                       smp-sram@0 {
> >                                 compatible = "samsung,exynos4210-sysram";
> >                                 reg = <0x0 0x1000>;
> >                         };
> >
> > -                       smp-sysram@53000 {
> > +                       smp-sram@53000 {
> >                                 compatible = "samsung,exynos4210-sysram-ns";
> >                                 reg = <0x53000 0x1000>;
> >                         };
> > --
> > 2.17.1
> >
> 
> 
> -- 
> Regards,
> Alim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
