Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A032F77FEE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 16:53:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T9jcq/eEROOfXPp48z3qI+u1RFIuUUKVqm5Luoqey9g=; b=P3jW+Mpvm4VvDxKSmDKNOL3eP
	tFJyLH6qVKAXwWd9TrwcbXoHODGGAbPk/QpbQUUlTai4q/xjblf41kAs3ynS+XjGNJ7iJPC9x9ixg
	ol3N3PPbgbUb9yiYkSkSsnu2/ZFY30C6n/IKTKFrEZo+RN3kwnZZ6d1OxMBDN+5kyhaNswknRTOMo
	axgPpp4Ce+T5aUkph44NxXeIA1W2RJZx/1CmrzypLPGnssJdK+jhZth0nujpdX80J311FDYEWluH5
	4rvUyqLp7jqcxVfwYYHuS9HXtpU6UM/rU9gycgAac+n1snEv7/2LHMXI/6d4lVlgxR87Kml5w9tPG
	xg3DYDILw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrkYA-0006Jo-5b; Sun, 28 Jul 2019 14:53:26 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrkXy-0006J0-0i
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 14:53:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id 5EC1F4E2006;
 Sun, 28 Jul 2019 14:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1564325589; bh=jFYSwWQ6KDwhrZUv1WSImF62zPOOJ60VfGwI0NTIRtE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=u/TyFOV3OsHurjKFSzVTZVsUvO56d41BY6WC/NR9rwA0sfSzvBMiTmVEQZpN9Vj2q
 IEj++/3DNSLJbDhI6loYMA2rG+MQ2rUtiWHKQ6J+cbxYocRy6ZojMUltNpE8nBEIka
 ftP7xlWgRsn80FXtbDnPGhvLba3lzPh+pWoJseuU=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hMTirB_UYjpE; Sun, 28 Jul 2019 14:53:08 +0000 (UTC)
Received: from www.akkea.ca (node.akkea.ca [192.155.83.177])
 by node.akkea.ca (Postfix) with ESMTPSA id D24544E2003;
 Sun, 28 Jul 2019 14:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1564325588; bh=jFYSwWQ6KDwhrZUv1WSImF62zPOOJ60VfGwI0NTIRtE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=KALVHfDBnZ7/KQ4LI/qhXLyjgpzXaxKFr1sJ3+OPYUy9j7NwAqQ1QHrY+yNi08w1g
 v2VH11VnJ4HNc6AQAkCVyWtPoHlH9xDB1SHiEsuEj+PGEJi3/h+dGVwktLsZybukqm
 AQRAuHdQChjlzv8Q1oLlrc+7yW440JfuguM0NwQA=
MIME-Version: 1.0
Date: Sun, 28 Jul 2019 07:53:08 -0700
From: Angus Ainslie <angus@akkea.ca>
To: Daniel Baluta <daniel.baluta@nxp.com>
Subject: Re: [PATCH v3] arm64: dts: imx8mq: Init rates and parents configs for
 clocks
In-Reply-To: <20190728141218.12702-1-daniel.baluta@nxp.com>
References: <20190728141218.12702-1-daniel.baluta@nxp.com>
Message-ID: <b6506f6579f823e4c1e26ef3a7d1eed2@akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.3.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_075314_069731_252A7A89 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, baruch@tkos.co.il, abel.vesa@nxp.com,
 Anson.Huang@nxp.com, ccaione@baylibre.com, andrew.smirnov@gmail.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 agx@sigxcpu.org, linux-imx@nxp.com, linux-kernel-owner@vger.kernel.org,
 festevam@gmail.com, shengjiu.wang@nxp.com,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On 2019-07-28 07:12, Daniel Baluta wrote:
> From: Abel Vesa <abel.vesa@nxp.com>
> 
> Add the initial configuration for clocks that need default parent and 
> rate
> setting. This is based on the vendor tree clock provider parents and 
> rates
> configuration except this is doing the setup in dts rather then using 
> clock
> consumer API in a clock provider driver.
> 
> Note that by adding the initial rate setting for audio_pll1/audio_pll
> setting we need to remove it from imx8mq-librem5-devkit.dts
> imx8mq-librem5-devkit.dts
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>

This works with our board. One small nit below

Tested-by: Angus Ainslie (Purism) <angus@akkea.ca>

> ---
> Changes since v2:
> 	- set rate for audio_pll1/audio_pll2  in the dtsi file and
> 	remove the setting from imx8mq-librem5-devkit.dts
> 
>  .../dts/freescale/imx8mq-librem5-devkit.dts   |  5 -----
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 21 +++++++++++++++++++
>  2 files changed, 21 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> index 683a11035643..c702ccc82867 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> @@ -169,11 +169,6 @@
>  	};
>  };
> 
> -&clk {
> -	assigned-clocks = <&clk IMX8MQ_AUDIO_PLL1>, <&clk IMX8MQ_AUDIO_PLL2>;
> -	assigned-clock-rates = <786432000>, <722534400>;
> -};
> -
>  &dphy {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 02fbd0625318..c67625a881a4 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -494,6 +494,27 @@
>  				clock-names = "ckil", "osc_25m", "osc_27m",
>  				              "clk_ext1", "clk_ext2",
>  				              "clk_ext3", "clk_ext4";
> +				assigned-clocks = <&clk IMX8MQ_VIDEO_PLL1>,
> +					<&clk IMX8MQ_AUDIO_PLL1>,
> +					<&clk IMX8MQ_AUDIO_PLL2>,
> +					<&clk IMX8MQ_CLK_AHB>,
> +					<&clk IMX8MQ_CLK_NAND_USDHC_BUS>,
> +					<&clk IMX8MQ_CLK_AUDIO_AHB>,
> +					<&clk IMX8MQ_VIDEO_PLL1_REF_SEL>,
> +					<&clk IMX8MQ_CLK_NOC>;
> +				assigned-clock-parents = <0>,
> +						<0>,
> +						<0>,
> +						<&clk IMX8MQ_SYS1_PLL_133M>,
> +						<&clk IMX8MQ_SYS1_PLL_266M>,
> +						<&clk IMX8MQ_SYS2_PLL_500M>,
> +						<&clk IMX8MQ_CLK_27M>,
> +						<&clk IMX8MQ_SYS1_PLL_800M>;
> +				assigned-clock-rates = <593999999>,
> +						<786432000>,
> +						<722534400>;
> +
> +

Extra whitespace

Angus

>  			};
> 
>  			src: reset-controller@30390000 {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
