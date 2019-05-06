Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F65147AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 11:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+yFqiU+Rpe2BvXnN9laikN7Y3xR3KElrNFgHj5V/5o=; b=ObN36lPQwK60M8
	hSRdS+OPKKUMRdbvG3+nXnBhEoZloRka4IE2LA46ETzcUTk+Nd+xEIeQy706bHuKOyVSUpV1B+TFI
	T3/je66OgJNoAF6bU/6fWciCPUoynq2bNOpNQKKTLkx7W+NBcB9/YbepdCc6ZKqmPXIS7mqyhzgfa
	n9R4BqOj33/K+BvL3CcCH4KfTgOChf692KcvClXiBGGgPz8pUkzbIm+DtJzqXR2P/F2cwGOLk9B45
	JOZcJU3sduc+Vd+uuQq7UCwnbDXDr2tUcwljyeafEp5d2200KVrfKbMPvq05IzpcgEHojNLurA8PB
	mFE7hw8mjHA89FGZ9aXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNa09-0001Vv-MW; Mon, 06 May 2019 09:33:37 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNa00-0001V1-C8
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 09:33:30 +0000
Received: by mail-it1-x144.google.com with SMTP id q65so17731443itg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 02:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Gyd/Ti2kNFqn57KrY+jJie0lDAypj1lVK7fphS1Bm7M=;
 b=HKsFzThl5UWeChygjAOtiRYkHMtsyGBOPTcSmC+vo3Rm32ECFjRyNUWDPcIzhoy4Wf
 YYkKqERL30biuuTmsK95DtLtLhsfmquox7B7WsSAMs92vIvpxcFh9m4T2bkRn8Bjn5lN
 zE1+piUwnv4R43r5rHaMnAB+nQRO/IT8RT7Ig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gyd/Ti2kNFqn57KrY+jJie0lDAypj1lVK7fphS1Bm7M=;
 b=Q4o08UlyDmMjOXWhm1jPsuXcday5wU7H4Op1Uq9kMwKUtBinE7r/R9F2+BjFzLgvF6
 2sjaKuqG5wTWAsUJItPs3Kn4UPsr5Y8vbhIXCR98ih7Nsx4DnkVUsp5oanBDbtgG3NwA
 OvbDoalwLFc7JOa0QJ/2mhXqYOq6FAeyMA5FSOuVA0R+M1UkAZc39JZo2C60oBoEs0v9
 7w9nfbdQOh8uBApAMBFDuY0y+OKl2WhRxCEdi3Vxfng/yemmmxz1pXT48z8GHlH9uEbq
 joiK6kUCyeKw6MzW4KAmpj4CPxHaPscLsyQ+xkhCi6pmhyY3KbRzBiS9qz3N49C+6AzG
 eDoA==
X-Gm-Message-State: APjAAAWVodISeq/01xt8YQ7Drq1YqLcdJk1cOi/Tf+vLvqHvQjrA8gV2
 mUv+lxfXQZhj7UNUOJ2uAzTBXrm/XyQVWuYybgKy2w==
X-Google-Smtp-Source: APXvYqx/SnEtjDy0ciVF4+liqkodEYASR4S6w603/eqwIhIS2Lvf6CSIQVgbf5ng1w20fkg51AF8ckTTLJqxn2r59Ac=
X-Received: by 2002:a24:65cf:: with SMTP id u198mr6958544itb.32.1557135206826; 
 Mon, 06 May 2019 02:33:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190503115928.27662-1-jagan@amarulasolutions.com>
 <20190503144651.ttqfha656dykqjzo@flea>
In-Reply-To: <20190503144651.ttqfha656dykqjzo@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 6 May 2019 15:03:15 +0530
Message-ID: <CAMty3ZCQTiX5OvCG_uMRS02vFu0c1-bkcyauLD6oaFcd=y3RNA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: allwinner: h6: orangepi-one-plus: Add Ethernet
 support
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_023328_576185_FF099A1D 
X-CRM114-Status: GOOD (  24.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 3, 2019 at 8:16 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Fri, May 03, 2019 at 05:29:28PM +0530, Jagan Teki wrote:
> > Add Ethernet support for orangepi-one-plus board,
> >
> > - Ethernet port connected via RTL8211E PHY
> > - PHY suppiled with
> >   GMAC-2V5, fixed regulator with GMAC_EN pin via PD6
> >   GMAC-3V, which is supplied by VCC3V3-MAC via aldo2
> > - RGMII-RESET pin connected via PD14
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>
> Your commit log should be improved. We can get those informations from
> the patch itself...

Thought it was a clear commit log :)  will update anyway.

>
> > ---
> > Changes for v2:
> > - emac changes on top of https://patchwork.kernel.org/cover/10899529/
> >   series
> >
> >  .../allwinner/sun50i-h6-orangepi-one-plus.dts |  8 ++++
> >  .../dts/allwinner/sun50i-h6-orangepi.dtsi     | 42 +++++++++++++++++++
> >  2 files changed, 50 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> > index 12e17567ab56..9e8ed1053715 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> > @@ -9,4 +9,12 @@
> >  / {
> >       model = "OrangePi One Plus";
> >       compatible = "xunlong,orangepi-one-plus", "allwinner,sun50i-h6";
> > +
> > +     aliases {
> > +             ethernet0 = &emac;
> > +     };
> > +};
> > +
> > +&emac {
> > +     status = "okay";
> >  };
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
> > index 62e27948a3fa..c48e24acaf8a 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
> > @@ -45,6 +45,48 @@
> >               regulator-max-microvolt = <5000000>;
> >               regulator-always-on;
> >       };
> > +
> > +     /*
> > +      * The board uses 2.5V RGMII signalling. Power sequence to enable
> > +      * the phy is to enable GMAC-2V5 and GMAC-3V (aldo2) power rails
> > +      * at the same time and to wait 100ms.
> > +      */
> > +     reg_gmac_2v5: gmac-2v5 {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "gmac-2v5";
> > +             regulator-min-microvolt = <2500000>;
> > +             regulator-max-microvolt = <2500000>;
> > +             startup-delay-us = <100000>;
> > +             enable-active-high;
> > +             gpio = <&pio 3 6 GPIO_ACTIVE_HIGH>; /* GMAC_EN: PD6 */
> > +
> > +             /* The real parent of gmac-2v5 is reg_vcc5v, but we need to
> > +              * enable two regulators to power the phy. This is one way
> > +              * to achieve that.
> > +              */
> > +             vin-supply = <&reg_aldo2>; /* VCC3V3-MAC: GMAC-3V */
> > +     };
> > +};
> > +
> > +&emac {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&ext_rgmii_pins>;
> > +     phy-mode = "rgmii";
> > +     phy-handle = <&ext_rgmii_phy>;
> > +     phy-supply = <&reg_gmac_2v5>;
> > +     allwinner,rx-delay-ps = <1500>;
> > +     allwinner,tx-delay-ps = <700>;
> > +};
> > +
> > +&mdio {
> > +     ext_rgmii_phy: ethernet-phy@1 {
> > +             compatible = "ethernet-phy-ieee802.3-c22";
> > +             reg = <1>;
> > +
> > +             reset-gpios = <&pio 3 14 GPIO_ACTIVE_LOW>; /* RGMII-RESET: PD14 */
> > +             reset-assert-us = <15000>;
> > +             reset-deassert-us = <40000>;
> > +     };
> >  };
>
> ... however, at no point in time you explain why you made that switch,
> and while most of the definition of the EMAC nodes is in the DTSI, you
> only enable it in one DTS.

The dtsi is shared b/w 1+ and lite2 and 1+ has emac, so I enabled the
status directly on dts and keeping the relevant nodes on dtsi just
like SoC dtsi does. do I need to mention this in commit log?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
