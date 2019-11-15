Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23975FE4A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 19:12:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=njlJK2N/AZxoqg5ii2DGYBud5syR8WWBsPYaQdHoNJ4=; b=E1bUWsRMMZL9Cj6/IS53NSyZX
	RQXYx/4mGZ9ReWXDVUTd/dbAVT0P4V6NoThO2HaxqtWVguz/QcgR2TaJRA32tPtR1BenwCdbfKN5k
	CPvGZMv+RCxZ/mXHq18INKDlLA4lI44kQG7Jaxn8TASa/W3kql2nXhkDfBYkIkYwvDSXCVBKwWPWv
	jlDpnFCdk27bPGfTWetyQUKLEHMlmROgeBe8SUOixCJUKJLezNYwssuCJyZcyM46ahpn5bLTAyO1/
	WUyjFDqVG4hI2vI+CWLtwqUYoOgxb4w4G4UgHijCuC68XM3+nznjvEuN7TAVBFB9QvzrTy0F+wRA2
	L8mH/0YlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVg53-00010T-5V; Fri, 15 Nov 2019 18:12:25 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVg4s-0000zp-VT
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 18:12:17 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAFI7qf0005169; Fri, 15 Nov 2019 19:12:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=OyaPEfrTH529l/ASlfKrbaJ4eycdKiFeNGebqnuC/6k=;
 b=Zqt5YNelE3NG9zhmyagZpXnnHLCInTVSJ49lmj9cRFrU2oLHnlAvhNpdS5iS83EozMb+
 5WAyPQqLef1LXpz+sllxTwFPdLOgRiEK6gB7N3aZLvD714pxqVbmnl92SJ75PalRG7Tf
 cgujyqBXVbTBZGBRuaahXwWdzVk9mf0peSpPRrwrnZ5yHp9V+tkWOd6gfo5focmARn1w
 vqOq5TXZ2hGUALOMkBtGHx+mcoFapXkBc2Y5rBqzlO0N5KDByUSX5f7ccPKOr0JKXjJQ
 6VfFDI2CzcLI7R0L9L9+PwfbPuVUO7KOXKsv82bZijGADVkPwkU27apjyzClgZIVu6yO Fg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w7psfnt48-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Nov 2019 19:12:00 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 63D3010002A;
 Fri, 15 Nov 2019 19:11:59 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 341E920FF9E;
 Fri, 15 Nov 2019 19:11:59 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 15 Nov
 2019 19:11:58 +0100
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Convert stm32-exti to
 json-schema
To: Rob Herring <robh+dt@kernel.org>
References: <20191114164104.22782-1-alexandre.torgue@st.com>
 <CAL_JsqKJZwJ0MyRp37Y-F0ujPdVEKARd8qcUCN1xmawpkiffLg@mail.gmail.com>
 <7415fff5-030c-a65b-a405-a1197e166432@st.com>
 <CAL_JsqKkbrF935JoVELqVpqj3fEwzpTn_xNuOS74uUragJZpHA@mail.gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <e651ca95-f4ed-8247-0ca8-5b3ae3633cfe@st.com>
Date: Fri, 15 Nov 2019 19:11:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKkbrF935JoVELqVpqj3fEwzpTn_xNuOS74uUragJZpHA@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-15_05:2019-11-15,2019-11-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_101215_367918_DE36FAC4 
X-CRM114-Status: GOOD (  22.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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



On 11/15/19 6:41 PM, Rob Herring wrote:
> On Fri, Nov 15, 2019 at 11:28 AM Alexandre Torgue
> <alexandre.torgue@st.com> wrote:
>>
>>
>>
>> On 11/14/19 6:18 PM, Rob Herring wrote:
>>> On Thu, Nov 14, 2019 at 10:41 AM Alexandre Torgue
>>> <alexandre.torgue@st.com> wrote:
>>>>
>>>> Convert the STM32 external interrupt controller (EXTI) binding to DT
>>>> schema format using json-schema.
>>>>
>>>> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
>>>> ---
>>>>
>>>> Hi Rob,
>>>>
>>>> I planned to use "additionalProperties: false" for this schema but as I add a
>>>> property under condition, I got an error (property added under contion seems
>>>> to be detected as an "additional" property and then error is raised).
>>>>
>>>> Is there a way to fix that ?
>>>
>>> See below.
>>>
>>>>
>>>> regards
>>>> Alex
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.txt b/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.txt
>>>> deleted file mode 100644
>>>> index cd01b2292ec6..000000000000
>>>> --- a/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.txt
>>>> +++ /dev/null
>>>> @@ -1,29 +0,0 @@
>>>> -STM32 External Interrupt Controller
>>>> -
>>>> -Required properties:
>>>> -
>>>> -- compatible: Should be:
>>>> -    "st,stm32-exti"
>>>> -    "st,stm32h7-exti"
>>>> -    "st,stm32mp1-exti"
>>>> -- reg: Specifies base physical address and size of the registers
>>>> -- interrupt-controller: Indentifies the node as an interrupt controller
>>>> -- #interrupt-cells: Specifies the number of cells to encode an interrupt
>>>> -  specifier, shall be 2
>>>> -- interrupts: interrupts references to primary interrupt controller
>>>> -  (only needed for exti controller with multiple exti under
>>>> -  same parent interrupt: st,stm32-exti and st,stm32h7-exti)
>>>> -
>>>> -Optional properties:
>>>> -
>>>> -- hwlocks: reference to a phandle of a hardware spinlock provider node.
>>>> -
>>>> -Example:
>>>> -
>>>> -exti: interrupt-controller@40013c00 {
>>>> -       compatible = "st,stm32-exti";
>>>> -       interrupt-controller;
>>>> -       #interrupt-cells = <2>;
>>>> -       reg = <0x40013C00 0x400>;
>>>> -       interrupts = <1>, <2>, <3>, <6>, <7>, <8>, <9>, <10>, <23>, <40>, <41>, <42>, <62>, <76>;
>>>> -};
>>>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.yaml b/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.yaml
>>>> new file mode 100644
>>>> index 000000000000..39be37e1e532
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/interrupt-controller/st,stm32-exti.yaml
>>>> @@ -0,0 +1,82 @@
>>>> +# SPDX-License-Identifier: GPL-2.0
>>>
>>> If ST has copyright on the old binding, can you add BSD here.
>>>
>>
>> I will.
>>
>>>> +%YAML 1.2
>>>> +---
>>>> +$id: http://devicetree.org/schemas/interrupt-controller/st,stm32-exti.yaml#
>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>> +
>>>> +title: STM32 External Interrupt Controller Device Tree Bindings
>>>> +
>>>> +maintainers:
>>>> +  - Alexandre Torgue <alexandre.torgue@st.com>
>>>> +  - Ludovic Barre <ludovic.barre@st.com>
>>>> +
>>>> +properties:
>>>> +  compatible:
>>>> +    oneOf:
>>>> +      - items:
>>>> +        - enum:
>>>> +          - st,stm32-exti
>>>> +          - st,stm32h7-exti
>>>> +      - items:
>>>> +        - enum:
>>>> +          - st,stm32mp1-exti
>>>> +        - const: syscon
>>>> +
>>>> +  "#interrupt-cells":
>>>> +    const: 2
>>>> +
>>>> +  reg:
>>>> +    maxItems: 1
>>>> +
>>>> +  interrupt-controller: true
>>>> +
>>>> +  hwlocks:
>>>> +    maxItems: 1
>>>> +    description:
>>>> +      Reference to a phandle of a hardware spinlock provider node.
>>>> +
>>>> +required:
>>>> +  - "#interrupt-cells"
>>>> +  - compatible
>>>> +  - reg
>>>> +  - interrupt-controller
>>>> +
>>>> +allOf:
>>>> +  - $ref: /schemas/interrupt-controller.yaml#
>>>> +  - if:
>>>> +      properties:
>>>> +        compatible:
>>>> +          contains:
>>>> +            enum:
>>>> +              - st,stm32-exti
>>>> +              - st,stm32h7-exti
>>>> +    then:
>>>> +      properties:
>>>> +        interrupts:
>>>> +          allOf:
>>>> +            - $ref: /schemas/types.yaml#/definitions/uint32-array
>>>
>>> Standard property, doesn't need a type. You just need 'maxItems' or an
>>> 'items' list if the index is not meaningful. This appears to be the
>>> former case.
>>
>> ok
>>
>>>
>>>> +          description:
>>>> +            Interrupts references to primary interrupt controller
>>>> +      required:
>>>> +        - interrupts
>>>
>>> You can move the definition to the main section as you only need
>>> 'required' here. That should fix your additionalProperties issue.
>>>
>> Doing that it fails as I don't have interrupts define for mp1
>> compatible. Maybe I missed something ?
> 
> Like this:
> 
> properties:
>    ...
>    interrupts:
>      maxItems: ??
>      minItems: ??
> 
> allOf:
>    - $ref: /schemas/interrupt-controller.yaml#
>    - if:
>        properties:
>          compatible:
>            contains:
>              enum:
>                - st,stm32-exti
>                - st,stm32h7-exti
>      then:
>        required:
>          - interrupts
> 

Yes it is better :). Let me send the V2

Thanks
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
