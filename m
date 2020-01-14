Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 484DE13A802
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 12:10:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNeq0D2GK2xm2Q1Y4I3ZoUL7N83y8DOK6dU6cZxxY4k=; b=L4+3wjAxXCKADG
	pmxeJU6/jFIU2qkJ2sOJj8kXUMfRFjdh7GhOdG6m1oczyWi0MGyLgALFWhACARLWF3quDfCxqTerG
	Zj1IpBnyaCGySQXx9JlhHBKjPv2O/DWGyioxOmnuQlatVxiMuMvMlglSWp1Wu8fQAXwkHzDg2l+Yw
	NQ/YkiP+STejJxSltlvyBXlCSg2Y/7cf4O2oXc4VtvqqMBBHbOmVmZNgxE+Zz8JbJnzD/fPFgL2/O
	0FzBE0XpJM1Nvn/Y0KG8IZC3go2nkm300ol1RcrFnSOv6mECBBmmlg1M2RpAOkt/5b+gm3T5nHGk3
	Rtczs+FJZQysjj3E4qiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irK5Y-00007S-5T; Tue, 14 Jan 2020 11:10:24 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irK5M-0008OT-TB
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 11:10:17 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00EB2U77011423; Tue, 14 Jan 2020 12:09:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=ucZAM2cIKc0/MATE5BBAxoNnJTwj27q1VBl4Ts+mzvc=;
 b=eJ81EjPZAocn5iYHcW6pxX5VHrbvdMOEDeFGkGeo2l6e0tjlPGUhmejDhECaqr9BricK
 0shj0Uts6xH7ImYjbaMtLbGzrGXUco5T6solJu/yyuw4Qv55dyJWdFlIwnWaPmzY76Cs
 /XrVCF7jLRoo2Xazxkn8VobFznhPGd69qNDRL9C2NtaG2QimOxgSpmIFWLF60JtDB8q0
 sNH2ndKZGuWDbeUOwRmXMATxkcHmwEEA+XYG5DCUlG+GQAMmpgDPsoCzBbbnZ52aX3zb
 sexTBUGCFhD9Jmi2p7X/6jZ+NjNI3Nii7d2scHUEU4+8PYcseyCFDFTcXwC/iHO+loeV kg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xf7jpd28c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Jan 2020 12:09:44 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6679510003A;
 Tue, 14 Jan 2020 12:09:37 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4B9FC2A9004;
 Tue, 14 Jan 2020 12:09:37 +0100 (CET)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 14 Jan
 2020 12:09:36 +0100
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Tue, 14 Jan 2020 12:09:36 +0100
From: Christophe ROULLIER <christophe.roullier@st.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 2/2] dt-bindings: net: dwmac: Convert stm32 dwmac to DT
 schema
Thread-Topic: [PATCH 2/2] dt-bindings: net: dwmac: Convert stm32 dwmac to DT
 schema
Thread-Index: AQHVyssbd0SA+ach30uRoVqg2DKqZg==
Date: Tue, 14 Jan 2020 11:09:36 +0000
Message-ID: <deb077f1-44f7-d2ad-73ea-9ada9704da72@st.com>
References: <20191108103526.22254-1-christophe.roullier@st.com>
 <20191108103526.22254-3-christophe.roullier@st.com>
 <20191114182214.GA22693@bogus>
In-Reply-To: <20191114182214.GA22693@bogus>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <5C7EE8151C4CA64FB52AC56F9D52B939@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-14_03:2020-01-13,
 2020-01-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_031013_393311_ABFE0FB7 
X-CRM114-Status: GOOD (  24.76  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "martin.blumenstingl@googlemail.com" <martin.blumenstingl@googlemail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "alexandru.ardelean@analog.com" <alexandru.ardelean@analog.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob, all,

On 11/14/19 7:22 PM, Rob Herring wrote:
> On Fri, Nov 08, 2019 at 11:35:26AM +0100, Christophe Roullier wrote:
>> Convert stm32 dwmac to DT schema.
> Lots of checkpatch errors with trailing WS.
ok, sorry I forgot to execute checkpatch before upstream.
>> Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
>> ---
>>   .../devicetree/bindings/net/stm32-dwmac.txt   |  44 -----
>>   .../devicetree/bindings/net/stm32-dwmac.yaml  | 161 ++++++++++++++++++
>>   2 files changed, 161 insertions(+), 44 deletions(-)
>>   delete mode 100644 Documentation/devicetree/bindings/net/stm32-dwmac.txt
>>   create mode 100644 Documentation/devicetree/bindings/net/stm32-dwmac.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/net/stm32-dwmac.txt b/Documentation/devicetree/bindings/net/stm32-dwmac.txt
>> deleted file mode 100644
>> index a90eef11dc46..000000000000
>> --- a/Documentation/devicetree/bindings/net/stm32-dwmac.txt
>> +++ /dev/null
>> @@ -1,44 +0,0 @@
>> -STMicroelectronics STM32 / MCU DWMAC glue layer controller
>> -
>> -This file documents platform glue layer for stmmac.
>> -Please see stmmac.txt for the other unchanged properties.
>> -
>> -The device node has following properties.
>> -
>> -Required properties:
>> -- compatible:  For MCU family should be "st,stm32-dwmac" to select glue, and
>> -	       "snps,dwmac-3.50a" to select IP version.
>> -	       For MPU family should be "st,stm32mp1-dwmac" to select
>> -	       glue, and "snps,dwmac-4.20a" to select IP version.
>> -- clocks: Must contain a phandle for each entry in clock-names.
>> -- clock-names: Should be "stmmaceth" for the host clock.
>> -	       Should be "mac-clk-tx" for the MAC TX clock.
>> -	       Should be "mac-clk-rx" for the MAC RX clock.
>> -	       For MPU family need to add also "ethstp" for power mode clock
>> -- interrupt-names: Should contain a list of interrupt names corresponding to
>> -           the interrupts in the interrupts property, if available.
>> -		   Should be "macirq" for the main MAC IRQ
>> -		   Should be "eth_wake_irq" for the IT which wake up system
>> -- st,syscon : Should be phandle/offset pair. The phandle to the syscon node which
>> -	       encompases the glue register, and the offset of the control register.
>> -
>> -Optional properties:
>> -- clock-names:     For MPU family "eth-ck" for PHY without quartz
>> -- st,eth-clk-sel (boolean) : set this property in RGMII PHY when you want to select RCC clock instead of ETH_CLK125.
>> -- st,eth-ref-clk-sel (boolean) :  set this property in RMII mode when you have PHY without crystal 50MHz and want to select RCC clock instead of ETH_REF_CLK.
>> -
>> -Example:
>> -
>> -	ethernet@40028000 {
>> -		compatible = "st,stm32-dwmac", "snps,dwmac-3.50a";
>> -		reg = <0x40028000 0x8000>;
>> -		reg-names = "stmmaceth";
>> -		interrupts = <0 61 0>, <0 62 0>;
>> -		interrupt-names = "macirq", "eth_wake_irq";
>> -		clock-names = "stmmaceth", "mac-clk-tx", "mac-clk-rx";
>> -		clocks = <&rcc 0 25>, <&rcc 0 26>, <&rcc 0 27>;
>> -		st,syscon = <&syscfg 0x4>;
>> -		snps,pbl = <8>;
>> -		snps,mixed-burst;
>> -		dma-ranges;
>> -	};
>> diff --git a/Documentation/devicetree/bindings/net/stm32-dwmac.yaml b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
>> new file mode 100644
>> index 000000000000..eb0fd831f59d
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
>> @@ -0,0 +1,161 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +# Copyright 2019 BayLibre, SAS
>> +%YAML 1.2
>> +---
>> +$id: "http://devicetree.org/schemas/net/stm32-dwmac.yaml#"
>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
>> +
>> +title: STMicroelectronics STM32 / MCU DWMAC glue layer controller
>> +
>> +maintainers:
>> +  - Alexandre Torgue <alexandre.torgue@st.com>
>> +  - Christophe Roullier <christophe.roullier@st.com>
>> +
>> +description:
>> +  This file documents platform glue layer for stmmac.
>> +
>> +# We need a select here so we don't match all nodes with 'snps,dwmac'
>> +select:
>> +  properties:
>> +    compatible:
>> +      contains:
>> +        enum:
>> +          - st,stm32-dwmac
>> +          - st,stm32mp1-dwmac
>> +  required:
>> +    - compatible
>> +
>> +allOf:
>> +  - $ref: "snps,dwmac.yaml#"
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - st,stm32-dwmac
>> +              - st,stm32mp1-dwmac
>> +    then:
>> +      properties:
>> +       clocks:
>> +         minItems: 3
>> +         maxItems: 5
>> +         items:
>> +          - description: GMAC main clock
>> +          - description: MAC TX clock
>> +          - description: MAC RX clock
>> +          - description: For MPU family, used for power mode
> What does 'power mode' mean? IIRC, some DW MACs have a clock for WoL
> called LPI or something. Are you sure this is ST specific and not DW
> config or version specific?

Yes that right, it is clock used to manage WoL during suspend.

My problem it is may be to manage MCU and MPU family in same yaml file

Because in MCU family only 3 clocks used (GMAC main clock, MAC TX clock 
and MAC RX clock)

In MPU family it is same clocks + clock to manage WoL and clock to 
manage PHY without Cristal

>> +          - description: For MPU family, used for PHY without quartz
> It would be cleaner to define the clock always present and use a
> fixed-clock when you have an external quartz.

You are right, I will define clocks always present and manage them in my 
driver (enable or disable it in function of phy mode, if with or without 
quartz in PHY etc..)

So for MCU (st,stm32-dwmac) I need 3 clocks and for MPU 
(st,stm32mp1-dwmac) 5 clocks

How to manage this in yaml ? 2 differents files ?

>> +
>> +       clock-names:
>> +         minItems: 3
>> +         maxItems: 5
>> +         contains:
>> +          enum:
>> +            - stmmaceth
>> +            - mac-clk-tx
>> +            - mac-clk-rx
>> +            - ethstp
>> +            - eth-ck
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - st,stm32mp1-dwmac
>> +          - const: snps,dwmac-4.20a
>> +      - items:
>> +          - enum:
>> +              - st,stm32-dwmac
>> +          - const: snps,dwmac-4.10a
>> +      - items:
>> +          - enum:
>> +              - st,stm32-dwmac
>> +          - const: snps,dwmac-3.50a
>> +
>> +  st,syscon:
>> +    allOf:
>> +      - $ref: "/schemas/types.yaml#/definitions/phandle-array"
>> +    description:
>> +      Should be phandle/offset pair. The phandle to the syscon node which
>> +      encompases the glue register, and the offset of the control register
>> +
>> +  st,eth-clk-sel:
>> +    description:
>> +      set this property in RGMII PHY when you want to select RCC clock instead of ETH_CLK125.
>> +    type: boolean
>> +
>> +  st,eth-ref-clk-sel:
>> +    description:
>> +      set this property in RMII mode when you have PHY without crystal 50MHz and want to select RCC clock instead of ETH_REF_CLK.
> Wrap lines.
ok
>> +    type: boolean
>> +
>> +required:
>> +  - compatible
>> +  - clocks
>> +  - clock-names
>> +  - st,syscon
>> +
>> +examples:
>> + - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/clock/stm32mp1-clks.h>
>> +    #include <dt-bindings/reset/stm32mp1-resets.h>
>> +    #include <dt-bindings/mfd/stm32h7-rcc.h>
>> +    //Example 1
>> +     ethernet0: ethernet@5800a000 {
>> +       compatible = "st,stm32mp1-dwmac", "snps,dwmac-4.20a";
>> +       reg = <0x5800a000 0x2000>;
>> +       reg-names = "stmmaceth";
>> +       interrupts = <&intc GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
>> +       interrupt-names = "macirq";
>> +       clock-names = "stmmaceth",
>> +                     "mac-clk-tx",
>> +                     "mac-clk-rx",
>> +                     "ethstp",
>> +                     "eth-ck";				
>> +       clocks = <&rcc ETHMAC>,
>> +                <&rcc ETHTX>,
>> +                <&rcc ETHRX>,
>> +                <&rcc ETHSTP>,
>> +                <&rcc ETHCK_K>;	
>> +       st,syscon = <&syscfg 0x4>;
>> +       snps,pbl = <2>;
>> +       snps,axi-config = <&stmmac_axi_config_0>;
>> +       snps,tso;
>> +       status = "disabled";
>> +       phy-mode = "rgmii";
>> +       };
>> +
>> +    //Example 1 (MCU example)
> 2 Example 1's?
>
exact, I will rename it

Thanks Rob

>> +     ethernet1: ethernet@40028000 {
>> +       compatible = "st,stm32-dwmac", "snps,dwmac-3.50a";
>> +       reg = <0x40028000 0x8000>;
>> +       reg-names = "stmmaceth";
>> +       interrupts = <0 61 0>, <0 62 0>;
>> +       interrupt-names = "macirq", "eth_wake_irq";
>> +       clock-names = "stmmaceth", "mac-clk-tx", "mac-clk-rx";
>> +       clocks = <&rcc 0 25>, <&rcc 0 26>, <&rcc 0 27>;
>> +       st,syscon = <&syscfg 0x4>;
>> +       snps,pbl = <8>;
>> +       snps,mixed-burst;
>> +       dma-ranges;
>> +       phy-mode = "mii";
>> +       };
>> +
>> +    //Example 2
>> +     ethernet2: ethernet@40027000 {
>> +       compatible = "st,stm32-dwmac", "snps,dwmac-4.10a";
>> +       reg = <0x40028000 0x8000>;
>> +       reg-names = "stmmaceth";
>> +       interrupts = <61>;
>> +       interrupt-names = "macirq";
>> +       clock-names = "stmmaceth", "mac-clk-tx", "mac-clk-rx";
>> +       clocks = <&rcc 62>, <&rcc 61>, <&rcc 60>;
>> +       st,syscon = <&syscfg 0x4>;
>> +       snps,pbl = <8>;
>> +       status = "disabled";
>> +       phy-mode = "mii";
>> +       };
>> +
>> +
>> -- 
>> 2.17.1
>>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
