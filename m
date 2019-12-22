Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA84128E7E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 15:16:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7A3qlq5YP/2438AQozQHsQrW2xIxVL6HIXyELfCGnjo=; b=hjMWIo+SXSYqrQb+GvnWF/cPt
	EvocV/YhPHDdW85ddw27pgqURJDVRrUf8auy+wQlOUyw4ve67L2oaqzxLxlD5TGr8qtk0uUz9c+TG
	eto43WVWg9u2u5G95a2YccAUd1Av2Z1xqV55AQnBxLyxAaQoGgBo8arikql7WHc4QvmJBng+NORF/
	UK4NqrZXQOke/kgUVSS9xdwE0uMtrksNm6X04wNriBriaQ15w1ohHZHIirZmUvR1kmiEyvnUvNEfe
	9c1qe5HCf7pJPgkO+TOueMK0ikuQLMpPxwxuzDb3OW5DV1IT1BZfjjsDNJDvcwGUVYppK0gfuPyFF
	U4gqxfV6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij220-0006Nt-Si; Sun, 22 Dec 2019 14:16:28 +0000
Received: from smtp-fw-6002.amazon.com ([52.95.49.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij21o-0006N6-36
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 14:16:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1577024176; x=1608560176;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=CNx8e3kHQFoIpdL1EMY1OXlDabpj1/Nv34ArIVup6ak=;
 b=Sa+iin2rste9myviKc0V2f6FsV/anqrxyeqt7ZZObTIO1GaF+9zVMxFL
 UJVJYAkTLZfVsw9FKMyyhJ38yxn45U0+/rWWh3lNwJzn1fBq7vK307A5c
 kctfDw4tTOeYRTbwcOKUDhw/f63OBSJJOYj+BrtXdw6fJxn2aY532MsVL o=;
IronPort-SDR: FFCoFpm8BcEoo4Mc181HL2HDprlFNG0b3mftV/0PZDK2EkURbyM+gn0j5RkwFwQEcDFs8f+uPH
 M0ZFiysFQdng==
X-IronPort-AV: E=Sophos;i="5.69,343,1571702400"; 
   d="scan'208";a="8754041"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1a-715bee71.us-east-1.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-6002.iad6.amazon.com with ESMTP;
 22 Dec 2019 14:16:04 +0000
Received: from EX13MTAUWA001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1a-715bee71.us-east-1.amazon.com (Postfix) with ESMTPS
 id 8CFC3A258C; Sun, 22 Dec 2019 14:15:59 +0000 (UTC)
Received: from EX13D13UWA001.ant.amazon.com (10.43.160.136) by
 EX13MTAUWA001.ant.amazon.com (10.43.160.58) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Sun, 22 Dec 2019 14:15:58 +0000
Received: from EX13MTAUWC001.ant.amazon.com (10.43.162.135) by
 EX13D13UWA001.ant.amazon.com (10.43.160.136) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Sun, 22 Dec 2019 14:15:58 +0000
Received: from [10.107.3.31] (10.107.3.31) by mail-relay.amazon.com
 (10.43.162.232) with Microsoft SMTP Server (TLS) id 15.0.1367.3 via Frontend
 Transport; Sun, 22 Dec 2019 14:15:52 +0000
Subject: Re: [PATCH v2 6/6] arm64: dts: amazon: add Amazon's Annapurna Labs
 Alpine v3 support
To: Rob Herring <robh@kernel.org>
References: <20191209161341.29607-1-hhhawa@amazon.com>
 <20191209161341.29607-7-hhhawa@amazon.com> <20191219190304.GA4786@bogus>
From: "Hawa, Hanna" <hhhawa@amazon.com>
Message-ID: <10a6ff94-98fc-e88f-64c0-5648586613db@amazon.com>
Date: Sun, 22 Dec 2019 16:15:50 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191219190304.GA4786@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_061616_333102_E00CE6BA 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.49.90 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, nm@ti.com, heiko@sntech.de, jonnyc@amazon.com,
 mchehab+samsung@kernel.org, ronenk@amazon.com, khilman@baylibre.com,
 talel@amazon.com, tsahee@annapurnalabs.com, devicetree@vger.kernel.org,
 antoine.tenart@bootlin.com, Jonathan.Cameron@huawei.com, tglx@linutronix.de,
 hanochu@amazon.com, linux-arm-kernel@lists.infradead.org, benh@amazon.com,
 barakw@amazon.com, gregkh@linuxfoundation.org, chanho.min@lge.com,
 linux-kernel@vger.kernel.org, davem@davemloft.net, dwmw@amazon.co.uk
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 12/19/2019 9:03 PM, Rob Herring wrote:
> On Mon, Dec 09, 2019 at 04:13:41PM +0000, Hanna Hawa wrote:
>> From: Ronen Krupnik <ronenk@amazon.com>
>>
>> This patch adds the initial support for the Amazon's Annapurna Labs
>> Alpine v3 Soc and Evaluation Platform (EVP).
>>
>> Signed-off-by: Ronen Krupnik <ronenk@amazon.com>
>> ---
>>   arch/arm64/boot/dts/amazon/Makefile          |   1 +
>>   arch/arm64/boot/dts/amazon/alpine-v3-evp.dts |  23 ++
>>   arch/arm64/boot/dts/amazon/alpine-v3.dtsi    | 371 +++++++++++++++++++
>>   3 files changed, 395 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/amazon/alpine-v3-evp.dts
>>   create mode 100644 arch/arm64/boot/dts/amazon/alpine-v3.dtsi
>>
>> diff --git a/arch/arm64/boot/dts/amazon/Makefile b/arch/arm64/boot/dts/amazon/Makefile
>> index d79822dc30cd..ba9e11544905 100644
>> --- a/arch/arm64/boot/dts/amazon/Makefile
>> +++ b/arch/arm64/boot/dts/amazon/Makefile
>> @@ -1,2 +1,3 @@
>>   # SPDX-License-Identifier: GPL-2.0-only
>>   dtb-$(CONFIG_ARCH_ALPINE)	+= alpine-v2-evp.dtb
>> +dtb-$(CONFIG_ARCH_ALPINE)	+= alpine-v3-evp.dtb
>> diff --git a/arch/arm64/boot/dts/amazon/alpine-v3-evp.dts b/arch/arm64/boot/dts/amazon/alpine-v3-evp.dts
>> new file mode 100644
>> index 000000000000..8c1e11cf5855
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/amazon/alpine-v3-evp.dts
>> @@ -0,0 +1,23 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright 2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
>> + */
>> +
>> +#include "alpine-v3.dtsi"
>> +
>> +/ {
>> +	model = "Amazon's Annapurna Labs Alpine v3 Evaluation Platform (EVP)";
>> +	compatible = "amazon,al-alpine-v3-evp", "amazon,al-alpine-v3";
>> +
>> +	aliases {
>> +		serial0 = &uart0;
>> +	};
>> +
>> +	chosen {
>> +		stdout-path = "serial0:115200n8";
>> +	};
>> +};
>> +
>> +&uart0 {
>> +	status = "okay";
>> +};
>> diff --git a/arch/arm64/boot/dts/amazon/alpine-v3.dtsi b/arch/arm64/boot/dts/amazon/alpine-v3.dtsi
>> new file mode 100644
>> index 000000000000..4945087f59e6
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/amazon/alpine-v3.dtsi
>> @@ -0,0 +1,371 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright 2019, Amazon.com, Inc. or its affiliates. All Rights Reserved
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +/ {
>> +	model = "Amazon's Annapurna Labs Alpine v3";
>> +	compatible = "amazon,al-alpine-v3";
>> +
>> +	#address-cells = <2>;
>> +	#size-cells = <2>;
>> +
>> +	cpus {
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +
>> +		cpu@0 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a72";
>> +			reg = <0x0>;
>> +			enable-method = "psci";
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <256>;
>> +			i-cache-size = <0xc000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
> 
> We only define cache attributes if not discoverable or the cache ID
> registers are wrong and you need to override what's discoverable.

The cache attributes are not discoverable, so we need to define the 
attributes in the device tree for L1/L2.

Commit a8d4636f96ad075dc6d6af182b3de0b5498dc301
("arm64: cacheinfo: Remove CCSIDR-based cache information probing") 
removed mechanism to extract cache information based on CCSIDR register.

> 
>> +			next-level-cache = <&cluster0_l2>;
>> +		};
>> +
>> +		cpu@1 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a72";
>> +			reg = <0x1>;
>> +			enable-method = "psci";
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <256>;
>> +			i-cache-size = <0xc000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			next-level-cache = <&cluster0_l2>;
>> +		};
>> +
>> +		cpu@2 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a72";
>> +			reg = <0x2>;
>> +			enable-method = "psci";
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <256>;
>> +			i-cache-size = <0xc000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			next-level-cache = <&cluster0_l2>;
>> +		};
>> +
>> +		cpu@3 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a72";
>> +			reg = <0x3>;
>> +			enable-method = "psci";
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <256>;
>> +			i-cache-size = <0xc000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			next-level-cache = <&cluster0_l2>;
>> +		};
>> +
>> +		cpu@100 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a72";
>> +			reg = <0x100>;
>> +			enable-method = "psci";
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <256>;
>> +			i-cache-size = <0xc000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			next-level-cache = <&cluster1_l2>;
>> +		};
>> +
>> +		cpu@101 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a72";
>> +			reg = <0x101>;
>> +			enable-method = "psci";
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <256>;
>> +			i-cache-size = <0xc000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			next-level-cache = <&cluster1_l2>;
>> +		};
>> +
>> +		cpu@102 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a72";
>> +			reg = <0x102>;
>> +			enable-method = "psci";
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <256>;
>> +			i-cache-size = <0xc000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			next-level-cache = <&cluster1_l2>;
>> +		};
>> +
>> +		cpu@103 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a72";
>> +			reg = <0x103>;
>> +			enable-method = "psci";
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <256>;
>> +			i-cache-size = <0xc000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			next-level-cache = <&cluster1_l2>;
>> +		};
>> +
>> +		cpu@200 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a72";
>> +			reg = <0x200>;
>> +			enable-method = "psci";
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <256>;
>> +			i-cache-size = <0xc000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			next-level-cache = <&cluster2_l2>;
>> +		};
>> +
>> +		cpu@201 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a72";
>> +			reg = <0x201>;
>> +			enable-method = "psci";
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <256>;
>> +			i-cache-size = <0xc000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			next-level-cache = <&cluster2_l2>;
>> +		};
>> +
>> +		cpu@202 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a72";
>> +			reg = <0x202>;
>> +			enable-method = "psci";
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <256>;
>> +			i-cache-size = <0xc000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			next-level-cache = <&cluster2_l2>;
>> +		};
>> +
>> +		cpu@203 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a72";
>> +			reg = <0x203>;
>> +			enable-method = "psci";
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <256>;
>> +			i-cache-size = <0xc000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			next-level-cache = <&cluster2_l2>;
>> +		};
>> +
>> +		cpu@300 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a72";
>> +			reg = <0x300>;
>> +			enable-method = "psci";
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <256>;
>> +			i-cache-size = <0xc000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			next-level-cache = <&cluster3_l2>;
>> +		};
>> +
>> +		cpu@301 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a72";
>> +			reg = <0x301>;
>> +			enable-method = "psci";
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <256>;
>> +			i-cache-size = <0xc000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			next-level-cache = <&cluster3_l2>;
>> +		};
>> +
>> +		cpu@302 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a72";
>> +			reg = <0x302>;
>> +			enable-method = "psci";
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <256>;
>> +			i-cache-size = <0xc000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			next-level-cache = <&cluster3_l2>;
>> +		};
>> +
>> +		cpu@303 {
>> +			device_type = "cpu";
>> +			compatible = "arm,cortex-a72";
>> +			reg = <0x303>;
>> +			enable-method = "psci";
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <256>;
>> +			i-cache-size = <0xc000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			next-level-cache = <&cluster3_l2>;
>> +		};
>> +
>> +		cluster0_l2: cache@0 {
>> +			compatible = "cache";
>> +			cache-size = <0x200000>;
>> +			cache-line-size = <64>;
>> +			cache-sets = <2048>;
>> +			cache-level = <2>;
>> +		};
>> +
>> +		cluster1_l2: cache@100 {
>> +			compatible = "cache";
>> +			cache-size = <0x200000>;
>> +			cache-line-size = <64>;
>> +			cache-sets = <2048>;
>> +			cache-level = <2>;
>> +		};
>> +
>> +		cluster2_l2: cache@200 {
>> +			compatible = "cache";
>> +			cache-size = <0x200000>;
>> +			cache-line-size = <64>;
>> +			cache-sets = <2048>;
>> +			cache-level = <2>;
>> +		};
>> +
>> +		cluster3_l2: cache@300 {
>> +			compatible = "cache";
>> +			cache-size = <0x200000>;
>> +			cache-line-size = <64>;
>> +			cache-sets = <2048>;
>> +			cache-level = <2>;
>> +		};
>> +
>> +	};
>> +
>> +	reserved-memory {
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +
>> +		secmon@0 {
>> +			reg = <0x0 0x0 0x0 0x100000>;
>> +			no-map;
>> +		};
>> +	};
>> +
>> +	psci {
>> +		compatible = "arm,psci-0.2";
>> +		method = "smc";
>> +	};
>> +
>> +	soc {
>> +		compatible = "simple-bus";
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +
>> +		interrupt-parent = <&gic>;
>> +		ranges;
>> +
>> +		arch-timer {
> 
> Move up a level. There's no mmio regs.

Ack, will be fixed.
Will move pmu node also.

> 
>> +			compatible = "arm,armv8-timer";
>> +			interrupts = <GIC_PPI 0xd IRQ_TYPE_LEVEL_LOW>,
>> +				     <GIC_PPI 0xe IRQ_TYPE_LEVEL_LOW>,
>> +				     <GIC_PPI 0xb IRQ_TYPE_LEVEL_LOW>,
>> +				     <GIC_PPI 0xa IRQ_TYPE_LEVEL_LOW>;
>> +		};
>> +
>> +		gic: interrupt-controller@f0000000 {
>> +			compatible = "arm,gic-v3";
>> +			#interrupt-cells = <3>;
>> +			#address-cells = <0>;
>> +			interrupt-controller;
>> +			reg = <0x0 0xf0800000 0 0x10000>,
>> +			      <0x0 0xf0a00000 0 0x200000>,
>> +			      <0x0 0xf0000000 0 0x2000>,
>> +			      <0x0 0xf0010000 0 0x1000>,
>> +			      <0x0 0xf0020000 0 0x2000>;
>> +			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
>> +		};
>> +
>> +		msix: msix@fbe00000 {
>> +			compatible = "al,alpine-msix";
>> +			reg = <0x0 0xfbe00000 0x0 0x100000>;
>> +			interrupt-controller;
>> +			msi-controller;
>> +			al,msi-base-spi = <160>;
>> +			al,msi-num-spis = <800>;
>> +			interrupt-parent = <&gic>;
>> +		};
>> +
>> +		pmu {
>> +			compatible = "arm,cortex-a72-pmu";
>> +			interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
>> +		};
>> +
>> +		uart0: serial@fd883000 {
>> +			compatible = "ns16550a";
>> +			device_type = "serial";
> 
> Drop device_type.

Ack, will be fixed.

> 
>> +			reg = <0x0 0xfd883000 0x0 0x1000>;
>> +			clock-frequency = <0>;
>> +			interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
>> +			reg-shift = <2>;
>> +			reg-io-width = <4>;
>> +		};
>> +
>> +		pci@fbd00000 {
> 
> pcie@...

Ack, will be fixed.

Thanks for reviewing.

Thanks,
Hanna

> 
>> +			compatible = "pci-host-ecam-generic";
>> +			device_type = "pci";
>> +			#size-cells = <2>;
>> +			#address-cells = <3>;
>> +			#interrupt-cells = <1>;
>> +			reg = <0x0 0xfbd00000 0x0 0x100000>;
>> +			interrupt-map-mask = <0xf800 0 0 7>;
>> +			/* 8 x legacy interrupts for SATA only */
>> +			interrupt-map = <0x4000 0 0 1 &gic 0 57 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0x4800 0 0 1 &gic 0 58 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0x5000 0 0 1 &gic 0 59 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0x5800 0 0 1 &gic 0 60 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0x6000 0 0 1 &gic 0 61 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0x6800 0 0 1 &gic 0 62 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0x7000 0 0 1 &gic 0 63 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0x7800 0 0 1 &gic 0 64 IRQ_TYPE_LEVEL_HIGH>;
>> +			ranges = <0x02000000 0x0 0xfe000000 0x0 0xfe000000 0x0 0x1000000>;
>> +			bus-range = <0x00 0x00>;
>> +			msi-parent = <&msix>;
>> +		};
>> +	};
>> +};
>> -- 
>> 2.17.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
