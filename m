Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B1B27795
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 10:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTYxuzIwVU1AIv/yg7aZ7rtZNbCn8eSkOtbnlxHhvf8=; b=t7HIFXiwXCIGk0
	rR8rkkzOPWlp9I+gyttRxR+qlPl/HyQGLaTUxmd4DGLUqvc4eNeIGHGxxTd5Gyv0jPF4sc1M0H5o7
	Sw/gUR1WIC5bRARxsbq4G2PuFOIIc0g/tVnnY3TZh9Oz/U0Ncs9of9I4dF4XOnDhisZpnSrEai+iw
	pkps7CZper0TB+DwqOIgSCMnbcKfYpW/1BBmxS9VhsVCPvNyOylOfe/f5kNgtU5fLZZmC1oW4r0GE
	GUTCkKTEsSCA5UCR2c0ArbIGBzX+FJp1Pc9Vyy1l6TAMn14q+omhvJx3T/F1qOfMgYX4GqmLUHM/2
	FV+zPw6qrkwTltBz1ToA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTifo-0001oa-HP; Thu, 23 May 2019 08:02:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTiff-0001oF-Kb
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 08:01:53 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E46FD20862;
 Thu, 23 May 2019 08:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558598511;
 bh=iGHQJBYwVcFjE73/eLXU8i02Shdf1r/OQvonS87T6bI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lTaV/UQzvpTJ37ykpnlv2M57xZAIk4HIfVuw5Oh0W9cJK5eLkjrfRjjjLLaBWYkPj
 tP/A1I5UZte6ioC9PcP0TsabyKeOpt7PeABtvwHQahS62rNv73Ln9OP2R/spIOSkyF
 OlIUOqPpW/HgVyGawc5xkZ7k34yEDpugSW6hQ/AI=
Date: Thu, 23 May 2019 16:00:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCHv2] arm64: dts: ls1028a: add flexspi nodes
Message-ID: <20190523080049.GI9261@dragon>
References: <20190515110924.13726-1-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515110924.13726-1-xiaowei.bao@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_010151_705094_05CDF90A 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 11:09:25AM +0000, Xiaowei Bao wrote:
> From: Xiaowei Bao <xiaowei.bao@nxp.com>
> 
> Add fspi node property for LS1028A SoC for FlexSPI driver.
> Property added for the FlexSPI controller and for the connected
> slave device for the LS1028ARDB and LS1028AQDS target.
> This is having one SPI-NOR flash device, mt35xu02g connected at
> CS0.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
> v2:
>  - modify the commit message and the dts format.
> 
>  arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts |   15 +++++++++++++++
>  arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts |   15 +++++++++++++++
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi    |   12 ++++++++++++
>  3 files changed, 42 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> index 5bcd491..6e12806 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> @@ -158,6 +158,21 @@
>  	};
>  };
>  
> +&fspi {

Keep the labeling node sort alphabetically.  That said, &fspi should be
added before &i2c0.

> +	status = "okay";

Please have newline between property and child node.

> +	mt35xu02g: flash@0 {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		compatible = "spansion,m25p80";

Please start properties with compatible.

> +		m25p,fast-read;
> +		spi-max-frequency = <20000000>;
> +		reg = <0>;
> +		/* The following setting enables 1-1-8 (CMD-ADDR-DATA) mode */
> +		spi-rx-bus-width = <8>; /* 8 SPI Rx lines */
> +		spi-tx-bus-width = <1>; /* 1 SPI Tx line */
> +	};
> +};
> +
>  &sai1 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> index 25d2370..5d39616 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> @@ -136,6 +136,21 @@
>  	};
>  };
>  
> +&fspi {
> +	status = "okay";
> +	mt35xu02g: flash@0 {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		compatible = "spansion,m25p80";
> +		m25p,fast-read;
> +		spi-max-frequency = <20000000>;
> +		reg = <0>;
> +		/* The following setting enables 1-1-8 (CMD-ADDR-DATA) mode */
> +		spi-rx-bus-width = <8>; /* 8 SPI Rx lines */
> +		spi-tx-bus-width = <1>; /* 1 SPI Tx line */
> +	};
> +};
> +
>  &duart0 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index ba71a33..a27cd60 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -109,6 +109,18 @@
>  		};
>  	};
>  
> +	fspi: spi@20c0000 {

Are you sure you want to add this device node outside of 'soc' node?

> +		compatible = "nxp,lx2160a-fspi", "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x0 0x20c0000 0x0 0x10000>,
> +		    <0x0 0x20000000 0x0 0x10000000>;

Fix the indentation to git it aligned with above '<'.

> +		reg-names = "FSPI", "FSPI-memory";
> +		interrupts = <0 25 0x4>; /* Level high type */

interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;

Shawn

> +		clocks = <&clockgen 4 3>, <&clockgen 4 3>;
> +		clock-names = "fspi_en", "fspi";
> +	};
> +
>  	soc: soc {
>  		compatible = "simple-bus";
>  		#address-cells = <2>;
> -- 
> 1.7.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
