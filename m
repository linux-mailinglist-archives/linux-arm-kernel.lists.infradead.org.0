Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66446133C8C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 08:59:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZY7reA+Rmy+wW60zkQeo4ZvEd1eFdQsgkSusmLkg2I=; b=XmPC0v8Sbrpq5d
	7izCoEQYF4DSB9qs9RV/HHISZPgSEoWi7rX1p6stI6dOWrPuJhNFugqFYp1W9/Q2cjkaEaTlDg0/o
	pIPzqnutuz+QK+jkjhpeoxexF85SH/jyCdZ6VaOOnm9uNXOja44F3u5+Qvlre91vcHDA+Kj4rV86y
	Bzj/juXrtiRjYh7TtjW3dl1oKYjWOKFvXxE2fkqDfkC8PxslXQiyTI63tREDc+47TVQe/0RL6uU9c
	FpFb1xGs2Q1dm3SJJiZ8P3mJ6RBICg1EzAdHoSbhBQ/mBAJ/xAb6vvP/r6nYDECJPLR2Iv0cIq9+F
	1NYpll8XelWw9ALtoYYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip6Fh-0001Mc-W0; Wed, 08 Jan 2020 07:59:41 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip6Fa-0001LP-PM
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 07:59:36 +0000
Received: by mail-ed1-f68.google.com with SMTP id f8so1825923edv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 23:59:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cMtj+4fElMhagL+EzReN9239oHGv4iNUyK/a8PqjjnQ=;
 b=Md+uAx/QYlMoM3LtWF1mk4cTlLep8uja7spOiyif+9lZSgDibYzoyzPnECz2HmDVph
 JttHsGh+xf69m3wc1vZTAHD0IJQ3dE5OPhT+9ZZRZAy2yo3uPeZmKHzVE6BIzr0jxTWM
 e7zsQ9qaseq7qgpFYywwrzUEPlIyMdrqGzCI/IcbSNoSoQKg5Pc0H134UkCvu5R2VUop
 hWkusPuTqCNrvYaKaEJ1epLUcJc6IwdUSrlMB98otzy97LDCwDuLTdNL1pn/NTurmnex
 EIoJGVRscMW8d7IXEk6xrh0ZJJ+fiMA89ZQuEM2Aec/8BRuQ3cSpv4Fht7hS+r4tlksx
 7Duw==
X-Gm-Message-State: APjAAAWEfx2ISo3Pc8fVooZyYskttej6B/PIH4PKs/wgEb3iZ2cIZN+w
 nvN8ThuBswZWd7dMImAr7Jc=
X-Google-Smtp-Source: APXvYqx1oeIDihha1MbvAq15cZlBUGgIhGRDf0dk1K6ypd+mZhyiUjjB1ZsQjTlzbZgvEOTKZctg/A==
X-Received: by 2002:a17:906:1d50:: with SMTP id
 o16mr3510203ejh.111.1578470371251; 
 Tue, 07 Jan 2020 23:59:31 -0800 (PST)
Received: from pi3 ([194.230.155.149])
 by smtp.googlemail.com with ESMTPSA id bm18sm58278edb.97.2020.01.07.23.59.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 23:59:30 -0800 (PST)
Date: Wed, 8 Jan 2020 08:59:28 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: exynos: tiny4412: add proper panel node
Message-ID: <20200108075928.GA9911@pi3>
References: <20200106191003.21584-1-tiny.windzz@gmail.com>
 <20200106191003.21584-2-tiny.windzz@gmail.com>
 <20200107090449.GA32007@pi3>
 <CAEExFWvJx82h1c1QBrQ+DpT4kgEZ0o3q_O7JLbk-1L-iuMGPEw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEExFWvJx82h1c1QBrQ+DpT4kgEZ0o3q_O7JLbk-1L-iuMGPEw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_235935_335310_42ED4E8A 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 03:07:25AM +0800, Frank Lee wrote:
> On Tue, Jan 7, 2020 at 5:04 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Mon, Jan 06, 2020 at 07:10:03PM +0000, Yangtao Li wrote:
> > > This patch add at070tn92 panel for tiny4412 board.
> >
> > Please fix description as in patch 1.
> >
> > >
> > > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > > ---
> > >  arch/arm/boot/dts/exynos4412-tiny4412.dts | 16 ++++++++++++++++
> > >  1 file changed, 16 insertions(+)
> > >
> > > diff --git a/arch/arm/boot/dts/exynos4412-tiny4412.dts b/arch/arm/boot/dts/exynos4412-tiny4412.dts
> > > index 2b62cb27420c..57f9d09233ad 100644
> > > --- a/arch/arm/boot/dts/exynos4412-tiny4412.dts
> > > +++ b/arch/arm/boot/dts/exynos4412-tiny4412.dts
> > > @@ -66,6 +66,16 @@
> > >                       clock-frequency = <24000000>;
> > >               };
> > >       };
> > > +
> > > +     panel {
> > > +             compatible = "innolux,at070tn92";
> > > +
> > > +             port {
> > > +                     panel_input: endpoint {
> > > +                             remote-endpoint = <&lcdc_output>;
> > > +                     };
> > > +             };
> > > +     };
> > >  };
> > >
> > >  &fimd {
> > > @@ -74,6 +84,12 @@
> > >       #address-cells = <1>;
> > >       #size-cells = <0>;
> > >       status = "okay";
> >
> > One empty space here.
> >
> > > +     port@3 {
> > > +             reg = <3>;
> >
> > Why starting from "3"? Why this is port@3, not just "port"?
> 
> From samsung-fimd.txt:
> ---
> The device node can contain 'port' child nodes according to the bindings defined
> in [2]. The following are properties specific to those nodes:
> - reg: (required) port index, can be:
>                 0 - for CAMIF0 input,
>                 1 - for CAMIF1 input,
>                 2 - for CAMIF2 input,
>                 3 - for parallel output,
>                 4 - for write-back interface
> ---
> 
> I guess it is influenced here.
> https://elixir.bootlin.com/linux/v5.5-rc5/source/drivers/gpu/drm/exynos/exynos_drm_dpi.c#L170
> Without it, lcd is completely black.

Thanks for explanation.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
