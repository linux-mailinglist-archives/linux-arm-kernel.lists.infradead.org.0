Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1979713D437
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 07:19:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X5HPt2atm0qY3dcQILbTtev41h64E20zuLYYxk3Dosw=; b=dFcg8krS/gcSKOmKN4OeSmVz2
	vW8LhdLU8fUORwKIlpigvS8593/VO31UtoRRxTRyubAzWwH2dAInbgkqLFau5ZvmF4kTUHKS+zyxY
	av87BBUKT6vD0mX6IV8JnSruFRU9MdAso2XjSIDPn0n2KJu93yrxICXw+tCASFhPK4H2KqsW89Kah
	QdchFMgcsGnrrNxtMN268R3gwdgntt6vS6H7KT8ppCOOZiiK/BxSGGDU0jfBOhIIrzxSoKlq+NGVc
	851BXJ+RJ5Z76otAnVH2+PBhbponCjSdi2ggV6o9UgN9CmgfyqRcsggtUp5WPUGMaTrIpmHN0Chpo
	aG7L6vZ7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iryUh-0005Jg-0s; Thu, 16 Jan 2020 06:19:03 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iryUU-0005IG-TY; Thu, 16 Jan 2020 06:18:54 +0000
Received: from [10.28.39.79] (10.28.39.79) by mail-sz.amlogic.com (10.28.11.5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Thu, 16 Jan
 2020 14:19:17 +0800
Subject: Re: [PATCH v5 4/5] dt-bindings: clock: meson: add A1 peripheral clock
 controller bindings
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
References: <20191227094606.143637-1-jian.hu@amlogic.com>
 <20191227094606.143637-5-jian.hu@amlogic.com>
 <1jeew7z5hv.fsf@starbuckisacylon.baylibre.com>
From: Jian Hu <jian.hu@amlogic.com>
Message-ID: <6a42d334-33ec-d0de-f490-df9141b0dec4@amlogic.com>
Date: Thu, 16 Jan 2020 14:19:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <1jeew7z5hv.fsf@starbuckisacylon.baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.28.39.79]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_221850_959025_4BCC3C78 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/1/10 23:38, Jerome Brunet wrote:
> 
> On Fri 27 Dec 2019 at 10:46, Jian Hu <jian.hu@amlogic.com> wrote:
> 
>> Add the documentation to support Amlogic A1 peripheral clock driver,
>> and add A1 peripheral clock controller bindings.
>>
>> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
>> ---
>>   .../bindings/clock/amlogic,a1-clkc.yaml       | 67 +++++++++++++
>>   include/dt-bindings/clock/a1-clkc.h           | 98 +++++++++++++++++++
>>   2 files changed, 165 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
>>   create mode 100644 include/dt-bindings/clock/a1-clkc.h
>>
>> diff --git a/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
>> new file mode 100644
>> index 000000000000..a708e0e016d9
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
>> @@ -0,0 +1,67 @@
>> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
>> +/*
>> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
>> + */
> 
> Same here ... read the doc and run the tests please.
> 
OK, I will verify it.
>> +%YAML 1.2
>> +---
>> +$id: "http://devicetree.org/schemas/clock/amlogic,a1-clkc.yaml#"
>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
>> +
>> +title: Amlogic Meson A/C serials Peripheral Clock Control Unit Device Tree Bindings
>> +
>> +maintainers:
>> +  - Neil Armstrong <narmstrong@baylibre.com>
>> +  - Jerome Brunet <jbrunet@baylibre.com>
>> +  - Jian Hu <jian.hu@jian.hu.com>
>> +
>> +properties:
>> +  "#clock-cells":
>> +    const: 1
>> +  compatible:
>> +    const: amlogic,a1-periphs-clkc
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 6
>> +    items:
>> +      - description: Input fixed pll div2
>> +      - description: Input fixed pll div3
>> +      - description: Input fixed pll div5
>> +      - description: Input fixed pll div7
>> +      - description: HIFI PLL
> 
> Why is this all caps when the rest is not ?
OK, I will keep lower case.
> 
>> +      - description: Input Oscillator (usually at 24MHz)
>> +
>> +  clock-names:
>> +    maxItems: 6
>> +    items:
>> +      - const: fclk_div2
>> +      - const: fclk_div3
>> +      - const: fclk_div5
>> +      - const: fclk_div7
>> +      - const: hifi_pll
>> +      - const: xtal
>> +
>> +required:
>> +  - "#clock-cells"
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - clock-names
>> +
>> +examples:
>> +  - |
>> +    clkc_periphs: periphs-clock-controller {
>> +        compatible = "amlogic,a1-periphs-clkc";
>> +        reg = <0 0x800 0 0x104>;
>> +        #clock-cells = <1>;
>> +        clocks = <&clkc_pll CLKID_FCLK_DIV2>,
>> +                <&clkc_pll CLKID_FCLK_DIV3>,
>> +                <&clkc_pll CLKID_FCLK_DIV5>,
>> +                <&clkc_pll CLKID_FCLK_DIV7>,
>> +                <&clkc_pll CLKID_HIFI_PLL>,
>> +                <&xtal>;
>> +        clock-names = "fclk_div2", "fclk_div3", "fclk_div5",
>> +                      "fclk_div7", "hifi_pll", "xtal";
>> +   };
>> diff --git a/include/dt-bindings/clock/a1-clkc.h b/include/dt-bindings/clock/a1-clkc.h
>> new file mode 100644
>> index 000000000000..9bb36fca86dd
>> --- /dev/null
>> +++ b/include/dt-bindings/clock/a1-clkc.h
>> @@ -0,0 +1,98 @@
>> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
>> +/*
>> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
>> + */
>> +
>> +#ifndef __A1_CLKC_H
>> +#define __A1_CLKC_H
>> +
>> +#define CLKID_XTAL_FIXPLL			1
>> +#define CLKID_XTAL_USB_PHY			2
>> +#define CLKID_XTAL_USB_CTRL			3
>> +#define CLKID_XTAL_HIFIPLL			4
>> +#define CLKID_XTAL_SYSPLL			5
>> +#define CLKID_XTAL_DDS				6
>> +#define CLKID_SYS_CLK				7
>> +#define CLKID_CLKTREE				8
>> +#define CLKID_RESET_CTRL			9
>> +#define CLKID_ANALOG_CTRL			10
>> +#define CLKID_PWR_CTRL				11
>> +#define CLKID_PAD_CTRL				12
>> +#define CLKID_SYS_CTRL				13
>> +#define CLKID_TEMP_SENSOR			14
>> +#define CLKID_AM2AXI_DIV			15
>> +#define CLKID_SPICC_B				16
>> +#define CLKID_SPICC_A				17
>> +#define CLKID_CLK_MSR				18
>> +#define CLKID_AUDIO				19
>> +#define CLKID_JTAG_CTRL				20
>> +#define CLKID_SARADC				21
>> +#define CLKID_PWM_EF				22
>> +#define CLKID_PWM_CD				23
>> +#define CLKID_PWM_AB				24
>> +#define CLKID_CEC				25
>> +#define CLKID_I2C_S				26
>> +#define CLKID_IR_CTRL				27
>> +#define CLKID_I2C_M_D				28
>> +#define CLKID_I2C_M_C				29
>> +#define CLKID_I2C_M_B				30
>> +#define CLKID_I2C_M_A				31
>> +#define CLKID_ACODEC				32
>> +#define CLKID_OTP				33
>> +#define CLKID_SD_EMMC_A				34
>> +#define CLKID_USB_PHY				35
>> +#define CLKID_USB_CTRL				36
>> +#define CLKID_SYS_DSPB				37
>> +#define CLKID_SYS_DSPA				38
>> +#define CLKID_DMA				39
>> +#define CLKID_IRQ_CTRL				40
>> +#define CLKID_NIC				41
>> +#define CLKID_GIC				42
>> +#define CLKID_UART_C				43
>> +#define CLKID_UART_B				44
>> +#define CLKID_UART_A				45
>> +#define CLKID_SYS_PSRAM				46
>> +#define CLKID_RSA				47
>> +#define CLKID_CORESIGHT				48
>> +#define CLKID_AM2AXI_VAD			49
>> +#define CLKID_AUDIO_VAD				50
>> +#define CLKID_AXI_DMC				51
>> +#define CLKID_AXI_PSRAM				52
>> +#define CLKID_RAMB				53
>> +#define CLKID_RAMA				54
>> +#define CLKID_AXI_SPIFC				55
>> +#define CLKID_AXI_NIC				56
>> +#define CLKID_AXI_DMA				57
>> +#define CLKID_CPU_CTRL				58
>> +#define CLKID_ROM				59
>> +#define CLKID_PROC_I2C				60
>> +#define CLKID_DSPA_SEL				61
>> +#define CLKID_DSPB_SEL				62
>> +#define CLKID_DSPA_EN				63
>> +#define CLKID_DSPA_EN_NIC			64
>> +#define CLKID_DSPB_EN				65
>> +#define CLKID_DSPB_EN_NIC			66
>> +#define CLKID_RTC_CLK				67
>> +#define CLKID_CECA_32K				68
>> +#define CLKID_CECB_32K				69
>> +#define CLKID_24M				70
>> +#define CLKID_12M				71
>> +#define CLKID_FCLK_DIV2_DIVN			72
>> +#define CLKID_GEN				73
>> +#define CLKID_SARADC_SEL			74
>> +#define CLKID_SARADC_CLK			75
>> +#define CLKID_PWM_A				76
>> +#define CLKID_PWM_B				77
>> +#define CLKID_PWM_C				78
>> +#define CLKID_PWM_D				79
>> +#define CLKID_PWM_E				80
>> +#define CLKID_PWM_F				81
>> +#define CLKID_SPICC				82
>> +#define CLKID_TS				83
>> +#define CLKID_SPIFC				84
>> +#define CLKID_USB_BUS				85
>> +#define CLKID_SD_EMMC				86
>> +#define CLKID_PSRAM				87
>> +#define CLKID_DMC				88
>> +
>> +#endif /* __A1_CLKC_H */
> 
> .
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
