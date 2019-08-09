Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C1287D3E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:54:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p0BN+x0w9e1NQ6h3a54r5XUT+bb7Lf99voui2l3OmBQ=; b=D69cL+ew/sI53pW0CsWOulP4s
	pAWY4qRLuDvVDuby1DjQLgcK6Ds2Sh+Ii6ulZE5xS0CbRYWcWaYpVPK2JXji2INjmmzVzXJgJQe2r
	enRhc2xpROaAd7BHD17ZtyoxxmauRkD5uIYujeuxYwXmx5OBSVqqhxrWCLl/hPTwfqRDWRFXGzNHv
	hMKXo0MECV3uaCidsGgtYB4ZQoWP1IXdrUZwLVPNPOcVWgAd2tuM8I5/fslBHoamQ07lOhjflq6gi
	1ALg3RfsPzXV72RmwVx07Xje6FS6imyRBsfCEAdXvqThEd3Tnk02n4PGlsztNMbz85TjxObR+eqcM
	3o7jtcPTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw6HT-00033N-70; Fri, 09 Aug 2019 14:54:11 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw6HI-00032w-9a
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:54:01 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x79EruZH021377;
 Fri, 9 Aug 2019 09:53:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565362436;
 bh=+6Rfl9oSqGGXjVeD367cB0oSgYNVzKo1d3JOerv49IQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Tq1CWY6fFhyndTpbYoM6/COWt0VPzTtw9PUfRq/HvYkrkLAb9CMqZotG2ZfE+pqQ1
 QPwoMSe41sMDWwIOxxi6pqTRmhioRC5WYbya2fCoZP67Ct8sM6D8P8uBVCgkX/zOW4
 nfTK3aXrb21tpi/SWahZYl33EqAXy8U1feE8KQpg=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x79EruDf048582
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 9 Aug 2019 09:53:56 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 9 Aug
 2019 09:53:55 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 9 Aug 2019 09:53:55 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x79ErqMV098542;
 Fri, 9 Aug 2019 09:53:53 -0500
Subject: Re: [PATCH 3/6] arm64: dts: ti: k3-j721e: Add gpio nodes in wakeup
 domain
To: Lokesh Vutla <lokeshvutla@ti.com>, Tero Kristo <t-kristo@ti.com>, Nishanth
 Menon <nm@ti.com>, <linus.walleij@linaro.org>
References: <20190809082947.30590-1-lokeshvutla@ti.com>
 <20190809082947.30590-4-lokeshvutla@ti.com>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <48fca046-d683-bb6c-d848-24ffada6ed85@ti.com>
Date: Fri, 9 Aug 2019 20:24:29 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190809082947.30590-4-lokeshvutla@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_075400_424185_96AF28C4 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Device Tree Mailing List <devicetree@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/08/19 1:59 PM, Lokesh Vutla wrote:
> Similar to the gpio groups in main domain, there is one gpio group
> in wakup domain with 2 module instances in it. This gpio group pins
> out 84 lines(6 banks). Add DT node for these 2 gpio module instances.

Reviewed-by: Keerthy <j-keerthy@ti.com>

> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>   .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      | 34 +++++++++++++++++++
>   1 file changed, 34 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> index e616c2481f51..555dc7b7aedc 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> @@ -87,4 +87,38 @@
>   		ti,sci-dst-id = <14>;
>   		ti,sci-rm-range-girq = <0x5>;
>   	};
> +
> +	wkup_gpio0: gpio@42110000 {
> +		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
> +		reg = <0x0 0x42110000 0x0 0x100>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-parent = <&wkup_gpio_intr>;
> +		interrupts = <113 0>, <113 1>, <113 2>,
> +			     <113 3>, <113 4>, <113 5>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +		ti,ngpio = <84>;
> +		ti,davinci-gpio-unbanked = <0>;
> +		power-domains = <&k3_pds 113 TI_SCI_PD_EXCLUSIVE>;
> +		clocks = <&k3_clks 113 0>;
> +		clock-names = "gpio";
> +	};
> +
> +	wkup_gpio1: gpio@42100000 {
> +		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
> +		reg = <0x0 0x42100000 0x0 0x100>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-parent = <&wkup_gpio_intr>;
> +		interrupts = <114 0>, <114 1>, <114 2>,
> +			     <114 3>, <114 4>, <114 5>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +		ti,ngpio = <84>;
> +		ti,davinci-gpio-unbanked = <0>;
> +		power-domains = <&k3_pds 114 TI_SCI_PD_EXCLUSIVE>;
> +		clocks = <&k3_clks 114 0>;
> +		clock-names = "gpio";
> +	};
>   };
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
