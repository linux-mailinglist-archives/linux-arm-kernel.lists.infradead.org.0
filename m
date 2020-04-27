Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4421BA0CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 12:09:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OYyf+Ifym8BRxj9RusR5xKL6FiSPd+BuiuS0w021lAs=; b=jacwChUQ3bQnYDFJn56nLaMVK
	ikzmfzk/wrhJFCY37KwLAam03tuPXglOVFMw28D3zEnU3t4dMBiJufsXV/3mI+vNfDCtscG0WeB2M
	SmbRl4UliWvhrYAstlIvhps/woOBBVQukgwANTFfUASw/wAXm26VVLUuPwWhst2dOHnut4bw2YEY/
	OZCgj65wcq4HpP++rxT2dkoAsZzSLYQNPXX8OBzFH6Z+fMapy86wMtodaTK62gg/vsD0CuqV8dDhM
	7m2yBCUFy5T/Hwpb9u7L7Ebq/mg5gKAUA0phdUIFh4aWSDKcFJMHTMqZIt7zytG/Pvwen1vDpmH48
	Y1GDHPf1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT0hL-0002i2-0c; Mon, 27 Apr 2020 10:09:11 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT0h9-0002gw-K9
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 10:09:01 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03RA8jQ4048624;
 Mon, 27 Apr 2020 05:08:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587982125;
 bh=0BSivvB38GQp/I42y/EWTA/TBEG/9XtWq5DZOBtwxTA=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=q4gWjPDJ/OKAvr1CpLQrnpndq2lnxsEnu3pZC2g17O7c1GOBAIJtgBITRjvKPJWMf
 9VtV71DVdMMOGWp1VXVZGJfR/Ms3CVQVysP7xgdxaEy95ryKKRmh2sKqB83hpIfC40
 KfMIbJ1XgqZ4J5ERFaw6NkIlIDhcGRq81DFu51LI=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03RA8jkn080564;
 Mon, 27 Apr 2020 05:08:45 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 27
 Apr 2020 05:08:45 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 27 Apr 2020 05:08:45 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03RA8gKT075451;
 Mon, 27 Apr 2020 05:08:43 -0500
Subject: Re: [PATCH 1/3] arm64: dts: ti: am654: Add DSS node
To: Tomi Valkeinen <tomi.valkeinen@ti.com>, Nishanth Menon <nm@ti.com>, Rob
 Herring <robh+dt@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Jyri Sarha <jsarha@ti.com>
References: <20200422091512.950-1-tomi.valkeinen@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <591ddc8e-b45a-5a36-ae81-e1b92727dd2d@ti.com>
Date: Mon, 27 Apr 2020 13:08:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200422091512.950-1-tomi.valkeinen@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_030859_782608_04D62F73 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/04/2020 12:15, Tomi Valkeinen wrote:
> From: Jyri Sarha <jsarha@ti.com>
> 
> Add DSS node to k3-am65-main.dtsi with labels for board specific
> support and syscon node for oldi-io-ctrl.
> 
> Signed-off-by: Jyri Sarha <jsarha@ti.com>
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 44 ++++++++++++++++++++++++
>   1 file changed, 44 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> index 11887c72f23a..7d1bc991708e 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> @@ -287,6 +287,11 @@
>   			mux-reg-masks = <0x4080 0x3>, /* SERDES0 lane select */
>   					<0x4090 0x3>; /* SERDES1 lane select */
>   		};
> +
> +		dss_oldi_io_ctrl: dss_oldi_io_ctrl@41E0 {
> +			compatible = "syscon";
> +			reg = <0x0000041E0 0x14>;
> +		};
>   	};
>   
>   	dwc3_0: dwc3@4000000 {
> @@ -746,4 +751,43 @@
>   			};
>   		};
>   	};
> +
> +	dss: dss@04a00000 {
> +		compatible = "ti,am65x-dss";
> +		reg =	<0x0 0x04a00000 0x0 0x1000>, /* common */
> +			<0x0 0x04a02000 0x0 0x1000>, /* vidl1 */
> +			<0x0 0x04a06000 0x0 0x1000>, /* vid */
> +			<0x0 0x04a07000 0x0 0x1000>, /* ovr1 */
> +			<0x0 0x04a08000 0x0 0x1000>, /* ovr2 */
> +			<0x0 0x04a0a000 0x0 0x1000>, /* vp1 */
> +			<0x0 0x04a0b000 0x0 0x1000>; /* vp2 */
> +		reg-names = "common", "vidl1", "vid",
> +			"ovr1", "ovr2", "vp1", "vp2";
> +
> +		ti,am65x-oldi-io-ctrl = <&dss_oldi_io_ctrl>;
> +
> +		power-domains = <&k3_pds 67 TI_SCI_PD_EXCLUSIVE>;
> +
> +		clocks =	<&k3_clks 67 1>,
> +				<&k3_clks 216 1>,
> +				<&k3_clks 67 2>;
> +		clock-names = "fck", "vp1", "vp2";
> +
> +		/*
> +		 * Set vp2 clk (DPI_1_IN_CLK) mux to PLL4 via
> +		 * DIV1. See "Figure 12-3365. DSS Integration"
> +		 * in AM65x TRM for details.
> +		 */
> +		assigned-clocks = <&k3_clks 67 2>;
> +		assigned-clock-parents = <&k3_clks 67 5>;
> +
> +		interrupts = <GIC_SPI 166 IRQ_TYPE_EDGE_RISING>;
> +
> +		status = "disabled";

Any reason why the node is disabled? Are you planning to enable it 
somewhere later on, or is that left for the user to do?

-Tero

> +
> +		dss_ports: ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +	};
>   };
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
