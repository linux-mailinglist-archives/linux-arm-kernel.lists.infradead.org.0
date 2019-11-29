Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE1510D8CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 18:07:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tKXu//Rx2bujzhiAPiF7abi3gLQkPmHBUa041a+upxM=; b=a835bn8MOJsZRn
	VJLSHqiiGz6+D/c6yXC52ixYSMe31Jv9IVTRE49g2qt+GwX/oE6yXtCyHOKe+9qwfX0x5D3NQh+OI
	oxM/WEBuYVBoN3DeIqOmftGQLyFDKyTF170Fs+S15QiJrf59POHsLISYVK01qxSlGk/0GbmntGW++
	9Z4S1854b30Nq6y91JUy+xvUhcuoSUhRXrBXVg+e+5XJ71MMn77Hfgt8v5PJ8T/Jl3WFtsgNOKoKh
	NeFkxWCRsi+B7Bs3tADN3XlwNCsWJ6pUUTsrRNv+O091XP+gJcW22ozOvElj4Jh8lP4AWNV4aM2uB
	d16n0Bu+IImczz5yYJeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iajk8-0006TH-75; Fri, 29 Nov 2019 17:07:44 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iajjy-0006SS-DD
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 17:07:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OmANGPrG+ng069xuXj6w2HTYAXpdCYeG+/WKBZBjW50=; b=spylNlP7M5+JdxXPyu41y2eaoz
 YgK3Gj93j2gWLDM/CYqont+37FSEq24HPS1vGioIgqi1pnNPZT8QgjXhOdq5N3W087kVNcbWiCDtS
 6xCL6tKaa2ROJrj1o4EjQXye1y3Mn0XAFKHUwSdCbrsAhNsU8VUBF7KLwZvsZ0k9rD94=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iajjh-0007ki-Hv; Fri, 29 Nov 2019 18:07:17 +0100
Date: Fri, 29 Nov 2019 18:07:17 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Baruch Siach <baruch@tkos.co.il>
Subject: Re: [PATCH] ARM: dts: mvebu: add support for SolidRun Clearfog GTR
Message-ID: <20191129170717.GC28308@lunn.ch>
References: <3a870e11b152e2f8ffb2b3256c5ac42741658c4c.1574960406.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a870e11b152e2f8ffb2b3256c5ac42741658c4c.1574960406.git.baruch@tkos.co.il>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_090734_446980_ECF1709B 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 07:00:06PM +0200, Baruch Siach wrote:
> SolidRun Clearfog GTR L8 and S4 SBCs are based on Armada 385. They
> features 8 (L8) or 4 (S4) switched Ethernet ports, 1 1Gb Ethernet port,
> 1 directly connected SFP port, 1 SFP port behind the switch (not
> currently described in DT),

Hi Baruch

Did you try to add the SFP on the switch? What problems did you have?
The general support for it should be there.

> +			i2c@11100 { /* SFP */
> +				pinctrl-0 = <&cf_gtr_i2c1_pins>;
> +				pinctrl-names = "default";
> +				status = "okay";
> +			};

Since there are two SFPs, it would be a good idea to indicate which
one this is.

> +	sfp: sfp {
> +		compatible = "sff,sfp";
> +		i2c-bus = <&i2c1>;
> +		los-gpio = <&gpio1 22 GPIO_ACTIVE_HIGH>;
> +		mod-def0-gpio = <&gpio0 25 GPIO_ACTIVE_LOW>;
> +		tx-disable-gpio = <&gpio1 14 GPIO_ACTIVE_HIGH>;
> +	};

when you get the second sfp working you are going to have naming
issue. So maybe call this sfp0?

> +		led1 {
> +			label = "led1";
> +			gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		led2 {
> +			label = "led2";
> +			gpios = <&gpio1 20 GPIO_ACTIVE_HIGH>;
> +		};

There is a naming convention of LEDS labels. This does not fit it.

> +&gpio0 {
> +	pinctrl-0 = <&cf_gtr_fan_pwm>;
> +	pinctrl-names = "default";
> +
> +	wifi-disable {
> +		gpio-hog;
> +		gpios = <30 GPIO_ACTIVE_LOW>, <31 GPIO_ACTIVE_LOW>;
> +		output-low;
> +		line-name = "wifi-disable";
> +	};
> +};

Isn't there a generic rfkill GPIO driver? Never looked, but it seems
like it should exist.

> +	sar-isolation {
> +		gpio-hog;
> +		gpios = <15 GPIO_ACTIVE_LOW>;
> +		output-low;
> +		line-name = "sar-isolation";
> +	};

What is SAR?

     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
