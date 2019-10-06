Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05514CCF73
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 10:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8CeWurrfKpa0IWDpBwOi+bOJrW/uPOjerlhtm3ekco=; b=PTq2zLRh04/hFr
	vViCEeOAz+CzUpvOwuiOq0NRkok31XTB4p6H3q5b7yk0q7auuN6jm+Vb9dlQVdnPj8uiRraGSrjCE
	LCATGHkobTzwN6oiCr94fHsyADJSGrM96/ld6432J2/aANiyscTsqXIB9MIVn12RLClSuVdmhnNw1
	++uEvL6BHfKBLFo2ZeFy1B0OfzaBOcpwpoliminlqRd1m6ANfP8oA9KjJX+QOArZZuOPqXS/RJ2jf
	eAG91gjo/d+CB+xhy/Qf/BsDak4c8iI//1s9dXN9mdODnYB4qY187M/2q3tJu3p02FEIVcsLP1cir
	FuaKvoh9pc5mL2UpKDnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH1yX-0007mU-BQ; Sun, 06 Oct 2019 08:33:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH1yP-0007m8-Jc
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 08:33:02 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48FC220867;
 Sun,  6 Oct 2019 08:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570350781;
 bh=uI2z8kh80JJBsoGDCTpXgGoUlxoiXMzMMLH6/pjgph4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cQ1mRK8Nn2V3RByDwL40J4iVe6wtSvOfgGM+mpzX1n1u3vY8AmNcM0y566Y9iRK/D
 H8sPOn6CgAXUfq2lUctn04EUH546sfhdvBSUnmFYJm9DNhtOsh/+f3pQb902XNFzUp
 3DXxOW6MoTALJyZoCrP8sMX1DVLJE7px0Xm666v0=
Date: Sun, 6 Oct 2019 16:32:35 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] ARM: dts: imx7s: Correct GPT's ipg clock source
Message-ID: <20191006083233.GB7150@dragon>
References: <1568622549-15819-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568622549-15819-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_013301_665702_21FEC3A6 
X-CRM114-Status: GOOD (  12.94  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 04:29:09PM +0800, Anson Huang wrote:
> i.MX7S/D's GPT ipg clock should be from GPT clock root and
> controlled by CCM's GPT CCGR, using correct clock source for
> GPT ipg clock instead of IMX7D_CLK_DUMMY.

So both 'ipg' and 'per' clock are coming from GPT root clock?

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

It looks like a fix, so do we need a Fixes tag here?

Shawn

> ---
>  arch/arm/boot/dts/imx7s.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
> index 710f850..e2e604d 100644
> --- a/arch/arm/boot/dts/imx7s.dtsi
> +++ b/arch/arm/boot/dts/imx7s.dtsi
> @@ -448,7 +448,7 @@
>  				compatible = "fsl,imx7d-gpt", "fsl,imx6sx-gpt";
>  				reg = <0x302d0000 0x10000>;
>  				interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
> -				clocks = <&clks IMX7D_CLK_DUMMY>,
> +				clocks = <&clks IMX7D_GPT1_ROOT_CLK>,
>  					 <&clks IMX7D_GPT1_ROOT_CLK>;
>  				clock-names = "ipg", "per";
>  			};
> @@ -457,7 +457,7 @@
>  				compatible = "fsl,imx7d-gpt", "fsl,imx6sx-gpt";
>  				reg = <0x302e0000 0x10000>;
>  				interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
> -				clocks = <&clks IMX7D_CLK_DUMMY>,
> +				clocks = <&clks IMX7D_GPT2_ROOT_CLK>,
>  					 <&clks IMX7D_GPT2_ROOT_CLK>;
>  				clock-names = "ipg", "per";
>  				status = "disabled";
> @@ -467,7 +467,7 @@
>  				compatible = "fsl,imx7d-gpt", "fsl,imx6sx-gpt";
>  				reg = <0x302f0000 0x10000>;
>  				interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
> -				clocks = <&clks IMX7D_CLK_DUMMY>,
> +				clocks = <&clks IMX7D_GPT3_ROOT_CLK>,
>  					 <&clks IMX7D_GPT3_ROOT_CLK>;
>  				clock-names = "ipg", "per";
>  				status = "disabled";
> @@ -477,7 +477,7 @@
>  				compatible = "fsl,imx7d-gpt", "fsl,imx6sx-gpt";
>  				reg = <0x30300000 0x10000>;
>  				interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
> -				clocks = <&clks IMX7D_CLK_DUMMY>,
> +				clocks = <&clks IMX7D_GPT4_ROOT_CLK>,
>  					 <&clks IMX7D_GPT4_ROOT_CLK>;
>  				clock-names = "ipg", "per";
>  				status = "disabled";
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
