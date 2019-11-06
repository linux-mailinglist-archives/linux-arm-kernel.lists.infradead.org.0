Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D04F1F5C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 20:57:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tNLSRP4ecpwZcV8+tCG4kCD+jlFrKAmzdCIiu5lC8c=; b=R05X1kh/mONllg
	kdQ2z3NlAQU6Z5VSr8TfTwYx7F8NWZ8UIDXF8rGs1sOq6jmawYxW495Fpop/U55VSm9t4EesiqYi4
	VTbmZfPxwlSnL/zrHS3DndWwkwzbthy7LrNTRfve/7arcy8tq7IdrVekXI7cFTeQkerWL+zrEhrTq
	S2PMctN3/sqjN7rydLxnRnsw6A6nAaxKhEzCPEb4XPdzKAYzgI1jFqeQ5hWEUQzs0/oMYPQoN5CfQ
	JPd9by9slSOSsx/b4sV4AVx0U0cc+SWmcypX1d9Qxluqg9/gT5NAOFxZe2M+JCL6Nh2KeiWjkGxui
	lq531U6ptUtptwhb8UEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSRQo-0003e3-4r; Wed, 06 Nov 2019 19:57:30 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSRQY-0003dZ-IB
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 19:57:16 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA6JptN7005880; Wed, 6 Nov 2019 20:57:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=1CNNscptave/lqyrM0vWi7IpPuigDr/RT5NEfJL41FQ=;
 b=Fcdm62Ktp46Y/3LYYjtSxMRrvFQp4GYMyrRi+iset1jAuVX3iFh/tFbP/CkL4MdMYJ4G
 g9+k/y3ak7z6W4mBnvIkafNIXHb86pUJSLczFSIpVz9W+BvbUQwM1zGNibmLD0vX4/KM
 grsaJNycvyIloP56dhfcZw10tG4yZps5haoAXmv9Qkpz70xyuKbuzOoiyxGL5786f3tK
 jJOLeUEUwBcUwc4Od/hpyv4x849CC+NlqD/lfZ+qB7a/y6wnlCPF0uZvHG7GFJxnY6r+
 5zKcg/nuEMz8Q+pXaKmpKsg4QdXmo2/ZQS8lm8QKi/XJ0aDGCQDTN5J61Bpxh0FBRzEv 1g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w41vgrs27-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 06 Nov 2019 20:57:07 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 598EC10002A;
 Wed,  6 Nov 2019 20:57:07 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node1.st.com [10.75.127.13])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 372512C64DA;
 Wed,  6 Nov 2019 20:57:07 +0100 (CET)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG5NODE1.st.com
 (10.75.127.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 6 Nov
 2019 20:57:06 +0100
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Wed, 6 Nov 2019 20:57:06 +0100
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 4/4] dt-bindings: mfd: Convert stm32 timers bindings to
 json-schema
Thread-Topic: [PATCH 4/4] dt-bindings: mfd: Convert stm32 timers bindings to
 json-schema
Thread-Index: AQHVj+cLo82I5KV3I0iahvx4EoqxqKd9gQYAgAEHIoA=
Date: Wed, 6 Nov 2019 19:57:06 +0000
Message-ID: <41c43d09-9371-8b23-a3dd-e43f5df5c5bc@st.com>
References: <20191031123040.26316-1-benjamin.gaignard@st.com>
 <20191031123040.26316-5-benjamin.gaignard@st.com>
 <20191106041518.GC5294@bogus>
In-Reply-To: <20191106041518.GC5294@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <1FEAA25580E4C446BBC3EF2B74C20D0E@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-06_07:2019-11-06,2019-11-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_115714_897060_20556D5D 
X-CRM114-Status: GOOD (  24.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "lars@metafoo.de" <lars@metafoo.de>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 Fabrice GASNIER <fabrice.gasnier@st.com>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 11/6/19 5:15 AM, Rob Herring wrote:
> On Thu, Oct 31, 2019 at 01:30:40PM +0100, Benjamin Gaignard wrote:
>> Convert the STM32 timers binding to DT schema format using json-schema
>>
>> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
>> ---
>>   .../devicetree/bindings/mfd/st,stm32-timers.yaml   | 91 ++++++++++++++++++++++
>>   .../devicetree/bindings/mfd/stm32-timers.txt       | 73 -----------------
>>   2 files changed, 91 insertions(+), 73 deletions(-)
>>   create mode 100644 Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
>>   delete mode 100644 Documentation/devicetree/bindings/mfd/stm32-timers.txt
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
>> new file mode 100644
>> index 000000000000..3f0a65fb2bc0
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
>> @@ -0,0 +1,91 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mfd/st,stm32-timers.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: STMicroelectronics STM32 Timers bindings
>> +
>> +description: |
>> +  This hardware block provides 3 types of timer along with PWM functionality: \
> Don't need the \
ok
>
>> +    - advanced-control timers consist of a 16-bit auto-reload counter driven by a programmable \
>> +      prescaler, break input feature, PWM outputs and complementary PWM ouputs channels. \
>> +    - general-purpose timers consist of a 16-bit or 32-bit auto-reload counter driven by a \
>> +      programmable prescaler and PWM outputs.\
>> +    - basic timers consist of a 16-bit auto-reload counter driven by a programmable prescaler.
>> +
>> +maintainers:
>> +  - Benjamin Gaignard <benjamin.gaignard@st.com>
>> +  - Fabrice Gasnier <fabrice.gasnier@st.com>
>> +
>> +allOf:
>> +  - $ref: "../pwm/st,stm32-pwm.yaml#"
>> +  - $ref: "../iio/timer/st,stm32-timer-trigger.yaml#"
>> +  - $ref: "../counter/st,stm32-timer-cnt.yaml#"
> This works, but I prefer the child node names be listed under properties
> here with a ref:
>
> counter:
>    $ref: "../counter/st,stm32-timer-cnt.yaml#"
If I wrote everything in one file I guess what won't be needed anymore
>
>> +
>> +properties:
>> +  compatible:
>> +    const: st,stm32-timers
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  clock-names:
>> +    items:
>> +      - const: int
>> +
>> +  reset:
>> +    maxItems: 1
>> +
>> +  dmas: true
> How many?

from 0 up to 8, but I don't know the syntax for that. minItems = 0 isn't 
accepted.

Any hints for me ?

>
>> +
>> +  dma-names: true
> What are the names?

it could be ch1 ... ch8, "trig" or "up" in any order.

Again I haven't be able to find a syntax that allow to list the names 
and use them in any orders.

Benjamin

>
>> +
>> +  "#address-cells":
>> +    const: 1
>> +
>> +  "#size-cells":
>> +    const: 0
>> +
>> +required:
>> +  - "#address-cells"
>> +  - "#size-cells"
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - clock-names
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/stm32mp1-clks.h>
>> +    timers2: timer@40000000 {
>> +      #address-cells = <1>;
>> +      #size-cells = <0>;
>> +      compatible = "st,stm32-timers";
>> +      reg = <0x40000000 0x400>;
>> +      clocks = <&rcc TIM2_K>;
>> +      clock-names = "int";
>> +      dmas = <&dmamux1 18 0x400 0x1>,
>> +             <&dmamux1 19 0x400 0x1>,
>> +             <&dmamux1 20 0x400 0x1>,
>> +             <&dmamux1 21 0x400 0x1>,
>> +             <&dmamux1 22 0x400 0x1>;
>> +      dma-names = "ch1", "ch2", "ch3", "ch4", "up";
>> +      pwm {
>> +        compatible = "st,stm32-pwm";
>> +        #pwm-cells = <3>;
>> +        st,breakinput = <0 1 5>;
>> +      };
>> +      timer@0 {
>> +        compatible = "st,stm32-timer-trigger";
>> +        reg = <0>;
>> +      };
>> +      counter {
>> +        compatible = "st,stm32-timer-counter";
>> +      };
>> +    };
>> +
>> +...
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
