Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D37D15AE2E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 18:08:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHT+15PBQe9Ht3P0apOgCN0DQ7i+qE13qxbS/yXnsU0=; b=XRs5DjYgR4lRHf
	7Yc3d3UBYuBGB7bAWY75jMHBvnD/hmt8DLgEdLWrry+2yT0nE3rfQp8dnPKoCyiBguNN/2RaUK4fE
	koY7mc1QS7jYB6w9HRsKp+Tvl/UsVtbzEF5nnkXbZJJjYkevNRHRunX7HedCG3QZYajuxXfOT+2lb
	uhb/JX7ncGukoInz+8xwdMG6NFX3qhWHvHItgQtkipkEkb29yO6vSwwJqH+ldFZHESbuWnaGIOXJ7
	y0JTrYq/MI9+vwo8VMBfB8+FVjrVzmGJeYG7SRDHDo8kiKInOYqveofyp/KNQl7qp++MioYRIuO+c
	yXKSF6E7cCcMkbaAEi9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1vUo-0007cd-VN; Wed, 12 Feb 2020 17:08:18 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1vUf-0007b6-Qh
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 17:08:11 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01CGwfID011572; Wed, 12 Feb 2020 18:07:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=xrbRWyg0D4q5eEPIH0r1B8C3kSO9phO+KLwzSaQYec4=;
 b=yHLVovXExQw1APYQpnN4nqcUrSA/3LPowdOd4HSTE07PC3N96Dabw4dK0gRR3qyFQdHe
 ifMQsURbHly4TcE/aXbuc2cfjRVVvc0dS6ZtmiiXwZyPGUMRK0Krn9zxBAUCm78WceiL
 aTORRBymFHqI0+RGu+wviMIm1/0HPLPvgL0Id79/yZDpzo/09k+uqrXoryIM7PA1jcfs
 p1hssJkHeNOX0Koiqf+Utb6iJrpukBloH1DDmaAzR7xUciXazuJjaHzKBZGdBSqbAyN9
 Va7lUZ9eRQXaF4JwecL4LdJIOYOmWd9Ok2UMwfhxBC3bPgmc4GR7pZ5x4vmncPHUcaEc NA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1urhftnv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 12 Feb 2020 18:07:52 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7FA6310002A;
 Wed, 12 Feb 2020 18:07:50 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7BE852BF9C4;
 Wed, 12 Feb 2020 18:07:50 +0100 (CET)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 12 Feb
 2020 18:07:49 +0100
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Wed, 12 Feb 2020 18:07:49 +0100
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: mfd: Document STM32 low power
 clkevent bindings
Thread-Topic: [PATCH v3 1/2] dt-bindings: mfd: Document STM32 low power
 clkevent bindings
Thread-Index: AQHV1dN1SufRLAitBUGp4OAGtW3SUqgXzN0AgAAEoIA=
Date: Wed, 12 Feb 2020 17:07:49 +0000
Message-ID: <f25fc32a-7131-6b78-5bf2-d2028e74820e@st.com>
References: <20200128120702.26166-1-benjamin.gaignard@st.com>
 <20200128120702.26166-2-benjamin.gaignard@st.com>
 <20200212165116.GA2949@linaro.org>
In-Reply-To: <20200212165116.GA2949@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <C493ABCE6CA6CB4FB177F0711786531B@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-12_08:2020-02-12,
 2020-02-12 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_090810_231266_2AFEB049 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 Pascal PAILLET-LME <p.paillet@st.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2/12/20 5:51 PM, Daniel Lezcano wrote:
> On Tue, Jan 28, 2020 at 01:07:01PM +0100, Benjamin Gaignard wrote:
>> Add a subnode to STM low power timer bindings to support clkevent driver
> clkevent is Linux specific.
Does 'event' or 'broadcast' would sound better ?
>
>> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
>> ---
>>   .../devicetree/bindings/mfd/st,stm32-lptimer.yaml          | 14 ++++++++++++++
>>   1 file changed, 14 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
>> index 1a4cc5f3fb33..535e0b40cdf9 100644
>> --- a/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml
>> @@ -81,6 +81,16 @@ patternProperties:
>>       required:
>>         - compatible
>>   
>> +  clkevent:
>> +    type: object
>> +
>> +    properties:
>> +      compatible:
>> +        const: st,stm32-clkevent-lp
>> +
>> +    required:
>> +      - compatible
>> +
>>   required:
>>     - "#address-cells"
>>     - "#size-cells"
>> @@ -115,6 +125,10 @@ examples:
>>         counter {
>>           compatible = "st,stm32-lptimer-counter";
>>         };
>> +
>> +      clkevent {
>> +        compatible = "st,stm32-clkevent-lp";
>> +      };
>>       };
>>   
>>   ...
>> -- 
>> 2.15.0
>>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
