Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D55391BA117
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 12:28:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2fWMhYKTtcEjw6wQYxrITKGVJTt9aEHxnKTUz3RF6xc=; b=slNmekxF6SRhLCDlkZjBkJEoO
	D6bDyu/Snt3gxaUL4ct+S8p/XONxKx28c4KnlBj+h8aAjisewfyWlggByTZP2r9Y4McDK2Wll01/d
	iONPf1GNewFtIRnA2Rpb8uUPlZr7Uw3vHOrksRb0otl42YNDUAjhUlNDO7yWNhvYQ6EvaayVzi11D
	Yv1+ku9L4RIHfq4a0ibRCBK9/GZ7uGzhocCgoZGsibQi/HRXK0MXjD5D71m4u4NqhycL8LQbCR91c
	a8XFEM12p/hNl3ubplwBzqamOLiMks0YkZrnZ4lKhhf3Vgs7AqWieJNl14oHVmQxxvMSkGY8FceUb
	8vOaeToLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT0zv-0000XO-AQ; Mon, 27 Apr 2020 10:28:23 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT0zl-0000WK-Tv
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 10:28:15 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03RASC6I053238;
 Mon, 27 Apr 2020 05:28:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587983292;
 bh=OIoRkEDtSdqjO07eoDGoCXzJPcwcaFncwmq6XymLSwQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=I6JmHCAwl0UmdN6MVgBG7ihi8V0D6OjmzdLnTWGgj6DEW/JyGj09c7o7gPOXG63LQ
 naaPd8fQRButejVsBYVlpq3/tXzzgdkTzhyFc4mJ6Z4tZofTAoBHmht/0+yhHcjnQb
 iTAIDeLMxwe7MBTmSvRRDvqkKTSn5tY2T86GfoNc=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03RASC93101456
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 27 Apr 2020 05:28:12 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 27
 Apr 2020 05:28:12 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 27 Apr 2020 05:28:12 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03RAS9l5043373;
 Mon, 27 Apr 2020 05:28:10 -0500
Subject: Re: [PATCH] arm64: dts: ti: k3-am65-main: Add ehrpwm nodes
To: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>, Rob
 Herring <robh+dt@kernel.org>
References: <20200322112630.25541-1-vigneshr@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <0ebef6a3-7b0e-fc3a-3101-7e1a135093b0@ti.com>
Date: Mon, 27 Apr 2020 13:28:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200322112630.25541-1-vigneshr@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_032814_045359_A919FF48 
X-CRM114-Status: GOOD (  15.74  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/03/2020 13:26, Vignesh Raghavendra wrote:
> Add DT nodes for all ehrpwm instances present on AM654 EVM.
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> ---
> 
> clk driver and bindings has been merged to clk-next tree.

Queued up for 5.8, thanks.

-Tero

> 
>   arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 60 ++++++++++++++++++++++++
>   1 file changed, 60 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> index e5df20a2d2f9..da6427bed801 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> @@ -285,6 +285,12 @@ serdes_mux: mux-controller {
>   			mux-reg-masks = <0x4080 0x3>, /* SERDES0 lane select */
>   					<0x4090 0x3>; /* SERDES1 lane select */
>   		};
> +
> +		ehrpwm_tbclk: syscon@4140 {
> +			compatible = "ti,am654-ehrpwm-tbclk", "syscon";
> +			reg = <0x4140 0x18>;
> +			#clock-cells = <1>;
> +		};
>   	};
>   
>   	dwc3_0: dwc3@4000000 {
> @@ -742,4 +748,58 @@ csi2_0: port@0 {
>   			};
>   		};
>   	};
> +
> +	ehrpwm0: pwm@3000000 {
> +		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
> +		#pwm-cells = <3>;
> +		reg = <0x0 0x3000000 0x0 0x100>;
> +		power-domains = <&k3_pds 40 TI_SCI_PD_EXCLUSIVE>;
> +		clocks = <&ehrpwm_tbclk 0>, <&k3_clks 40 0>;
> +		clock-names = "tbclk", "fck";
> +	};
> +
> +	ehrpwm1: pwm@3010000 {
> +		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
> +		#pwm-cells = <3>;
> +		reg = <0x0 0x3010000 0x0 0x100>;
> +		power-domains = <&k3_pds 41 TI_SCI_PD_EXCLUSIVE>;
> +		clocks = <&ehrpwm_tbclk 1>, <&k3_clks 41 0>;
> +		clock-names = "tbclk", "fck";
> +	};
> +
> +	ehrpwm2: pwm@3020000 {
> +		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
> +		#pwm-cells = <3>;
> +		reg = <0x0 0x3020000 0x0 0x100>;
> +		power-domains = <&k3_pds 42 TI_SCI_PD_EXCLUSIVE>;
> +		clocks = <&ehrpwm_tbclk 2>, <&k3_clks 42 0>;
> +		clock-names = "tbclk", "fck";
> +	};
> +
> +	ehrpwm3: pwm@3030000 {
> +		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
> +		#pwm-cells = <3>;
> +		reg = <0x0 0x3030000 0x0 0x100>;
> +		power-domains = <&k3_pds 43 TI_SCI_PD_EXCLUSIVE>;
> +		clocks = <&ehrpwm_tbclk 3>, <&k3_clks 43 0>;
> +		clock-names = "tbclk", "fck";
> +	};
> +
> +	ehrpwm4: pwm@3040000 {
> +		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
> +		#pwm-cells = <3>;
> +		reg = <0x0 0x3040000 0x0 0x100>;
> +		power-domains = <&k3_pds 44 TI_SCI_PD_EXCLUSIVE>;
> +		clocks = <&ehrpwm_tbclk 4>, <&k3_clks 44 0>;
> +		clock-names = "tbclk", "fck";
> +	};
> +
> +	ehrpwm5: pwm@3050000 {
> +		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
> +		#pwm-cells = <3>;
> +		reg = <0x0 0x3050000 0x0 0x100>;
> +		power-domains = <&k3_pds 45 TI_SCI_PD_EXCLUSIVE>;
> +		clocks = <&ehrpwm_tbclk 5>, <&k3_clks 45 0>;
> +		clock-names = "tbclk", "fck";
> +	};
>   };
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
