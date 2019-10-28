Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E84E7131
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 13:18:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FNtQSzA9gCqq3dj9qh/K3EAlU+KFEVCRHADAFs8Usrg=; b=L9YV7Z1O5Kmlh4
	1ntbCDq4aZxVjLnQ4itWKYqJy7mPvESEi53q5x7ZzAGdkwJI0nimtHcJNyEXmton3z7fzHLeYQ8FT
	ZEOvBggpOqnBH4lco/nhPIQWSMfrcGXBcMlU77QsopLB7a8/W//8CEfghtTXBkb2QZaabUt9WU6IA
	pakzvDkcRRDjSs6nmOozChWoif1ygS2GApK+HsaJVIdS3IoxsH0slz6eRRQ/6BnrSVLGn+s4nZF6d
	abo6XTcIKHF0lB29Mc1M4ruCkVzjOyu6QOZKBRdtLim2xcd3waEGB9fxx9x5M/VhH5RKnaz1aGwI3
	O14U+hl5CHl/7Zlyqqzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP3yD-0001HF-MC; Mon, 28 Oct 2019 12:18:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3y3-0001GI-P4
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 12:17:53 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9ED0B2086D;
 Mon, 28 Oct 2019 12:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572265071;
 bh=4kjKjQAdwQg+xIOM1RGhfB1fhC3MB3bGym1xpZl9M4A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FYgnslUuZnLlj9KdLcmMiyHNbPvW79emQLvYDof+rYLD9FbSUFOeZOUyJfQvVpzb4
 M71yGtlHpkJJJ7G8XUbBeqh1KNBHfiaRS3T3H6S05hoaETGTkjrdfHAHW6e8oFB3Se
 xrtmTNL7KSHzVqf50nKwWXbQl0q6PNJ1ba5z2Au4=
Date: Mon, 28 Oct 2019 20:17:26 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Subject: Re: [PATCH] ARM64: imx8mm: Change compatible string for sdma
Message-ID: <20191028121725.GJ16985@dragon>
References: <1571992763-31339-1-git-send-email-shengjiu.wang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571992763-31339-1-git-send-email-shengjiu.wang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_051751_833701_EA78C6DE 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ping.bai@nxp.com,
 Anson.Huang@nxp.com, daniel.baluta@nxp.com, s.hauer@pengutronix.de,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 04:39:23PM +0800, Shengjiu Wang wrote:
> SDMA in i.MX8MM should use same configuration as i.MX8MQ
> So need to change compatible string to be "fsl,imx8mq-sdma".
> 
> Fixes: a05ea40eb384 ("arm64: dts: imx: Add i.mx8mm dtsi support")
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>

Updated the subject as below and applied the patch.

  arm64: dts: imx8mm: fix compatible string for sdma

Shawn

> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 2139c0a9c495..6a54d2a3b19b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -394,7 +394,7 @@
>  			};
>  
>  			sdma2: dma-controller@302c0000 {
> -				compatible = "fsl,imx8mm-sdma", "fsl,imx7d-sdma";
> +				compatible = "fsl,imx8mm-sdma", "fsl,imx8mq-sdma";
>  				reg = <0x302c0000 0x10000>;
>  				interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clk IMX8MM_CLK_SDMA2_ROOT>,
> @@ -405,7 +405,7 @@
>  			};
>  
>  			sdma3: dma-controller@302b0000 {
> -				compatible = "fsl,imx8mm-sdma", "fsl,imx7d-sdma";
> +				compatible = "fsl,imx8mm-sdma", "fsl,imx8mq-sdma";
>  				reg = <0x302b0000 0x10000>;
>  				interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clk IMX8MM_CLK_SDMA3_ROOT>,
> @@ -741,7 +741,7 @@
>  			};
>  
>  			sdma1: dma-controller@30bd0000 {
> -				compatible = "fsl,imx8mm-sdma", "fsl,imx7d-sdma";
> +				compatible = "fsl,imx8mm-sdma", "fsl,imx8mq-sdma";
>  				reg = <0x30bd0000 0x10000>;
>  				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clk IMX8MM_CLK_SDMA1_ROOT>,
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
