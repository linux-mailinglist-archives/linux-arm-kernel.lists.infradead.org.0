Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A20131613F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8eQCxqf9FbmeYdTIYytaeKLrhPVA7IsRqxQz191WFQ=; b=HwEPFpIbE4PZIV
	2KU7Dh0uquO6NCn/9SmEMWyIONk754zdeiairXSPGzp83s14mLdm1ow+mrMZSRWJ/yqJWyzW6TEGh
	5JqB95yOXduhub2JfiY8eGs0ZgQJIn1KSbSFaVU/nxZs6+BqVOXNpuvkS24wmGTIz9Gx2xFMBPS3E
	03QLWwWMnQCsbEaspMxbh3jqDChCrI++93iitHcFy0jv5MHFI7kiWR0ahloL8jzBAp4zF6iXGx/kr
	mrvFKmqPmqFYywLXafMtticOVTS1wtNoPWlc+Wb/fH9kC5l4tXPKlQRwXXmJLEf8ogdudgIj7PDZ+
	ZlMYVaFJ3eTsoMsSvw1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwcR-0001Jz-6m; Tue, 07 May 2019 09:42:39 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwcI-0001Jc-2Y
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 09:42:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1557222148; bh=HNGqc9MQ013hhLsc6YHpLa3A/Ih8rm2RzSpPVk2ARgM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Evk8Nfi65VGg1TR1WSZioWa7+ZnXS6P+BdJZkVu+ZyhtKbWT6P5hzjiq00m8iHPah
 3ZW1/OCFsNS7kb98114vph9sDXxEiBIdRt9f7u204tMR6e5muSo+fxqIjAJdOAOqL4
 bnwl/Lz0zX5BesMKq0XDjhpXlWxz9yTLM14TJy00=
Date: Tue, 7 May 2019 11:42:27 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: h6: Enable HDMI output on
 orangepi 3
Message-ID: <20190507094227.3kokzszqz74mq5k2@core.my.home>
Mail-Followup-To: Yangtao Li <tiny.windzz@gmail.com>,
 maxime.ripard@bootlin.com, wens@csie.org, robh+dt@kernel.org,
 mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190420145240.27400-1-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190420145240.27400-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_024230_290364_DC8C6B38 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, maxime.ripard@bootlin.com,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yangtao,

On Sat, Apr 20, 2019 at 10:52:40AM -0400, Yangtao Li wrote:
> Orangepi 3 has HDMI type A connector.

It also has DDC-IO-EN, whithout which HDMI will not work as expected
by most users.

I'm working on a proper solution (discussion here):

  https://lkml.org/lkml/2019/4/26/910

regards,
	o.

> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
> rebase:
> sunxi/dt64-for-5.2 arm64: dts: allwinner: a64-amarula-relic: Add OV5640
> camera node
> ---
>  .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> index 17d496990108..6ed3a1ee297d 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> @@ -21,6 +21,17 @@
>  		stdout-path = "serial0:115200n8";
>  	};
>  
> +	connector {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi_con_in: endpoint {
> +				remote-endpoint = <&hdmi_out_con>;
> +			};
> +		};
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  
> @@ -50,6 +61,10 @@
>  	cpu-supply = <&reg_dcdca>;
>  };
>  
> +&de {
> +	status = "okay";
> +};
> +
>  &ehci0 {
>  	status = "okay";
>  };
> @@ -58,6 +73,16 @@
>  	status = "okay";
>  };
>  
> +&hdmi {
> +	status = "okay";
> +};
> +
> +&hdmi_out {
> +	hdmi_out_con: endpoint {
> +		remote-endpoint = <&hdmi_con_in>;
> +	};
> +};
> +
>  &mmc0 {
>  	vmmc-supply = <&reg_cldo1>;
>  	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 */
> -- 
> 2.17.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
