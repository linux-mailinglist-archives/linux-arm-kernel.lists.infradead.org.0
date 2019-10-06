Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 349F6CCE12
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 05:20:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R8dNvRm7dcsI/4wUIFzVjSm9n+aNnyjVylc/95ttBNw=; b=hnbmfrPVRA2d5O
	7zUFoRJ5DA7xyjr+akY7jLmxCmwRxQU/cOcf4ostr6BB+B8ixfrmwiL/jl48kl87SbCflHqhkahk5
	CTgeWG/16nnfQCHnwJB64nrsfdGW0U34fCFdHocylo6BRIMmYQNRi44hWPIF4H71cQciYhrehkm+x
	1Vvg4u7it3LCzCSfQJcsUPTMDY8Uq8YxeSNdQuxfGX4Ang0P9ATt8C6RJaCz6bKiCnGoaXPyHLsZR
	+00jUyM7bA6X4uD6bpM/w0KdjV9HW+MLp8Al0Fsp1oh28/klyNezXhoH3L22iUX5NIu/uYMGp3g56
	EOzjXN+harKG1SPf924A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGx6F-00041R-Mr; Sun, 06 Oct 2019 03:20:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGx67-000418-6V
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 03:20:40 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48DE6222C0;
 Sun,  6 Oct 2019 03:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570332038;
 bh=dzBdTkEiVVG6N8ABBCkJr3jDV3ZGX6Z7RHeYhfxkK2I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vkYxZqhwCqTCMuy2dDzBQ8HTOiYLjcaQfEfB7SalRfLDFNVFVUjTsGhYnT1ZDx1Z0
 uVstFhOZmUPpYBwCa8XqVUPdtonvkQoOUIKAN73TSe8ptn6stNY4OBYgI3tG/NcCQB
 gKyDtyvkZgAxz3XEFTwqyg1bZ9/VhErEven15gN4=
Date: Sun, 6 Oct 2019 11:20:21 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ashish Kumar <Ashish.Kumar@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1028a: Add FlexSPI support for NXP LS1028
Message-ID: <20191006032019.GP7150@dragon>
References: <1568118055-9740-1-git-send-email-Ashish.Kumar@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568118055-9740-1-git-send-email-Ashish.Kumar@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_202039_447399_6EA54A30 
X-CRM114-Status: GOOD (  16.53  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Xiaowei Bao <xiaowei.bao@nxp.com>, robh@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 05:50:51PM +0530, Ashish Kumar wrote:
> Add fspi node property for LS1028A SoC for FlexSPI driver.
> Property added for FlexSPI controller and for the connected
> slave device for the LS1028ARDB and LS1028AQDS target.
> RDB and QDS is having one SPI-NOR flash device, mt35xu02g
> connected at CS0.
> This flash device "mt35xu02g" is tested for octal read
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> Signed-off-by: Ashish Kumar <Ashish.Kumar@nxp.com>

When you send a patch series, the patches should be numbered properly
and preferably with a cover-letter.

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts | 15 +++++++++++++++
>  arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts | 15 +++++++++++++++
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi    | 13 +++++++++++++
>  3 files changed, 43 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> index 5e14e5a..5d46993 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> @@ -103,6 +103,21 @@
>  	status = "okay";
>  };
>  
> +&fspi {
> +	status = "okay";

Have a newline between properties and child node..

> +	flash0: mt35xu02g@0 {

Use a generic node name and specific label name.

> +		compatible = "micron,mt35xu02g", "jedec,spi-nor";

"micron,mt35xu02g" is undocumented.

Shawn

> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		m25p,fast-read;
> +		spi-max-frequency = <50000000>;
> +		reg = <0>;
> +		/* The following setting enables 1-1-8 (CMD-ADDR-DATA) mode */
> +		spi-rx-bus-width = <8>; /* 8 SPI Rx lines */
> +		spi-tx-bus-width = <1>; /* 1 SPI Tx line */
> +	};
> +};
> +
>  &i2c0 {
>  	status = "okay";
>  
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> index 1a69221..f33cb2e 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> @@ -96,6 +96,21 @@
>  	status = "okay";
>  };
>  
> +&fspi {
> +	status = "okay";
> +	flash0: mt35xu02g@0 {
> +		compatible = "micron,mt35xu02g", "jedec,spi-nor";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		m25p,fast-read;
> +		spi-max-frequency = <50000000>;
> +		reg = <0>;
> +		/* The following setting enables 1-1-8 (CMD-ADDR-DATA) mode */
> +		spi-rx-bus-width = <8>; /* 8 SPI Rx lines */
> +		spi-tx-bus-width = <1>; /* 1 SPI Tx line */
> +	};
> +};
> +
>  &i2c0 {
>  	status = "okay";
>  
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index b139b29..4aa1825 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -174,6 +174,19 @@
>  			clocks = <&sysclk>;
>  		};
>  
> +		fspi: spi@20c0000 {
> +			compatible = "nxp,lx2160a-fspi";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x0 0x20c0000 0x0 0x10000>,
> +			      <0x0 0x20000000 0x0 0x10000000>;
> +			reg-names = "fspi_base", "fspi_mmap";
> +			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clockgen 4 3>, <&clockgen 4 3>;
> +			clock-names = "fspi_en", "fspi";
> +			status = "disabled";
> +		};
> +
>  		i2c0: i2c@2000000 {
>  			compatible = "fsl,vf610-i2c";
>  			#address-cells = <1>;
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
