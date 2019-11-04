Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C82BFEDA08
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:41:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0yJ1RN3yCAlJ2k893KBcrHq240eP6wJd1/6PFMvwrY=; b=AXCH4Li3fO7MLY
	MLbOFcotRVXW+Ny6Is3I15Dg76BcHNuy2u+7bmOsIdUolOiKSOYNTzFlp9yIJ8LvWWeS6zTwey09D
	CGUDKNFIJpF4g9jRPgHaMu5LxpgKY6pT9hX3ERRYw92gYekFgFc4EInErFTbHLxSQxetPd7xUicAl
	COs5uBV+5zhmatmmQpICpW9SyOKOEXRQ8VO95jCGZqncO9m+OQKh4/4X+z69yWrFbKJrGJYk4oA22
	YIiVUNVynIo8dLc76w/JyPW8ac7AZWTuczMtFL2Tq7JwmJv81phDy0EZ4KqFbB3qHC6/meoKGiuAP
	K1oz8XDs0PGwIe9C0RUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWzA-0006Wk-37; Mon, 04 Nov 2019 07:41:12 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWz1-0006VL-Hq
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 07:41:05 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 6FFD76FE12D;
 Mon,  4 Nov 2019 08:40:56 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 4 Nov 2019
 08:40:55 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Mon, 4 Nov 2019 08:40:55 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v3 06/11] ARM: dts: imx6ul-kontron-n6x1x-s: Specify
 bus-width for SD card and eMMC
Thread-Topic: [PATCH v3 06/11] ARM: dts: imx6ul-kontron-n6x1x-s: Specify
 bus-width for SD card and eMMC
Thread-Index: AQHVj/bhrI8+Sinp0EmCHJdFZK6p5Kd6koeAgAADKYA=
Date: Mon, 4 Nov 2019 07:40:55 +0000
Message-ID: <23694e57-029a-d8aa-b900-ef608ab2370e@kontron.de>
References: <20191031142112.12431-1-frieder.schrempf@kontron.de>
 <20191031142112.12431-7-frieder.schrempf@kontron.de>
 <20191104072936.GQ24620@dragon>
In-Reply-To: <20191104072936.GQ24620@dragon>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <E6E6C12BA347DF438E99A64D5025974A@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 6FFD76FE12D.A2056
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: devicetree@vger.kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_234103_918517_9592AF10 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Krzysztof
 Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04.11.19 08:29, Shawn Guo wrote:
> On Thu, Oct 31, 2019 at 02:24:18PM +0000, Schrempf Frieder wrote:
>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>>
>> Both, the SD card and the eMMC are connected to the usdhc controller
>> by four data lines. Therefore we set 'bus-width = <4>' for both
>> interfaces.
>>
>> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
>> Fixes: 1ea4b76cdfde ("ARM: dts: imx6ul-kontron-n6310: Add Kontron i.MX6UL N6310 SoM and boards")
>> ---
>>   arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
>> index 7c98a1a46fb1..2299cad900af 100644
>> --- a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
>> +++ b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
>> @@ -209,6 +209,7 @@
>>   	wakeup-source;
>>   	vmmc-supply = <&reg_3v3>;
>>   	voltage-ranges = <3300 3300>;
>> +	bus-width = <4>;
> 
> Isn't it already set in arch/arm/boot/dts/imx6ul.dtsi as the default?

Right, I somehow missed this. So this patch can be ignored.

> 
> Shawn
> 
>>   	no-1-8-v;
>>   	status = "okay";
>>   };
>> @@ -223,6 +224,7 @@
>>   	wakeup-source;
>>   	vmmc-supply = <&reg_3v3>;
>>   	voltage-ranges = <3300 3300>;
>> +	bus-width = <4>;
>>   	no-1-8-v;
>>   	status = "okay";
>>   };
>> -- 
>> 2.17.1
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
