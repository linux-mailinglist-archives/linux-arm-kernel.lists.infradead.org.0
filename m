Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A00F11D4AA6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7CsnjvppQXsezWeoEDChI0+XyFwl95aqg/2++K1EkvA=; b=aDawMc6GKbcFUXLCZrGAjmNQT
	8GPEFvRbbhJsY8bj++jRvoRHH4rR9aPOLDI3PJZZo/y7jFc+7If/GydAizFgBmcLPC5z0+sckTaSQ
	5MTJSWrhBVG1qK6xdSxwRhbSOgbx11X6dYL9D28ITEaw+iRttOfS2ClTH+x4zhXElj1nL0ZsnjnDZ
	Mo5MTmVL/vgdVl6hSzIbzlMHJYfqMeFR4SjWzf2pHYyw0nsKnKOvplwhLuWPIUH11gryowSoSsNfD
	ZQ1/PrWLENIa5Ez0Ag50i+crbok231xOi8uejC0kh1/h0iAEHmYmHLROnEuOwCiBZJDyA/qCNyKp+
	DVwctTHHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXMe-0001Ex-Qv; Fri, 15 May 2020 10:14:48 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXMQ-0001CA-83
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:14:37 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04FAEKJM120008;
 Fri, 15 May 2020 05:14:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589537660;
 bh=5VD+ZVOvXQx3TUmellcch5gik8b6+bYkOX6VNcCUEp0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=CSoxSEe2X9CPHZzR6JUpwFS5KEX2i05Nz07Z8cadYjaS+sdLoEwvxhlMHECWY3X+/
 Z0l2m2SKD+bt6YVBGD7aaFXan0KhVTBi1gYIwtDK2L6AreFB55huoLLbhCflJq5x98
 RGq7Gy3LtYqrNRFt8gbLlUjI52f1Q2IdY0qUCgj0=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04FAEK0D114544
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 15 May 2020 05:14:20 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 15
 May 2020 05:14:19 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 15 May 2020 05:14:19 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04FAEFE7038725;
 Fri, 15 May 2020 05:14:18 -0500
Subject: Re: [PATCH v2] arm64: dts: ti: k3-am654-main: Update otap-del-sel
 values
To: Faiz Abbas <faiz_abbas@ti.com>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20200507181526.12529-1-faiz_abbas@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <c59653d0-2e24-8917-f5b9-8c1044786bc9@ti.com>
Date: Fri, 15 May 2020 13:14:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200507181526.12529-1-faiz_abbas@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_031434_361737_D96B8C8F 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: nm@ti.com, robh+dt@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/05/2020 21:15, Faiz Abbas wrote:
> According to the latest AM65x Data Manual[1], a different output tap
> delay value is optimum for a given speed mode. Update these values.
> 
> [1] http://www.ti.com/lit/gpn/am6526
> 
> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
> ---
> v2: Rebased to the latest mainline kernel
> 
>   arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 12 +++++++++++-
>   1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> index 11887c72f23a..6cd9701e4ead 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> @@ -244,7 +244,17 @@
>   		interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
>   		mmc-ddr-1_8v;
>   		mmc-hs200-1_8v;
> -		ti,otap-del-sel = <0x2>;
> +		ti,otap-del-sel-legacy = <0x0>;
> +		ti,otap-del-sel-mmc-hs = <0x0>;
> +		ti,otap-del-sel-sd-hs = <0x0>;
> +		ti,otap-del-sel-sdr12 = <0x0>;
> +		ti,otap-del-sel-sdr25 = <0x0>;
> +		ti,otap-del-sel-sdr50 = <0x8>;
> +		ti,otap-del-sel-sdr104 = <0x5>;

Isn't this wrong? Doc claims the value for sdr104 should be 0x7?

-Tero

> +		ti,otap-del-sel-ddr50 = <0x5>;
> +		ti,otap-del-sel-ddr52 = <0x5>;
> +		ti,otap-del-sel-hs200 = <0x5>;
> +		ti,otap-del-sel-hs400 = <0x0>;
>   		ti,trm-icp = <0x8>;
>   		dma-coherent;
>   	};
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
