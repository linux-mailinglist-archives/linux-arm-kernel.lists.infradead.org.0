Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C07DC13C344
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 14:34:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+RyqHoBQhd/WbMj1XWWFWQO58wBtIyliyBf/2gEYKFo=; b=GiYv9QKlBw+kML
	2MArE+TIObyztJPNLb0aze2LONnHIk71JDOGeEYnGlHEOp+lxnxstktlSasaVfiZocwjtuX9x/1T/
	xTQLuLtr5qvUbXSqFYn/EHlmMfp24GtCAxlBNQM6AI23yVCieSfNIvRUPAAMUGT2QgZ958PLf5jAy
	JYnGoG9dBk8J7A87jGZ5dANTwTSB9VhxR98DFOgJ4bkEOk1LGopxFtQT849e5ufzvoXK0HXtl5QmA
	OoDWO8SlrceclNY0y8cSA3KI9EvpKtLVWMw/7HVrl6AJDOcyj7mLhNHILl9bZu/BYYBYMybqgWkft
	pcZHTu3ooqNAHA4eCyiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iriod-0008CM-7N; Wed, 15 Jan 2020 13:34:35 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irioR-0008Ax-4C
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 13:34:28 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00FDX6Ud010870; Wed, 15 Jan 2020 14:34:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=U+zx4gXScyllawgjqtzwHFpsgDj3TweStrajWX6U4lk=;
 b=FNDhIYJuuE0MxSyYk6SryKZVpGcOMC1NWoG+5BzIl3S9TSdO2528VA/8hyITvFNJDlbh
 l+rWOkFKVorzxRaEp70TzGUTuTLw/UKEFS8+OYAxkXQiuV55BSSFJ06og+nT6u7CFGPT
 C4ypYsNXRL5bzlAKN0cXoXBLcXpUUAld4M9FYf48BVJApS4anzsScdGaRQvTUs+SNGjY
 8RMvy+K7UzRXhmgguBMhCxovYpk5wXdfV2e7yPQ65fWoVxW+5o4S0vCjoRwhwARtcpxk
 bXC9D/lGIS87QoJPd3faLQBiFhjB5ALRsF2Xd4QGwD8NBsTH26Az8dwTmIM+3x1mKmd7 7A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xf7fnuat1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 15 Jan 2020 14:34:14 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AAEFA10002A;
 Wed, 15 Jan 2020 14:34:12 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8E66721ECEF;
 Wed, 15 Jan 2020 14:34:12 +0100 (CET)
Received: from [10.48.0.71] (10.75.127.47) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 15 Jan
 2020 14:34:11 +0100
Subject: Re: [PATCH v2] dt-bindings: iio: adc: stm32-adc: convert bindings to
 json-schema
To: Rob Herring <robh@kernel.org>
References: <1575649028-10909-1-git-send-email-fabrice.gasnier@st.com>
 <20191217234345.GA7738@bogus> <cadc76a7-7e9d-1f0a-21fd-2d7942dbe5c9@st.com>
 <CAL_JsqJdw=WzMhp1d9E3131AuyO7in7bgR5X4NM1n7Ox4X0YXw@mail.gmail.com>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <acb1e853-c673-7b6d-3ceb-6e994ae06fe1@st.com>
Date: Wed, 15 Jan 2020 14:34:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJdw=WzMhp1d9E3131AuyO7in7bgR5X4NM1n7Ox4X0YXw@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-15_02:2020-01-15,
 2020-01-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_053423_659838_15EB178C 
X-CRM114-Status: GOOD (  23.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Lars-Peter Clausen <lars@metafoo.de>, olivier moysan <olivier.moysan@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>,
 Peter Meerwald <pmeerw@pmeerw.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX
 / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-stm32@st-md-mailman.stormreply.com, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/14/20 8:20 PM, Rob Herring wrote:
> On Tue, Jan 14, 2020 at 10:02 AM Fabrice Gasnier <fabrice.gasnier@st.com> wrote:
>>
>> On 12/18/19 12:43 AM, Rob Herring wrote:
>>> On Fri, Dec 06, 2019 at 05:17:08PM +0100, Fabrice Gasnier wrote:
>>>> Convert the STM32 ADC binding to DT schema format using json-schema
>>>>
>>>> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
>>>> ---
>>>> Note: this applies on top of IIO tree currently (iio-for-5.5c).
>>>>
>>>> Changes in V2:
>>>> - Take almost all of Rob suggestions (removed reg generic description,
>>>>   added minItems, maxItems, st,max-clk-rate-hz range, drop some pipes,
>>>>   simplify clock-names, remove unneeded allOfs)
>>>> - For now, keep all in one file despite there are lots of if/thens in the
>>>>   bindings
>>>> ---
>>>>  .../devicetree/bindings/iio/adc/st,stm32-adc.txt   | 149 -------
>>>>  .../devicetree/bindings/iio/adc/st,stm32-adc.yaml  | 454 +++++++++++++++++++++
>>>>  2 files changed, 454 insertions(+), 149 deletions(-)
>>>>  delete mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
>>>>  create mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
>>>
>>>
>>
>>
>> [snip]
>>
>>>> +
>>>> +      st,adc-channels:
>>>> +        description: |
>>>> +          List of single-ended channels muxed for this ADC. It can have up to:
>>>> +            - 16 channels, numbered from 0 to 15 (for in0..in15) on stm32f4
>>>> +            - 20 channels, numbered from 0 to 19 (for in0..in19) on stm32h7 and
>>>> +              stm32mp1.
>>>> +        allOf:
>>>> +          - $ref: /schemas/types.yaml#/definitions/uint32-array
>>>> +
>>
>> [snip]
>>
>>>> +
>>>> +    allOf:
>>>> +      - if:
>>>> +          properties:
>>>> +            compatible:
>>>> +              contains:
>>>> +                const: st,stm32f4-adc
>>>> +
>>>> +        then:
>>>> +          properties:
>>>> +            reg:
>>>> +              enum:
>>>> +                - 0x0
>>>> +                - 0x100
>>>> +                - 0x200
>>>> +
>>>> +            interrupts:
>>>> +              minimum: 0
>>>> +              maximum: 2
>>>> +
>>>> +            assigned-resolution-bits:
>>>> +              enum: [6, 8, 10, 12]
>>>> +              default: 12
>>>> +
>>>> +            st,adc-channels:
>>>> +              minItems: 1
>>>> +              maxItems: 16
>>>> +              minimum: 0
>>>> +              maximum: 15
>>>
>>> You are mixing array and scalar constraints here. You need:
>>>
>>> minItems: 1
>>> maxItems:16
>>> items:
>>>   minimum: 0
>>>   maximum: 15
>>>
>>> Update dtschema. It will now catch this. There's a few others too.
>>
>> Hi Rob,
>>
>> Sorry for the late reply. I updated dtschema. Now it catches it.
>>
>> I've tried your suggestion, but when I test it, I don't get any error on
>> maxItems.
>>
>> In the example: "st,adc-channels = <0>, <1>, ... more than 16 items;"
>>
>> Is it possible I face some other issue with dtschema ?
> 
> The problem is how "<0>, <1>" vs. "<0 1>" gets encoded. While those
> are the same in the dtb, in yaml we have "[[0], [1]]" vs. "[[0, 1]]".
> Making the brackets significant is helpful for some things like
> phandle+args and 'reg' where we have a matrix of values, but for
> arrays it just gets in the way. I think as I suggested is the right
> form for the binding schema, and we need to either decide what's the
> correct way for brackets or improve the tool to accept both ways.

Hi Rob,

Thanks for the quick answer and clarification.

I'll adopt the way you suggest in V3 (the dts files already use <0 1...>
syntax). I'll also update the example in the bindings to use it, to
point the right form.

Thanks,
Fabrice

> 
> Rob
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
