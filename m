Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FF3C0BF1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 21:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=izyHFrru5Vef6l+coDb2uM7Ydovm+QVk5HVZPN8oB+k=; b=E8uldhlpK5Y3Wh
	/ZN4EjVJdSf4opxED1dNU1ZqbZ0uQ5psN5hhJFcgvahFQ53UhiSYz/xK0KvVjxqN8CbBtkKt6qqRA
	ichM3y0FSA3TaU/A6Iv70tcSVfaGTdt+7ezrwK/0Fqjm5ND6bJNub/T/Y6xmi4UGhMVfBy8MoPNGf
	3g6lsWkrqQ7U9OLmILswN2XJnXPKxRH5vssaaXTX7yu7uCv0zd+mAjWhNWmW47ArsEMSArvSdD1lj
	KE/V9MlVIbUDDz7+kdZnJCrvyK+YmWLRhlMD2hioEcrP0scNKi+6BddnxEvQD3q8Fhz4DM53yZ4F3
	rmXiVjL2oZc4wUYEdOYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDvbU-0003Cv-P0; Fri, 27 Sep 2019 19:08:32 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDvbL-0003C6-7t
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 19:08:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z3HupTrxEpV8y2g+PdzUzD5fHaCUrAd0hS4kvWJATxo=; b=Qs+eGqNEPBP4N7bSduqg3bDy4U
 NAxNVgGqiT5NHEoEYwDech1O2TTjjl6vKUEA6u75AMq3oK7Lp6Zrfcw4xFoqAgW8oXjPW7/wSylOf
 ztk4uYdXzSNNZ8bKkKzhDLukbwBuanb7fZWvl2+ZnLyoc9f7EkS8m0KGva5yczYPIK6E=;
Received: from p200300ccff0e5f001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff0e:5f00:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iDvb6-0006GS-GH; Fri, 27 Sep 2019 21:08:09 +0200
Date: Fri, 27 Sep 2019 21:08:07 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH 1/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20190927210807.26439a94@aktux>
In-Reply-To: <20190927094721.w26ggnli4f5a64uv@pengutronix.de>
References: <20190927061423.17278-1-andreas@kemnade.info>
 <20190927061423.17278-2-andreas@kemnade.info>
 <20190927094721.w26ggnli4f5a64uv@pengutronix.de>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_120823_431227_E09D96C1 
X-CRM114-Status: GOOD (  24.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, marex@denx.de, devicetree@vger.kernel.org,
 andrew.smirnov@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 angus@akkea.ca, linux-kernel@vger.kernel.org, j.neuschaefer@gmx.net,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 manivannan.sadhasivam@linaro.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marco,

On Fri, 27 Sep 2019 11:47:21 +0200
Marco Felsch <m.felsch@pengutronix.de> wrote:

> Hi Andreas,
> 
> thanks for the patch.
> 
thanks for the quick review. Most of your comments are clear.

[...]
> > +	wifi_pwrseq: wifi_pwrseq {
> > +		compatible = "mmc-pwrseq-simple";
> > +		post-power-on-delay-ms = <20>;
> > +		reset-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;  
> 
> Can you add a pinctrl-entry here please? The general rule is to mux
> things where you use it.
> 
yes, there are many places in my patch where they are added to some
parent devices.
I will fix that.
[...]
> > +	leds {
> > +		compatible = "gpio-leds";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_led>;  
> 
> Please move all muxing you made here into this file or add phandles so
> the dts file need to add only the muxing stuff. This applies to all
> pinctrl you made here.
> 
so you disagree with this pattern:
in .dtsi
 some_device {
   pinctrl-0 = <&pinctrl_some_device>;
 };

and in .dts (one I sent with this patch series and the tolino/mx6sl one
is not ready-cooked yet, will be part of a later series)
&iomuxc {
   pinctrl_some_device: some_devicegrp {
   	fsl,pins = <...>;
   };
};

?

> > +
> > +		GLED {
> > +			gpios = <&gpio5 7 GPIO_ACTIVE_LOW>;
> > +			linux,default-trigger = "timer";
> > +		};
> > +	};
> > +
> > +	gpio-keys {
> > +		compatible = "gpio-keys";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pinctrl_gpio_keys>;
> > +		power {
> > +			label = "Power";
> > +			gpios = <&gpio5 8 GPIO_ACTIVE_LOW>;
> > +			linux,code = <KEY_POWER>;  
> 
> Add missing header: dt-bindings/input/input.h to use this.
> 
I am doing this in the .dts but it is probably better to do it here
because it is used here.

> > +			gpio-key,wakeup;
> > +		};
> > +		cover {
> > +			label = "Cover";
> > +			gpios = <&gpio5 12 GPIO_ACTIVE_LOW>;
> > +			linux,code = <SW_LID>;
> > +			linux,input-type = <0x05>;    /* EV_SW */  
> 
> In the header above EV_SW is also specified so please use it here.
> 
This pattern is in many files. I took one as an example. It seems that
50% of devicetree files have this pattern, the other 50% do have the
pattern you proposed (which I like more). So probably EV_SW was not
available in former times?

> > +			gpio-key,wakeup;
> > +		};
> > +	};
> > +
> > +};
> > +
> > +
> > +  
> 
> Whitespaces
> 
> > +&audmux {
> > +	pinctrl-names = "default";
> > +	status = "disabled";  
> 
> Why you mentioned a pinctrl-names here without the mux? Do we need the
> status line here? The common case is that such devices are off by
> default/the base dt.
> 
yes, that things can be removed.
> > +};
> > +
> > +&snvs_rtc {
> > +	status = "disabled";  
> 
> Same applies here.
> 

No, seems to be an exception, it does not have a status = "disabled" in
imx6sll.dtsi.

> > +};
> > +
> > +&i2c1 {
> > +	clock-frequency = <100000>;
> > +	pinctrl-names = "default","sleep";
> > +	pinctrl-0 = <&pinctrl_i2c1 &pinctrl_lm3630a_bl_gpio>;  
> 
> The &pinctrl_lm3630a_bl_gpio should be moved into the lm3630a node.
> 
> > +	pinctrl-1 = <&pinctrl_i2c1_sleep>;
> > +	status = "okay";
> > +
> > +	lm3630a: lm3630a-i2c@36 {  
> 
> please name it backlight@36
> 
> > +		reg = <0x36>;
> > +		status = "ok";  
> 
> status lines are always be the last and if it is okay you can drop it
> because the default is okay.
> 
well, I added it because the driver was not loaded but later I found out
that the real reason is that module aliases were broken and forgot to
remove that "ok".

Regards,
Andreas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
