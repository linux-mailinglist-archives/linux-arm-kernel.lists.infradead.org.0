Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D05CB06D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 04:42:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iu3ik4qOgXG3jghznohj16wTtAf42IUqjiKh4bm/mhE=; b=GwgQGIH4+yQHCO
	BxUiK8rZALdGyKekENvkjyKA14ShbvlH9xHKU22JJIXROdAOsW1NQ37fBQ/hGk/AddSC16TGHxLBV
	4bbbBdi8jBy9NrDCzsFgaEIjFj2SWd+HXQXiaosRVcmHxezy4qHokO/X1Kj+4caXA5YlnRX/irho2
	4if/7PQy2SmuluP8myAoRHQqL75hnVt7rBe72zJGYBjnnm5ELTry6PDbF4uqkyM+9LTnPIYRvLuM5
	6VbM6J6NxXc+m7ZK94JlWI/NpXfSJFshFvSi+knWw3DOteV7P+3jx+PVSS8XWjfvH+a7Uca3EAofn
	Rk+NW7GPQJloavxa7Stw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8F40-00088f-9y; Thu, 12 Sep 2019 02:42:28 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8F3n-00087c-1n
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 02:42:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id ACF3CFB03;
 Thu, 12 Sep 2019 04:42:13 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z-y1afFhBSMJ; Thu, 12 Sep 2019 04:42:12 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id D371D46CC1; Wed, 11 Sep 2019 19:42:10 -0700 (PDT)
Date: Wed, 11 Sep 2019 19:42:10 -0700
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dts: arm64: imx8mq: Enable gpu passive throttling
Message-ID: <20190912024210.GA13270@bogon.m.sigxcpu.org>
References: <cf1b114bcc6ef26e032c352b8c885aaf5f3594d0.1568254197.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cf1b114bcc6ef26e032c352b8c885aaf5f3594d0.1568254197.git.agx@sigxcpu.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_194215_252299_C07F0AD5 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Wed, Sep 11, 2019 at 07:14:25PM -0700, Guido G=FCnther wrote:
> Temperature and hysteresis were picked after the CPU.

I pulled that one from the wrong branch so please disregard. I've
sent out a v2.
Cheers,
 -- Guido

> =

> Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> ---
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> =

> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/=
dts/freescale/imx8mq.dtsi
> index 564045927485..fda636085bb3 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -235,12 +235,26 @@
>  			thermal-sensors =3D <&tmu 1>;
>  =

>  			trips {
> +				gpu-alert {
> +					temperature =3D <80000>;
> +					hysteresis =3D <2000>;
> +					type =3D "passive";
> +				};
> +
>  				gpu-crit {
>  					temperature =3D <90000>;
>  					hysteresis =3D <2000>;
>  					type =3D "critical";
>  				};
>  			};
> +
> +			cooling-maps {
> +				map0 {
> +					trip =3D <&gpu_alert>;
> +					cooling-device =3D
> +						<&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
>  		};
>  =

>  		vpu-thermal {
> @@ -1006,6 +1020,7 @@
>  			         <&clk IMX8MQ_CLK_GPU_AXI>,
>  			         <&clk IMX8MQ_CLK_GPU_AHB>;
>  			clock-names =3D "core", "shader", "bus", "reg";
> +			#cooling-cells =3D <2>;
>  			assigned-clocks =3D <&clk IMX8MQ_CLK_GPU_CORE_SRC>,
>  			                  <&clk IMX8MQ_CLK_GPU_SHADER_SRC>,
>  			                  <&clk IMX8MQ_CLK_GPU_AXI>,
> -- =

> 2.23.0.rc1
> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
