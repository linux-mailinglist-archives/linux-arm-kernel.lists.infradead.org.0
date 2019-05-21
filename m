Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDAB24D98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 13:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=au5VW07nw0D+sDaEPWqk1M7PL8Ymu3DAIVpNICzR21I=; b=dz2ry4SlrvMeoH
	lsg+wbJC/+C4YiGCB/GTTvbAsczVedWW81E/adUlEbPYSRFgz2pdSfraSLrQZ9Ybzq5LsXLGnsh8M
	OTBHQte1IF3XXVjX4IqZ2MogqLSRXh23QW+A9l0Ri/Zx988zhCiWY0Alyo7ABuba6J2TNn2b71ZqM
	XmtFAjaRGNP7yUAbhHEj72s6Nq4wwrl1u/RzJoDKVmLl0ukH4ZG1Y59uiDulNGdneNyvuuMQJ8FdU
	j+67jHNSrUNQs4uWSBr/F4dNJnR/DQvIlJrgpTr6gtLZ4BfDEA87qTG9wK2zVhathaTsT8wc6SHDU
	0upa8zRdP/aWV9liEQtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2dG-0008Gx-93; Tue, 21 May 2019 11:08:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2d7-0008Fv-AI
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 11:08:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id e15so18122428wrs.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 04:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mBS6HWr/GffYzp43R5kVqhTrERprItS/d4aXOx6tYbU=;
 b=qs55+I47fIDia0uwHqXxnq4cQTewSNeUP/6omcb5+qs0nKaYk7oGY6NYOOl8ofDFc6
 OUXvM97JqwtXQwpndLn4H0GRVozTLlSlIJHbGzQOwbI14jhyNOdbr1Zs2EwTVOZBDcyb
 FGcc2nUSDR18jboyFEO6tk/UOxJUEYJsVgv0s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mBS6HWr/GffYzp43R5kVqhTrERprItS/d4aXOx6tYbU=;
 b=Vo5J5SotLMGfUc28fe1MME5chlYY+kKUKHAtGblkKBGOCBjA5xWSwZslNy7HTXqtSZ
 D+HwBWtTkT6Z14FNpgamhbrLVyhvrwqDg1SLxLGdxWj3EzlLaccdXZ2vnFiBfuzOWHDe
 RrM3iquBAd+6csAr+bAiNIt1SoYLXKwZuTO3XqQa0RkTHapRIq55ndunRf3MnN97xJup
 5aouWijmGNpD/ztFeiMXAR99yx7l+p3iZoIkrJMoL8+3U6YzUe7Jw61PpQ3LSALcXNDj
 O/sB8H1Ir7kPwqJRCntWU5p9C9g3i2T06xlGVL/rBZORicEVMaJCgKs8ho9aO7vCb201
 3CBA==
X-Gm-Message-State: APjAAAXABr+Tbia3+Mu6UOkpaSSDEN9I1dXoEvOxZ0k3v5kzW8EtEpG9
 sHiYcrD3Uv2CygWL6s47hgk/bbviJPIgASLAC8DBqg==
X-Google-Smtp-Source: APXvYqzVlWiHrmG++c18iLZr+/EeWm5l0AOZnhEmmkXMdNCxfOZ6cpmzHxti9dv2vFcXgV4vwIgiEhUsPm77NDcpFoE=
X-Received: by 2002:adf:8189:: with SMTP id 9mr47758810wra.71.1558436903636;
 Tue, 21 May 2019 04:08:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190418141658.10868-1-jagan@amarulasolutions.com>
 <20190418145641.q23tupopz2czjzc5@flea>
 <CAOf5uwn8CtRs8cx0KC-bxNoRP4TiDrHi8F83QfjsZhueLDYFJg@mail.gmail.com>
 <20190521081001.zjq3gnlvyuyexz6m@flea>
In-Reply-To: <20190521081001.zjq3gnlvyuyexz6m@flea>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Tue, 21 May 2019 13:08:09 +0200
Message-ID: <CAOf5uwnhXjur=2NezCydaCxP5d33S+AwdD9WTDtp2EUJr4UTgg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64-oceanic-5205-5inmfd: Enable CAN
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_040826_033357_BD899623 
X-CRM114-Status: GOOD (  22.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Tue, May 21, 2019 at 10:10 AM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> On Tue, May 21, 2019 at 08:47:02AM +0200, Michael Nazzareno Trimarchi wrote:
> > > > +     };
> > > > +
> > > >  };
> > > >
> > > >  &ehci0 {
> > > > @@ -77,6 +95,31 @@
> > > >       status = "okay";
> > > >  };
> > > >
> > > > +&pio {
> > > > +     can_pins: can-pins {
> > > > +             pins = "PD6",                   /* RX_BUF1_CAN0 */
> > > > +                    "PD7";                   /* RX_BUF0_CAN0 */
> > > > +             function = "gpio_in";
> > > > +     };
> > > > +};
> > >
> > > That isn't needed. What are they used for, you're not tying them to
> > > anything?
> >
> > Mux of their function is correct. They are connected in the schematics
> > but not used right now.
>
> Then describe the whole thing or don't?
>

Ok

> And that's kind of missing my point. If that pin group isn't related
> to any device, the pin muxing will not be changed. So that group, in
> itself, has strictly no effect.
>
> Moreover, you don't need a pin group in the first place to mux pins in
> GPIOs, the GPIO API will make sure that is the case when you request
> it.

This is correct on sunxi. Is this valid for sunxi or in general in all the SoC?
Anyway make sense to have pins configured and place in the right
state, just suppose if the
booting stage is wrong or anything that make those pins in the wrong
configuration

>
> > I can garantee that kernel wlll always configurred in the right way
> > and if I want I can export in userspace
> > for debug purpose

Correct if you start to use it but if you want them right configured
the right place
is in the default state e/o initstate if this can be a problem of the hardware

Default state: the state the pinctrl handle shall be put
 *      into as default, usually this means the pins are up and ready to
 *      be used by the device driver. This state is commonly used by
 *      hogs to configure muxing and pins at boot, and also as a state
 *      to go into when returning from sleep and idle in
 *      .pm_runtime_resume() or ordinary .resume() for example.

Now the pins are connected to the canbus as should be and they are
configured and usually
put in the right state.

+               compatible = "microchip,mcp2515";
+               reg = <0>;
+               spi-max-frequency = <10000000>;
+               pinctrl-names = "default";
+               pinctrl-0 = <&can_pins>;

>
> Yes, because the API does it, not your change
>

Do you prefer to drop the pinmux? or update the commit message

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
