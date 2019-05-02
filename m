Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EAFB11536
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9gvncMMOxZr6VjCieaa1uhkFigb7pBjufv7luvNtvoU=; b=prLY9zQiK/mDvJ
	fa0g4LZnL9/i6skz5FFcWZRGv0kC5wICvTyBftmWS5qYbfvTpBtA104OCheql43O75RpktKwJ5AKP
	mSWdb3VveK9JPGqyPoEqppmcdouZU/8BaSM33j9XqgHa/QyoZ6JOVU1O8oJOaOPeRde13UCyHZHol
	tNXxuxtVcsTEMQ2sqwDiz6//olQdceEkngz4jNVYNoBGffr5cJYpp3y61yDPreZOZCG5/ku5Vd18z
	h6DtfhzArwVnBcWK9Cr0q5/VZJUnzxFw8TVfz1PgHdLWsF4KttWrfEJ6jKsxfr0CoEt3otfjucXhg
	FWm9xH2IhPvmdOInH4KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6x8-0007gQ-Se; Thu, 02 May 2019 08:20:26 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6x2-0007g4-P6
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:20:22 +0000
Received: by mail-ed1-f67.google.com with SMTP id e24so1318080edq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 01:20:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bCBHjKNMP3z5CUP9giN1XdvXNXR0qXaBWIcQDT1yIFw=;
 b=cXk0ry4UqD+QWh7KXEnFnEvTuKk7C2oP2Zi6wUUPJ2vT7jNWzoFL1hW48XDdyZdp14
 j8Lb/G1UWVz9gG8cXoLTmc4VlJiQL018FG6wDqA1vGWnXgNGhZ6VyZDqJ1wPUIhYlvvM
 SAlnLffK9RidzSoG0pPLaFYpcTM9SkG7qH95G5Tnc47NMJAuHvvQ0HkvDdhWhnIccRub
 c1FylVmvQmguNidF6uBCrkEVKpkj2bD0s8ykpsPQSmPeBwDC6DVP6R+QJndpK6sAtV16
 Qz6axGQ+Vj+HSm7LFGvsagyPvJ4wlyqaU8gpLn6eFoa9lfah7DSn99J2XmZG1VcmLLHJ
 0l5Q==
X-Gm-Message-State: APjAAAXT8a9rGjYAlB9XhshgvqADvdkpsOTte5og19CcFYbS9P8KIEB6
 4DZtw/S2uuvuUHtDYKyh8yj5lm7aZCE=
X-Google-Smtp-Source: APXvYqwYffKCN5tOOkIglCa0V5GxoSVzxt7GoGuaqJf7ewB4wBmdbcreJo6FTr/8P05CK8ZD3gosNA==
X-Received: by 2002:a50:8bbb:: with SMTP id m56mr1695527edm.230.1556785216144; 
 Thu, 02 May 2019 01:20:16 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com.
 [209.85.221.50])
 by smtp.gmail.com with ESMTPSA id z32sm3261572edz.85.2019.05.02.01.20.15
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 01:20:15 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id a9so2012725wrp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 01:20:15 -0700 (PDT)
X-Received: by 2002:a5d:4ec6:: with SMTP id s6mr1637882wrv.87.1556785214880;
 Thu, 02 May 2019 01:20:14 -0700 (PDT)
MIME-Version: 1.0
References: <1556040365-10913-1-git-send-email-pgreco@centosproject.org>
 <1556040365-10913-8-git-send-email-pgreco@centosproject.org>
 <20190502074103.vtuxmsl55u3ygyvl@flea>
In-Reply-To: <20190502074103.vtuxmsl55u3ygyvl@flea>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 2 May 2019 16:20:02 +0800
X-Gmail-Original-Message-ID: <CAGb2v65eaRLRkJ2hvoOc1Cr=ncSeqy7Tq2pzt4rk4uiWQeag2w@mail.gmail.com>
Message-ID: <CAGb2v65eaRLRkJ2hvoOc1Cr=ncSeqy7Tq2pzt4rk4uiWQeag2w@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v5 7/7] ARM: dts: sun8i: v40:
 bananapi-m2-berry: Add Bluetooth device node
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_012020_817908_4C1C07BC 
X-CRM114-Status: GOOD (  34.43  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Pablo Greco <pgreco@centosproject.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 3:41 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Tue, Apr 23, 2019 at 02:26:04PM -0300, Pablo Greco wrote:
> > The AP6212 is based on the Broadcom BCM43430 or BCM43438. The WiFi side
> > identifies as BCM43430, while the Bluetooth side identifies as BCM43438.
> >
> > The Bluetooth side is connected to UART3 in a 4 wire configuration. Same
> > as the WiFi side, due to being the same chip and package, DLDO1 and
> > DLDO2 regulator outputs from the PMIC provide overall power via VBAT and
> > I/O power via VDDIO. The CLK_OUT_A clock output from the SoC provides
> > the LPO low power clock at 32.768 kHz.
> >
> > This patch enables Bluetooth on this board, and also adds the missing
> > LPO clock on the WiFi side. There is also a PCM connection for
> > Bluetooth, but this is not covered here.
> >
> > The LPO clock is fed from CLK_OUT_A, which needs to be muxed on pin
> > PI12. This can be represented in multiple ways. This patch puts the
> > pinctrl property in the pin controller node. This is due to limitations
> > in Linux, where pinmux settings, even the same one, can not be shared
> > by multiple devices. Thus we cannot put it in both the WiFi and
> > Bluetooth device nodes. Putting it the CCU node is another option, but
> > Linux's CCU driver does not handle pinctrl. Also the pin controller is
> > guaranteed to be initialized after the CCU, when clocks are available.
> > And any other devices that use muxed pins are guaranteed to be
> > initialized after the pin controller. Thus having the CLK_OUT_A pinmux
> > reference be in the pin controller node is a good choice without having
> > to deal with implementation issues.
> >
> > Signed-off-by: Pablo Greco <pgreco@centosproject.org>
> > ---
> >  arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts | 22 ++++++++++++++++++++++
> >  1 file changed, 22 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts b/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
> > index c87f2c0..15c22b0 100644
> > --- a/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
> > +++ b/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
> > @@ -96,6 +96,8 @@
> >       wifi_pwrseq: wifi_pwrseq {
> >               compatible = "mmc-pwrseq-simple";
> >               reset-gpios = <&pio 6 10 GPIO_ACTIVE_LOW>; /* PG10 WIFI_EN */
> > +             clocks = <&ccu CLK_OUTA>;
> > +             clock-names = "ext_clock";
>
> So if you don't have that patch (that enables bluetooth) the wifi
> doesn't work (even though the previous patch is supposed to enable it)

Maybe we should just squash the two (WiFi and Bluetooth) together?
After all, they are in the same package, and depend on some of the
same things, such as clocks and regulators.

ChenYu

> >       };
> >  };
> >
> > @@ -173,6 +175,7 @@
> >
> >  &pio {
> >       pinctrl-names = "default";
> > +     pinctrl-0 = <&clk_out_a_pin>;
>
> This one should bein the previous one as well
>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
