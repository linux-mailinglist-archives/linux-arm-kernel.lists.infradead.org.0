Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0088E160972
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 05:05:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xl1ao48uiLvbqaezqgIcFWeEhEDfqtVNDGaCZd7GC3Q=; b=oAasy4MK4iZSWq
	Ir4Ly8ezGSBgoju2yKozofzeNabff3kNZr2/zwYlFZgBrfavbw5thFeo8CY/K0LgTbD3nQEbSaqsf
	GK2LxLoFambKJCDeBcYF3QTGWv8AUQIcZpWTe9pllvDVimncdh3yZ/ly70yD8b0kaSKX19Ys9fmOz
	XMRk3sLy1f8GzYR1xMFVexXdGoukKu4OzIf99SXM76BPkWmfuE86gEA6zEz60eYXGVFxxGn8iKYvl
	dhyuVDlrsZDri7ZEulPMS9b5e8cXlv3gUmCBewlxsvKJ4QrDf0VoZ+8UjuyZnip1PoT2RwEPPUwRX
	wpEVLkhCexKHRGBQRFVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3XfE-0004d3-R9; Mon, 17 Feb 2020 04:05:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Xf3-0004ci-It
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 04:05:34 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E83C120726;
 Mon, 17 Feb 2020 04:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581912333;
 bh=COHRYy09mHaqje5Vnj5MQFsJbA5qpkK8tfzGXCr5eog=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Fke/f2Phbi9bhv8nqVj8HuRjf/h3SzwMJW2UZUazCSRQIeEM+5jw9Pv4QE3VloeoH
 1gmbN/PrErT7/QozAM0WA2klfauYDW9v5i20xJS//TxMgtsBx+8UZdM8n5SBlYDgwk
 Fz2uK4i8LETUHP/xvbmQkRzyEoe7ZRC9+X5It3Kk=
Date: Mon, 17 Feb 2020 12:05:25 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH v1 05/12] arm64: dts: librem5-devkit: add the sgtl5000
 i2c audio codec
Message-ID: <20200217040524.GE5395@dragon>
References: <20200205143003.28408-1-martin.kepplinger@puri.sm>
 <20200205143003.28408-6-martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205143003.28408-6-martin.kepplinger@puri.sm>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_200533_642961_70B18A56 
X-CRM114-Status: GOOD (  14.90  )
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

On Wed, Feb 05, 2020 at 03:29:56PM +0100, Martin Kepplinger wrote:
> From: "Angus Ainslie (Purism)" <angus@akkea.ca>
> 
> Describe the sgtl5000 of the librem 5 devkit in devicetree.
> 
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
> ---
>  .../boot/dts/freescale/imx8mq-librem5-devkit.dts    | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> index e7e3766198c6..56b4ac286801 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> @@ -480,6 +480,19 @@
>  		vddio-supply = <&reg_3v3_p>;
>  	};
>  
> +	sgtl5000: sgtl5000@a {

audio-codec for the node name.

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

Add a device only when there is a user for it.

Shawn

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
