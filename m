Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F971864E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 07:00:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OHme1Ez/JaFUrlcYpKuv+e3U8Bc5JyduoxGqXbNixtE=; b=Br4z4S5XaWSuBU
	Ajq3N9N8EtIdLHb67JJwZoqNKHqBSKp57lQnX4v+e3d9FNbOT9Ac+R7s2uO1SBftTAosXVPDIVBq6
	FMuBz50r7c4ZYs56nf+kypiWiYN+Hs0ypuOGOCer407+JLVcgVHWAopXHNgsEZxHX7sHl3o7yXQAZ
	ZxQ2RRc6JmEslSVGfjXuQ4jE5pd99AxT6IZ66C/CXHbkaR5fE3aSf2BjF+ZAL91PnhB5T+faxGDPI
	/mVvG9j4LknqCWlv1hf0iWacKiT4YZ92iZhX7vfuY2+dgeIArc/4+yQmkA2AHRZGJE9Hdu6dG69Lr
	R9pFydsJfYTRz3YVUkHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDinp-0007zw-3E; Mon, 16 Mar 2020 06:00:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDinh-0007zI-58
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 06:00:34 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F23AE20674;
 Mon, 16 Mar 2020 06:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584338431;
 bh=yl/qPFKKnwQwDufpWRGRjQqmbLS7/fSpdX7eJ+7fhnQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ypyaa/UQZF2jfFQsJ8Qqr9Ui/KpCleS7pHALam1HC8TRMikfNfrGfG9uTjeVN8sYt
 9gTYYA8lPIesJMDDSJ89snEbaep7vYM37q48wu8xy0mrO2Eomhr6uNTTbzhHd0lDgz
 cj4L1PznVG4DqQ0F+dv8S5ElG2ffDKp+qXpOYzm0=
Date: Mon, 16 Mar 2020 14:00:25 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 1/2] arm64: dts: imx8qxp-mek: Sort labels alphabetically
Message-ID: <20200316060024.GG17221@dragon>
References: <1584321993-8642-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584321993-8642-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_230033_219980_E7632B22 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, abel.vesa@nxp.com,
 daniel.baluta@nxp.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 09:26:32AM +0800, Anson Huang wrote:
> Sort the labels alphabetically for consistency.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- Rebase to latest branch, no code change.
> ---
>  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 50 ++++++++++++++++-----------
>  1 file changed, 30 insertions(+), 20 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> index d3d26cc..b1befdb 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> @@ -30,18 +30,7 @@
>  	};
>  };
>  
> -&adma_lpuart0 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_lpuart0>;
> -	status = "okay";
> -};
> -
> -&fec1 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_fec1>;
> -	phy-mode = "rgmii-id";
> -	phy-handle = <&ethphy0>;
> -	fsl,magic-packet;
> +&adma_dsp {
>  	status = "okay";
>  
>  	mdio {

Here is a rebase issue, i.e. adma_dsp shouldn't get a mdio child node.
It came from the conflict with one commit on my fixes branch.  I decided
to drop the series for the coming merge window.  Let's start over again
after 5.7-rc1 becomes available.

Shawn

> @@ -136,6 +125,35 @@
>  	};
>  };
>  
> +&adma_lpuart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_lpuart0>;
> +	status = "okay";
> +};
> +
> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec1>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&ethphy0>;
> +	fsl,magic-packet;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <0>;
> +		};
> +	};
> +};
> +
> +&scu_key {
> +	status = "okay";
> +};
> +
>  &usdhc1 {
>  	assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
>  	assigned-clock-rates = <200000000>;
> @@ -234,11 +252,3 @@
>  		>;
>  	};
>  };
> -
> -&adma_dsp {
> -	status = "okay";
> -};
> -
> -&scu_key {
> -	status = "okay";
> -};
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
