Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D3F143670
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 06:10:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SiaQJ7WqcCoq6gOFPGbzMiJBqjlXi0ZmXfgxduuI2Xo=; b=g0KHcy8TSdsM/j
	yQBDRKkFPvaFOZAGd3oitXim/dzB7UhQCu76kwkBzlBS2Rzn7BXBye5p3YgEuQt2aSs62JjjRBywy
	dEd4QuMj2vHkFp3/HZKmGIPHjmN0IrYx1jKU63k+DAHTEAtx+oq8yNh3zCkbNeEEGS5jMO8II3z93
	j0yFp+u/o4aEAkkrIBrim0Bn/ZKxKdOzhlYT426Oi0SUtWvZs4ULfwnQXrkZDXelpo/1A9yQRMDDK
	CscgyjI6n26Vd/vs5rFFUK0p2dv0WqGGPEa+E7Uspqj2lJtgPO46NTGzcGFPa16hmjGoZ3HNd2idt
	P7xpbsl440VLklebCOnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itlo1-0006bu-7L; Tue, 21 Jan 2020 05:10:25 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itlnp-0006bT-75
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 05:10:15 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00L5A5UW109643;
 Mon, 20 Jan 2020 23:10:05 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579583405;
 bh=g4km0bHBqi0VKPsKp25oxKkp+0Wceu8TT0XwSBVu6I4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=oHAWBpWOt0ilV21Fv5+aZl2sbF7GMihEBDIM9iz4c2hwls8xx6AM3kqlaxYu4GeMe
 woeev1qpDGmCMudPiFpwl0zaGEspv2M7TBvfE+au6pgZjVacLepQkv8L0Mk6Qo5dd+
 t/O3Vv2MXPVzz7smzDCV011XidPZSiawHLizX6pE=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00L5A5HY056622;
 Mon, 20 Jan 2020 23:10:05 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 20
 Jan 2020 23:10:04 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 20 Jan 2020 23:10:04 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00L5A1G2057059;
 Mon, 20 Jan 2020 23:10:02 -0600
Subject: Re: [PATCH 2/5] arm64: dts: ti: k3-j721e-main: Add serdes_ln_ctrl
 node to select SERDES lane mux
To: Rob Herring <robh@kernel.org>, Roger Quadros <rogerq@ti.com>
References: <20200108111830.8482-1-rogerq@ti.com>
 <20200108111830.8482-3-rogerq@ti.com> <20200115014724.GA20772@bogus>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <1c55f0a8-99e3-934f-e8b8-d090df06a12e@ti.com>
Date: Tue, 21 Jan 2020 10:43:04 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20200115014724.GA20772@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_211013_405637_51A1D90D 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, vigneshr@ti.com, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 15/01/20 7:17 AM, Rob Herring wrote:
> On Wed, Jan 08, 2020 at 01:18:27PM +0200, Roger Quadros wrote:
>> From: Kishon Vijay Abraham I <kishon@ti.com>
>>
>> Add serdes_ln_ctrl node used for selecting SERDES lane mux.
>>
>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>> Signed-off-by: Sekhar Nori <nsekhar@ti.com>
>> Signed-off-by: Roger Quadros <rogerq@ti.com>
>> ---
>>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 26 +++++++++++
>>  include/dt-bindings/mux/mux-j721e-wiz.h   | 53 +++++++++++++++++++++++
>>  2 files changed, 79 insertions(+)
>>  create mode 100644 include/dt-bindings/mux/mux-j721e-wiz.h
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> index 24cb78db28e4..6741c1e67f50 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> @@ -5,6 +5,8 @@
>>   * Copyright (C) 2016-2019 Texas Instruments Incorporated - http://www.ti.com/
>>   */
>>  #include <dt-bindings/phy/phy.h>
>> +#include <dt-bindings/mux/mux.h>
>> +#include <dt-bindings/mux/mux-j721e-wiz.h>
>>  
>>  &cbass_main {
>>  	msmc_ram: sram@70000000 {
>> @@ -19,6 +21,30 @@
>>  		};
>>  	};
>>  
>> +	scm_conf: scm_conf@100000 {
> 
> Don't use '_' in node names.

Okay.
> 
>> +		compatible = "syscon", "simple-mfd";
> 
> Needs a specific compatible especially since the child node doesn't have 
> one.

Child node has "mmio-mux" as compatible no? Are you referring to
something else here?
> 
>> +		reg = <0 0x00100000 0 0x1c000>;
>> +		#address-cells = <1>;
>> +		#size-cells = <1>;
>> +		ranges = <0x0 0x0 0x00100000 0x1c000>;
>> +
>> +		serdes_ln_ctrl: serdes_ln_ctrl@4080 {
> 
> 'reg' is needed if there's a unit-address. If there's a register range 
> with only the mux controls, then add 'reg'.

Sure, will add.


Thanks
Kishon

> 
>> +			compatible = "mmio-mux";
>> +			#mux-control-cells = <1>;
>> +			mux-reg-masks = <0x4080 0x3>, <0x4084 0x3>, /* SERDES0 lane0/1 select */
>> +					<0x4090 0x3>, <0x4094 0x3>, /* SERDES1 lane0/1 select */
>> +					<0x40a0 0x3>, <0x40a4 0x3>, /* SERDES2 lane0/1 select */
>> +					<0x40b0 0x3>, <0x40b4 0x3>, /* SERDES3 lane0/1 select */
>> +					<0x40c0 0x3>, <0x40c4 0x3>, <0x40c8 0x3>, <0x40cc 0x3>;
>> +					/* SERDES4 lane0/1/2/3 select */
>> +			idle-states = <SERDES0_LANE0_PCIE0_LANE0>, <SERDES0_LANE1_PCIE0_LANE1>,
>> +				      <SERDES1_LANE0_PCIE1_LANE0>, <SERDES1_LANE1_PCIE1_LANE1>,
>> +				      <SERDES2_LANE0_PCIE2_LANE0>, <SERDES2_LANE1_PCIE2_LANE1>,
>> +				      <MUX_IDLE_AS_IS>, <SERDES3_LANE1_USB3_0>,
>> +				      <SERDES4_LANE0_EDP_LANE0>, <SERDES4_LANE1_EDP_LANE1>, <SERDES4_LANE2_EDP_LANE2>, <SERDES4_LANE3_EDP_LANE3>;
>> +		};
>> +	};
>> +
>>  	gic500: interrupt-controller@1800000 {
>>  		compatible = "arm,gic-v3";
>>  		#address-cells = <2>;
>> diff --git a/include/dt-bindings/mux/mux-j721e-wiz.h b/include/dt-bindings/mux/mux-j721e-wiz.h
>> new file mode 100644
>> index 000000000000..fd1c4ea9fc7f
>> --- /dev/null
>> +++ b/include/dt-bindings/mux/mux-j721e-wiz.h
>> @@ -0,0 +1,53 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * This header provides constants for J721E WIZ.
>> + */
>> +
>> +#ifndef _DT_BINDINGS_J721E_WIZ
>> +#define _DT_BINDINGS_J721E_WIZ
>> +
>> +#define SERDES0_LANE0_QSGMII_LANE1	0x0
>> +#define SERDES0_LANE0_PCIE0_LANE0	0x1
>> +#define SERDES0_LANE0_USB3_0_SWAP	0x2
>> +
>> +#define SERDES0_LANE1_QSGMII_LANE2	0x0
>> +#define SERDES0_LANE1_PCIE0_LANE1	0x1
>> +#define SERDES0_LANE1_USB3_0		0x2
>> +
>> +#define SERDES1_LANE0_QSGMII_LANE3	0x0
>> +#define SERDES1_LANE0_PCIE1_LANE0	0x1
>> +#define SERDES1_LANE0_USB3_1_SWAP	0x2
>> +#define SERDES1_LANE0_SGMII_LANE0	0x3
>> +
>> +#define SERDES1_LANE1_QSGMII_LANE4	0x0
>> +#define SERDES1_LANE1_PCIE1_LANE1	0x1
>> +#define SERDES1_LANE1_USB3_1		0x2
>> +#define SERDES1_LANE1_SGMII_LANE1	0x3
>> +
>> +#define SERDES2_LANE0_PCIE2_LANE0	0x1
>> +#define SERDES2_LANE0_SGMII_LANE0	0x3
>> +#define SERDES2_LANE0_USB3_1_SWAP	0x2
>> +
>> +#define SERDES2_LANE1_PCIE2_LANE1	0x1
>> +#define SERDES2_LANE1_USB3_1		0x2
>> +#define SERDES2_LANE1_SGMII_LANE1	0x3
>> +
>> +#define SERDES3_LANE0_PCIE3_LANE0	0x1
>> +#define SERDES3_LANE0_USB3_0_SWAP	0x2
>> +
>> +#define SERDES3_LANE1_PCIE3_LANE1	0x1
>> +#define SERDES3_LANE1_USB3_0		0x2
>> +
>> +#define SERDES4_LANE0_EDP_LANE0		0x0
>> +#define SERDES4_LANE0_QSGMII_LANE5	0x2
>> +
>> +#define SERDES4_LANE1_EDP_LANE1		0x0
>> +#define SERDES4_LANE1_QSGMII_LANE6	0x2
>> +
>> +#define SERDES4_LANE2_EDP_LANE2		0x0
>> +#define SERDES4_LANE2_QSGMII_LANE7	0x2
>> +
>> +#define SERDES4_LANE3_EDP_LANE3		0x0
>> +#define SERDES4_LANE3_QSGMII_LANE8	0x2
>> +
>> +#endif /* _DT_BINDINGS_J721E_WIZ */
>> -- 
>> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
>> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
