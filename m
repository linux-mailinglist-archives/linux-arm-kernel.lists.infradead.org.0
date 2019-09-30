Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B23C1D29
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XpLA1EMOP70Rjxh+pV2KhCJMUnH02EcpPD1/lDC86n4=; b=Nns3cvVKySUm2L
	a0iLYwBlI/zvBzeh7LErFtrRRtcM16aZ6j6GO2ETHv1Pbmuj+YNgVryBt3dz4ruurnvZ9bOsGpQfi
	R7eKAVL77ewbfybuvXo9KiU8Af0GWIOmLCiYVZGfEF7zIwCRsdrlfzUvxN0blP7W7nn10ZJRjoHmr
	EkgPWfJ6TSSDFynDbZvLUA8oQSN3eaFORvha1Le3Wf2Rmi4dajhA0AHJ1mECBv4qi33n2PG9z95Pq
	7oRWAzmZHnSiz/ybs/ltv5AAmHNEsVORbRIcJMWSjIfmMTpV0uGCokKSS46BHwb3edXpxTwkWzCeU
	GCl9myav8ZyF/D/vBiQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEr2F-0004bR-Kk; Mon, 30 Sep 2019 08:27:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEr1l-0004On-AN
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:27:31 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iEr1b-0003WF-As; Mon, 30 Sep 2019 10:27:19 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iEr1X-0002ak-4t; Mon, 30 Sep 2019 10:27:15 +0200
Date: Mon, 30 Sep 2019 10:27:15 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH 1/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20190930082715.mplf5ra35ikqmbyr@pengutronix.de>
References: <20190927061423.17278-1-andreas@kemnade.info>
 <20190927061423.17278-2-andreas@kemnade.info>
 <20190927094721.w26ggnli4f5a64uv@pengutronix.de>
 <20190927210807.26439a94@aktux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927210807.26439a94@aktux>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:22:57 up 135 days, 14:41, 87 users,  load average: 0.02, 0.05,
 0.11
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_012729_412500_9830D7CF 
X-CRM114-Status: GOOD (  33.16  )
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

Hi Andreas,

On 19-09-27 21:08, Andreas Kemnade wrote:
> Hi Marco,
> 
> On Fri, 27 Sep 2019 11:47:21 +0200
> Marco Felsch <m.felsch@pengutronix.de> wrote:
> 
> > Hi Andreas,
> > 
> > thanks for the patch.
> > 
> thanks for the quick review. Most of your comments are clear.
> 
> [...]
> > > +	wifi_pwrseq: wifi_pwrseq {
> > > +		compatible = "mmc-pwrseq-simple";
> > > +		post-power-on-delay-ms = <20>;
> > > +		reset-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;  
> > 
> > Can you add a pinctrl-entry here please? The general rule is to mux
> > things where you use it.
> > 
> yes, there are many places in my patch where they are added to some
> parent devices.
> I will fix that.
> [...]
> > > +	leds {
> > > +		compatible = "gpio-leds";
> > > +		pinctrl-names = "default";
> > > +		pinctrl-0 = <&pinctrl_led>;  
> > 
> > Please move all muxing you made here into this file or add phandles so
> > the dts file need to add only the muxing stuff. This applies to all
> > pinctrl you made here.
> > 
> so you disagree with this pattern:
> in .dtsi
>  some_device {
>    pinctrl-0 = <&pinctrl_some_device>;
>  };
> 
> and in .dts (one I sent with this patch series and the tolino/mx6sl one
> is not ready-cooked yet, will be part of a later series)
> &iomuxc {
>    pinctrl_some_device: some_devicegrp {
>    	fsl,pins = <...>;
>    };
> };
> 
> ?

Yes, because IMHO a dtsi is self contained as well as a dts. If it is
common for all boards you can move the muxing into the dtsi else it
should be done within the dts.

> > > +
> > > +		GLED {
> > > +			gpios = <&gpio5 7 GPIO_ACTIVE_LOW>;
> > > +			linux,default-trigger = "timer";
> > > +		};
> > > +	};
> > > +
> > > +	gpio-keys {
> > > +		compatible = "gpio-keys";
> > > +		pinctrl-names = "default";
> > > +		pinctrl-0 = <&pinctrl_gpio_keys>;
> > > +		power {
> > > +			label = "Power";
> > > +			gpios = <&gpio5 8 GPIO_ACTIVE_LOW>;
> > > +			linux,code = <KEY_POWER>;  
> > 
> > Add missing header: dt-bindings/input/input.h to use this.
> > 
> I am doing this in the .dts but it is probably better to do it here
> because it is used here.
> 
> > > +			gpio-key,wakeup;
> > > +		};
> > > +		cover {
> > > +			label = "Cover";
> > > +			gpios = <&gpio5 12 GPIO_ACTIVE_LOW>;
> > > +			linux,code = <SW_LID>;
> > > +			linux,input-type = <0x05>;    /* EV_SW */  
> > 
> > In the header above EV_SW is also specified so please use it here.
> > 
> This pattern is in many files. I took one as an example. It seems that
> 50% of devicetree files have this pattern, the other 50% do have the
> pattern you proposed (which I like more). So probably EV_SW was not
> available in former times?

I don't know, checking the git history should bring the answer ;)
Anyway, if it is available we should use it.

> > > +			gpio-key,wakeup;
> > > +		};
> > > +	};
> > > +
> > > +};
> > > +
> > > +
> > > +  
> > 
> > Whitespaces
> > 
> > > +&audmux {
> > > +	pinctrl-names = "default";
> > > +	status = "disabled";  
> > 
> > Why you mentioned a pinctrl-names here without the mux? Do we need the
> > status line here? The common case is that such devices are off by
> > default/the base dt.
> > 
> yes, that things can be removed.
> > > +};
> > > +
> > > +&snvs_rtc {
> > > +	status = "disabled";  
> > 
> > Same applies here.
> > 
> 
> No, seems to be an exception, it does not have a status = "disabled" in
> imx6sll.dtsi.

Did you mean 6sll or 6ull?

Okay, is this baseboard only used with a 6ull?

Regards,
  Marco

> > > +};
> > > +
> > > +&i2c1 {
> > > +	clock-frequency = <100000>;
> > > +	pinctrl-names = "default","sleep";
> > > +	pinctrl-0 = <&pinctrl_i2c1 &pinctrl_lm3630a_bl_gpio>;  
> > 
> > The &pinctrl_lm3630a_bl_gpio should be moved into the lm3630a node.
> > 
> > > +	pinctrl-1 = <&pinctrl_i2c1_sleep>;
> > > +	status = "okay";
> > > +
> > > +	lm3630a: lm3630a-i2c@36 {  
> > 
> > please name it backlight@36
> > 
> > > +		reg = <0x36>;
> > > +		status = "ok";  
> > 
> > status lines are always be the last and if it is okay you can drop it
> > because the default is okay.
> > 
> well, I added it because the driver was not loaded but later I found out
> that the real reason is that module aliases were broken and forgot to
> remove that "ok".
> 
> Regards,
> Andreas
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
