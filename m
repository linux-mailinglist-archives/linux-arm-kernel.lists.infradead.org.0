Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3466BEDA20
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:53:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVi3NUtiMakFiRI5zuCmwZgEvkLM9Pb5f+nuvWj4QR0=; b=lIkc42JQzRsBe3
	fCcHW4XjJa5cOaVlSHXNy+8fA/8DC7jq387Ec1cqBJxew+xtgoRjYcaXnYDcQnb3GSw1InMJbi7AL
	AW8wz9lXcafw46mxcGNFVn6+7pU5o7YhIoDvNtpVNsZFuuDrx5IyxRpGycTvlgNB44c/oh0oeMD1O
	4WSlUFx1h715cLRc03+azAhnm5CwmDk4NS/LCVXJ9TXtoCSfbasZMWMjTwPQ9y0CSuWjXhSss4QyO
	S0nVO76j2d4tzIqyE0fb4Io3DokOqI8P5DWVewNLHsNzDmct5zriXmJHwKiXnQWCVwP3UNb/fmqtE
	S+2KitG/4iBuHZQz2bHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXAt-0002TU-E0; Mon, 04 Nov 2019 07:53:19 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXAm-0002Sr-1M
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 07:53:13 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id D5F9162730B;
 Mon,  4 Nov 2019 08:53:09 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 4 Nov 2019
 08:53:09 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Mon, 4 Nov 2019 08:53:09 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v3 07/11] ARM: dts: imx6ul-kontron-n6x1x-s: Add
 vbus-supply and overcurrent polarity to usb nodes
Thread-Topic: [PATCH v3 07/11] ARM: dts: imx6ul-kontron-n6x1x-s: Add
 vbus-supply and overcurrent polarity to usb nodes
Thread-Index: AQHVj/bjTjNmxCvGY0q8/rNxh/Ilvad6kygAgAAF8QA=
Date: Mon, 4 Nov 2019 07:53:09 +0000
Message-ID: <77f6c71e-19ee-50c6-ecbd-c3547f0c4e84@kontron.de>
References: <20191031142112.12431-1-frieder.schrempf@kontron.de>
 <20191031142112.12431-8-frieder.schrempf@kontron.de>
 <20191104073151.GR24620@dragon>
In-Reply-To: <20191104073151.GR24620@dragon>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <F72F5A035670224B8CDC395912F26E6B@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: D5F9162730B.A0A47
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
X-CRM114-CacheID: sfid-20191103_235312_407785_1225E420 
X-CRM114-Status: GOOD (  17.06  )
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

On 04.11.19 08:31, Shawn Guo wrote:
> On Thu, Oct 31, 2019 at 02:24:21PM +0000, Schrempf Frieder wrote:
>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>>
>> To silence the warnings shown by the driver at boot time, we add a
>> fixed regulator for the 5V supply of usbotg2 and specify the polarity
>> of the overcurrent signal for usbotg1.
>>
>> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
>> Fixes: 1ea4b76cdfde ("ARM: dts: imx6ul-kontron-n6310: Add Kontron i.MX6UL N6310 SoM and boards")
> 
> I do not think it's a bug fix, so the Fixes tag doesn't really apply.

I guess you're right. It only prevents warnings at boot time and 
functionality is not broken. I think I had a wrong understanding of the 
Fixes tag and need to reread the docs...

> 
> Shawn
> 
>> ---
>>   arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
>> index 2299cad900af..d3eb21aa9014 100644
>> --- a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
>> +++ b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
>> @@ -45,6 +45,13 @@
>>   		regulator-max-microvolt = <3300000>;
>>   	};
>>   
>> +	reg_5v: regulator-5v {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "5v";
>> +		regulator-min-microvolt = <5000000>;
>> +		regulator-max-microvolt = <5000000>;
>> +	};
>> +
>>   	reg_usb_otg1_vbus: regulator-usb-otg1-vbus {
>>   		compatible = "regulator-fixed";
>>   		regulator-name = "usb_otg1_vbus";
>> @@ -191,6 +198,7 @@
>>   	srp-disable;
>>   	hnp-disable;
>>   	adp-disable;
>> +	over-current-active-low;
>>   	vbus-supply = <&reg_usb_otg1_vbus>;
>>   	status = "okay";
>>   };
>> @@ -198,6 +206,7 @@
>>   &usbotg2 {
>>   	dr_mode = "host";
>>   	disable-over-current;
>> +	vbus-supply = <&reg_5v>;
>>   	status = "okay";
>>   };
>>   
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
