Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5EA28722
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 21:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6aBAno6wMVsiwuucO1Fquvs6/T8MRAO2ugptMemWzk=; b=nRGbipPvGl+0Ql
	sfC7WANDaTdtaHKgSYKaWjyxhshtXz4jhOem/M7giiwDNJUywnZQkq0vWci390TM2cIvYo9VEH5XX
	niACQ2g4JagEQ0JdRLCnrdJAbstjSEYC81RL5gNATxLytSoHkuhF2gC5W9ZwgAlJ8gUiV4IcPySi9
	5NhdnjlXW2RtAT/hDinBpc9TVWIZESVw8Y+XgnFRnAaoIAhjAKQ1GRNNEXelKRFiz21sAatww1WGI
	+Js1rk+7Jys56gMXxjVRD3x75NDcm+2ZpbmK3z7QsMjZeQgH5ZUj7EIOP6Pt+b5UFDaku76gpvDBV
	4kFVs9Np1QKDnNiXVWEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTtFh-0002Rc-VP; Thu, 23 May 2019 19:19:45 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTtFa-0002Q7-0S
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 19:19:39 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 26E8F803D1; Thu, 23 May 2019 21:19:25 +0200 (CEST)
Date: Thu, 23 May 2019 21:19:26 +0200
From: Pavel Machek <pavel@ucw.cz>
To: "Angus Ainslie (Purism)" <angus@akkea.ca>
Subject: Re: [PATCH v13 2/4] arm64: dts: fsl: librem5: Add a device tree for
 the Librem5 devkit
Message-ID: <20190523191926.GB3803@xo-6d-61-c0.localdomain>
References: <20190520142330.3556-1-angus@akkea.ca>
 <20190520142330.3556-3-angus@akkea.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520142330.3556-3-angus@akkea.ca>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_121938_199950_296C697F 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

> - LEDs
> - gyro
> - magnetometer

> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_leds>;
> +
> +		led1 {
> +			label = "LED 1";

So, what kind of LED do you have, and what color is it? label should probably be something like
notify:green.

> +	charger@6b { /* bq25896 */
> +		compatible = "ti,bq25890";
> +		reg = <0x6b>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_charger>;
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
> +		ti,battery-regulation-voltage = <4192000>; /* 4.192V */
> +		ti,charge-current = <1600000>; /* 1.6 A */

No space before A, for consistency.

> +		ti,termination-current = <66000>;  /* 66mA */
> +		ti,precharge-current = <1300000>; /* 1.3A */

I thought precharge is usually something low, because you are not yet sure of battery health...?

> +		ti,minimum-sys-voltage = <2750000>; /* 2.75V */

Are you sure? Normally systems shut down at 3.2V, 3V or so. Li-ion batteries don't
really like to be discharged _this_ deep.

										Pavel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
