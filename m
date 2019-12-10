Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 913261186BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 12:43:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwAKldGkiixexQXtI1JIQnkeVn4JA6ZckPa8DHzPbKU=; b=uqAJzuwImba6J5
	3dMa+TaP+CR4S1IxQg9+wvUZxEqITq7MIaIN0RMC5yDkRBlzzcRtPSIl4hMgU1jZfX9BY8XTLpWPU
	Cy1HgPQYdqlz3eX1j95aueRdMYQQfx9ty5bsKkLYdQiZFr69kqlO8hkhu/18DWRYR5bxrUOq1wPfU
	PVvNHl1bOx69YCCEaWbpY8NUzZ5bd/nNBmmtfHq/esx+gqANzi7JR9Ga5wCoAl1D0gMqTTENV/Tiv
	VjxTW44jFOrzORF4Fq34Pug+oIPoTyStwXmWGh/yzTkagiGkO7+bN0Vy84npxGqGj+v9EgWAcWXhu
	ubdyjYw0mifqoB0DPoHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iedvg-00046s-Ty; Tue, 10 Dec 2019 11:43:48 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iedvV-00046G-Vq
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 11:43:39 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBABhWOr067827;
 Tue, 10 Dec 2019 05:43:32 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1575978212;
 bh=QVZ0wHLNfOTgyXe90BMNnzRWTBciR4aHMQdWEYvTevE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=AsiY/Hlka56aVuv34FILts0AwzVsHHoxnVD4angwjRccHFomvwSSYq61P4aF026So
 zsZ9keday0kh1VZ8QaDbF527B/+6tLHLbVa9eV/bqcIG4UatvUn2ck4Y5eK5M73dY0
 JCk4j7ZSfKWegEA0XOZTGmZJjYQ0cpH2hkvVmYGw=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBABhWOq112454;
 Tue, 10 Dec 2019 05:43:32 -0600
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 10
 Dec 2019 05:43:32 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 10 Dec 2019 05:43:32 -0600
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBABhTrE113714;
 Tue, 10 Dec 2019 05:43:30 -0600
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-am65: Add OSPI DT node
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
References: <20191210093619.22481-1-vigneshr@ti.com>
 <20191210093619.22481-2-vigneshr@ti.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <0f3a083d-8beb-2206-8aa9-84ace17ca6d3@ti.com>
Date: Tue, 10 Dec 2019 17:13:59 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191210093619.22481-2-vigneshr@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_034338_127972_664C02EB 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 10/12/19 3:06 pm, Vignesh Raghavendra wrote:
> AM654 SoC has two Cadence OSPI controller instances under Flash
> subsystem (FSS). Add DT nodes for the same.
> 


Please ignore this patch... I missed to update Device IDs, will post a
v2. Sorry for the noise

Regards
Vignesh


> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi       | 38 +++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am65.dtsi           | 11 +++++-
>  .../arm64/boot/dts/ti/k3-am654-base-board.dts | 36 ++++++++++++++++++
>  3 files changed, 83 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
> index 7bdf5342f58f..aec720f35578 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
> @@ -95,4 +95,42 @@ adc {
>  			compatible = "ti,am654-adc", "ti,am3359-adc";
>  		};
>  	};
> +
> +	fss: fss@47000000 {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		ospi0: spi@47040000 {
> +			compatible = "ti,am654-ospi", "cdns,qspi-nor";
> +			reg = <0x0 0x47040000 0x0 0x100>,
> +				<0x5 0x00000000 0x1 0x0000000>;
> +			interrupts = <GIC_SPI 552 IRQ_TYPE_LEVEL_HIGH>;
> +			cdns,fifo-depth = <256>;
> +			cdns,fifo-width = <4>;
> +			cdns,trigger-address = <0x50000000>;
> +			clocks = <&k3_clks 55 5>;
> +			assigned-clocks = <&k3_clks 55 5>;
> +			assigned-clock-parents = <&k3_clks 55 7>;
> +			assigned-clock-rates = <166666666>;
> +			power-domains = <&k3_pds 55 TI_SCI_PD_EXCLUSIVE>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +
> +		ospi1: spi@47050000 {
> +			compatible = "ti,am654-ospi", "cdns,qspi-nor";
> +			reg = <0x0 0x47050000 0x0 0x100>,
> +				<0x7 0x00000000 0x1 0x00000000>;
> +			interrupts = <GIC_SPI 553 IRQ_TYPE_LEVEL_HIGH>;
> +			cdns,fifo-depth = <256>;
> +			cdns,fifo-width = <4>;
> +			cdns,trigger-address = <0x58000000>;
> +			clocks = <&k3_clks 55 16>;
> +			power-domains = <&k3_pds 55 TI_SCI_PD_EXCLUSIVE>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +	};
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-am65.dtsi b/arch/arm64/boot/dts/ti/k3-am65.dtsi
> index 6dfccd5d56c8..d38720bc2551 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65.dtsi
> @@ -80,7 +80,11 @@ cbass_main: interconnect@100000 {
>  			 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>,
>  			 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>,
>  			 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>,
> -			 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>;
> +			 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>,
> +			 <0x00 0x50000000 0x00 0x50000000 0x00 0x8000000>,
> +			 <0x00 0x70000000 0x00 0x70000000 0x00 0x200000>,
> +			 <0x05 0x00000000 0x05 0x00000000 0x01 0x0000000>,
> +			 <0x07 0x00000000 0x07 0x00000000 0x01 0x0000000>;
>  
>  		cbass_mcu: interconnect@28380000 {
>  			compatible = "simple-bus";
> @@ -94,7 +98,10 @@ cbass_mcu: interconnect@28380000 {
>  				 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>, /* WKUP */
>  				 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>, /* MMRs, remaining NAVSS */
>  				 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>, /* CPSW */
> -				 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>; /* OSPI space 1 */
> +				 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>, /* OSPI space 1 */
> +				 <0x00 0x50000000 0x00 0x50000000 0x00 0x8000000>, /*  FSS OSPI0 data region 1 */
> +				 <0x05 0x00000000 0x05 0x00000000 0x01 0x0000000>, /* FSS OSPI0 data region 3*/
> +				 <0x07 0x00000000 0x07 0x00000000 0x01 0x0000000>; /* FSS OSPI1 data region 3*/
>  
>  			cbass_wakeup: interconnect@42040000 {
>  				compatible = "simple-bus";
> diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> index 8a85b482ad31..94bec7aa9baf 100644
> --- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> @@ -69,6 +69,22 @@ AM65X_WKUP_IOPAD(0x0030, PIN_INPUT, 7) /* (R5) WKUP_GPIO0_24 */
>  			AM65X_WKUP_IOPAD(0x003c, PIN_INPUT, 7) /* (P2) WKUP_GPIO0_27 */
>  		>;
>  	};
> +
> +	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-pins_default {
> +		pinctrl-single,pins = <
> +			AM65X_WKUP_IOPAD(0x0000, PIN_OUTPUT, 0) /* (V1) MCU_OSPI0_CLK */
> +			AM65X_WKUP_IOPAD(0x0008, PIN_INPUT, 0)	 /* (U2) MCU_OSPI0_DQS */
> +			AM65X_WKUP_IOPAD(0x000c, PIN_INPUT, 0)  /* (U4) MCU_OSPI0_D0 */
> +			AM65X_WKUP_IOPAD(0x0010, PIN_INPUT, 0)  /* (U5) MCU_OSPI0_D1 */
> +			AM65X_WKUP_IOPAD(0x0014, PIN_INPUT, 0)  /* (T2) MCU_OSPI0_D2 */
> +			AM65X_WKUP_IOPAD(0x0018, PIN_INPUT, 0)  /* (T3) MCU_OSPI0_D3 */
> +			AM65X_WKUP_IOPAD(0x001c, PIN_INPUT, 0)  /* (T4) MCU_OSPI0_D4 */
> +			AM65X_WKUP_IOPAD(0x0020, PIN_INPUT, 0)  /* (T5) MCU_OSPI0_D5 */
> +			AM65X_WKUP_IOPAD(0x0024, PIN_INPUT, 0)  /* (R2) MCU_OSPI0_D6 */
> +			AM65X_WKUP_IOPAD(0x0028, PIN_INPUT, 0)  /* (R3) MCU_OSPI0_D7 */
> +			AM65X_WKUP_IOPAD(0x002c, PIN_OUTPUT, 0) /* (R4) MCU_OSPI0_CSn0 */
> +		>;
> +	};
>  };
>  
>  &main_pmx0 {
> @@ -339,3 +355,23 @@ &mailbox0_cluster10 {
>  &mailbox0_cluster11 {
>  	status = "disabled";
>  };
> +
> +&ospi0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mcu_fss0_ospi0_pins_default>;
> +
> +	flash@0{
> +		compatible = "jedec,spi-nor";
> +		reg = <0x0>;
> +		spi-tx-bus-width = <1>;
> +		spi-rx-bus-width = <8>;
> +		spi-max-frequency = <40000000>;
> +		cdns,tshsl-ns = <60>;
> +		cdns,tsd2d-ns = <60>;
> +		cdns,tchsh-ns = <60>;
> +		cdns,tslch-ns = <60>;
> +		cdns,read-delay = <0>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +	};
> +};
> 

-- 
Regards
Vignesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
