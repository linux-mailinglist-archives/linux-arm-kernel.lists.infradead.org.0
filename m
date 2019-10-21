Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA4EDE975
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXDuWB5QcmxZSk9lVrdNB4hI1Zbd/sI9GSl01ssWhrc=; b=nQlnl+eZi1PHND
	w9PdRyFJLjxqfSUzzMZJJnKPRZfJW0scL2BrR91CxWcb77OgFY7Mcimb1g/R96nN9DWeylBuFWm5e
	bNzMrZcQIPnGYAqcmGhZHmca1S6uMqxFono5A1ekqqNkI+gGW5DZv6OCwALCuA6wO8e4bJboqJYX3
	0jUeTshvUOkwDsX4+0AVH5KfRUtjbSwCCS26KYYR0OHlok+JonSwYwqB6lXEjX0GnjQJGYDjz6I7k
	VD4opFWjXBbWW6bbDHo+39APDfqX7HX+qR82CQbHanJRHc7IMk2GeUjjKu177fNteXvEJQckOWHUn
	bgXtyINupjzaOC7itlRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMUvK-0003It-Vy; Mon, 21 Oct 2019 10:28:26 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMUvA-0003Hw-1H
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:28:17 +0000
Received: by mail-ed1-f66.google.com with SMTP id v8so9609489eds.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 03:28:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=32WruUQbRO6vTu7JHKjRq7oaWF4FWya6VgqSM214C+Y=;
 b=OAms5yZ2vJvKGA2oolGv97+6FtC3dYj5znVB8eoSOouN1aqBuiEv4BNBpkWacGk4ZM
 2mFHMn9ra3Tm84Xv1s/BYej8Dq2pT/pAzl1mGe5c+qseAySyKrEjRx/CkGqyhPDNM29D
 xu0QrBMuC/2Qu/ORd7gw2Im87Z042CgzEj+ijlDQa6RPIKWrGqP6VHSfLCsJxDaKODNj
 kbkQtmoLH2CNb2bP4/KfquAzaa/aRG+3KzowpLeJ+WE1Mpq7l9Q6CvLX2jog6z+hCewN
 aEnzdb/sIHtYlVAToC+CagWsyUsd8wkY57e3AtxkzioYRCIq6+3Tn/YqrImzf3C0m6gA
 pmQg==
X-Gm-Message-State: APjAAAVDp4v/+vQ8s0bkRb1ESaULoZREyKSsqOLRkRJOe/JFPwHkAyrf
 Blhc7KfIUEhDTQx78ohLEUE=
X-Google-Smtp-Source: APXvYqzhozcd1lqqT8Tpyf3S1ox+0mSMUIdIK4/skr94JIQi3fBFI4Y/wJHBDk8i/MAoWWMpQTVaWA==
X-Received: by 2002:a50:ec0f:: with SMTP id g15mr24166931edr.59.1571653692310; 
 Mon, 21 Oct 2019 03:28:12 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id w16sm574836edd.93.2019.10.21.03.28.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 03:28:11 -0700 (PDT)
Date: Mon, 21 Oct 2019 12:28:09 +0200
From: "krzk@kernel.org" <krzk@kernel.org>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH 01/10] ARM: dts: imx6ul-kontron-n6310: Move common SoM
 nodes to a separate file
Message-ID: <20191021102809.GA1934@pi3>
References: <20191016150622.21753-1-frieder.schrempf@kontron.de>
 <20191016150622.21753-2-frieder.schrempf@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016150622.21753-2-frieder.schrempf@kontron.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_032816_076069_6F947675 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 03:07:19PM +0000, Schrempf Frieder wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> The Kontron N6311 and N6411 SoMs are very similar to N6310. In
> preparation to add support for them, we move the common nodes to a
> separate file imx6ul-kontron-n6x1x-som-common.dtsi.
> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> ---
>  .../boot/dts/imx6ul-kontron-n6310-som.dtsi    |  95 +-------------
>  .../dts/imx6ul-kontron-n6x1x-som-common.dtsi  | 123 ++++++++++++++++++
>  2 files changed, 124 insertions(+), 94 deletions(-)
>  create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6x1x-som-common.dtsi
> 
> diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6310-som.dtsi b/arch/arm/boot/dts/imx6ul-kontron-n6310-som.dtsi
> index a896b2348dd2..47d3ce5d255f 100644
> --- a/arch/arm/boot/dts/imx6ul-kontron-n6310-som.dtsi
> +++ b/arch/arm/boot/dts/imx6ul-kontron-n6310-som.dtsi
> @@ -6,7 +6,7 @@
>   */
>  
>  #include "imx6ul.dtsi"
> -#include <dt-bindings/gpio/gpio.h>
> +#include "imx6ul-kontron-n6x1x-som-common.dtsi"
>  
>  / {
>  	model = "Kontron N6310 SOM";
> @@ -18,49 +18,7 @@
>  	};
>  };
>  
> -&ecspi2 {
> -	cs-gpios = <&gpio4 22 GPIO_ACTIVE_HIGH>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_ecspi2>;
> -	status = "okay";
> -
> -	spi-flash@0 {
> -		compatible = "mxicy,mx25v8035f", "jedec,spi-nor";
> -		spi-max-frequency = <50000000>;
> -		reg = <0>;
> -	};
> -};
> -
> -&fec1 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_enet1 &pinctrl_enet1_mdio>;
> -	phy-mode = "rmii";
> -	phy-handle = <&ethphy1>;
> -	status = "okay";
> -
> -	mdio {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		ethphy1: ethernet-phy@1 {
> -			reg = <1>;
> -			micrel,led-mode = <0>;
> -			clocks = <&clks IMX6UL_CLK_ENET_REF>;
> -			clock-names = "rmii-ref";
> -		};
> -	};
> -};
> -
> -&fec2 {
> -	phy-mode = "rmii";
> -	status = "disabled";
> -};
> -
>  &qspi {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_qspi>;
> -	status = "okay";
> -
>  	spi-flash@0 {

You left qspi and flash partitions here, while adding it later. It is
not pure move then and some duplicated stuff remains.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
