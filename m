Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC0D58444
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 16:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ygi5uQDclDmEoX1AMcxqUza5sRZfQBD2s3nfYzb5uRM=; b=BA87er9bbV6lR+
	q6wTTBYw8lX0TG5YsIUIcVcddUIduliEkNhp8GSLPQ7V+skIiAdkfHOqpMAoEEsXOy7BpmZ13UXec
	Sjk/9IeyY/sQnik4eplYkSUj2cX5/MctoaU0HjQCPa04uegjfRdEmge1gZGxYIgOS/XtbHTypRRL8
	6gJ5U7ckI+AmWODW3vSAcZdEDCrW4dYkBAWkls8q2/v1QGPCNr0Fu1Cjz2DCsPqFjOFP/eDecNfNI
	7V4j+k0XVT9KUu76aHmLvGJYsSwTeRjXKniMCTZENrlcbGVd5NyN4Ksn6j9WTPEfQhvgbHjbOUh5p
	ZKH3wm9zJz+5LHFLOc2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgV6l-0004Nt-Lm; Thu, 27 Jun 2019 14:10:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgV6H-0004Ia-CK
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 14:10:11 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D419A2133F
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 14:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561644609;
 bh=/DngtzD3s+ebdrL7sBNZ6LYRKYCMM3LinI6fdKixRbs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JlysDPKbMCOunbX6/Re97YZ7xljANIUUSItXewPSNXJ+6m6r7gwis69KJRyJumiHF
 4Y/wdKgz4L+cKSohY7ZoxehmABuKrgn2NCOT7F17BXHiLn0Hh5cMRYkTtWtjJD18Zs
 mf/WZgZQiuDdA40ofbCH3xjLk0mLRsNlxfUN9SY8=
Received: by mail-qk1-f173.google.com with SMTP id s22so1790311qkj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 07:10:08 -0700 (PDT)
X-Gm-Message-State: APjAAAXIfrtv2IwNYoSwwlIk4KgkqWdeAnBt47kltj6z5sG2Odx1sWsq
 GFFE/Xey5vgt3xGyrDZQNw/p+9mRCFM/7RARbw==
X-Google-Smtp-Source: APXvYqzf4Zr0MF3Yow63S1uL/QA2OGEm4e5sTwKl5lupKlXsPXvUX0bhlfSmt6HmjepLO9Dl3d65W79s8N5se3FVB/I=
X-Received: by 2002:a37:69c5:: with SMTP id e188mr3331270qkc.119.1561644608024; 
 Thu, 27 Jun 2019 07:10:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190626071430.28556-1-andrew@aj.id.au>
 <20190626071430.28556-3-andrew@aj.id.au>
 <CAL_JsqKXPzFYTHos-uvCUtBj-bcsNfrzt5GjxQ=PmgeXpp5J-A@mail.gmail.com>
 <ee0cac9e-4b39-4900-87a8-3dabb58ed883@www.fastmail.com>
In-Reply-To: <ee0cac9e-4b39-4900-87a8-3dabb58ed883@www.fastmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 27 Jun 2019 08:09:57 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLiZzkJZ+CeaMDer=Arm9vFdG1Y_6F0M=AZV=82EqORFg@mail.gmail.com>
Message-ID: <CAL_JsqLiZzkJZ+CeaMDer=Arm9vFdG1Y_6F0M=AZV=82EqORFg@mail.gmail.com>
Subject: Re: [PATCH 2/8] dt-bindings: pinctrl: aspeed: Convert AST2400
 bindings to json-schema
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_071009_468740_827F8C5A 
X-CRM114-Status: GOOD (  28.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 6:44 PM Andrew Jeffery <andrew@aj.id.au> wrote:
>
>
>
> On Wed, 26 Jun 2019, at 23:17, Rob Herring wrote:
> > On Wed, Jun 26, 2019 at 1:21 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> > >
> > > Convert ASPEED pinctrl bindings to DT schema format using json-schema
> >
> > BTW, ASPEED is one of the remaining platforms needing the top-level
> > board bindings converted.
>
> Okay, I'll put together patches to fix that.
>
> >
> > >
> > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > > ---
> > >  .../pinctrl/aspeed,ast2400-pinctrl.txt        | 80 -------------------
> > >  .../pinctrl/aspeed,ast2400-pinctrl.yaml       | 73 +++++++++++++++++
> > >  2 files changed, 73 insertions(+), 80 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
> > >  create mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
> >
> > > diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
> > > new file mode 100644
> > > index 000000000000..3b8cf3e51506
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
> > > @@ -0,0 +1,73 @@
> > > +# SPDX-License-Identifier: GPL-2.0+
> >
> > Do you have rights to change the license?
>
> Where are you coming from with this question? The bindings previously didn't list a
> license, is there some implicit license for them? I would have thought it was GPL-2.0?

Yes, it is implicitly GPL-2.0 since it is in the kernel tree and has
no other license text.

> IBM's (my employer's) preferred contribution license is GPL 2.0-or-later, so I was just
> adding the SPDX marker to clarify.

Adding 'or-later' is a licensing change. If IBM is the copyright
holder on all this file, then that is fine.

> > If so, the preference is to
> > dual license with (GPL-2.0 OR BSD-2-Clause).
>
> You're asking if I have the power to relicense so I can dual license it this way?

It would probably be up to your company. If that's an issue, then not
dual licensing is fine. I don't want to hold things up on that.

[...]

> > > +required:
> > > +  - compatible
> > > +
> > > +description: |+
> >
> > description goes before properties.
>
> Okay. I wouldn't have thought the ordering mattered. Is this just a preference?

Yes, just a preference.

> The tools seemed to run fine as is.
>
> I'll re-order it regardless.
>
> >
> > > +  The pin controller node should be the child of a syscon node with the
> > > +  required property:
> > > +
> > > +  - compatible:     Should be one of the following:
> > > +                    "aspeed,ast2400-scu", "syscon", "simple-mfd"
> > > +                    "aspeed,g4-scu", "syscon", "simple-mfd"
> > > +
> > > +  Refer to the the bindings described in
> > > +  Documentation/devicetree/bindings/mfd/syscon.txt
> > > +
> > > +  For the AST2400 pinmux, each mux function has only one associated pin group.
> > > +  Each group is named by its function. The following values for the function
> > > +  and groups properties are supported:
> > > +
> > > +  ACPI ADC0 ADC1 ADC10 ADC11 ADC12 ADC13 ADC14 ADC15 ADC2 ADC3 ADC4 ADC5 ADC6
> > > +  ADC7 ADC8 ADC9 BMCINT DDCCLK DDCDAT EXTRST FLACK FLBUSY FLWP GPID GPID0 GPID2
> > > +  GPID4 GPID6 GPIE0 GPIE2 GPIE4 GPIE6 I2C10 I2C11 I2C12 I2C13 I2C14 I2C3 I2C4
> > > +  I2C5 I2C6 I2C7 I2C8 I2C9 LPCPD LPCPME LPCRST LPCSMI MAC1LINK MAC2LINK MDIO1
> > > +  MDIO2 NCTS1 NCTS2 NCTS3 NCTS4 NDCD1 NDCD2 NDCD3 NDCD4 NDSR1 NDSR2 NDSR3 NDSR4
> > > +  NDTR1 NDTR2 NDTR3 NDTR4 NDTS4 NRI1 NRI2 NRI3 NRI4 NRTS1 NRTS2 NRTS3 OSCCLK
> > > +  PWM0 PWM1 PWM2 PWM3 PWM4 PWM5 PWM6 PWM7 RGMII1 RGMII2 RMII1 RMII2 ROM16 ROM8
> > > +  ROMCS1 ROMCS2 ROMCS3 ROMCS4 RXD1 RXD2 RXD3 RXD4 SALT1 SALT2 SALT3 SALT4 SD1
> > > +  SD2 SGPMCK SGPMI SGPMLD SGPMO SGPSCK SGPSI0 SGPSI1 SGPSLD SIOONCTRL SIOPBI
> > > +  SIOPBO SIOPWREQ SIOPWRGD SIOS3 SIOS5 SIOSCI SPI1 SPI1DEBUG SPI1PASSTHRU
> > > +  SPICS1 TIMER3 TIMER4 TIMER5 TIMER6 TIMER7 TIMER8 TXD1 TXD2 TXD3 TXD4 UART6
> > > +  USB11D1 USB11H2 USB2D1 USB2H1 USBCKI VGABIOS_ROM VGAHS VGAVS VPI18 VPI24
> > > +  VPI30 VPO12 VPO24 WDTRST1 WDTRST2
> >
> > This should be a schema.
>
> Yeah, I covered this in my cover letter. I was hoping to get away without
> that for the moment as this seems like the first pinctrl binding to be
> converted, however if you insist...

That generally doesn't matter. You can assume common properties will
have a schema and you don't need to define common constraints (like
'function' is a string array). You only need what is specific to this
binding which is possible values.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
