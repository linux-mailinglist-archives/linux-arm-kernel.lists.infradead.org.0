Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94242ED9EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:30:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gOnMxaFpYhj8UOSBAAjtWzcPfhWmeT/DVHWiIX7JTA0=; b=fg6r3ABEHV673w
	/bGZxpjCJfmHqD4D2R0eE5xxZT/uMEwXzZa8o/eQkaiAHQFLLkj8wAhd7pDPuxbfuCNKfIHgCdjSX
	SdBQt6G/o7Wh2FxUSxVf1FxoonuCvhcbhksNDjOhS9krrVWF+qCGdB43EHSnDeqltntDZHVnep8mb
	hRJdrKysddX5JAw9mTsN6l1fLSztLeFngreMYv+dQFjjsdwed+NVq/ylenkRyJ+I2LDqMYuKO179C
	Br8tr0Y4uiikjQrrgO9nvgpg0RygrcxpiT0Lgpcg/Bvw03j//qQTCoKZiFZi/A140p36n7FmccFt2
	KaJQo/eAAs/CmZwCiJ5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWoZ-00019E-Sl; Mon, 04 Nov 2019 07:30:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWoP-0000kP-IW
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 07:30:06 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B689A2053B;
 Mon,  4 Nov 2019 07:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572852605;
 bh=QJMX4hYVZC4TczUoT32Bkr5EA9Iu2ovv4KhF0XdoP6U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mmcSJ44XVGKvoTzHlkHMN+vGCJ89LBY8TsPHcyqEGdFecX9QSLCIUKfJJRKyvIpZK
 zOuVEePIEDOJkevGyRXdLajyynMbzrN33BbVhVdWJgI5APUFWZhdETJtb33SgdmSD6
 FfA4MV/hKCIJULu33h4ruLC0aJo/aQXeqBwaww98=
Date: Mon, 4 Nov 2019 15:29:37 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v3 06/11] ARM: dts: imx6ul-kontron-n6x1x-s: Specify
 bus-width for SD card and eMMC
Message-ID: <20191104072936.GQ24620@dragon>
References: <20191031142112.12431-1-frieder.schrempf@kontron.de>
 <20191031142112.12431-7-frieder.schrempf@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031142112.12431-7-frieder.schrempf@kontron.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_233005_635859_925749B7 
X-CRM114-Status: GOOD (  15.40  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 02:24:18PM +0000, Schrempf Frieder wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> Both, the SD card and the eMMC are connected to the usdhc controller
> by four data lines. Therefore we set 'bus-width = <4>' for both
> interfaces.
> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> Fixes: 1ea4b76cdfde ("ARM: dts: imx6ul-kontron-n6310: Add Kontron i.MX6UL N6310 SoM and boards")
> ---
>  arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
> index 7c98a1a46fb1..2299cad900af 100644
> --- a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
> +++ b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
> @@ -209,6 +209,7 @@
>  	wakeup-source;
>  	vmmc-supply = <&reg_3v3>;
>  	voltage-ranges = <3300 3300>;
> +	bus-width = <4>;

Isn't it already set in arch/arm/boot/dts/imx6ul.dtsi as the default?

Shawn

>  	no-1-8-v;
>  	status = "okay";
>  };
> @@ -223,6 +224,7 @@
>  	wakeup-source;
>  	vmmc-supply = <&reg_3v3>;
>  	voltage-ranges = <3300 3300>;
> +	bus-width = <4>;
>  	no-1-8-v;
>  	status = "okay";
>  };
> -- 
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
