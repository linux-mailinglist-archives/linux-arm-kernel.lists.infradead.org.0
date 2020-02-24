Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C67169BAC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 02:14:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0CHRZgvilSwO0iiggLYWfWNBT2B3rsW3CgWcFUBLlgQ=; b=e3ys4jqqN9n7quGsvtBxE+yal
	wrUy1Dj/iO4dQCT5yL/dS+6QoSbymq4Qg8enqFIfynG2kQKk811neFbsk1eEGwi6HGRyUI3GPnMn6
	8nJcN+VyS6Ak4e6QasI6U572EQNCR4Px5MIFv0qbC73LtzdjfICEb08qbE/GhOmiqYb5U9lKqEmiZ
	EXObxVs3fn/7BvI68572ljSEfhxBFgXM6SmncREG2gsiSlMfNI8z5O5AdBybUMBonViytTg6LYeZw
	UH90u6oXHcPIxtJx9+Oj19FB6QSlb9IQW9vH50Lg3m5hd+jqTzMlcV2x46g63Vzu92o/bT30Q0vk0
	4wEoYruiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j62KI-0003lb-C1; Mon, 24 Feb 2020 01:14:26 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j62KA-0003lI-H9
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 01:14:20 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01O1ECQo043414;
 Sun, 23 Feb 2020 19:14:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582506852;
 bh=aCaZolvO1w+gXgM4OXSdKxdcHp5kUxbatq1qbCcKguk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Fa+M/SIx0LExWCdad6tPnLXy2XVLj1ArJOWOWhS0wskMEcr2MaZ6I8cN12Pozxmzb
 IjOrwlcfaTcDLAaSVFvWpQoVLOx3pOroeiDXRHW/9rOo7qAWxBKuQDGYwbf+BRtz6E
 e8/bMOLG1XmEpfqEIHDiT7tt12xKV3de5D4qEcpo=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01O1ECFO119648
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 23 Feb 2020 19:14:12 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Sun, 23
 Feb 2020 19:14:12 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Sun, 23 Feb 2020 19:14:12 -0600
Received: from [10.250.132.7] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01O1E8Xv050593;
 Sun, 23 Feb 2020 19:14:09 -0600
Subject: Re: [PATCH v3 1/4] dt-bindings: thermal: k3: Add VTM bindings
 documentation
To: Rob Herring <robh@kernel.org>
References: <20200219074314.22829-1-j-keerthy@ti.com>
 <20200219074314.22829-2-j-keerthy@ti.com> <20200219145227.GA1317@bogus>
 <55b68963-b931-bf67-482e-146e42af4298@ti.com>
 <CAL_JsqJAdCT-xpqxYxkZO+JBHCcewhzb2ebiNJvPzSUyCcmP9g@mail.gmail.com>
From: "J, KEERTHY" <j-keerthy@ti.com>
Message-ID: <3c1534b7-1ce4-8cf7-1e0a-9f566a66799f@ti.com>
Date: Mon, 24 Feb 2020 06:44:07 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJAdCT-xpqxYxkZO+JBHCcewhzb2ebiNJvPzSUyCcmP9g@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_171418_645774_8EBF418F 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Zhang Rui <rui.zhang@intel.com>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2/21/2020 1:10 AM, Rob Herring wrote:
> On Wed, Feb 19, 2020 at 10:13 PM Keerthy <j-keerthy@ti.com> wrote:
>>
>>
>>
>> On 19/02/20 8:22 pm, Rob Herring wrote:
>>> On Wed, Feb 19, 2020 at 01:13:11PM +0530, Keerthy wrote:
>>>> Add VTM bindings documentation. In the Voltage Thermal
>>>> Management Module(VTM), K3 AM654 supplies a voltage
>>>> reference and a temperature sensor feature that are gathered in the band
>>>> gap voltage and temperature sensor (VBGAPTS) module. The band
>>>> gap provides current and voltage reference for its internal
>>>> circuits and other analog IP blocks. The analog-to-digital
>>>> converter (ADC) produces an output value that is proportional
>>>> to the silicon temperature.
>>>>
>>>> Signed-off-by: Keerthy <j-keerthy@ti.com>
>>>> ---
>>>>
>>>> Changes in v3:
>>>>
>>>>     * Fixed errors seen with:
>>>>       dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
>>>>
>>>>    .../bindings/thermal/ti,am654-thermal.yaml    | 57 +++++++++++++++++++
>>>>    1 file changed, 57 insertions(+)
>>>>    create mode 100644 Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml b/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
>>>> new file mode 100644
>>>> index 000000000000..b6dc95c3acab
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
>>>> @@ -0,0 +1,57 @@
>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>> +%YAML 1.2
>>>> +---
>>>> +$id: http://devicetree.org/schemas/thermal/ti,am654-thermal.yaml#
>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>> +
>>>> +title: Texas Instruments AM654 VTM (DTS) binding
>>>> +
>>>> +maintainers:
>>>> +  - Keerthy <j-keerthy@ti.com>
>>>> +
>>>> +properties:
>>>> +  compatible:
>>>> +    const: ti,am654-vtm
>>>> +
>>>> +  reg:
>>>> +    maxItems: 1
>>>> +
>>>> +  power-domains:
>>>> +    maxItems: 1
>>>> +    description: phandle to the associated power domain
>>>
>>> No need to redefine a standard property description.
>>
>> Okay.
>>
>>>
>>>> +
>>>> +  "#thermal-sensor-cells":
>>>> +    const: 1
>>>> +
>>>> +required:
>>>> +  - "#thermal-sensor-cells"
>>>> +  - compatible
>>>> +  - reg
>>>> +  - power-domains
>>>> +
>>>> +additionalProperties: false
>>>> +
>>>> +examples:
>>>> +  - |
>>>> +    #include <dt-bindings/soc/ti,sci_pm_domain.h>
>>>> +    vtm: wkup_vtm0@42050000 {
>>>
>>> thermal-sensor@...
>>>
>>> Use generic node names and don't use '_' in node names
>>
>> vtm stands for voltage thermal manager and comprises of multiple
>> sensors. This is similar to omap bandgap. Should i replace vtm with more
>> generic name like thermal? as used in:
> 
> 'vtm' is a label and source construct only (until you do overlays), so
> I don't care what you put really.

Okay.

I will change in to:

vtm: thermal@42050000 {

Regards,
Keerthy

> 
> Rob
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
