Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA27FE3EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 18:29:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=svyXv483yNLSBpk2R0bjPBPFaE8IdL9t1N4fLw3drTc=; b=iOXVJBpFmpbovvbo4wrRokxoE
	LEOfwJzK+gNZvsQNHzbjmdmy5OBNPGTXJ38TE2rRaT82amGgLETQzbBSaHTz34Lxm8/Zw45sr7Vdp
	3Mkuv6MfsF5RfvxwXRUELnVa9B3fB3Cf1f++uYYSwVQqJOFA0hlTsh/SEdZeHkCc2ch62aj1qCqZk
	JNHcWtaUfQwO6uv1TlgGRtebJ7v/MatMsVVdmVFoov9t6P1+yjm2E1oDiqD/DB+Q0UaSJuN/FK/xf
	F4WRsTkYH0GpZXzCqS0evlipTe7JrQmrSQ92jPoAtfnoL6R8g4f74t5sOhwK0Hcf7cD3X8b+vldkW
	ugNvhcHpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVfP3-0001Nl-1Q; Fri, 15 Nov 2019 17:29:01 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVfOu-0001Mo-6Q
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 17:28:54 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAFHR2Bb022462; Fri, 15 Nov 2019 18:28:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=Vv7O4F/V6ixbd+frkI+QsLdh11OHFWF8Mp0fyUbyBg0=;
 b=h2X6yxD6m5aDfzGWZpbtttJkSWPTPGMF/bYfW1y0BmuIFWW34L3iPPFXb9ZFRSYLRWzr
 SrFcLyKeGJtk7cUIg2JXzYuyMB9rWka9B/kq7nalJz1cil53mGaNeF11kRyuQT/Cx2oW
 bUhzLtmkXnt35aTBNMWBKT4sGgqcU4k1K8ZZLgJir0l+oHyzbi7R9PZwpswOAWHUN2cq
 axV1enA8CNNgA2sz5r9QwYffuPULi6FFgyJaQCPT6GbOciPA+aVv1g0YWqeUN2Yxz/dH
 /r+IamdHqcYoPgFMl2yuxwuKAqSrFJgKH0CtFsnrVKGjxLkAnr457pvO2Y1ZvVvXXL3G sQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w7psbng5v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Nov 2019 18:28:35 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 50B4E10002A;
 Fri, 15 Nov 2019 18:28:33 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1AF022D3777;
 Fri, 15 Nov 2019 18:28:33 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 15 Nov
 2019 18:28:32 +0100
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Convert stm32-exti to
 json-schema
To: Rob Herring <robh+dt@kernel.org>
References: <20191114164104.22782-1-alexandre.torgue@st.com>
 <CAL_JsqKJZwJ0MyRp37Y-F0ujPdVEKARd8qcUCN1xmawpkiffLg@mail.gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <7415fff5-030c-a65b-a405-a1197e166432@st.com>
Date: Fri, 15 Nov 2019 18:28:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKJZwJ0MyRp37Y-F0ujPdVEKARd8qcUCN1xmawpkiffLg@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-15_05:2019-11-15,2019-11-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_092852_693053_81F484D9 
X-CRM114-Status: GOOD (  24.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/14/19 6:18 PM, Rob Herring wrote:
> On Thu, Nov 14, 2019 at 10:41 AM Alexandre Torgue
> <alexandre.torgue@st.com> wrote:
>>
>> Convert the STM32 external interrupt controller (EXTI) binding to DT
>> schema format using json-schema.
>>
>> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
>> ---
>>
>> Hi Rob,
>>
>> I planned to use "additionalProperties: false" for this schema but as I add a
>> property under condition, I got an error (property added under contion seems
>> to be detected as an "additional" property and then error is raised).
>>
>> Is there a way to fix that ?
> 
> See below.
> 
>>
>> regards
>> Alex
>>
>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.txt b/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.txt
>> deleted file mode 100644
>> index cd01b2292ec6..000000000000
>> --- a/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.txt
>> +++ /dev/null
>> @@ -1,29 +0,0 @@
>> -STM32 External Interrupt Controller
>> -
>> -Required properties:
>> -
>> -- compatible: Should be:
>> -    "st,stm32-exti"
>> -    "st,stm32h7-exti"
>> -    "st,stm32mp1-exti"
>> -- reg: Specifies base physical address and size of the registers
>> -- interrupt-controller: Indentifies the node as an interrupt controller
>> -- #interrupt-cells: Specifies the number of cells to encode an interrupt
>> -  specifier, shall be 2
>> -- interrupts: interrupts references to primary interrupt controller
>> -  (only needed for exti controller with multiple exti under
>> -  same parent interrupt: st,stm32-exti and st,stm32h7-exti)
>> -
>> -Optional properties:
>> -
>> -- hwlocks: reference to a phandle of a hardware spinlock provider node.
>> -
>> -Example:
>> -
>> -exti: interrupt-controller@40013c00 {
>> -       compatible = "st,stm32-exti";
>> -       interrupt-controller;
>> -       #interrupt-cells = <2>;
>> -       reg = <0x40013C00 0x400>;
>> -       interrupts = <1>, <2>, <3>, <6>, <7>, <8>, <9>, <10>, <23>, <40>, <41>, <42>, <62>, <76>;
>> -};
>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.yaml b/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.yaml
>> new file mode 100644
>> index 000000000000..39be37e1e532
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.yaml
>> @@ -0,0 +1,82 @@
>> +# SPDX-License-Identifier: GPL-2.0
> 
> If ST has copyright on the old binding, can you add BSD here.
> 

I will.

>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/interrupt-controller/st,stm32-exti.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: STM32 External Interrupt Controller Device Tree Bindings
>> +
>> +maintainers:
>> +  - Alexandre Torgue <alexandre.torgue@st.com>
>> +  - Ludovic Barre <ludovic.barre@st.com>
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - items:
>> +        - enum:
>> +          - st,stm32-exti
>> +          - st,stm32h7-exti
>> +      - items:
>> +        - enum:
>> +          - st,stm32mp1-exti
>> +        - const: syscon
>> +
>> +  "#interrupt-cells":
>> +    const: 2
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupt-controller: true
>> +
>> +  hwlocks:
>> +    maxItems: 1
>> +    description:
>> +      Reference to a phandle of a hardware spinlock provider node.
>> +
>> +required:
>> +  - "#interrupt-cells"
>> +  - compatible
>> +  - reg
>> +  - interrupt-controller
>> +
>> +allOf:
>> +  - $ref: /schemas/interrupt-controller.yaml#
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - st,stm32-exti
>> +              - st,stm32h7-exti
>> +    then:
>> +      properties:
>> +        interrupts:
>> +          allOf:
>> +            - $ref: /schemas/types.yaml#/definitions/uint32-array
> 
> Standard property, doesn't need a type. You just need 'maxItems' or an
> 'items' list if the index is not meaningful. This appears to be the
> former case.

ok

> 
>> +          description:
>> +            Interrupts references to primary interrupt controller
>> +      required:
>> +        - interrupts
> 
> You can move the definition to the main section as you only need
> 'required' here. That should fix your additionalProperties issue.
> 
Doing that it fails as I don't have interrupts define for mp1 
compatible. Maybe I missed something ?

> In hindsight, the mp1 case probably should have used interrupt-map.

For MP1 driver is written differently and mapping is done inside the driver.

> 
>> +
>> +examples:
>> +  - |
>> +    //Example 1
>> +    exti1: interrupt-controller@5000d000 {
>> +        compatible = "st,stm32mp1-exti", "syscon";
>> +        interrupt-controller;
>> +        #interrupt-cells = <2>;
>> +        reg = <0x5000d000 0x400>;
>> +    };
>> +
>> +    //Example 2
>> +    exti2: interrupt-controller@40013c00 {
>> +        compatible = "st,stm32-exti";
>> +        interrupt-controller;
>> +        #interrupt-cells = <2>;
>> +        reg = <0x40013C00 0x400>;
>> +        interrupts = <1>, <2>, <3>, <6>, <7>, <8>, <9>, <10>, <23>, <40>, <41>, <42>, <62>, <76>;
>> +    };
>> +
>> +...
>> --
>> 2.17.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
