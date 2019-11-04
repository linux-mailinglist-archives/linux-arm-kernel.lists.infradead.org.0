Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B77FED9EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:32:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRpyqxs/fbCGnfaOTIEznFpABm+2J7PgP08S63aJgXg=; b=eqgZQsE8Umg85j
	4/ipTwcgy0yamq4xJMsLB/1qXOIe6eoRbUzJiFV1SOXKthEmgnpsUW9p+fZ8Kfg9EuuIM5XCht2s2
	0B84DRWp62YLeDk/4QH2PYtXNZUgml+gWJ/ipO8ohymBD5wemRwLBqf6oKmhzsr0xdaXP8w5KUs3O
	li5SseqmCb93xm2qz+dR2ASEG/TJH352Ou3n7WkL//RzjnOiBqVwJYUqU1lK773knR6kGiyaGlnjP
	myh1sfHFU3njqCL7BbcjmNO9XUEJvI2/jxxCDoRUQo5bYrN/jq0cEVfJCKoxH0+LTc2I9O6eEW1IH
	Kd+sZCyHkOmYd7LDfUjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWqi-0001uR-0Y; Mon, 04 Nov 2019 07:32:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWqZ-0001tp-Ea
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 07:32:20 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71AF921D71;
 Mon,  4 Nov 2019 07:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572852739;
 bh=ayt9FfBU8eNkEx5C3qhg37/hdrYd8vuX/qA86acnJEE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qBRB+4+APc0noomEvQDynpelje9OGoU7byUlVPN4D+hQzQpZXc6oazAa/k9SPeEI7
 pmIEyo0tIqwhISJFM7cXzYG9fKwiA+Uaz0EYzxx/ZYyop1sYctwox9UkCY30ViAtuT
 7uwCslD8QDSZEkEeLhi4LveQiDczfFyR/J59qWTE=
Date: Mon, 4 Nov 2019 15:31:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v3 07/11] ARM: dts: imx6ul-kontron-n6x1x-s: Add
 vbus-supply and overcurrent polarity to usb nodes
Message-ID: <20191104073151.GR24620@dragon>
References: <20191031142112.12431-1-frieder.schrempf@kontron.de>
 <20191031142112.12431-8-frieder.schrempf@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031142112.12431-8-frieder.schrempf@kontron.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_233219_511672_5B403628 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 02:24:21PM +0000, Schrempf Frieder wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> To silence the warnings shown by the driver at boot time, we add a
> fixed regulator for the 5V supply of usbotg2 and specify the polarity
> of the overcurrent signal for usbotg1.
> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> Fixes: 1ea4b76cdfde ("ARM: dts: imx6ul-kontron-n6310: Add Kontron i.MX6UL N6310 SoM and boards")

I do not think it's a bug fix, so the Fixes tag doesn't really apply.

Shawn

> ---
>  arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
> index 2299cad900af..d3eb21aa9014 100644
> --- a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
> +++ b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
> @@ -45,6 +45,13 @@
>  		regulator-max-microvolt = <3300000>;
>  	};
>  
> +	reg_5v: regulator-5v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "5v";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
>  	reg_usb_otg1_vbus: regulator-usb-otg1-vbus {
>  		compatible = "regulator-fixed";
>  		regulator-name = "usb_otg1_vbus";
> @@ -191,6 +198,7 @@
>  	srp-disable;
>  	hnp-disable;
>  	adp-disable;
> +	over-current-active-low;
>  	vbus-supply = <&reg_usb_otg1_vbus>;
>  	status = "okay";
>  };
> @@ -198,6 +206,7 @@
>  &usbotg2 {
>  	dr_mode = "host";
>  	disable-over-current;
> +	vbus-supply = <&reg_5v>;
>  	status = "okay";
>  };
>  
> -- 
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
