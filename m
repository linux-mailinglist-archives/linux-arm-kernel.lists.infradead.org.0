Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EB42485C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 08:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZW7wUmvQIwBNk0gM/1jI77nBiZZZnhuGNgnrcsASds=; b=n63wBp6WcfL51q
	TaFAhOKQuDtTg5d8f2Mo4EhTx744d7b2GD5ykS1/aMFB3eNY3kvtlRYu2/kuC9hQlWVmxSMkKkf+z
	Sr0Fay4MI4TlAsgzHNwFaOYKi8KfcBveRksyc/KiRmVLbzLfSgy9kmw7PpY25ScIy5COsopZK/R9g
	nDX2r/0/6sfVneIviiRpNUJCcKxIfkHCWtisxpi1g0ntWGYBg7Z2zYzH+3YaNDCaXcmr050bzMBnt
	4XILJNUkVOxoSRsgWjF+KERlbELROb5k+WNrb8bmDpMUQg2NnNgORZs+C04ntAkshVqAShbToF2Mc
	IZjFNWaMFryTIL7CPcyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSyYX-0002Ko-P0; Tue, 21 May 2019 06:47:25 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSyYN-0002Jx-SN
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 06:47:18 +0000
Received: by mail-wm1-x341.google.com with SMTP id x64so1628622wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 23:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Dtcdsu0fUtok0q96jnMGpWM0fc0NoVZ6NVYcC/TU3EI=;
 b=KeH2Aa8UGeY3ald/vMtEvRNEPoOZgF6ZxP+nhAsZupukHiOm8t0PXqEZS/WBoeHG/0
 7vTSdr7BTbtHz2o2Jqvx7wMH1SmkqwzYd5Gdg/w0hH3eL/OlPpzUlozsZ4rN6E/h7sMd
 bMdDLCwW+K7eQEPgfsVVK5lh7g25N8mZ7wUgg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Dtcdsu0fUtok0q96jnMGpWM0fc0NoVZ6NVYcC/TU3EI=;
 b=ART+9wqnT2hfdtABwPj8xCT0PdEkj/UR5Llpa5mw4JW0QX4gwsM7Frs9aIUHCiXQL6
 N6RBzTIE8aAH+2oRXzEYgn7ARfa57TC7Ft55pTmV7X3kYVSZQzyfjtQBQl+PEzpGw1MT
 p8aSNl35209d530kODSzpgswkfL+Nufw9kdOECIv539Pc2lY0s58BdcT/y4hLt7dh5oj
 WAaFkxwizDotLt/KJxgg8YtrbUfi8YVRxAWT2LMw68eltwIQof2oI+bLA6XfVXBFFBot
 xEyDZtDvM20xiZ+CJU2IiKoeLQUfeAKJxjyz/ebRYN0uWf1Bl12qnfa/8SPigaXolgpO
 TVsg==
X-Gm-Message-State: APjAAAVQ+alyl5GNrGS5sz52gFdDblV2dMvsEnULeHNzjrafi79A75XF
 Ct1XOUmHfD6hEydHsYzvOrGOM4WrQ3QUAEixp0ZEig==
X-Google-Smtp-Source: APXvYqzfKKX+FWJFZbOOtvY+5rX4F4OJzEUSEX+qaWWcrbh0PkdH/kOZOIQuqFdUHG1hJoLc5d9aCY/fi8EkfoSZ+9Y=
X-Received: by 2002:a1c:7310:: with SMTP id d16mr1907943wmb.65.1558421233660; 
 Mon, 20 May 2019 23:47:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190418141658.10868-1-jagan@amarulasolutions.com>
 <20190418145641.q23tupopz2czjzc5@flea>
In-Reply-To: <20190418145641.q23tupopz2czjzc5@flea>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Tue, 21 May 2019 08:47:02 +0200
Message-ID: <CAOf5uwn8CtRs8cx0KC-bxNoRP4TiDrHi8F83QfjsZhueLDYFJg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64-oceanic-5205-5inmfd: Enable CAN
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_234716_419762_F5C6A7CD 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime

On Thu, Apr 18, 2019 at 4:56 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Thu, Apr 18, 2019 at 07:46:58PM +0530, Jagan Teki wrote:
> > Oceanic 5205 5inMFD has MCP2515 CAN device connected via SPI1.
> >
> > - via SPI1 bus
> > - vdd supplied by 5V supply along with PL2 enable pin
> > - xceiver supply same as vdd
> > - can oscillator connected at 20MHz
> > - PB2 gpio as interrupt pin
> > - PD6 gpio as RX_BUF1_CAN0
> > - PD7 gpio as RX_BUF0_CAN0
> >
> > Tested-by: Tamas Papp <tamas@osukl.com>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  .../sun50i-a64-oceanic-5205-5inmfd.dts        | 43 +++++++++++++++++++
> >  1 file changed, 43 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
> > index f0cd6587f619..22535a297f51 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
> > @@ -21,6 +21,24 @@
> >       chosen {
> >               stdout-path = "serial0:115200n8";
> >       };
> > +
> > +     can_osc: can-osc {
> > +             compatible = "fixed-clock";
> > +             #clock-cells = <0>;
> > +             clock-frequency = <20000000>;
> > +     };
> > +
> > +     reg_can_v5v: reg-can-v5v {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "reg-can-v5v";
> > +             regulator-min-microvolt = <5000000>;
> > +             regulator-max-microvolt = <5000000>;
> > +             regulator-boot-on;
> > +             enable-active-high;
> > +             gpio = <&r_pio 0 2 GPIO_ACTIVE_HIGH>; /* CAN_3V3_EN: PL2 */
> > +             status = "okay";
>
> You don't need the status property here.
>

Correct, need to be dropped

> > +     };
> > +
> >  };
> >
> >  &ehci0 {
> > @@ -77,6 +95,31 @@
> >       status = "okay";
> >  };
> >
> > +&pio {
> > +     can_pins: can-pins {
> > +             pins = "PD6",                   /* RX_BUF1_CAN0 */
> > +                    "PD7";                   /* RX_BUF0_CAN0 */
> > +             function = "gpio_in";
> > +     };
> > +};
>
> That isn't needed. What are they used for, you're not tying them to
> anything?

Mux of their function is correct. They are connected in the schematics
but not used right now.
I can garantee that kernel wlll always configurred in the right way
and if I want I can export in userspace
for debug purpose

Michael


>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com



--
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
