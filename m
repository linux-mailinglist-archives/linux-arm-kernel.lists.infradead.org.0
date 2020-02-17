Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E45F160951
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:54:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Hp/EL3BRSW3ZufxG0TAvzFfBz1GlAVNVFE2mtqgT9E=; b=l4AsKtSRlXF+pU
	OtmGXYtTv4wZAfVGknRunFBea1bxFdxWtSIIi6Nor3hOZrWjONRJxwyJtUtfs0ODNDV5Ib5wfyNSX
	yfkT232UAmfhcoFc20EXu4wntJ/h6WC4Rxt08Wls2zN0Gpgt/eSasTzMROFuPW9Cwc1n1vTBEw27q
	ancXodNiv5MSlOJM1yfNigFcHZdpxcrL1pO2mMjggUm7J6ikj7A3Y4YDAI/3D+fGGc2pd2v46ax9D
	TmLiGqOHX0z+ncteyOAxd+cf3wokenLrCaN91EZAByZvjBa/A1Ts6+COsIi0wnAhw2mZvAK07/3Ow
	fdu7GG10ciRN735Z1OmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3XUV-0005xc-HG; Mon, 17 Feb 2020 03:54:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3XUI-0005x3-FD
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:54:27 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B2BCC2072C;
 Mon, 17 Feb 2020 03:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581911666;
 bh=jrF0oNRyAPvPKYYpF8tmM5q6hhzDDWjQzsZFCTo4Ikc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PbppxtE2EaohmfIqplGUBKlCfsZT1Lp29fHIY07N/pv1pgPZ4spbRmWBdzLkL2bfq
 2LsmfeIjF0Nrh5D/5DHXJLXYJ/03eipk3xWU0qvxjJ6awGWA/Oi4iOWdG0WdvxNloR
 Jbfp5PZ7ZrYgondMAjyP46dVAEpc6KdfCiu6ETGA=
Date: Mon, 17 Feb 2020 11:54:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH v1 01/12] arm64: dts: librem5-devkit: add sai2 and sai6
 pinctrl definitions
Message-ID: <20200217035416.GB5395@dragon>
References: <20200205143003.28408-1-martin.kepplinger@puri.sm>
 <20200205143003.28408-2-martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205143003.28408-2-martin.kepplinger@puri.sm>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_195426_535196_A1750B10 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, robh@kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 05, 2020 at 03:29:52PM +0100, Martin Kepplinger wrote:
> From: "Angus Ainslie (Purism)" <angus@akkea.ca>
> 
> Add missing sai2 and sai6 audio interface pinctrl definitions for the
> Librem 5 devkit.
> 
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
> ---
>  .../dts/freescale/imx8mq-librem5-devkit.dts   | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> index 764a4cb4e125..9702db69d3ed 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> @@ -555,6 +555,25 @@
>  		>;
>  	};
>  
> +	pinctrl_sai2: sai2grp {
> +		fsl,pins = <
> +		MX8MQ_IOMUXC_SAI2_TXFS_SAI2_TX_SYNC	0xd6

Please be consistent with existing indentation style.

Shawn

> +		MX8MQ_IOMUXC_SAI2_TXC_SAI2_TX_BCLK	0xd6
> +		MX8MQ_IOMUXC_SAI2_TXD0_SAI2_TX_DATA0	0xd6
> +		MX8MQ_IOMUXC_SAI2_RXD0_SAI2_RX_DATA0	0xd6
> +		MX8MQ_IOMUXC_SAI2_MCLK_SAI2_MCLK	0xd6
> +		>;
> +	};
> +
> +	pinctrl_sai6: sai6grp {
> +		fsl,pins = <
> +		MX8MQ_IOMUXC_SAI1_RXD5_SAI6_RX_DATA0	0xd6
> +		MX8MQ_IOMUXC_SAI1_RXD6_SAI6_RX_SYNC	0xd6
> +		MX8MQ_IOMUXC_SAI1_TXD4_SAI6_RX_BCLK     0xd6
> +		MX8MQ_IOMUXC_SAI1_TXD5_SAI6_TX_DATA0	0xd6
> +		>;
> +	};
> +
>  	pinctrl_typec: typecgrp {
>  		fsl,pins = <
>  			MX8MQ_IOMUXC_NAND_DATA06_GPIO3_IO12		0x16
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
