Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED1018611E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 02:04:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GOyCC7JgMnkXWE5I8gzjqAoEOefLx9LOSLelnJ+95EA=; b=ZeBX4o0eaIm6cq
	PYyVK9Uz1nT2EJBaUFP0DfPswT7DDbXJsNsKVWfGgsLdJ90Edr3/7CJxssKdvvk+vWJRHVKBe6K7n
	xWXEWd0PcQcCK5C5Kwi10v18f9yNppxyi3/Fky7NVOVqXa5yNVGHgkJGf1xIquAgBOX8AEaZXE+9r
	PXwaGbR5mCq2YwQw8nscSdRan0XaZ3lvqkXwGtYZ6pGZgKpNL8aB5FwWKFmqqOsc4Nb8EFXLZ4NIZ
	Vx6wyqnmZnkiulX5+KsIlVwpXzQWOrLOFnUp8SB8Xkmen8OubQdEVMUlfeJNG0kK38r7ZAzjDjx/6
	zVmKAMNaXcJoXwj9gE3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDeBF-0003R9-Vh; Mon, 16 Mar 2020 01:04:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDeB6-0003Qq-SQ
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 01:04:26 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B491205ED;
 Mon, 16 Mar 2020 01:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584320664;
 bh=Hw0ZivXWa3VjmpcCVQHuCLJJ+hlMopS5Berc2mfx4uU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sgOXCiVWkTvI7m9jrLidmfr5ERKuToqTfbuzGQ2P3SWJdpeH1NkNAM05witSWzZiz
 q+CxWlK+sxeZqzq6J3mULRs4ZbP4jYVMVXhspD4iqG3QvjgWe5LF/5ZtGi8pT6ENF6
 cqPZG70OPM+hb9UYZRzJb/HWrWD/IxrIgfUSDvOw=
Date: Mon, 16 Mar 2020 09:04:17 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/2] arm64: dts: imx8qxp-mek: Sort labels alphabetically
Message-ID: <20200316010416.GI17221@dragon>
References: <1583830337-23889-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583830337-23889-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_180424_938819_929374A1 
X-CRM114-Status: GOOD (  15.05  )
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

On Tue, Mar 10, 2020 at 04:52:16PM +0800, Anson Huang wrote:
> Sort the labels alphabetically for consistency.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

It doesn't apply to my branch.

Shawn

> ---
>  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 60 +++++++++++++--------------
>  1 file changed, 30 insertions(+), 30 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> index 13460a3..2ed7aba 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> @@ -30,29 +30,8 @@
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
> -
> -	mdio {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		ethphy0: ethernet-phy@0 {
> -			compatible = "ethernet-phy-ieee802.3-c22";
> -			reg = <0>;
> -		};
> -	};
>  };
>  
>  &adma_i2c1 {
> @@ -131,6 +110,35 @@
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
> @@ -229,11 +237,3 @@
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
