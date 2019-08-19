Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6423692256
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6Vy06SMmuBC/aLoLCT3RXZ4DnVk+pnx2bvtRRhw8hs=; b=LzwPX7jvwDrbP2
	D3FIBocbIx2sXie89clZs/Y/mNtGl5vY7pTM8La783wTbPuyTXj8cVc/+QVcBUNVHJ4VWieVHYfVC
	XQTmoIypYJQXMI5OUca+J61Ngyld+pIPTZ0nEh6mhK6+QCOIVTSdIFhQLwsayjwbghEA3nwfJhIvu
	/I5Y6GctwRhM0/DA4TWizgZJ0fUW/Q/5Qc6N83WWV8X5L/bFisXFg4o4eX1KFUtq8cw+oDQtyeWNB
	YzSUCoyOM6pz4sK3JgVuYOMea05BHEvDPr3nQOxZAtHz98SrwUrmXROeJkqflf07foqTK/TggUamC
	u9MhAid1ywP8478xoM7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfpf-00082s-2E; Mon, 19 Aug 2019 11:28:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfpX-00082F-P4
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:28:09 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32BA320851;
 Mon, 19 Aug 2019 11:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566214087;
 bh=2eCWogtyvjtgXycwn80iAAqkLyoGmWRMPImaEfrwOnk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yE2pVYkfMReaD9Zs7Yh3YsDcK89YDq2o3CQ11Vnj07BvPLBhPwvzmSM82BSxdYfQQ
 wfWJry5lVUOsaBtcplTxrEAP44nl5jBNfxk7M9+mEKh2UNYdPUG31j/VdzIntKNdGn
 yHJPBEbHM66PCg9z3nFPayRINtIvBToHQIDWepfY=
Date: Mon, 19 Aug 2019 13:27:55 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH v4 11/21] ARM: dts: imx6qdl-apalis: Add sleep state to
 can interfaces
Message-ID: <20190819112754.GU5999@X250>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-12-philippe.schenker@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812142105.1995-12-philippe.schenker@toradex.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_042807_854166_A61B5A97 
X-CRM114-Status: GOOD (  18.40  )
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

On Mon, Aug 12, 2019 at 02:21:31PM +0000, Philippe Schenker wrote:
> This patch prepares the devicetree for the new Ixora V1.2 where we are
> able to turn off the supply of the can transceiver. This implies to use
> a sleep state on transmission pins in order to prevent backfeeding.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> ---
> 
> Changes in v4:
> - Add Marcel Ziswiler's Ack
> 
> Changes in v3: None
> Changes in v2:
> - Changed commit title to '...imx6qdl-apalis:...'
> 
>  arch/arm/boot/dts/imx6qdl-apalis.dtsi | 27 +++++++++++++++++++++------
>  1 file changed, 21 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-apalis.dtsi b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> index 7c4ad541c3f5..59ed2e4a1fd1 100644
> --- a/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> @@ -148,14 +148,16 @@
>  };
>  
>  &can1 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_flexcan1>;

This line doesn't need to be changed.

> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&pinctrl_flexcan1_default>;
> +	pinctrl-1 = <&pinctrl_flexcan1_sleep>;
>  	status = "disabled";
>  };
>  
>  &can2 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_flexcan2>;
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&pinctrl_flexcan2_default>;
> +	pinctrl-1 = <&pinctrl_flexcan2_sleep>;
>  	status = "disabled";
>  };
>  
> @@ -599,19 +601,32 @@
>  		>;
>  	};
>  
> -	pinctrl_flexcan1: flexcan1grp {

Ditto.  I take them as unnecessary changes.

Shawn

> +	pinctrl_flexcan1_default: flexcan1defgrp {
>  		fsl,pins = <
>  			MX6QDL_PAD_GPIO_7__FLEXCAN1_TX 0x1b0b0
>  			MX6QDL_PAD_GPIO_8__FLEXCAN1_RX 0x1b0b0
>  		>;
>  	};
>  
> -	pinctrl_flexcan2: flexcan2grp {
> +	pinctrl_flexcan1_sleep: flexcan1slpgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_7__GPIO1_IO07 0x0
> +			MX6QDL_PAD_GPIO_8__GPIO1_IO08 0x0
> +		>;
> +	};
> +
> +	pinctrl_flexcan2_default: flexcan2defgrp {
>  		fsl,pins = <
>  			MX6QDL_PAD_KEY_COL4__FLEXCAN2_TX 0x1b0b0
>  			MX6QDL_PAD_KEY_ROW4__FLEXCAN2_RX 0x1b0b0
>  		>;
>  	};
> +	pinctrl_flexcan2_sleep: flexcan2slpgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_KEY_COL4__GPIO4_IO14 0x0
> +			MX6QDL_PAD_KEY_ROW4__GPIO4_IO15 0x0
> +		>;
> +	};
>  
>  	pinctrl_gpio_bl_on: gpioblon {
>  		fsl,pins = <
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
