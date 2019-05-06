Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E70115046
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 17:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkT+gyekJJ3MtEJ/uNvDcV7Sc118KvbyLSnUAKuPIeI=; b=pzY4tczoZgiCE7
	Fbvmm1H0M6PDiu003hCQSKQy1V5gm4t2DfaXk/nro9vYJlggmwT6lrVFTXHaUmHvFmRoCsEQa9/u3
	SRrBCWqoOR/D/97O4u8Gu4yYv2RaIHZzdAekMX2cUyHyhSf9kbjMG7YVLC6thIl5wVW9jRfQLLfeW
	19uj5arD/yqjV23RdYiZjLRDVB02/wiq05kJKlV0gdalvtoukpWhGmtU8vr1uqJ0P/XMkTmDvxHKZ
	H4QJ0bWbBfhmIXh+LtNzpYBGI9yWZ/GMu9Umh3qmxFvG7SEeNnVONF3+g4dQalU+isqUif8oEVppx
	y3KWqNufOqun7r7xOiSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNfZo-0008N4-HE; Mon, 06 May 2019 15:30:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNfZh-0008Mb-1u
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 15:30:42 +0000
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 942E32087F
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  6 May 2019 15:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557156640;
 bh=y4bAG5gq6U3haHrnf1MAV7rGMGFLAEB6Ibt6G1yZvZ8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=aCPzxtAo0cqsJZqURdeQaqK83/p0unGaJCJFcRgDP3xUetjGuPbKSaaz4RyQZOCGf
 /URNPAAIMkGZjS1uhIVqAHOYluDNONqThbPpvu6Ld1kr9ug6sBG0HSGe7yCwjzvQbi
 J/2K1pqUToZdrV4joYCJYB6MSw6KfCpGLH9VsV8Y=
Received: by mail-qk1-f175.google.com with SMTP id a132so8009382qkb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 08:30:40 -0700 (PDT)
X-Gm-Message-State: APjAAAX77TetcaqNcF5736505B4obnwiFlesRdJc35/Wk1RAVIkT4+Md
 5FP+KUUEUArVJuoL4JtfCqhL16jwG5BFape2yg==
X-Google-Smtp-Source: APXvYqznvmDWZUjkaxr0sSjLP51EjpfxMMduwQvYSJXU0WPFWR7Y+y3kDu4pbxxZImHKPkVymEqchQsoW0f0gHPW8x4=
X-Received: by 2002:a37:4711:: with SMTP id u17mr20161936qka.326.1557156639851; 
 Mon, 06 May 2019 08:30:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190428024847.5046-1-peter.chen@nxp.com>
 <20190428024847.5046-7-peter.chen@nxp.com>
 <CAL_JsqLPK8kuYTT7ekZbAzywp2kr9xKA0_X3BAqVn5hShbPM+w@mail.gmail.com>
 <VI1PR04MB5327641FD0A21BB4C93A85A58B370@VI1PR04MB5327.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB5327641FD0A21BB4C93A85A58B370@VI1PR04MB5327.eurprd04.prod.outlook.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 6 May 2019 10:30:27 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+OywH+_caxtrBJF=nMVxFeHsuL8jbLq=a6VBXWiZ0ktA@mail.gmail.com>
Message-ID: <CAL_Jsq+OywH+_caxtrBJF=nMVxFeHsuL8jbLq=a6VBXWiZ0ktA@mail.gmail.com>
Subject: Re: [PATCH 6/7] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
To: Peter Chen <peter.chen@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_083041_132073_0D3EECCD 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "balbi@kernel.org" <balbi@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 4, 2019 at 10:13 PM Peter Chen <peter.chen@nxp.com> wrote:
>
>
> > > ---
> > >  arch/arm/boot/dts/imx7ulp.dtsi | 30 ++++++++++++++++++++++++++++++
> > >  1 file changed, 30 insertions(+)
> > >
> > > diff --git a/arch/arm/boot/dts/imx7ulp.dtsi
> > > b/arch/arm/boot/dts/imx7ulp.dtsi index fca6e50f37c8..e2944f98eac6
> > > 100644
> > > --- a/arch/arm/boot/dts/imx7ulp.dtsi
> > > +++ b/arch/arm/boot/dts/imx7ulp.dtsi
> > > @@ -30,6 +30,7 @@
> > >                 serial1 = &lpuart5;
> > >                 serial2 = &lpuart6;
> > >                 serial3 = &lpuart7;
> > > +               usbphy0 = &usbphy1;
> >
> > Drop this. You shouldn't need an alias.
> >
>
> It is a derived USB PHY and used on most of i.mx chipidea USB controllers.
> At the source code, we use aligned id to know the controller number.
>
>         ret = of_alias_get_id(np, "usbphy");
>         if (ret < 0)
>                 dev_dbg(&pdev->dev, "failed to get alias id, errno %d\n", ret);
>         mxs_phy->port_id = ret;

fsl,anatop property should probably have cell to specify this.

>
> > >         };
> > >
> > >         cpus {
> > > @@ -133,6 +134,35 @@
> > >                         clock-names = "ipg", "per";
> > >                 };
> > >
> > > +               usbotg1: usb@40330000 {
> > > +                       compatible = "fsl,imx7ulp-usb", "fsl,imx6ul-usb",
> > > +                               "fsl,imx27-usb";
> > > +                       reg = <0x40330000 0x200>;
> > > +                       interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> > > +                       clocks = <&pcc2 IMX7ULP_CLK_USB0>;
> > > +                       fsl,usbphy = <&usbphy1>;
> >
> > Don't use this for new users. Use the phy binding instead.
> >
>
> It is not a new user, the USB PHY used at imx7ulp is the same with imx6's.

New SoC is a new user. The chipidea core already supports using 'phys'
so you should be able to just use the common code.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
