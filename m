Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9390F17F24B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 09:50:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YKtHfT35uCu+inSWOok8dpfW6RMYCjqaaPIIqJ3U3Wg=; b=B6LHe74NK3yYVe
	kh93v9chUuY4nJwIGCUuuKnC8ebg1V8slHrixJAgnkqJYB7mfHBTD+6YqMDmCdMR4O2Mz6Rddnuit
	ycy/Z6AVyVBOJ99vwxojbM2lshwxyS80qaErtDFQfB8dY090pdv/ng0rB/Opiga/oV3JSehR80IYA
	YvZ1gHxCHCnyOSVBKpb5pULQnwbwnVVxiVMM7YqGkUWZbkDb/XtHK3Jv6fX1IJAenZOhl08lZgXS3
	hf7tE/8m9vyphaXI8DRKORQ4mZ13OlQKI5v0Y1aflUUyl4XIxCM8u2lprfvKeSTBvOZClVVARnVmD
	iGOZnvbEdO4qJ04DWHBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBab6-0004sk-Fs; Tue, 10 Mar 2020 08:50:44 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBaay-0004rq-T3
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 08:50:38 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:50:34 -0700
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="353571216"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:50:30 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 8506F209DF; Tue, 10 Mar 2020 10:50:27 +0200 (EET)
Date: Tue, 10 Mar 2020 10:50:27 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 2/2] media: i2c: ov5645: Switch to assigned-clock-rates
Message-ID: <20200310085027.GA5379@paasikivi.fi.intel.com>
References: <1583754373-16510-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1583754373-16510-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583754373-16510-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_015036_988430_6CB9EC45 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 linux-kernel@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Mon, Mar 09, 2020 at 11:46:13AM +0000, Lad Prabhakar wrote:
> This patch switches to assigned-clock-rates for specifying the clock rate.
> The clk-conf.c internally handles setting the clock rate, as a result
> setting the clk rate from the driver is dropped.
> 
> Correspondingly imx6qdl-wandboard.dtsi which references to ov5645 has been
> updated to use assigned-clock-rates in the same patch to avoid bisect
> failures.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  arch/arm/boot/dts/imx6qdl-wandboard.dtsi | 3 ++-
>  drivers/media/i2c/ov5645.c               | 9 ++-------
>  2 files changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
> index c070893..71f5f75 100644
> --- a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
> @@ -126,7 +126,8 @@
>  		reg = <0x3c>;
>  		clocks = <&clks IMX6QDL_CLK_CKO2>;
>  		clock-names = "xclk";
> -		clock-frequency = <24000000>;
> +		assigned-clocks = <&clks IMX6QDL_CLK_CKO2>;
> +		assigned-clock-rates = <24000000>;
>  		vdddo-supply = <&reg_1p8v>;
>  		vdda-supply = <&reg_2p8v>;
>  		vddd-supply = <&reg_1p5v>;

Shouldn't this be a separate patch?

> diff --git a/drivers/media/i2c/ov5645.c b/drivers/media/i2c/ov5645.c
> index a6c17d1..2aa2677 100644
> --- a/drivers/media/i2c/ov5645.c
> +++ b/drivers/media/i2c/ov5645.c
> @@ -1094,7 +1094,8 @@ static int ov5645_probe(struct i2c_client *client)
>  		return PTR_ERR(ov5645->xclk);
>  	}
>  
> -	ret = of_property_read_u32(dev->of_node, "clock-frequency", &xclk_freq);
> +	ret = of_property_read_u32(dev->of_node, "assigned-clock-rates",
> +				   &xclk_freq);

I think you'd still need to check for clock-frequency to be compatible with
existing DT binaries.

>  	if (ret) {
>  		dev_err(dev, "could not get xclk frequency\n");
>  		return ret;
> @@ -1107,12 +1108,6 @@ static int ov5645_probe(struct i2c_client *client)
>  		return -EINVAL;
>  	}
>  
> -	ret = clk_set_rate(ov5645->xclk, xclk_freq);
> -	if (ret) {
> -		dev_err(dev, "could not set xclk frequency\n");
> -		return ret;
> -	}
> -
>  	for (i = 0; i < OV5645_NUM_SUPPLIES; i++)
>  		ov5645->supplies[i].supply = ov5645_supply_name[i];
>  

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
