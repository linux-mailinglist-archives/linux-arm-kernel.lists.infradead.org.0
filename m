Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E9F1B090F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=39tLmEVTUnyARPthxGLOFMOn2ja4bxaYbp279qBXpZU=; b=AJ97wmgk39lL27
	DQ5E8qXZ2yUOScPsEZt+69qUWQmk0CAnFqyT7qyRQ4y8Rt6TqiJvR06Z31T06PylsedF1rtXaD5xi
	CHShTPrKrcJmy6TR3dLSSZMb/EM7NH9Ui5ZahpGZJwotBIHOvWQAWjfGeAo21MDLnfx3edu2PVpDK
	X/pUDJE2iKy9OBvvCgxVqsKD8hvcvdAzriSVUdQypL7Wk+29FtH0xjHG0VntmV103P9QgPZdWjTMg
	fqlvDZgc1ksVbTdFf6jrJklvNDowTYa0Jg+Zh1NA2PkQu1cBVblQbIaESlFnkO4R3T+FQrcK/Fswi
	RSVyVUNRtOac5KEeaqvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVKi-0004kp-Pd; Mon, 20 Apr 2020 12:15:28 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVKY-0004k3-NW
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:15:20 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03KBrxA1020286; Mon, 20 Apr 2020 14:15:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=oYkfgGSvLLhJSgChHwt5UPO9noM7Sp59Wqwp6zu8gv4=;
 b=xBih1p+Xf94GO7U3gDyqAbhnTDuSjcKRCUh0HMXy7Sg8mKUp6V1ARRE8EoQblboWkmrU
 J7F0RBe2mXqle7OFFJRGr2LFpOQV5FEKCO423ZIr5KtNes15rT3uncAVsIHDJFebXiPN
 y7Alz5vs0UCPfcFgytizNp7Myt1cppjGlaCL+keYsdWN+ygy0sFZQbEgHIRHkBnrTcB+
 56EhwNoa4uMjYiCnc+g5OHRwDtRnJSqlaSeWflUY4CAylYKmHHwEnYUcKIGN3/2ej0Vb
 8feSA803iXwwZ0K1c1bg3qFjcX+K/wRUvRTDBVrKvVTNe+rwpzNsn3Svt/0Kw9ZO40kM pw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fpp8j9xk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Apr 2020 14:15:07 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6110E100034;
 Mon, 20 Apr 2020 14:15:06 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 477C020E15C;
 Mon, 20 Apr 2020 14:15:06 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 20 Apr
 2020 14:15:05 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Mon, 20 Apr 2020 14:15:05 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Fabrice GASNIER <fabrice.gasnier@st.com>, "lee.jones@linaro.org"
 <lee.jones@linaro.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Subject: Re: [RESEND v6 1/6] dt-bindings: mfd: Document STM32 low power timer
 bindings
Thread-Topic: [RESEND v6 1/6] dt-bindings: mfd: Document STM32 low power timer
 bindings
Thread-Index: AQHWFvIDiS0rSVDAKUm6xHaRsa0yGaiBnm0AgAAszAA=
Date: Mon, 20 Apr 2020 12:15:05 +0000
Message-ID: <83a750a8-85ec-dbc8-a429-d61af5be36b4@st.com>
References: <20200420085930.26989-1-benjamin.gaignard@st.com>
 <20200420085930.26989-2-benjamin.gaignard@st.com>
 <f9d41617-797e-15d4-a058-a0a9e6669cdc@st.com>
In-Reply-To: <f9d41617-797e-15d4-a058-a0a9e6669cdc@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <D343010F4CE77A4D9449AA83278B79CA@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-20_03:2020-04-20,
 2020-04-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_051519_134815_20E80A5F 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/20/20 11:34 AM, Fabrice Gasnier wrote:
> On 4/20/20 10:59 AM, Benjamin Gaignard wrote:
>> Add a subnode to STM low power timer bindings to support timer driver
>>
>> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> ---
>>   .../devicetree/bindings/mfd/st,stm32-lptimer.yaml     | 19 +++++++++++++++++++
>>   1 file changed, 19 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
>> index ddf190cb800b..64bab1c3bdac 100644
>> --- a/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
>> @@ -33,6 +33,9 @@ properties:
>>       items:
>>         - const: mux
>>   
>> +  interrupts:
>> +    maxItems: 1
>> +
>>     "#address-cells":
>>       const: 1
>>   
>> @@ -93,6 +96,16 @@ patternProperties:
>>       required:
>>         - compatible
>>   
>> +  timer:
>> +    type: object
>> +
>> +    properties:
>> +      compatible:
>> +        const: st,stm32-lptimer-timer
>> +
>> +    required:
>> +      - compatible
>> +
>>   required:
>>     - "#address-cells"
>>     - "#size-cells"
>> @@ -106,11 +119,13 @@ additionalProperties: false
>>   examples:
>>     - |
>>       #include <dt-bindings/clock/stm32mp1-clks.h>
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>>       timer@40002400 {
>>         compatible = "st,stm32-lptimer";
>>         reg = <0x40002400 0x400>;
>>         clocks = <&timer_clk>;
>>         clock-names = "mux";
>> +      interrupts-extended = <&exti 47 IRQ_TYPE_LEVEL_HIGH>;
>>         #address-cells = <1>;
>>         #size-cells = <0>;
>>   
>> @@ -131,6 +146,10 @@ examples:
>>         timer {
>>           compatible = "st,stm32-lptimer-timer";
>>         };
>> +
>> +      timer {
>> +        compatible = "st,stm32-lptimer-timer";
>> +      };
> Hi Benjamin,
>
> It looks like the compatible is duplicated in this example.
> Also, from "PATCH v6" I don't see the wakeup-source flag in your resend.
> Can you double-check ?
I have rebased the serie on top of v5.7-rc2, I haven't see that the 
bindings got merged
and, unlucky, these hunks can still be applied and becomes duplicated.
I will send a v7.

Benjamin
>
> Thanks,
> Best Regards,
> Fabrice
>
>>       };
>>   
>>   ...
>>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
