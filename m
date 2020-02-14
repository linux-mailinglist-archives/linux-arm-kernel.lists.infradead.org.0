Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3A215D052
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 04:09:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kT+iB2R/3FoyosQXLCimxFvD/2tbJZUGT0yu+yVr/6Q=; b=ptgauzqjISe4qZ
	Fslgxhs1sqojpMPOiwzyPQEgarnqxi3UA9dOZxl9r6MU9GNhHmfxPU2Zkn1o7gla1Fd7lgBKLlc1C
	QoyeUQV/U2gs3BgFn1CFHI/w1V7tTA/Pvng8tOT3jzox6pM4QLf88SW1dYey6MDcmH+cDBYbaD/XY
	Lra0ghIx3A0n67oGN7iALZO0uUD3zTcDzLG/I+tddm7mOKT2bPVO1N52ISKn7Hj9+frinyRYoLIzu
	c079/6Wy0MT3JAiTHTfjJvn2hUaWQCCOSVgE94MhtKKbVLDPKST9wgwnDvrnh3JrWu8GSJ24uqBXE
	WZ+XbfKrCynM952CxxJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2RLe-0005Oc-JE; Fri, 14 Feb 2020 03:08:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2RLW-0005OJ-Ga
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 03:08:51 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 042252168B;
 Fri, 14 Feb 2020 03:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581649730;
 bh=hjaIkHAO1KvEz7zY4FR2SQIzlH3LDp1v7jaEbLGckhQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fWjwqkF+s9n3Qw2LqeIfwsVgTdXrmLL+ldw+W9R3MQcJqR81+4SGP5TUYzTEswhNO
 Gn1hb5LD0f2gOYmxStpJePNqURFzsNsw7KlMiM2PDNNk0ozFTG9kvRyTu6bTAqCjez
 m5Uzlvgnb32Uyxccz71sRCQ47mZc12fZtbXFoQfI=
Date: Fri, 14 Feb 2020 11:08:44 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Robert Jones <rjones@gateworks.com>
Subject: Re: [PATCH] ARM: dts: imx: ventana: add fxos8700 on gateworks boards
Message-ID: <20200214030843.GL22842@dragon>
References: <20200128221424.11481-1-rjones@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128221424.11481-1-rjones@gateworks.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_190850_572971_AC47DD27 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 02:14:24PM -0800, Robert Jones wrote:
> Add fxos8700 iio imu entries for Gateworks ventana SBCs.
> 
> Signed-off-by: Robert Jones <rjones@gateworks.com>
> ---
>  arch/arm/boot/dts/imx6qdl-gw52xx.dtsi | 5 +++++
>  arch/arm/boot/dts/imx6qdl-gw53xx.dtsi | 5 +++++
>  arch/arm/boot/dts/imx6qdl-gw54xx.dtsi | 5 +++++
>  3 files changed, 15 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> index 1a9a9d9..2d7d01e 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> @@ -313,6 +313,11 @@
>  		interrupts = <12 2>;
>  		wakeup-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
>  	};
> +
> +	fxos8700@1e {

Use a generic node name, not the model name.

Shawn

> +		compatible = "nxp,fxos8700";
> +		reg = <0x1e>;
> +	};
>  };
>  
>  &ldb {
> diff --git a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> index 54b2bea..bf1a2c6 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> @@ -304,6 +304,11 @@
>  		interrupts = <11 2>;
>  		wakeup-gpios = <&gpio1 11 GPIO_ACTIVE_LOW>;
>  	};
> +
> +	fxos8700@1e {
> +		compatible = "nxp,fxos8700";
> +		reg = <0x1e>;
> +	};
>  };
>  
>  &ldb {
> diff --git a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> index 1b6c133..d9e09a9 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> @@ -361,6 +361,11 @@
>  		interrupts = <12 2>;
>  		wakeup-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
>  	};
> +
> +	fxos8700@1e {
> +		compatible = "nxp,fxos8700";
> +		reg = <0x1e>;
> +	};
>  };
>  
>  &ldb {
> -- 
> 2.9.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
