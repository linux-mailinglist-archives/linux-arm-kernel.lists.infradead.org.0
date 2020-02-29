Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8836174642
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 11:42:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7d2kliu39MdLvNkeiblWKhrYeEp5JTdH7FXgV0cZWg=; b=oKgT5iOG+u/lrv
	5/scFnhLuiOZvruGKv9aYxklTWpcSa458q9Dt91c42uZgAzaYpdL6zXtQppGj/hRTkkTNBmmcn1e6
	2mi6YG7hfi24GBcV8kolVTZx7pXpRxAZm4bGHJEj16uZa/+2feyPoRE1u3vQDkm2bTSvyOH8nUIN6
	i9LnjDaNpQ1+nC7lGJO+gmDX+PgQ4PxWS4JUUdqcz4CR8K67HnSED/lR6kIj1mZxiKdcDAd8uOF/Q
	TEXijCVUI5gTIq0pOQrxIDu2whWl3+KYy9HJj1AEiNzU1Mkx5cFS2hyv+gGjEPBdpB9VwAE7+f7Ac
	qC0Yz+d4ZyMbiQ9GU/Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7zZd-0007Mn-Lu; Sat, 29 Feb 2020 10:42:21 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7zZU-0007MS-0V
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 10:42:13 +0000
Received: by mail-pf1-x444.google.com with SMTP id i6so3092835pfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Feb 2020 02:42:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=ZzIyS9yhP5PRMubXOxIFShxNXKSbCIxvvlyoIGTDdSQ=;
 b=rv9T+7k3rSDBBf7tiievZuA7eWs2xiVZldc+zDpZK+kepfOQAd6F+wfTMPAMqW89mm
 V4dwiTF+KENZa4T5IQDYXS2FmaWNZF2j1LcFuAqfjrdI8fBG6Y9uL/4J80BzYUv0mXj3
 xpsL9PGb2xOUeR0nkHqLaEm6e+xPTl7EXiViWZlYjJ35Ri6WG2P7+N8LPLqv+Do6YNGg
 0xoFjdrnjqQkfsp4PpEAxcRoB0e3QRdBmqJupTbfZifYRx4HWzU8QGzz+QmZfmk4sviR
 nBmNWFvq2e7fvM2ilTIYdeRDp5ifWnSVCV6SAPCOS1QmQ7JWraBBABzARzGLK77WuNBw
 xMgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ZzIyS9yhP5PRMubXOxIFShxNXKSbCIxvvlyoIGTDdSQ=;
 b=YAd5wzNZsJORq0evJsdL70MHNCOSQGx/1hEKDCGkLFirD8T18GkkFWBIc4rD+SSLgo
 XRd5MhEhiPgaojXJIUBRU7OgHGd0f+awVGw8QSG1J1r4nDDsbCsPGAJPjnp9O1PxHlpI
 bhzO/uvZKpq0zLFKtmCrrWmN+s5zE3Q6190ak6VkBfzsROmTRoobZL5qDQmUtct2e4zW
 7/Jl5Ol37RYkQQpKImVaBTM/7r9dNZPeD+p5QUGkoNtiTb8EStf+ycgL+s7bw5Yt3ViH
 zVPnFGLfxeao7gEEGkic6arIYyG4p62pT1bFs2HCfZJ74GsqXWohULH1yjOdOFDd4QbW
 Rm9A==
X-Gm-Message-State: APjAAAVnRyyhVSiqcxbLkxKwjZQQh6rMIWFMWg6txJyZLpJv9ORFhA8x
 tkVicyC3OGUFn+IsPjgIdbl7RCcIba4w
X-Google-Smtp-Source: APXvYqxFuIpAAUSXOCIb8wR8iP1M+6alf1Wcq8lFOXfAz0qwvzIiIYz/WHDdik1cpwtmkMbwWaBi7A==
X-Received: by 2002:a63:5124:: with SMTP id f36mr8819866pgb.288.1582972929850; 
 Sat, 29 Feb 2020 02:42:09 -0800 (PST)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id 7sm2513995pfg.12.2020.02.29.02.42.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 29 Feb 2020 02:42:09 -0800 (PST)
Date: Sat, 29 Feb 2020 16:12:02 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Matheus Castello <matheus@castello.eng.br>
Subject: Re: [PATCH v1 2/2] ARM: dts: Add Caninos Loucos Labrador
Message-ID: <20200229104202.GA19610@mani>
References: <20200227201557.368533-1-matheus@castello.eng.br>
 <20200227201557.368533-3-matheus@castello.eng.br>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227201557.368533-3-matheus@castello.eng.br>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_024212_115338_16A34520 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, afaerber@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Thanks for the patch! Please find comments inline.

On Thu, Feb 27, 2020 at 05:15:57PM -0300, Matheus Castello wrote:
> Add Device Trees for Caninos Loucos Labrador SoM and base board.
> Based on the work of Andreas F=E4rber on Lemaker Guitar device tree.
> =

> Signed-off-by: Matheus Castello <matheus@castello.eng.br>
> ---
>  arch/arm/boot/dts/Makefile                  |  3 +-
>  arch/arm/boot/dts/owl-s500-labrador-bb.dts  | 33 +++++++++++++++++++++
>  arch/arm/boot/dts/owl-s500-labrador-v2.dtsi | 21 +++++++++++++
>  3 files changed, 56 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boot/dts/owl-s500-labrador-bb.dts
>  create mode 100644 arch/arm/boot/dts/owl-s500-labrador-v2.dtsi
> =

> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index d6546d2676b9..acdf65ef3236 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -842,7 +842,8 @@ dtb-$(CONFIG_ARCH_ORION5X) +=3D \
>  dtb-$(CONFIG_ARCH_ACTIONS) +=3D \
>  	owl-s500-cubieboard6.dtb \
>  	owl-s500-guitar-bb-rev-b.dtb \
> -	owl-s500-sparky.dtb
> +	owl-s500-sparky.dtb \
> +	owl-s500-labrador-bb.dtb

Please sort the entries alphabetically.

>  dtb-$(CONFIG_ARCH_PRIMA2) +=3D \
>  	prima2-evb.dtb
>  dtb-$(CONFIG_ARCH_PXA) +=3D \
> diff --git a/arch/arm/boot/dts/owl-s500-labrador-bb.dts b/arch/arm/boot/d=
ts/owl-s500-labrador-bb.dts
> new file mode 100644
> index 000000000000..1e821804da30
> --- /dev/null
> +++ b/arch/arm/boot/dts/owl-s500-labrador-bb.dts
> @@ -0,0 +1,33 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*

A title here would be helpful like how you added for the SoM below.

> + * Copyright (c) 2019-2020 Matheus Castello
> + */
> +
> +/dts-v1/;
> +
> +#include "owl-s500-labrador-v2.dtsi"
> +#include <dt-bindings/leds/common.h>

Do we need this now?

Thanks,
Mani

> +
> +/ {
> +	compatible =3D "caninos,labrador-bb", "caninos,labrador", "actions,s500=
";
> +	model =3D "Caninos Labrador Base Board M v1.0";
> +
> +	aliases {
> +		serial3 =3D &uart3;
> +	};
> +
> +	chosen {
> +		stdout-path =3D "serial3:115200n8";
> +	};
> +
> +	uart3_clk: uart3-clk {
> +		compatible =3D "fixed-clock";
> +		clock-frequency =3D <921600>;
> +		#clock-cells =3D <0>;
> +	};
> +};
> +
> +&uart3 {
> +	status =3D "okay";
> +	clocks =3D <&uart3_clk>;
> +};
> diff --git a/arch/arm/boot/dts/owl-s500-labrador-v2.dtsi b/arch/arm/boot/=
dts/owl-s500-labrador-v2.dtsi
> new file mode 100644
> index 000000000000..ee079f02b5dd
> --- /dev/null
> +++ b/arch/arm/boot/dts/owl-s500-labrador-v2.dtsi
> @@ -0,0 +1,21 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Caninos Labrador SoM V2
> + *
> + * Copyright (c) 2019-2020 Matheus Castello
> + */
> +
> +#include "owl-s500.dtsi"
> +
> +/ {
> +	compatible =3D "caninos,labrador", "actions,s500";
> +
> +	memory@0 {
> +		device_type =3D "memory";
> +		reg =3D <0x0 0x80000000>;
> +	};
> +};
> +
> +&timer {
> +	clocks =3D <&hosc>;
> +};
> --
> 2.25.0
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
