Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883CF5E4C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 15:02:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IiOK4/iAGeH3gdChTRXq3Kn94CNfvE+b14MF9uMCBK4=; b=me6rpnX/sZPJ6BUQAIWZ1cCD2
	izOCvdYnXsIfvcshN93ihAN+4rH0bu+Dw50GiOMRRyrp+tnn/yCJ3COkLLGNkswJa/fiil/ayKGkX
	+jek67wo9gF5EoD8kH/p99qkwGxC4lxdgp4A5NR+AqNGqwdRs3chPsEa1hFU9ppvVUOU8O4JoQX0t
	L7PFBD/Opu4uCz+0wVZQuHzDCHnSTSy0Ntsp291VA41pmeuoM5oUmwSWEG9fPtO4QQlZNzgIXw35H
	DbHyFey5oD03D+Vw49WiZ0zHVZDk4Ie8C8UZIprjGssggpoiBclbokb7w/VQkU/4S5hoVtU3jlDhD
	7NnbXhlIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hietm-0007Fl-07; Wed, 03 Jul 2019 13:02:10 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiesT-0006ah-2p
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 13:00:51 +0000
Received: by node.akkea.ca (Postfix, from userid 33)
 id BC92D4E204B; Wed,  3 Jul 2019 13:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1562158846; bh=jfEnQz6Z7lDitZDfZEU5tHLgi5WtCywGyso2NpbD6yM=;
 h=To:Subject:Date:From:Cc:In-Reply-To:References;
 b=nHY7Db9TTbezNC91mUbwu6U9bjG3WAnn/Vj2i/HuvYVxqG55+k/M/yHfQaRKCevGh
 3gFNdY/MIMR/QthhXFfVDa7O2uYz6nSZ3Iz73qCjR3tpEJR21kbtwmGf4EUHZylfde
 blLDPH5clasanypevgikazHmk+IrIti1LuSXTjuE=
To: Andra Danciu <andradanciu1997@gmail.com>
Subject: Re: [PATCH v3] arm64: dts: imx8mq: Add sai3 and sai6 nodes
X-PHP-Originating-Script: 1000:rcube.php
MIME-Version: 1.0
Date: Wed, 03 Jul 2019 07:00:46 -0600
From: Angus Ainslie <angus@akkea.ca>
In-Reply-To: <20190702132353.18632-1-andradanciu1997@gmail.com>
References: <20190702132353.18632-1-andradanciu1997@gmail.com>
Message-ID: <9ea5109f8645c3f27a9e350c5f9b2d4c@www.akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_060049_307713_8B8F2FFF 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, abel.vesa@nxp.com,
 Anson.Huang@nxp.com, ccaione@baylibre.com, andrew.smirnov@gmail.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, agx@sigxcpu.org, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andra,

I tried this out on linux-next and I'm not able to record or play sound.

I also added the sai2 entry to test out our devkit and get a PCM timeout 
with that.

On 2019-07-02 07:23, Andra Danciu wrote:
> SAI3 and SAI6 nodes are used to connect to an external codec.
> They have 1 Tx and 1 Rx dataline.
> 
> Cc: Daniel Baluta <daniel.baluta@nxp.com>
> Signed-off-by: Andra Danciu <andradanciu1997@gmail.com>
> ---
> Changes since v2:
> 	- removed multiple new lines
> 
> Changes since v1:
> 	- Added sai3 node because we need it to enable audio on pico-pi-8m
> 	- Added commit description
> 
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 29 
> +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index d09b808eff87..736cf81b695e 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -278,6 +278,20 @@
>  			#size-cells = <1>;
>  			ranges = <0x30000000 0x30000000 0x400000>;
> 
> +			sai6: sai@30030000 {
> +				compatible = "fsl,imx8mq-sai",

I don't find this compatible string in sound/soc/fsl/fsl_sai.c. Aren't 
the registers at a different offset from "fsl,imx6sx-sai".

How is this supposed to work ?

Thanks
Angus

> +					"fsl,imx6sx-sai";
> +				reg = <0x30030000 0x10000>;
> +				interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MQ_CLK_SAI6_IPG>,
> +					<&clk IMX8MQ_CLK_SAI6_ROOT>,
> +					<&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
> +				clock-names = "bus", "mclk1", "mclk2", "mclk3";
> +				dmas = <&sdma2 4 24 0>, <&sdma2 5 24 0>;
> +				dma-names = "rx", "tx";
> +				status = "disabled";
> +			};
> +
>  			gpio1: gpio@30200000 {
>  				compatible = "fsl,imx8mq-gpio", "fsl,imx35-gpio";
>  				reg = <0x30200000 0x10000>;
> @@ -728,6 +742,21 @@
>  				status = "disabled";
>  			};
> 
> +			sai3: sai@308c0000 {
> +				compatible = "fsl,imx8mq-sai",
> +					     "fsl,imx6sx-sai";
> +				reg = <0x308c0000 0x10000>;
> +				interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clk IMX8MQ_CLK_SAI3_IPG>,
> +					<&clk IMX8MQ_CLK_DUMMY>,
> +					<&clk IMX8MQ_CLK_SAI3_ROOT>,
> +					<&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
> +				clock-names = "bus", "mclk1", "mclk2", "mclk3";
> +				dmas = <&sdma1 12 24 0>, <&sdma1 13 24 0>;
> +				dma-names = "rx", "tx";
> +				status = "disabled";
> +			};
> +
>  			i2c1: i2c@30a20000 {
>  				compatible = "fsl,imx8mq-i2c", "fsl,imx21-i2c";
>  				reg = <0x30a20000 0x10000>;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
