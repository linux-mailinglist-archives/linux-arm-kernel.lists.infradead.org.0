Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F1518F18F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 10:17:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HP+j0muDCfzeEQPnSjThvy3aIseKD1XYQTHumBj8gHU=; b=LQgbVBfZSu3Lpm
	vB20cLNN8DyniQ6zogK4liRfxDMErbEXCwOlQ4xUsPMkBH4eb852C1mZEAUFzWmCc2k+Tu+ZSCcV4
	izdnN7UWO3jnSP29ilcNMig++1WFgFMmUQcdtcqxjIogUbsHZNTf+kP/W/6ChOgsZoG1toRFpvygF
	CfMgqPrCXqcyUGh+Zuanm8AHktxfFkKse2zh/sm0aLJwORpPAbGkJcVZvXya4tEcZ741i82OdnHX/
	2N1GI6Bq6qbqs49AW5/MXZWWO8BicEth8mJHVdeBKvwr5vOJ2OLgbXdy9ejGD0+mVoPGHtl1SjBYe
	mEbwx0tph4plrXMMxqYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJCk-0001KM-2s; Mon, 23 Mar 2020 09:17:06 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJCZ-0001JQ-S8
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 09:16:58 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02N98iv7012739; Mon, 23 Mar 2020 10:16:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=/HAdue9DXFtjKevkYv/5qC2RX5R7A47mv6fKkWpAlio=;
 b=GiOeAvan2nCdagn47xKav7xOGwk2qTXLhuNEjgVMu+7jBK9i3lLPvj/uFHn86a4F5Fpb
 jGIlb4iZMiserHQZIkiEWsqAweR0TMEw6V4VAL/PH/oX7u0+2ulbt388DQNqofwJrR53
 ckhIhhkN274SoN0m68ZvnoTSn29sL66JOiLt0H5MEsvcoGtvtKPkKp0DMOKG4K225l6t
 CnFQvktXZITUl0XBFKMm6DxRGZ4LnrtlbSoBBd69RPkLCovkOHTnJQAzukNHLpsQ3mJG
 V8fpY21J/1XWUrR8bfh9W8sJejmpSaYm9K3S0GGZfUBu1uyF5ny+x5sqXs4oGtl+w7fn kQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw9jys0d0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 23 Mar 2020 10:16:43 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7474E100038;
 Mon, 23 Mar 2020 10:16:41 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 475752AAA85;
 Mon, 23 Mar 2020 10:16:41 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 23 Mar
 2020 10:16:40 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Mon, 23 Mar 2020 10:16:40 +0100
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Alain Volmat <avolmat@me.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, 
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dts: arm: stih418: Fix complain about IRQ_TYPE_NONE usage
Thread-Topic: [PATCH] dts: arm: stih418: Fix complain about IRQ_TYPE_NONE usage
Thread-Index: AQHWAGVD1LVv67fNzEC4+ePomo0cJKhV1fSA
Date: Mon, 23 Mar 2020 09:16:40 +0000
Message-ID: <2515846e-a514-ef16-5f5c-9342b0aad098@st.com>
References: <20200322161631.19151-1-avolmat@me.com>
In-Reply-To: <20200322161631.19151-1-avolmat@me.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <EEE6929E4B209441888D5364B4FA25CF@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-23_02:2020-03-21,
 2020-03-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_021656_272480_F70E0E13 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alain

On 3/22/20 5:16 PM, Alain Volmat wrote:
> Since commit 83a86fbb5b56 ("irqchip/gic: Loudly complain about the use of IRQ_TYPE_NONE")
> kernel is complaining about the IRQ_TYPE_NONE usage which shouldn't
> be used.
>
> Use IRQ_TYPE_LEVEL_HIGH instead.
>
> Signed-off-by: Alain Volmat <avolmat@me.com>
> ---
>  arch/arm/boot/dts/stih418.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm/boot/dts/stih418.dtsi b/arch/arm/boot/dts/stih418.dtsi
> index 83411322bd92..a05e2278b448 100644
> --- a/arch/arm/boot/dts/stih418.dtsi
> +++ b/arch/arm/boot/dts/stih418.dtsi
> @@ -50,7 +50,7 @@
>  		ohci0: usb@9a03c00 {
>  			compatible = "st,st-ohci-300x";
>  			reg = <0x9a03c00 0x100>;
> -			interrupts = <GIC_SPI 180 IRQ_TYPE_NONE>;
> +			interrupts = <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&clk_s_c0_flexgen CLK_TX_ICN_DISP_0>;
>  			resets = <&powerdown STIH407_USB2_PORT0_POWERDOWN>,
>  				 <&softreset STIH407_USB2_PORT0_SOFTRESET>;
> @@ -62,7 +62,7 @@
>  		ehci0: usb@9a03e00 {
>  			compatible = "st,st-ehci-300x";
>  			reg = <0x9a03e00 0x100>;
> -			interrupts = <GIC_SPI 151 IRQ_TYPE_NONE>;
> +			interrupts = <GIC_SPI 151 IRQ_TYPE_LEVEL_HIGH>;
>  			pinctrl-names = "default";
>  			pinctrl-0 = <&pinctrl_usb0>;
>  			clocks = <&clk_s_c0_flexgen CLK_TX_ICN_DISP_0>;
> @@ -76,7 +76,7 @@
>  		ohci1: usb@9a83c00 {
>  			compatible = "st,st-ohci-300x";
>  			reg = <0x9a83c00 0x100>;
> -			interrupts = <GIC_SPI 181 IRQ_TYPE_NONE>;
> +			interrupts = <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&clk_s_c0_flexgen CLK_TX_ICN_DISP_0>;
>  			resets = <&powerdown STIH407_USB2_PORT1_POWERDOWN>,
>  				 <&softreset STIH407_USB2_PORT1_SOFTRESET>;
> @@ -88,7 +88,7 @@
>  		ehci1: usb@9a83e00 {
>  			compatible = "st,st-ehci-300x";
>  			reg = <0x9a83e00 0x100>;
> -			interrupts = <GIC_SPI 153 IRQ_TYPE_NONE>;
> +			interrupts = <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>;
>  			pinctrl-names = "default";
>  			pinctrl-0 = <&pinctrl_usb1>;
>  			clocks = <&clk_s_c0_flexgen CLK_TX_ICN_DISP_0>;

Reviewed-by: Patrice Chotard <patrice.chotard@st.com>

Thanks

Patrice
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
