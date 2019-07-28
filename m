Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F1678024
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 17:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUJ4dQKPeH+2JMvFIeGR4V4BsbWOw2CkFE40doqda4c=; b=k0LddpoWBspOb1
	AjxPDevqy4MhfSdnQHG0mPGgk6HREInZ/f+yZ73p0rHjkHvN9nzw2r46B13ew03vYdL8Jr8cBZeMh
	neaSF8p2wO2ELl2yjtUe6iVgLC43HebNl0x6gYEMRups0XV4VlfIjCjspym66Ude1/CISOENs0YGw
	C50QgX0wTx+oleQOSduot45hLraCOOiS8Qc59N5ysZBcqiMXGmhZVEC2he2o8i36I4BjpqSfxKD2E
	IOrN4ZK2Zrm0FtY1lX9v3x0GkedvI/lJC7JciunP8ArcivCzUCIqDm/OOINjBtvQknHkHTN5lDwmn
	X6QYZ+X4iD+AqKawLz9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrl3H-0000KQ-Da; Sun, 28 Jul 2019 15:25:35 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrl30-0000JJ-2A
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 15:25:19 +0000
Received: by mail-wm1-x342.google.com with SMTP id f17so51327100wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 08:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0OnbAgSPJwvUbw2tRezNGTvwhfaWECDe+MXcGqH5rpM=;
 b=tvJGjGNCiGu81qsWG9UW1f56ISoykEzQxe69HGgPuJWY1vWh2BToE4P1lQr7o5zhty
 Y2DXk41Rk9LE1SFSiWTRbXOLb3Ahyjyh3LwqbXk+RU9t0fS6e+lp4lMHC2jEoTiGo3q/
 8/iuL/uplQQPaE1s+4RoUDSg4F5g7RMbV+4g9nIA74D8p7dTNgg5YCEDhPJg8uDP4ndy
 gQ5Q36Ltmq/rQZfnqMOaz8qyOzAyc03cAux98RtGT56OwjoJ1Mo27sJ1WLyV5VggUoF1
 0+QxYug6KjR5HKu80bJZYdugQqf5bNZNv/vvWMNATeNBdgw7RYpPCeeiqtRoNGjFerIR
 QOiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0OnbAgSPJwvUbw2tRezNGTvwhfaWECDe+MXcGqH5rpM=;
 b=OTEnJu8a7kPblnq4S0z2e8oXoPI9DHAyaIJONjT6KIXylPklMQRU3q8yOqBbXVh3YA
 KkmdfTNs2v2MK/++bfcxlKLQvTL2BMKxi2OC1IKOeFUwtufoTvpCFx+NNdUxjN3FJWUT
 /cILvIlVhLGvYtmV/SignR4emLALJp3GLnRky7euRY0RBCnIfZsETHDuqvS5qBHZqb84
 D63on+Nu/F2hNzD8hj//7G5urbNhtn0AC12u+G0izIdfUzzR3Bq8t2op0exgbiBC4Yhb
 xha3SQkZ51WS5cvChyKpjdygQjuCp/t0v+C11gWRy+Sj9RAxzI1FiI9z7mprqY8oQqf4
 kXog==
X-Gm-Message-State: APjAAAUqUA6m3+ir8QIcq/giIJylos1T6YsJ27629QnPp17h+HV6Gf2h
 8gXZThyqjF5Zyr83auNQchkZdvlu0+WPkFGshqs=
X-Google-Smtp-Source: APXvYqwqMHY/y3WFu0ZR36r/YOmks/hkw86Ydao02mX6fAJoEhqh32A4SVNoT8E4xKHv5jx67NZn+rRHRT2VWzP/WGU=
X-Received: by 2002:a7b:c247:: with SMTP id b7mr99117091wmj.13.1564327516506; 
 Sun, 28 Jul 2019 08:25:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190728141218.12702-1-daniel.baluta@nxp.com>
 <b6506f6579f823e4c1e26ef3a7d1eed2@akkea.ca>
In-Reply-To: <b6506f6579f823e4c1e26ef3a7d1eed2@akkea.ca>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Sun, 28 Jul 2019 18:25:05 +0300
Message-ID: <CAEnQRZCyyfoVeG90Qbt8nQaEJYS7ywsSRFAy7a7WR6JrKfq-yg@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: imx8mq: Init rates and parents configs for
 clocks
To: Angus Ainslie <angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_082518_135457_3BC39F42 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Devicetree List <devicetree@vger.kernel.org>, baruch@tkos.co.il,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 dl-linux-imx <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 linux-kernel-owner@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 5:53 PM Angus Ainslie <angus@akkea.ca> wrote:
>
> Hi Daniel,
>
> On 2019-07-28 07:12, Daniel Baluta wrote:
> > From: Abel Vesa <abel.vesa@nxp.com>
> >
> > Add the initial configuration for clocks that need default parent and
> > rate
> > setting. This is based on the vendor tree clock provider parents and
> > rates
> > configuration except this is doing the setup in dts rather then using
> > clock
> > consumer API in a clock provider driver.
> >
> > Note that by adding the initial rate setting for audio_pll1/audio_pll
> > setting we need to remove it from imx8mq-librem5-devkit.dts
> > imx8mq-librem5-devkit.dts
> >
> > Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> > Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
>
> This works with our board. One small nit below
>
> Tested-by: Angus Ainslie (Purism) <angus@akkea.ca>
>
> > ---
> > Changes since v2:
> >       - set rate for audio_pll1/audio_pll2  in the dtsi file and
> >       remove the setting from imx8mq-librem5-devkit.dts
> >
> >  .../dts/freescale/imx8mq-librem5-devkit.dts   |  5 -----
> >  arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 21 +++++++++++++++++++
> >  2 files changed, 21 insertions(+), 5 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> > b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> > index 683a11035643..c702ccc82867 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> > @@ -169,11 +169,6 @@
> >       };
> >  };
> >
> > -&clk {
> > -     assigned-clocks = <&clk IMX8MQ_AUDIO_PLL1>, <&clk IMX8MQ_AUDIO_PLL2>;
> > -     assigned-clock-rates = <786432000>, <722534400>;
> > -};
> > -
> >  &dphy {
> >       status = "okay";
> >  };
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > index 02fbd0625318..c67625a881a4 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > @@ -494,6 +494,27 @@
> >                               clock-names = "ckil", "osc_25m", "osc_27m",
> >                                             "clk_ext1", "clk_ext2",
> >                                             "clk_ext3", "clk_ext4";
> > +                             assigned-clocks = <&clk IMX8MQ_VIDEO_PLL1>,
> > +                                     <&clk IMX8MQ_AUDIO_PLL1>,
> > +                                     <&clk IMX8MQ_AUDIO_PLL2>,
> > +                                     <&clk IMX8MQ_CLK_AHB>,
> > +                                     <&clk IMX8MQ_CLK_NAND_USDHC_BUS>,
> > +                                     <&clk IMX8MQ_CLK_AUDIO_AHB>,
> > +                                     <&clk IMX8MQ_VIDEO_PLL1_REF_SEL>,
> > +                                     <&clk IMX8MQ_CLK_NOC>;
> > +                             assigned-clock-parents = <0>,
> > +                                             <0>,
> > +                                             <0>,
> > +                                             <&clk IMX8MQ_SYS1_PLL_133M>,
> > +                                             <&clk IMX8MQ_SYS1_PLL_266M>,
> > +                                             <&clk IMX8MQ_SYS2_PLL_500M>,
> > +                                             <&clk IMX8MQ_CLK_27M>,
> > +                                             <&clk IMX8MQ_SYS1_PLL_800M>;
> > +                             assigned-clock-rates = <593999999>,
> > +                                             <786432000>,
> > +                                             <722534400>;
> > +
> > +
>
> Extra whitespace

Thanks Angus for testing. Fixed in v4.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
