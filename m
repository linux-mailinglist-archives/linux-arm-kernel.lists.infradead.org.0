Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7163C169C15
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 03:01:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Hn/INPLoXueCh8B49+woyiPCeZchVRL+ByzKH579GI=; b=caxYpigCSN6l8o
	kJLPy5RcbUNcUwSerUjUgUx+raFV1K5DEer7w124tAw1NP4RFQjyEJsl5+cMNrygmMs8eNm+TLgk+
	4ho/P0heXDkvfMLRSqkOOwfDiEnOpIJmCYdCEDb9ql8+l9KSXYRphSZy+mWJ2LgkhShQsS8iaPxLu
	Wf9Dz5PI8Du5pm+CCTJts20Zlb0ijmCGp7wtxt395Z+XePifrxZfStTfoLsBU5XnFgLMPQxNO29SO
	3QdimTXu0GEPLiwR0ybJTPqVyPCz0WZx5rPd2WF80cBu18TAkmeaV6NLQRDp37/ss7OAb52I6gCAz
	SR46yJzISJItkKFa3Anw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j633q-0003Id-6V; Mon, 24 Feb 2020 02:01:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j633e-0003IH-Tg
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 02:01:20 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 471FB205C9;
 Mon, 24 Feb 2020 02:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582509678;
 bh=axFW7bEh8+eVcpf/My/7t/8mqtcesmwale7L6FdGbQc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L3qDPbiRb3tIg7oWaK/qPmhpSpgRp5fW8pJcQLlJO+kUCvsL0myrRhM3IiXNOfunh
 sBBNM0vUfP+hPr17+ttytHuxQICnKMia/w1TylUulL4Qzh0fXu0oxIpZL2tK/1eQzA
 kjjUlwmfjleDEYKsRk5KxfwtHRKOpKhswXb++wHg=
Date: Mon, 24 Feb 2020 10:01:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH v2 3/9] arm64: dts: librem5-devkit: add the simcom 7100
 modem and sgtl5000 audio codec
Message-ID: <20200224020109.GE27688@dragon>
References: <20200218084942.4884-1-martin.kepplinger@puri.sm>
 <20200218084942.4884-4-martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218084942.4884-4-martin.kepplinger@puri.sm>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_180119_002515_9BE130B1 
X-CRM114-Status: GOOD (  14.96  )
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

On Tue, Feb 18, 2020 at 09:49:36AM +0100, Martin Kepplinger wrote:
> From: "Angus Ainslie (Purism)" <angus@akkea.ca>
> 
> Add the simcomm modem and the sgtl5000 audio codec.
> 
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
> Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
> ---
>  .../dts/freescale/imx8mq-librem5-devkit.dts   | 60 +++++++++++++++++++
>  1 file changed, 60 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> index 25135b08d4f8..ec12477d925d 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> @@ -148,6 +148,53 @@
>  		regulator-always-on;
>  	};
>  
> +	wwan_codec: sound-wwan-codec {
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
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&sai2>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&audio_codec>;
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

newline

> +		simple-audio-card,cpu {
> +			sound-dai = <&sai6>;
> +		};

newline

> +		telephony_link_master: simple-audio-card,codec {
> +			sound-dai = <&wwan_codec>;
> +			frame-master;
> +			bitclock-master;
> +		};
> +	};
> +
>  	vibrator {
>  		compatible = "gpio-vibrator";
>  		pinctrl-names = "default";
> @@ -426,6 +473,19 @@
>  		vddio-supply = <&reg_3v3_p>;
>  	};
>  
> +	audio_codec: sgtl5000@a {

Node name needs to be generic, not the label name.  So it should be:

	sgtl5000: audio-codec@a {

Shawn

> +		compatible = "fsl,sgtl5000";
> +		clocks = <&clk IMX8MQ_CLK_SAI2_ROOT>;
> +		assigned-clocks = <&clk IMX8MQ_CLK_SAI2>;
> +		assigned-clock-parents = <&clk IMX8MQ_AUDIO_PLL1_OUT>;
> +		assigned-clock-rates = <24576000>;
> +		#sound-dai-cells = <0>;
> +		reg = <0x0a>;
> +		VDDD-supply = <&reg_1v8_p>;
> +		VDDIO-supply = <&reg_3v3_p>;
> +		VDDA-supply = <&reg_3v3_p>;
> +	};
> +
>  	touchscreen@5d {
>  		compatible = "goodix,gt5688";
>  		reg = <0x5d>;
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
