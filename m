Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED5412E40D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 09:50:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqUMfo0SGEQ6J2BgeMb5EYLl7ezxVveQVQZZ759ZXSo=; b=YhY6Bx0I4DG2x1
	3NpXS+MYXJZbz37nl3a9+FTgGpHainn8XyW1++oLH1HGQZHyIPKhh29acffat+mcsY3IFStFK7+Tq
	H525rlIyPt6OtPhq6WliWdwOgJZLPcTktqn6CNkEV9eqI48ShVsxs2c+Q7FZqCcFsVs1neilMZEia
	6/ogyeaqaykDtIhNASTSY2wkHbLeFebJX+9Ykgbr6Hl/VCIIKnLTv0p3kZK298Bp5FcPiIKmMBkAi
	FOEgugBsSMx4zQEycxtAWdHVedI43z34g/Nmx8g02e9o5rEUe6VoG3/NQWI4TVYzFARoQujJni3+S
	+NVH5k2k4KBHO+OWf7cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imwBx-00085r-LM; Thu, 02 Jan 2020 08:50:53 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imwBq-00085O-Gr
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 08:50:48 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0028mjoQ007721; Thu, 2 Jan 2020 09:50:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=LRdbeTk9U+whaEXucHpmJKJIXLSTzy8TN4eCF8nKnlk=;
 b=rdW5FCjvJZp4jjB8Zq169+SO5I2yDOHHeVn9ffeFn0qfFuJbIkdLiqX37tZHl1losuIT
 K8xlccRILYvzn4OG7G7rjKj9+f8hSg0OvrEcF/fTaT4mLeehR26aGdvHRfq2WZEALEka
 d/WbwqX9C1YmDYto0kEaZ4KI7p68kBKNvvoZIvPXOTGaR3ggaYNWtAiYZVsjuZngvvv/
 uDH/MdR8jQjnoIRHltOPNuJH+7E76GyPeoZUIHGL/4PCFQ93dw7Dag2CC92UTRR4OQdu
 iYX04ChjY3jCq4AXgjpEU3puzFoNxPJvBMGcTjJHvhaez7pErnf08R9ypcmjMgTQr563 Ig== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2x5wd6a4bv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 02 Jan 2020 09:50:41 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 897E8100034;
 Thu,  2 Jan 2020 09:50:40 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 666FF21ED5A;
 Thu,  2 Jan 2020 09:50:40 +0100 (CET)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 2 Jan
 2020 09:50:39 +0100
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Thu, 2 Jan 2020 09:50:39 +0100
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 2/2] ARM: dts: exynos: Remove unneeded "snps, dwc2" from
 hsotg node
Thread-Topic: [PATCH v2 2/2] ARM: dts: exynos: Remove unneeded "snps,dwc2"
 from hsotg node
Thread-Index: AQHVtlgQQnPVTv47G0+aNYZYg4bX66fS0MUAgARFMYA=
Date: Thu, 2 Jan 2020 08:50:39 +0000
Message-ID: <bbc7e34c-75c2-dfe0-70f3-0685e8e54fed@st.com>
References: <20191219103536.25485-1-benjamin.gaignard@st.com>
 <20191219103536.25485-3-benjamin.gaignard@st.com> <20191230153758.GB4918@pi3>
In-Reply-To: <20191230153758.GB4918@pi3>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <189E2F8963AD1C41B89EA1A9DC82B15E@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2020-01-02_02:2019-12-30,2020-01-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_005046_860490_CCB7DB70 
X-CRM114-Status: GOOD (  20.75  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Amelie DELAUNAY <amelie.delaunay@st.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "hminas@synopsys.com" <hminas@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 12/30/19 4:37 PM, Krzysztof Kozlowski wrote:
> On Thu, Dec 19, 2019 at 11:35:36AM +0100, Benjamin Gaignard wrote:
>> Remove "snps,dwc2" from hsotg@12480000 node compatible list because
>> "samsung,s3c6400-hsotg" should be enough.
> The more detailed compatible is almost always "enough". Some other nodes
> also have detailed+generic compatible. In this case there is a driver
> matching "snps,dwc2" so why removing it?

First because, unlike the others dwc2 devices, this compatible wasn't 
describe in the bindings file

so I had to investigated how it should work and, on samsung DT files, 
only "samsung,s3c6400-hsotg".

 From driver code point of view that seems coherent (we do the same for 
stm32).

With that in mind I have decided to remove "snps,dwc2" from exynos DT 
file rather than add it everywhere else.

Benjamin

>
> Best regards,
> Krzysztof
>
>> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
>> ---
>>   arch/arm/boot/dts/exynos3250.dtsi | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/boot/dts/exynos3250.dtsi b/arch/arm/boot/dts/exynos3250.dtsi
>> index b016b0b68306..d4866269f4ee 100644
>> --- a/arch/arm/boot/dts/exynos3250.dtsi
>> +++ b/arch/arm/boot/dts/exynos3250.dtsi
>> @@ -362,7 +362,7 @@
>>   		};
>>   
>>   		hsotg: hsotg@12480000 {
>> -			compatible = "samsung,s3c6400-hsotg", "snps,dwc2";
>> +			compatible = "samsung,s3c6400-hsotg";
>>   			reg = <0x12480000 0x20000>;
>>   			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
>>   			clocks = <&cmu CLK_USBOTG>;
>> -- 
>> 2.15.0
>>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
