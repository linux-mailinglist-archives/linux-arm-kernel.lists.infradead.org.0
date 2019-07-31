Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D1E7BA5F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 09:14:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zW21eitGTVP8GOLt+A+32GMvIewAIW797b+Rt14qFuE=; b=sOSAA+WIZKpxomOPATw5h/91m
	Aw0L4iffigOUzZU7TwmKDdBi1SBqwYAyUzc6Ryzn3CCDTcjaynyOiYJIKRK66EoFkJpXRDIIcgH7y
	va47j66ztLEHnoPuwgVGb0Zv3bibBFoIae9BcNlL9ottQdeCsfzaewC1GS6/3Aug6lXScXONa8t7e
	kZOLDHZN32DRmbnO3HsGFmigqwUlFcdTyfINz714Oz27V3MV7zO6IsFNOhwI5nSDY1r/8wc/j+XIU
	wqtn77QxHo2p3ffKJGV+X2vilcR9OAPID48MoifG4G1d+p07IqqsnYm3+ahRjDCmC87SoPkfk1FCu
	aXierG20Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsiof-0003O6-UR; Wed, 31 Jul 2019 07:14:29 +0000
Received: from uho.ysoft.cz ([81.19.3.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsioQ-0003NX-1s
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 07:14:15 +0000
Received: from [10.1.8.111] (unknown [10.1.8.111])
 by uho.ysoft.cz (Postfix) with ESMTP id 28A1CA5931;
 Wed, 31 Jul 2019 09:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ysoft.com;
 s=20160406-ysoft-com; t=1564557252;
 bh=rtatZtXbN7GFHkDU8P+IOkQRQ4um7ZK8IiXYbfc5WeE=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=m3aMCZfI4z3bF4vToIjgXPVOvKiFQOzjM/YKOXl53xcSKSDin8DIZTkNldPCPXPJG
 EE0qy8Y/J9v/FNtMvIadvnVMWqfbCXMpEjB+3wf4zgTkyny49Qqo7+7cCOKL/rQoQJ
 lv/c7r3PmgxkOYZcfaq1K3vbsZsxu6gQDBj4Pllg=
Subject: Re: [PATCH 11/22] ARM: dts: imx6: Add sleep state to can interfaces
To: Philippe Schenker <dev@pschenker.ch>, marcel.ziswiler@toradex.com,
 max.krummenacher@toradex.com, stefan@agner.ch, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
References: <20190730144649.19022-1-dev@pschenker.ch>
 <20190730144649.19022-12-dev@pschenker.ch>
From: =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>
Message-ID: <86f1e50b-97d6-5bdb-7cc2-e7dc162d147a@ysoft.com>
Date: Wed, 31 Jul 2019 09:14:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190730144649.19022-12-dev@pschenker.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_001414_244618_6E385217 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.19.3.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30. 07. 19 16:46, Philippe Schenker wrote:
> From: Philippe Schenker <philippe.schenker@toradex.com>
> 
> This patch prepares the devicetree for the new Ixora V1.2 where we are
> able to turn off the supply of the can transceiver. This implies to use
> a sleep state on transmission pins in order to prevent backfeeding.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> ---

What about "ARM: dts: imx6qdl-apalis: " for the subject?
To be clear that this is not related to the imx6 SoC itself.

> 
>   arch/arm/boot/dts/imx6qdl-apalis.dtsi | 27 +++++++++++++++++++++------
>   1 file changed, 21 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-apalis.dtsi b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> index 7c4ad541c3f5..59ed2e4a1fd1 100644
> --- a/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> @@ -148,14 +148,16 @@
>   };
>   
>   &can1 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_flexcan1>;
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&pinctrl_flexcan1_default>;
> +	pinctrl-1 = <&pinctrl_flexcan1_sleep>;
>   	status = "disabled";
>   };
>   
>   &can2 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_flexcan2>;
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&pinctrl_flexcan2_default>;
> +	pinctrl-1 = <&pinctrl_flexcan2_sleep>;
>   	status = "disabled";
>   };
>   
> @@ -599,19 +601,32 @@
>   		>;
>   	};
>   
> -	pinctrl_flexcan1: flexcan1grp {
> +	pinctrl_flexcan1_default: flexcan1defgrp {
>   		fsl,pins = <
>   			MX6QDL_PAD_GPIO_7__FLEXCAN1_TX 0x1b0b0
>   			MX6QDL_PAD_GPIO_8__FLEXCAN1_RX 0x1b0b0
>   		>;
>   	};
>   
> -	pinctrl_flexcan2: flexcan2grp {
> +	pinctrl_flexcan1_sleep: flexcan1slpgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_7__GPIO1_IO07 0x0
> +			MX6QDL_PAD_GPIO_8__GPIO1_IO08 0x0
> +		>;
> +	};
> +
> +	pinctrl_flexcan2_default: flexcan2defgrp {
>   		fsl,pins = <
>   			MX6QDL_PAD_KEY_COL4__FLEXCAN2_TX 0x1b0b0
>   			MX6QDL_PAD_KEY_ROW4__FLEXCAN2_RX 0x1b0b0
>   		>;
>   	};
> +	pinctrl_flexcan2_sleep: flexcan2slpgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_KEY_COL4__GPIO4_IO14 0x0
> +			MX6QDL_PAD_KEY_ROW4__GPIO4_IO15 0x0
> +		>;
> +	};
>   
>   	pinctrl_gpio_bl_on: gpioblon {
>   		fsl,pins = <
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
