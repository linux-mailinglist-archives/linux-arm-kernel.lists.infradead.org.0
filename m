Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3D2165620
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 05:13:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mbrGNkI2vity3rFpO8SfK8azaUWyNlK2+cL9+2zSOwE=; b=lj+iH8HDIQNRK5ceiTZLKTuGj
	4PikhnZs8agwhyplDdN3XJaHsUpo7QzHX9HTg9svA82OTtYEI39kDrTYQhhUTRufVFClHeI7U22bO
	wh0YdGjwZv23yjMdBMpVt7yPWZPE18ZFyIcjdoniSmxuVzEx2hBOlqoL9dFP/Aye8YgvAUAnADIs/
	7qcQBFfr/aut6endVFnNq84AbBfz5tkMKJ5RKxZiw6GqCiUHrPYH4XnQtxd7hShz8v3HqLP8GJ5C2
	mFn2LgpVKijCxC1lA4ux4sc8TXZ+6veXbaIUdhib6EuafBVsnhr+1r1J9vsLcnZAKzXsFcT+2Ue/O
	p/PPqQQCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4dD9-00037S-AF; Thu, 20 Feb 2020 04:13:15 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4dCz-00036w-TF
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 04:13:07 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01K4CuOG110720;
 Wed, 19 Feb 2020 22:12:56 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582171976;
 bh=VnPvu6lppxPv2dAKzH9uu04g0NKMjMplhPQHKEVZkYQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=B722om15HqawzVDoJiHSFhM8PBZDDsGrXsRDRpnPmdR0juUnMEVWjSl2YfIv+igMb
 OHh96HuFmTEpBHucnG08YMMrsPhGpb9S0mMq0Pb96VW/iPNmB3pX63P/kt8P4c8Gc9
 snGryF61C+HuGEiobV1QYz+3+rFJ8G55bFbb+Wn0=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01K4Cu4w025017
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 19 Feb 2020 22:12:56 -0600
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 19
 Feb 2020 22:12:56 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 19 Feb 2020 22:12:56 -0600
Received: from [10.24.69.174] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01K4Cqv0056397;
 Wed, 19 Feb 2020 22:12:53 -0600
Subject: Re: [PATCH v3 1/4] dt-bindings: thermal: k3: Add VTM bindings
 documentation
To: Rob Herring <robh@kernel.org>
References: <20200219074314.22829-1-j-keerthy@ti.com>
 <20200219074314.22829-2-j-keerthy@ti.com> <20200219145227.GA1317@bogus>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <55b68963-b931-bf67-482e-146e42af4298@ti.com>
Date: Thu, 20 Feb 2020 09:42:58 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200219145227.GA1317@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_201306_089249_ED45ECE1 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 rui.zhang@intel.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 19/02/20 8:22 pm, Rob Herring wrote:
> On Wed, Feb 19, 2020 at 01:13:11PM +0530, Keerthy wrote:
>> Add VTM bindings documentation. In the Voltage Thermal
>> Management Module(VTM), K3 AM654 supplies a voltage
>> reference and a temperature sensor feature that are gathered in the band
>> gap voltage and temperature sensor (VBGAPTS) module. The band
>> gap provides current and voltage reference for its internal
>> circuits and other analog IP blocks. The analog-to-digital
>> converter (ADC) produces an output value that is proportional
>> to the silicon temperature.
>>
>> Signed-off-by: Keerthy <j-keerthy@ti.com>
>> ---
>>
>> Changes in v3:
>>
>>    * Fixed errors seen with:
>>      dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
>>
>>   .../bindings/thermal/ti,am654-thermal.yaml    | 57 +++++++++++++++++++
>>   1 file changed, 57 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml b/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
>> new file mode 100644
>> index 000000000000..b6dc95c3acab
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
>> @@ -0,0 +1,57 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/thermal/ti,am654-thermal.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Texas Instruments AM654 VTM (DTS) binding
>> +
>> +maintainers:
>> +  - Keerthy <j-keerthy@ti.com>
>> +
>> +properties:
>> +  compatible:
>> +    const: ti,am654-vtm
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +    description: phandle to the associated power domain
> 
> No need to redefine a standard property description.

Okay.

> 
>> +
>> +  "#thermal-sensor-cells":
>> +    const: 1
>> +
>> +required:
>> +  - "#thermal-sensor-cells"
>> +  - compatible
>> +  - reg
>> +  - power-domains
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/soc/ti,sci_pm_domain.h>
>> +    vtm: wkup_vtm0@42050000 {
> 
> thermal-sensor@...
> 
> Use generic node names and don't use '_' in node names

vtm stands for voltage thermal manager and comprises of multiple 
sensors. This is similar to omap bandgap. Should i replace vtm with more 
generic name like thermal? as used in:

Documentation/devicetree/bindings/thermal/st,stm32-thermal.yaml

- Keerthy

> 
>> +        compatible = "ti,am654-vtm";
>> +        reg = <0x0 0x42050000 0x0 0x25c>;
>> +        power-domains = <&k3_pds 80 TI_SCI_PD_EXCLUSIVE>;
>> +        #thermal-sensor-cells = <1>;
>> +    };
>> +
>> +    mpu0_thermal: mpu0_thermal {
>> +        polling-delay-passive = <250>; /* milliseconds */
>> +        polling-delay = <500>; /* milliseconds */
>> +        thermal-sensors = <&vtm0 0>;
>> +
>> +        trips {
>> +                mpu0_crit: mpu0_crit {
>> +                        temperature = <125000>; /* milliCelsius */
>> +                        hysteresis = <2000>; /* milliCelsius */
>> +                        type = "critical";
>> +                };
>> +        };
>> +    };
>> +...
>> -- 
>> 2.17.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
