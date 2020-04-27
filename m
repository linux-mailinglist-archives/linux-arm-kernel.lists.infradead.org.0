Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6031BA0D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 12:10:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hn+VcEzIR1OC3HRyeHrtnhFxHhlqcQbTLEq+xH7vBIE=; b=Fuh2F1+McfYGaZFLd0n5fMIxQ
	L7Pf8n/8jefD5l2wj6/OaRstklp8817seygAzNO1NTT0tc62OmFH8BAtfIPFm43ti0/nixRW1+YwG
	qcyXYBHJbIpO3yCAld5YiS+BZ57QPz/ajb668VQn64VDANLAZEcRx/Eh8Xj7oK07ebOASeiKBvlXn
	DY/pHO0rWCYjqhjYruJ9Ky2V+kiV8o/MVD2CBfCWBUDujXD7XVmmn3eHnQLybEUQb+r5EhSrYv2ss
	sCIe+cTogO1orJi46amqO6we83DD0g6IQ42WGDODmyMmxxMDMAUB6oZrVoApjDvO3pBM2KrKjeFdq
	WB09G78VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT0i9-0003XI-0l; Mon, 27 Apr 2020 10:10:01 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT0hx-0003Wt-Vt
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 10:09:51 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03RA9jdG122958;
 Mon, 27 Apr 2020 05:09:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587982185;
 bh=2gZqUqCzi7AFRq8mRGo3ZoQLutalkhB+Fu89IDdfbgI=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=diOEyOh/+/DnNA0ea8aWSqxZDUaPgxYrX2YLN7XbQnf0VKLcovy6kyW7Elgj0P+tn
 6tDmy09OcWkVxrNMwIJ7Nx2rDg3zXtCvs8H+0koNCsmeZoZf+/lp78r8Z+MrlANcaD
 FwCSy5BSdy+/TpdzN8RxPEB+ilPH0oIodLKiNIc4=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03RA9ji4031080
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 27 Apr 2020 05:09:45 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 27
 Apr 2020 05:09:45 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 27 Apr 2020 05:09:45 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03RA9gBX030680;
 Mon, 27 Apr 2020 05:09:43 -0500
Subject: Re: [PATCH 2/3] arm64: dts: ti: k3-j721e-main.dtsi: Add DSS node
To: Tomi Valkeinen <tomi.valkeinen@ti.com>, Nishanth Menon <nm@ti.com>, Rob
 Herring <robh+dt@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Jyri Sarha <jsarha@ti.com>
References: <20200422091512.950-1-tomi.valkeinen@ti.com>
 <20200422091512.950-2-tomi.valkeinen@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <ade3a177-f060-bc40-bcc1-494093e3071d@ti.com>
Date: Mon, 27 Apr 2020 13:09:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200422091512.950-2-tomi.valkeinen@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_030950_099967_5725541A 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
> Add DSS node for J721E SoC.

Subject should drop .dtsi, I can fix that locally though. Got a question 
below.

> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 57 +++++++++++++++++++++++
>   1 file changed, 57 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> index 0b9d14b838a1..21c362042ecf 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> @@ -736,6 +736,63 @@
>   		};
>   	};
>   
> +	dss: dss@04a00000 {
> +		compatible = "ti,j721e-dss";
> +		reg =
> +			<0x00 0x04a00000 0x00 0x10000>, /* common_m */
> +			<0x00 0x04a10000 0x00 0x10000>, /* common_s0*/
> +			<0x00 0x04b00000 0x00 0x10000>, /* common_s1*/
> +			<0x00 0x04b10000 0x00 0x10000>, /* common_s2*/
> +
> +			<0x00 0x04a20000 0x00 0x10000>, /* vidl1 */
> +			<0x00 0x04a30000 0x00 0x10000>, /* vidl2 */
> +			<0x00 0x04a50000 0x00 0x10000>, /* vid1 */
> +			<0x00 0x04a60000 0x00 0x10000>, /* vid2 */
> +
> +			<0x00 0x04a70000 0x00 0x10000>, /* ovr1 */
> +			<0x00 0x04a90000 0x00 0x10000>, /* ovr2 */
> +			<0x00 0x04ab0000 0x00 0x10000>, /* ovr3 */
> +			<0x00 0x04ad0000 0x00 0x10000>, /* ovr4 */
> +
> +			<0x00 0x04a80000 0x00 0x10000>, /* vp1 */
> +			<0x00 0x04aa0000 0x00 0x10000>, /* vp2 */
> +			<0x00 0x04ac0000 0x00 0x10000>, /* vp3 */
> +			<0x00 0x04ae0000 0x00 0x10000>, /* vp4 */
> +			<0x00 0x04af0000 0x00 0x10000>; /* wb */
> +
> +		reg-names = "common_m", "common_s0",
> +			"common_s1", "common_s2",
> +			"vidl1", "vidl2","vid1","vid2",
> +			"ovr1", "ovr2", "ovr3", "ovr4",
> +			"vp1", "vp2", "vp3", "vp4",
> +			"wb";
> +
> +		clocks =	<&k3_clks 152 0>,
> +				<&k3_clks 152 1>,
> +				<&k3_clks 152 4>,
> +				<&k3_clks 152 9>,
> +				<&k3_clks 152 13>;
> +		clock-names = "fck", "vp1", "vp2", "vp3", "vp4";
> +
> +		power-domains = <&k3_pds 152 TI_SCI_PD_EXCLUSIVE>;
> +
> +		interrupts = <GIC_SPI 602 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 605 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "common_m",
> +				  "common_s0",
> +				  "common_s1",
> +				  "common_s2";
> +
> +		status = "disabled";

Again, why disabled by default?

-Tero

> +
> +		dss_ports: ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +	};
> +
>   	mcasp0: mcasp@2b00000 {
>   		compatible = "ti,am33xx-mcasp-audio";
>   		reg = <0x0 0x02b00000 0x0 0x2000>,
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
