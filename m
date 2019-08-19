Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276809220E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:19:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ko+M6dkSEeOzkBLtNpxH4hzcZ0FfIzRxkEAJ66MfJjc=; b=tj6YbTSgwAQqeu
	yI2wnJKhzr3jHRDeiFy9eKOiyO9vzHlfsURdeGbvG51zc1eXOz+95v7Sz7x9gGTzQ+AJxkmOcclbv
	9OCrn3xPsySL4jRZYUDULh4PQ1dS5qt/imA8s4/9w9VbA649pNQvv0g0mxinIdZmsqSAnTpwpi7M3
	OIkP3F+mX4JYavx82R/X0VRIRLLmhigwQeswdy8SWmCWAx1lWfYVm35AY5L28b5Vi+x/pfls8bT9d
	ic/hBpOwwOfZdhOV3aeeIBGtiE7e1KDL/OURfUDfvfRVrz28eHSMzGyFx19yYeXZvyw37B9Np+NTE
	IkXO68fDPJys+fo1be2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfgv-0003CE-3H; Mon, 19 Aug 2019 11:19:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfgj-0003BZ-JM
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:19:03 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC9F42085A;
 Mon, 19 Aug 2019 11:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566213541;
 bh=wUOaCEaWH+zGwPwJEP4cQs1+4O414saVr5gYOrQZAfY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DmQrUeLXoNKvO5IHeTW93qHddpzI3CploHgntA27j1EmqglqU89plun/se6FkVdhZ
 By2Fc3Fi1Ikpw6Ms5sSgpdpgJIbzDXCY7mFQUj3ZTfIx0FFWMyEmt90V5pQT6LHQ2A
 oxx5y4i8eocRaYyhM1YcTL0HnBTqZDzfUtuvgdPU=
Date: Mon, 19 Aug 2019 13:18:48 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH v4 07/21] ARM: dts: imx7-colibri: fix 1.8V/UHS support
Message-ID: <20190819111847.GQ5999@X250>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-8-philippe.schenker@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812142105.1995-8-philippe.schenker@toradex.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_041901_653395_4F9A6943 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Michal =?utf-8?B?Vm9rw6HEjQ==?= <michal.vokac@ysoft.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 02:21:25PM +0000, Philippe Schenker wrote:
> From: Stefan Agner <stefan.agner@toradex.com>
> 
> Add pinmuxing and do not specify voltage restrictions for the usdhc
> instance available on the modules edge connector. This allows to use
> SD-cards with higher transfer modes if supported by the carrier board.
> 
> Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> ---
> 
> Changes in v4:
> - Add Marcel Ziswiler's Ack
> 
> Changes in v3:
> - Add new commit message from Stefan's proposal on ML
> 
> Changes in v2: None
> 
>  arch/arm/boot/dts/imx7-colibri.dtsi | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
> index 5347ed38acb2..c563bb821b5e 100644
> --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> @@ -326,7 +326,6 @@
>  &usdhc1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_cd_usdhc1>;
> -	no-1-8-v;
>  	cd-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
>  	disable-wp;
>  	vqmmc-supply = <&reg_LDO2>;
> @@ -671,6 +670,28 @@
>  		>;
>  	};
>  
> +	pinctrl_usdhc1_100mhz: usdhc1grp_100mhz {
> +		fsl,pins = <
> +			MX7D_PAD_SD1_CMD__SD1_CMD	0x5a
> +			MX7D_PAD_SD1_CLK__SD1_CLK	0x1a
> +			MX7D_PAD_SD1_DATA0__SD1_DATA0	0x5a
> +			MX7D_PAD_SD1_DATA1__SD1_DATA1	0x5a
> +			MX7D_PAD_SD1_DATA2__SD1_DATA2	0x5a
> +			MX7D_PAD_SD1_DATA3__SD1_DATA3	0x5a
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_200mhz: usdhc1grp_200mhz {

No reference to them from usdhc1 node?

Shawn

> +		fsl,pins = <
> +			MX7D_PAD_SD1_CMD__SD1_CMD	0x5b
> +			MX7D_PAD_SD1_CLK__SD1_CLK	0x1b
> +			MX7D_PAD_SD1_DATA0__SD1_DATA0	0x5b
> +			MX7D_PAD_SD1_DATA1__SD1_DATA1	0x5b
> +			MX7D_PAD_SD1_DATA2__SD1_DATA2	0x5b
> +			MX7D_PAD_SD1_DATA3__SD1_DATA3	0x5b
> +		>;
> +	};
> +
>  	pinctrl_usdhc3: usdhc3grp {
>  		fsl,pins = <
>  			MX7D_PAD_SD3_CMD__SD3_CMD		0x59
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
