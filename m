Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 090687EFA1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 10:50:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ejEh9NtHVrdTTg2SZBHy/Zm9FQx/hkDO8zKGkmPe2U4=; b=WqRCfDoZKMoI6M
	xzNSixJsuhndB5xKtyCu1GHmw95dBc15MZ2XlFFN+6cieftqoHF33L501wnFK5o01otm9XZLmSG0o
	W4YbJgw8cS3Oam+Fkq2e+xzAHQFNZZZfodKrUjxG2fxpTwZK/onwapBQ2OajltcJaF0eR+dejw3tW
	VzkMryxFS1vEOPCJQKpBI8dvCFFlZMg+0HBmNsIlx3/3BddA8c1fT0xWlBXNE8mkiBn3H34IvNmjZ
	x9MLomX8SCEdkz+7qFehUZc1nK3llQfq17QfQbs4WhOthh3PRY2PVS201BR3xD96ARvEmtsoGfh+1
	cWXfQZsJCf8Vspp65lBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htTGP-0002KY-UY; Fri, 02 Aug 2019 08:50:14 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htTGB-0002BC-1O
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 08:50:00 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x728kgEI025069; Fri, 2 Aug 2019 10:49:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=7oP2TLk/bh7ktiksulnUxikTpCmAWCoZAQWzbFRiYiI=;
 b=HWeHHE6szTeWTy7KRD9hXztk/dcwcjroscp14WCDjeynCAKs1YtJuV93C8R24aMH6X2/
 EfLpdAaLcPk2hJ0XTBKZcahfqNhMntQYofovPgkbscSe3UCn1GB3iwaLJ9KPcGRoW2i9
 Eap4KVSTpobAcweeLSqLNRvZJp2G2j+MfMMrmV4xRL8z1MqL8S9gGAJoIyyqxnwc4xUP
 DsYHilkOT1wVfxEa7FmRJcskW3oKcIDTSA4OVeYkAQa4nmQ89m8apJ24fTVdBruvY+24
 pEF03c1VjSlplo+hTVBIO3CvFq1v4DJtzNwKppgJgkIWFQ6ppdM3JpNKn5KN9WXwIikC Tg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2u0c2yu8yk-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 02 Aug 2019 10:49:49 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2823E41;
 Fri,  2 Aug 2019 08:49:48 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E7AEB20754E;
 Fri,  2 Aug 2019 10:49:48 +0200 (CEST)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 2 Aug
 2019 10:49:48 +0200
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
 SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
 15.00.1347.000; Fri, 2 Aug 2019 10:49:48 +0200
From: Olivier MOYSAN <olivier.moysan@st.com>
To: Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, "robh@kernel.org"
 <robh@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] ARM: dts: stm32: add DFSDM pins to stm32mp157c
Thread-Topic: [PATCH] ARM: dts: stm32: add DFSDM pins to stm32mp157c
Thread-Index: AQHVSQmlOW7lqPM0IEWEE+OpQQXuJKbnat+A
Date: Fri, 2 Aug 2019 08:49:48 +0000
Message-ID: <0e9689a6-0636-b1f2-22f7-009180709891@st.com>
References: <1564645567-13156-1-git-send-email-olivier.moysan@st.com>
 <a95e5d74-c8e3-42f9-cabf-f42623aee255@st.com>
In-Reply-To: <a95e5d74-c8e3-42f9-cabf-f42623aee255@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.46]
Content-ID: <9043CAB016B58A46BA78A79224654C44@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-02_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_014959_453048_403106F4 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ALex,

On 8/2/19 10:09 AM, Alexandre Torgue wrote:
> Hi Olivier
> 
> On 8/1/19 9:46 AM, Olivier Moysan wrote:
>> Add DFSDM pins to stm32mp157c.
>>
>> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
>> ---
>>    arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 39 +++++++++++++++++++++++++++++++
>>    1 file changed, 39 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
>> index 9eaec9bf8cb8..f96a928cbc49 100644
>> --- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
>> +++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
>> @@ -230,6 +230,45 @@
>>    				};
>>    			};
>>    
> 
> I use to only take pinconfig which are used in board. So please resend
> with the "board patch".
> 

The DFSDM is one of the interface used in the STM32MP15 soundcard.
This soundcard also uses the Wolfson wm8994 audio codec.
The wm8994 codec driver requires adaptations, and the upstream of
these changes is not planned today.
So, the related board patches cannot be sent.

BRs
Olivier

> regards
> Alex
> 
> 
>> +			dfsdm_clkout_pins_a: dfsdm-clkout-pins-0 {
>> +				pins {
>> +					pinmux = <STM32_PINMUX('B', 13, AF3)>; /* DFSDM_CKOUT */
>> +					bias-disable;
>> +					drive-push-pull;
>> +					slew-rate = <0>;
>> +				};
>> +			};
>> +
>> +			dfsdm_clkout_sleep_pins_a: dfsdm-clkout-sleep-pins-0 {
>> +				pins {
>> +					pinmux = <STM32_PINMUX('B', 13, ANALOG)>; /* DFSDM_CKOUT */
>> +				};
>> +			};
>> +
>> +			dfsdm_data1_pins_a: dfsdm-data1-pins-0 {
>> +				pins {
>> +					pinmux = <STM32_PINMUX('C', 3, AF3)>; /* DFSDM_DATA1 */
>> +				};
>> +			};
>> +
>> +			dfsdm_data1_sleep_pins_a: dfsdm-data1-sleep-pins-0 {
>> +				pins {
>> +					pinmux = <STM32_PINMUX('C', 3, ANALOG)>; /* DFSDM_DATA1 */
>> +				};
>> +			};
>> +
>> +			dfsdm_data3_pins_a: dfsdm-data3-pins-0 {
>> +				pins {
>> +					pinmux = <STM32_PINMUX('F', 13, AF6)>; /* DFSDM_DATA3 */
>> +				};
>> +			};
>> +
>> +			dfsdm_data3_sleep_pins_a: dfsdm-data3-sleep-pins-0 {
>> +				pins {
>> +					pinmux = <STM32_PINMUX('F', 13, ANALOG)>; /* DFSDM_DATA3 */
>> +				};
>> +			};
>> +
>>    			ethernet0_rgmii_pins_a: rgmii-0 {
>>    				pins1 {
>>    					pinmux = <STM32_PINMUX('G', 5, AF11)>, /* ETH_RGMII_CLK125 */
>>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
