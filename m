Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD3B10CCE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:35:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jt1dfplXpiwbh+2APBAQy/MghZSou4PEzzpx4LKL4Hc=; b=FpxXxHh7W5fG3L
	YLtqQWwPQY8LjfGSQ+jm/nHs9gOIco2xM9u/15qOupKRuT7oMrsCFyn6dQNfav9mxZ+CBZLyba6hq
	G51amAWA9TqdFSl5HZj7EaPyfUplX+43b5FtqEF8fqzTK+Nt5POydtiiTyk/2JHmSavTrmohaSlkd
	W0F9vPouTxBDxyr+/DpQnB/Vg92eFJbeyutoy6sdTNAAzSoPWkmPhRJXhIS3DsNQvRtkXoJ10zgdg
	u7Iwa34Ioq66JPalXwTngKBz4V0f1uTycuk6QKbU8rNzkt6HdxM5MxGDLC9v1+fQtEirPnVnI474s
	88pbBRWgup/qVtpfDgCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaMlQ-0007L4-Df; Thu, 28 Nov 2019 16:35:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMlF-0007KG-2E
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:35:22 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1iaMlA-0001pe-Ss; Thu, 28 Nov 2019 17:35:16 +0100
Message-ID: <ca111d6b252078357341363b7fb07adfb8e216ef.camel@pengutronix.de>
Subject: Re: [PATCH 2/2] arm64: dts: zii-ultra: add sound support
From: Lucas Stach <l.stach@pengutronix.de>
To: Daniel Baluta <daniel.baluta@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Date: Thu, 28 Nov 2019 17:35:15 +0100
In-Reply-To: <0909b60cb5943007e1c3db31e3f6c91f289c85f9.camel@nxp.com>
References: <20191127182127.1204-1-l.stach@pengutronix.de>
 <20191127182127.1204-2-l.stach@pengutronix.de>
 <0909b60cb5943007e1c3db31e3f6c91f289c85f9.camel@nxp.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_083521_109184_6820E6BC 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On Do, 2019-11-28 at 11:10 +0000, Daniel Baluta wrote:
> Few comments inline about the naming:
> 
> On Wed, 2019-11-27 at 19:21 +0100, Lucas Stach wrote:
> > This adds all the necessary device nodes to get audio support on both
> > the
> > RMB3 and Zest boards.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  .../dts/freescale/imx8mq-zii-ultra-rmb3.dts   | 87 ++++++++++++++++
> >  .../dts/freescale/imx8mq-zii-ultra-zest.dts   | 30 ++++++
> >  .../boot/dts/freescale/imx8mq-zii-ultra.dtsi  | 98
> > +++++++++++++++++++
> >  3 files changed, 215 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dts
> > b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dts
> > index 6b3581366d67..d5e06885c683 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dts
> > @@ -10,6 +10,56 @@
> >  / {
> >  	model = "ZII Ultra RMB3 Board";
> >  	compatible = "zii,imx8mq-ultra-rmb3", "zii,imx8mq-ultra",
> > "fsl,imx8mq";
> > +
> > +	sound1 {
> 
> I find sound1 / sound2 pretty generic. Perhaps we can go with something
> like sound-<codec_name>
> 
They are pretty generic, but I don't really see a reason to
differentiate them more. Both sound paths are using a similar codec/hpa
setup, the only difference is the SAI. If I name them after the SAI,
will this really help much?

> 
> > +		compatible = "simple-audio-card";
> > +		simple-audio-card,name = "RMB3 audio front";
> > +		simple-audio-card,format = "i2s";
> > +		simple-audio-card,bitclock-master = <&sound1_codec>;
> > +		simple-audio-card,frame-master = <&sound1_codec>;
> > +		simple-audio-card,widgets =
> > +			"Headphone", "Headphone Jack Front";
> > +		simple-audio-card,routing =
> > +			"Headphone Jack Front", "HPA1 HPLEFT",
> > +			"Headphone Jack Front", "HPA1 HPRIGHT",
> > +			"HPA1 LEFTIN", "HPL",
> > +			"HPA1 RIGHTIN", "HPR";
> > +		simple-audio-card,aux-devs = <&hpa1>;
> > +
> > +		sound1_cpu: simple-audio-card,cpu {
> > +			sound-dai = <&sai2>;
> > +		};
> > +
> > +		sound1_codec: simple-audio-card,codec {
> > +			sound-dai = <&codec1>;
> 
> Codec1 here is too generic. Perpahs we can add real code name.

I agree that this might seem like thoughtless generic naming from the
outside, but actually it lines up pretty well with the naming used in
the schematics. I'm really reluctant to change the naming here, as any
change will inevitably make it harder to match up the DTS with the
schematics.

Regards,
Lucas

> > +			clocks = <&cs2000>;
> > +		};
> > +	};
> > +
> > +	sound2 {
> > +		compatible = "simple-audio-card";
> > +		simple-audio-card,name = "RMB3 audio back";
> > +		simple-audio-card,format = "i2s";
> > +		simple-audio-card,bitclock-master = <&sound2_codec>;
> > +		simple-audio-card,frame-master = <&sound2_codec>;
> > +		simple-audio-card,widgets =
> > +			"Headphone", "Headphone Jack Back";
> > +		simple-audio-card,routing =
> > +			"Headphone Jack Back", "HPA2 HPLEFT",
> > +			"Headphone Jack Back", "HPA2 HPRIGHT",
> > +			"HPA2 LEFTIN", "HPL",
> > +			"HPA2 RIGHTIN", "HPR";
> > +		simple-audio-card,aux-devs = <&hpa2>;
> > +
> > +		sound2_cpu: simple-audio-card,cpu {
> > +			sound-dai = <&sai3>;
> > +		};
> > +
> > +		sound2_codec: simple-audio-card,codec {
> > +			sound-dai = <&codec2>;
> Ditto.
> 
> > +			clocks = <&cs2000>;
> > +		};
> > +	};
> >  };
> >  
> >  &ecspi1 {
> > @@ -27,6 +77,23 @@
> >  	};
> >  };
> >  
> > +&i2c1 {
> > +	codec2: codec@18 {
> 
> Here we might go with something like: 
> 
> tlv320dac3100: codec@18
> 
> 
> > +		compatible = "ti,tlv320dac3100";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_codec2>;
> > +		reg = <0x18>;
> > +		#sound-dai-cells = <0>;
> > +		HPVDD-supply = <&reg_3p3v>;
> > +		SPRVDD-supply = <&reg_3p3v>;
> > +		SPLVDD-supply = <&reg_3p3v>;
> > +		AVDD-supply = <&reg_3p3v>;
> > +		IOVDD-supply = <&reg_3p3v>;
> > +		DVDD-supply = <&vgen4_reg>;
> > +		gpio-reset = <&gpio3 4 GPIO_ACTIVE_HIGH>;
> > +	};
> > +};
> > 
> 
> This is just a thought, naming is hard. But it should help with
> readability.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
