Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F49160976
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 05:08:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bEcSVepQU/nH15OurH9omc7rL1MXyjSBSgiyQiTsdGM=; b=CN8+kjKPUZVHO9
	/i/QRiugFDbispoK8dgbhnGnyvRFLK/7a8OJKV/jof7V4yg+wS+RMdRAY/RYz9mSHhQ9T0k+6+op6
	qyQeVITe1c5fXi+wNW4Hn5OnOreak7ITn/IJCgJeF9hviamJkVPPACIMeBpOK3gHyn5q5oI9pwLMA
	xlI3cpaPLHUsHhdjRukQa3keJYm+tKjsPpYSH1gQWWV1/f2VmAiEl7aJYDSpRdFpfn9B4PlSTDnf7
	fg5JAGTltWjgR2fN3PzMWtVG22JHLxHlKG7HUTer6XbV+RgL47Pvs/MAujfCYS1s/5m/HGftFgYv7
	1Bt/RlXcn8NV7KrotJ7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Xhl-0004xc-Kn; Mon, 17 Feb 2020 04:08:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Xhb-0004x1-Hi
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 04:08:12 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 13B3E20717;
 Mon, 17 Feb 2020 04:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581912491;
 bh=/Mqu27AqpB+4XNsWQu4dQ/bmhKfjD2lKSZW9AtQdLNA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0X1NwE765Ub3qnrKRRSMBdMh6b+IrmisUUjmapkAPtZ0fKmIpwoxdlwfjAd78nyAx
 3tGluL3tCh7z5j5q34VymWTX1y2PhlzNRTMb8beorMlewFHdlRBpcET0W2ocPm2qP7
 6iRGZ3ohRwpEEaNzD+3Eou4+QRdsV2GFyPWAkx7U=
Date: Mon, 17 Feb 2020 12:08:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH v1 07/12] arm64: dts: librem5-devkit: add the regulators
 for DVFS
Message-ID: <20200217040801.GF5395@dragon>
References: <20200205143003.28408-1-martin.kepplinger@puri.sm>
 <20200205143003.28408-8-martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205143003.28408-8-martin.kepplinger@puri.sm>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_200811_609093_29660698 
X-CRM114-Status: GOOD (  13.82  )
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

On Wed, Feb 05, 2020 at 03:29:58PM +0100, Martin Kepplinger wrote:
> From: "Angus Ainslie (Purism)" <angus@akkea.ca>
> 
> Specify which regulator is used for cpufreq DVFS.
> 
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
> ---
>  .../dts/freescale/imx8mq-librem5-devkit.dts   | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> index ac0145839a69..6a8f6cee96cf 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> @@ -223,6 +223,26 @@
>  	};
>  };
>  
> +&A53_0 {
> +	operating-points-v2 = <&a53_opp_table>;

The property has already been set in imx8mq.dtsi.

Shawn

> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&A53_1 {
> +	operating-points-v2 = <&a53_opp_table>;
> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&A53_2 {
> +	operating-points-v2 = <&a53_opp_table>;
> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&A53_3 {
> +	operating-points-v2 = <&a53_opp_table>;
> +	cpu-supply = <&buck2_reg>;
> +};
> +
>  &clk {
>  	assigned-clocks = <&clk IMX8MQ_AUDIO_PLL1>, <&clk IMX8MQ_AUDIO_PLL2>;
>  	assigned-clock-rates = <786432000>, <722534400>;
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
