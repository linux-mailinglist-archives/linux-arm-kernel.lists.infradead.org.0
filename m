Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 038CE74A28
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 11:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVmHc7hnCPyCbFcYAREfeS6X2Z82jLBr1VPZUXN2TnQ=; b=VlJVUBDgcQJmaG
	Y23UC4pCv+vCW0cSTiDcI9gB0ixT7khONurUfhZ83g0gaZXPMqIgRVcmk2hb5u+AUpMZ5c5VW0DBa
	qLyh9JtX9HCSFFJPjGzLnRMN2DvMShX0FbK0CIV2uAZNALHy0ger2v3JrHGunTrtiSG/OHuUSZqG6
	8xqtEs7PxucND0EWYxgixe8/72rD0/LviOGXTWvtkGZyVvlCZ9oZxf6mwfMnV6museY63b/9usMLL
	UrGB1QUhYhsMkov2X+oVkD5i9s68aiU056NC5G8/lJIxf38XYq8qzsTBgMuy1WFoOYBualPw3F9ZX
	/miZV2m1WvDRm2j4+dog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqaG8-0001es-3M; Thu, 25 Jul 2019 09:42:00 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqaFl-0001eJ-JN
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 09:41:39 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6P9VIvm019586; Thu, 25 Jul 2019 11:41:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=CwGUEJlNPRnLlktsO1S0XN9Odmud6VF8V/BLiayyxtw=;
 b=IlDdyaIPgxFZcZT4SV3Zpu3zeCCA/wutcPzYiKcX6rC5fVRpa6PKCV96Nv5WAB+D7KR1
 cv4DkwhWmFWdcfWQfeUoUd1BUErL9zI/kqfwMum8ymUjGQvKBic4ZlfqEWPm7yanFYka
 0b9kTZqZQejemXX9jUhHu8Bo8gykHXB+iJl3+N116apvocJ2qR6W/+pCV0ChpEBVvh3M
 wYom/r9r2X8aLfvSDFIUG63wQYTknJRxBZ3lYSqLYv1wTykj2ehjNpEH/ubkDp7FRnjG
 /WYplnpv60WkMcvqIM5jw9oNKL1w/Z3hrQrvgqqutgCY5cBvKhF7gnSX2oSiRe2g+c7T Ng== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2tx60833y7-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 25 Jul 2019 11:41:31 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A937C38;
 Thu, 25 Jul 2019 09:41:29 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 496AF2834;
 Thu, 25 Jul 2019 09:41:29 +0000 (GMT)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 25 Jul
 2019 11:41:28 +0200
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
 SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
 15.00.1347.000; Thu, 25 Jul 2019 11:41:28 +0200
From: Olivier MOYSAN <olivier.moysan@st.com>
To: Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, "robh@kernel.org"
 <robh@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] ARM: dts: stm32: add audio codec support on
 stm32mp157a-dk1 board
Thread-Topic: [PATCH] ARM: dts: stm32: add audio codec support on
 stm32mp157a-dk1 board
Thread-Index: AQHVQj6Deex2/J9kJEqdPNgaDJMMOqba9CwA
Date: Thu, 25 Jul 2019 09:41:28 +0000
Message-ID: <f43b8af7-e2c0-6193-d666-9fa60050e07d@st.com>
References: <1562327580-19647-1-git-send-email-olivier.moysan@st.com>
 <27476214-07fe-886b-1cab-20902837f29c@st.com>
In-Reply-To: <27476214-07fe-886b-1cab-20902837f29c@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.49]
Content-ID: <FF0A7C08C4373B42860E80A2452E7D13@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-25_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_024137_929060_B370D76A 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 7/24/19 6:40 PM, Alexandre Torgue wrote:
> Hi Olivier
> 
> On 7/5/19 1:53 PM, Olivier Moysan wrote:
>> Add support of Cirrus cs42l51 audio codec on stm32mp157a-dk1 board.
>> Configuration overview:
>> - SAI2A is the CPU interface used for the codec audio playback
>> - SAI2B is the CPU interface used for the codec audio record
>> - SAI2A is configured as a clock provider for the audio codec
>> - SAI2A&B are configured as slave of the audio codec
>> - SAI2A&B share the same interface of the audio codec
>>
>> Note:
>> In master mode, cs42l51 audio codec provides a bitclock
>> at 64 x FS, regardless of data width. This means that
>> slot width is always 32 bits.
>> Set slot width to 32 bits and slot number to 2
>> in SAI2A&B endpoint nodes, to match this constraint.
>> dai-tdm-slot-num and dai-tdm-slot-width properties are used here,
>> assuming that i2s is a special case of tdm, where slot number is 2.
>>
>> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
>> ---
>>    arch/arm/boot/dts/stm32mp157a-dk1.dts | 89 +++++++++++++++++++++++++++++++++++
>>    1 file changed, 89 insertions(+)
>>
> 
> ...
> 
>>    
>> +&sai2 {
>> +	clocks = <&rcc SAI2>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
>> +	clock-names = "pclk", "x8k", "x11k";
>> +	pinctrl-names = "default", "sleep";
>> +	pinctrl-0 = <&sai2a_pins_a>, <&sai2b_pins_b>;
>> +	pinctrl-1 = <&sai2a_sleep_pins_a>, <&sai2b_sleep_pins_b>;
>> +	status = "okay";
>> +
>> +	sai2a: audio-controller@4400b004 {
>> +		#clock-cells = <0>;
>> +		dma-names = "tx";
>> +		clocks = <&rcc SAI2_K>;
>> +		clock-names = "sai_ck";
>> +		status = "okay";
>> +
>> +		sai2a_port: port {
>> +			sai2a_endpoint: endpoint {
>> +				remote-endpoint = <&cs42l51_tx_endpoint>;
>> +				format = "i2s";
>> +				mclk-fs = <256>;
>> +				dai-tdm-slot-num = <2>;
>> +				dai-tdm-slot-width = <32>;
>> +			};
>> +		};
>> +	};
>> +
> You could use label to overload sai2a and sai2b. no ?
I propose to keep it unchanged for better readability
> 
>> +	sai2b: audio-controller@4400b024 {
>> +		dma-names = "rx";
>> +		st,sync = <&sai2a 2>;
>> +		clocks = <&rcc SAI2_K>, <&sai2a>;
>> +		clock-names = "sai_ck", "MCLK";
>> +		status = "okay";
>> +
>> +		sai2b_port: port {
>> +			sai2b_endpoint: endpoint {
>> +				remote-endpoint = <&cs42l51_rx_endpoint>;
>> +				format = "i2s";
>> +				mclk-fs = <256>;
>> +				dai-tdm-slot-num = <2>;
>> +				dai-tdm-slot-width = <32>;
>> +			};
>> +		};
>> +	};
>> +};
>> +
>>    &sdmmc1 {
>>    	pinctrl-names = "default", "opendrain", "sleep";
>>    	pinctrl-0 = <&sdmmc1_b4_pins_a>;
>>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
