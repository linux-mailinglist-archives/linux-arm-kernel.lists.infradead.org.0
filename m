Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D3F169C07
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 02:57:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixKTAXbRSNm8VlfJ/YJbzRQZxcSCOF+bwGtrOp5J2ps=; b=NNEdKTaVBL8BKP
	ZAMo8+D0aprAeYgkHwT6WM+kpyWQ+1t//nwTkj+y8qhBX0EI8o0JKFWD6a2cOv2FsWqmx7hb4oPlC
	zRfOhgPx08wkxeO71AwZ79r9oeCcOCRSh+rUrwu/Ig92ePqyZaH3iDmVd3zqdcls8uL7nXqSw18XS
	f5q4TsgI/38PqZs0RcXm0rCUyuDPGH90jvBYR6WX55F5vcLeIfDbRjYxTc8yuaVmfQdRICnRpPEdv
	AakSgpDOs6HwaOPJQRrbXvta32FwmkvVLakElJYnoEYj9uScWLKgLM4gzB9ESYak9f7EGcgt5mpyU
	peNSuCsNyH0qceL1Njjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j62zg-0001H4-BD; Mon, 24 Feb 2020 01:57:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j62zX-0001Ga-00
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 01:57:04 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 63F27205C9;
 Mon, 24 Feb 2020 01:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582509422;
 bh=RjjvelCSB3sw7rmvNAkcaVIPmUcD/FgzgrYTn+iASdE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j4fhzQXNsZXLRXHVD4gJXXfoOlXDNkmr1ur5RYNLm+pZn2QJ9tIRNIo/HvWaxsHyd
 jRV/8HPCQtu3tEk1nBa1dSHBK2WOnVYL3rmSFf9UYo6ksDhy5ZXBzK7c5zgLTppRq3
 9nCT7DtwGRLHdWCtmKb4AfmQITkZ62e2mjXwe4us=
Date: Mon, 24 Feb 2020 09:56:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH v2 1/9] arm64: dts: librem5-devkit: add sai2 and sai6
 pinctrl definitions
Message-ID: <20200224015650.GD27688@dragon>
References: <20200218084942.4884-1-martin.kepplinger@puri.sm>
 <20200218084942.4884-2-martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218084942.4884-2-martin.kepplinger@puri.sm>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_175703_058593_90B62550 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, robh@kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 09:49:34AM +0100, Martin Kepplinger wrote:
> From: "Angus Ainslie (Purism)" <angus@akkea.ca>
> 
> Add missing sai2 and sai6 audio interface pinctrl definitions for the
> Librem 5 devkit.
> 
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
> Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>

We do not need to be so verbose.  It can be squashed into patch #2.

Shawn

> ---
>  .../dts/freescale/imx8mq-librem5-devkit.dts   | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> index 007c14eec676..1e9fa80be647 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> @@ -567,6 +567,25 @@
>  		>;
>  	};
>  
> +	pinctrl_sai2: sai2grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_SAI2_TXFS_SAI2_TX_SYNC	0xd6
> +			MX8MQ_IOMUXC_SAI2_TXC_SAI2_TX_BCLK	0xd6
> +			MX8MQ_IOMUXC_SAI2_TXD0_SAI2_TX_DATA0	0xd6
> +			MX8MQ_IOMUXC_SAI2_RXD0_SAI2_RX_DATA0	0xd6
> +			MX8MQ_IOMUXC_SAI2_MCLK_SAI2_MCLK	0xd6
> +		>;
> +	};
> +
> +	pinctrl_sai6: sai6grp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_SAI1_RXD5_SAI6_RX_DATA0	0xd6
> +			MX8MQ_IOMUXC_SAI1_RXD6_SAI6_RX_SYNC	0xd6
> +			MX8MQ_IOMUXC_SAI1_TXD4_SAI6_RX_BCLK     0xd6
> +			MX8MQ_IOMUXC_SAI1_TXD5_SAI6_TX_DATA0	0xd6
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
