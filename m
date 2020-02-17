Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3352816095D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:59:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QMMzp3+RMSnLdsSV36tFPNvITVawK+TcCB6tkkalthg=; b=DQNQE2We2NIFmF
	YVRo7Qg+O6DX+gsCrq02ro7zB4kYoPN9U6EbHHbZMyh23lvFYMPlNeB0caOA9MLZqF5XaQSqsGk9v
	RNaEJYuGvr75RgxjRt8PY/eDX7wQGC9CqXmZFaTOLVr+2YOTUB2dpUZT5Jv1YTgYclCxcxFKyBMo6
	1TatccgvUfBL8Cn44W8NGm96YMc+MH4I9b9Lyo6yY0EYdnJtQymtehepoc+WwmNJFaGYEjAQYP2YE
	gEYMwg9F1LljFFiau73NLPgGSOnI6GRrOirmpXYl7P5yCIByV/tflg2uHiTO6M+BEznn/VpW0KdMz
	fzWTQLhf9pLfn2l+rcPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3XZ2-0008LK-2H; Mon, 17 Feb 2020 03:59:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3XYv-0008Ku-7m
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:59:14 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E62542072C;
 Mon, 17 Feb 2020 03:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581911952;
 bh=o2FZuDF+s0lgyoH3wJzVZ5K7NvTZWMeJj/DeeTi4Y3M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1NQroVDNjPZS+vQNS1YYNhBkwLMGowdfVeG0E2kk6it4e04DF3BAeL8tcgRLb1yFl
 jFIxNhHD0f9wM4r34isWAUVl6rI7xqAqtRzbrWu9LVV1vL+o7u72U6AkuRTcujN2qT
 6Y+Pf/0YRDCKa6EQ6dKVJKrI7Ujamzmk/KqQU61M=
Date: Mon, 17 Feb 2020 11:59:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH v1 02/12] arm64: dts: librem5-devkit: add the simcom 7100
 modem and audio
Message-ID: <20200217035902.GC5395@dragon>
References: <20200205143003.28408-1-martin.kepplinger@puri.sm>
 <20200205143003.28408-3-martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205143003.28408-3-martin.kepplinger@puri.sm>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_195913_558808_DE4EA521 
X-CRM114-Status: GOOD (  16.08  )
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

On Wed, Feb 05, 2020 at 03:29:53PM +0100, Martin Kepplinger wrote:
> From: "Angus Ainslie (Purism)" <angus@akkea.ca>
> 
> Add the simcomm modem and the sai6 interface that connects it, as well
> as the sgtl5000 audio codec.
> 
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>

When you forward a patch from others, you need to add your SoB.


> ---
>  .../dts/freescale/imx8mq-librem5-devkit.dts   | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> index 9702db69d3ed..8162576e8f3d 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> @@ -148,6 +148,51 @@
>  		regulator-always-on;
>  	};
>  
> +	sim7100_codec: sound-wwan-codec {
> +		compatible = "option,gtm601";
> +		#sound-dai-cells = <0>;
> +	};
> +
> +	sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "sgtl5000";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,widgets =
> +			"Microphone", "Microphone Jack",
> +			"Headphone", "Headphone Jack",
> +			"Speaker", "Speaker Ext",
> +			"Line", "Line In Jack";
> +		simple-audio-card,routing =
> +			"MIC_IN", "Microphone Jack",
> +			"Microphone Jack", "Mic Bias",
> +			"LINE_IN", "Line In Jack",
> +			"Headphone Jack", "HP_OUT",
> +			"Speaker Ext", "LINE_OUT";

Please have a newline between properties and child node.

> +		simple-audio-card,cpu {
> +			sound-dai = <&sai2>;
> +		};

Also have a newline between nodes.

Shawn

> +		simple-audio-card,codec {
> +			sound-dai = <&sgtl5000>;
> +			clocks = <&clk IMX8MQ_CLK_SAI2_ROOT>;
> +			frame-master;
> +			bitclock-master;
> +		};
> +	};
> +
> +	sound-wwan {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "SIMCom SIM7100";
> +		simple-audio-card,format = "dsp_a";
> +		simple-audio-card,cpu {
> +			sound-dai = <&sai6>;
> +		};
> +		telephony_link_master: simple-audio-card,codec {
> +			sound-dai = <&sim7100_codec>;
> +			frame-master;
> +			bitclock-master;
> +		};
> +	};
> +
>  	vibrator {
>  		compatible = "gpio-vibrator";
>  		pinctrl-names = "default";
> @@ -749,6 +794,16 @@
>  	status = "okay";
>  };
>  
> +&sai6 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_sai6>;
> +	assigned-clocks = <&clk IMX8MQ_CLK_SAI6>;
> +	assigned-clock-parents = <&clk IMX8MQ_AUDIO_PLL1_OUT>;
> +	assigned-clock-rates = <24576000>;
> +	fsl,sai-synchronous-rx;
> +	status = "okay";
> +};
> +
>  &uart1 { /* console */
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_uart1>;
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
