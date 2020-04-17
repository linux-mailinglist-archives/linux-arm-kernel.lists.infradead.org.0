Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E791ADB62
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4fv1fkUfycUsItV6uigcAgPuIDkCr95gApgbLmVbQVg=; b=cJUDXg7n4pd6Tj
	viDhzlJjDxfKRBo+G/HmXSj7r6CTJNElXBe9Eq+3c5ugKAOp4LSUdovzMnq+KsHySC0Oqe6l3akBq
	DG3fGoj0kJWCloOzxyUfstf7pHDqcoTupN/KFJRdK4j0xJJdTcaXjC0k4fe8GNalVMnhoYNPmJCvq
	kOAmuimcaxJ1O0TlCoISBIUKBLW57LJOYrfJyNF+1IzrhO+jbY8/jxD1RsMYDxtk06cHgnhYu4CXM
	qsYmSdK5/7AJR6+1cwptH0nKBDkvlOPoE8yyVmbDi8fGPikOV8aq4y9Qu2faCRPKW0+W89h1th20S
	JQngcbd/BC3FpViuQmGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOUy-0000cG-TO; Fri, 17 Apr 2020 10:45:28 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOUo-0000aR-OO
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:45:20 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03HAgK8n005749; Fri, 17 Apr 2020 12:45:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=AcG7+GmMq13N6s6AesohpTV9dUnF9RbuITAh7iOUyd0=;
 b=hPcIpy9A4/lBcGev7bb79Qb+LtnohSo19cR5aJWglNylUEAdxISgYT9vdnVqdyN3D3R+
 OX8NUbXcFP7xNWfxGiLOZVMENZ9Kq4IYb6WpCJZp/mi+mnusr1g/3RsmluUXaiviSFwv
 4UEj0naU8bK58m819nF1Zqsq/YpI0At0KmX0g3MuY8ykLjUDN6v81DSpmEiW9HJdJ68o
 2o68H9lgpXz1eaA7ZKRQq0aLc5Dgv0h+UKx0Xe91wsbKEB2V7++yXg0oCbYWp878QART
 1qH8z5C5irosu1jx6tFRU+RzJOW2i0rNgI0SYfQ8Z9AGtQli8njI1hRKj2vDl0OwF53K +w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30dn94rxuh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 17 Apr 2020 12:45:08 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CA1B4100034;
 Fri, 17 Apr 2020 12:45:07 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B4CFF2A96FC;
 Fri, 17 Apr 2020 12:45:07 +0200 (CEST)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 17 Apr
 2020 12:45:07 +0200
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
 SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
 15.00.1347.000; Fri, 17 Apr 2020 12:45:07 +0200
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Alain Volmat <avolmat@me.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, 
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dts: arm: stih418: Fix complain about IRQ_TYPE_NONE usage
Thread-Topic: [PATCH] dts: arm: stih418: Fix complain about IRQ_TYPE_NONE usage
Thread-Index: AQHWAGVD1LVv67fNzEC4+ePomo0cJKh9KDEA
Date: Fri, 17 Apr 2020 10:45:07 +0000
Message-ID: <348e46ed-c0f6-ffb8-f8e0-0aa6e7e207f9@st.com>
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
x-originating-ip: [10.75.127.50]
Content-ID: <50C629EAC0776D40B4B6E7A1DFC45ECF@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-17_03:2020-04-17,
 2020-04-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_034519_238664_0723683E 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Applied on sti-dt-for-v5.8-round1

Thanks

Patrice
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
