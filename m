Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1721DEDA23
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:54:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tv5ALdxMDRLSxzm7fXkQZTVhNpnSANHmW3Hsvxzqk3Q=; b=FluacSrzfAeaSC
	V75l7Ygnwue0mHm0pqg+fzCgxRvgUAQVck5fZ8hbGOTsWH4f+P28oiiCqTG0B5hToFCPuF7/Nq7NS
	v0gnPp/pEGGOZz464Q7NrbjP2+nP7giSAUzWRSZSgmh21z12K/oMTdo/eDhV4tDk9AC/H4mrNA2BD
	vtt45+wKqyaj7GqJHRMuznEk5gE9nmZ+KKRoXvX0JvrapMYkua4cG3YvVaVM+6xo6WgPuExEh6YA+
	T5jtmPSfdVGLWNfmO3EgVkBiiwoUxciJ5bB8hhBklucGifPk4zN1L6kcnLSEb5hndLYklAoprWUlT
	oPIfahM3dN+K2f9uMryQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXBY-0002kr-RJ; Mon, 04 Nov 2019 07:54:00 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXBR-0002k7-34
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 07:53:54 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 80CC660CAEC;
 Mon,  4 Nov 2019 08:53:46 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 4 Nov 2019
 08:53:46 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Mon, 4 Nov 2019 08:53:46 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v3 08/11] ARM: dts: imx6ul-kontron-n6x1x-s: Remove an
 obsolete comment and fix indentation
Thread-Topic: [PATCH v3 08/11] ARM: dts: imx6ul-kontron-n6x1x-s: Remove an
 obsolete comment and fix indentation
Thread-Index: AQHVj/blw8f6Q1Cpm0KB/jM6FijR+6d6k4aAgAAFwIA=
Date: Mon, 4 Nov 2019 07:53:45 +0000
Message-ID: <a0c4f2cf-a7dd-c112-331d-31bc52482a25@kontron.de>
References: <20191031142112.12431-1-frieder.schrempf@kontron.de>
 <20191031142112.12431-9-frieder.schrempf@kontron.de>
 <20191104073310.GS24620@dragon>
In-Reply-To: <20191104073310.GS24620@dragon>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <5B9C990A48851B429ABA03B829CE7F76@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 80CC660CAEC.A0963
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
X-CRM114-CacheID: sfid-20191103_235353_458499_FF94E15E 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04.11.19 08:33, Shawn Guo wrote:
> On Thu, Oct 31, 2019 at 02:24:24PM +0000, Schrempf Frieder wrote:
>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>>
>> The ECSPI1 is not used for a FRAM chip, so remove the comment.
>> While at it, also change some whitespaces to tabs to comply with the
>> indentation style of the rest of the file.
>>
>> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
>> Fixes: 1ea4b76cdfde ("ARM: dts: imx6ul-kontron-n6310: Add Kontron i.MX6UL N6310 SoM and boards")
> 
> It's not a bug fix.

Right.

> 
> Shawn
> 
>> ---
>>   arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi | 13 ++++++-------
>>   1 file changed, 6 insertions(+), 7 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
>> index d3eb21aa9014..e18a8bd239be 100644
>> --- a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
>> +++ b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
>> @@ -256,7 +256,6 @@
>>   		>;
>>   	};
>>   
>> -	/* FRAM */
>>   	pinctrl_ecspi1: ecspi1grp {
>>   		fsl,pins = <
>>   			MX6UL_PAD_CSI_DATA07__ECSPI1_MISO	0x100b1
>> @@ -281,8 +280,8 @@
>>   
>>   	pinctrl_enet2_mdio: enet2mdiogrp {
>>   		fsl,pins = <
>> -			MX6UL_PAD_GPIO1_IO07__ENET2_MDC         0x1b0b0
>> -			MX6UL_PAD_GPIO1_IO06__ENET2_MDIO        0x1b0b0
>> +			MX6UL_PAD_GPIO1_IO07__ENET2_MDC		0x1b0b0
>> +			MX6UL_PAD_GPIO1_IO06__ENET2_MDIO	0x1b0b0
>>   		>;
>>   	};
>>   
>> @@ -295,10 +294,10 @@
>>   
>>   	pinctrl_gpio: gpiogrp {
>>   		fsl,pins = <
>> -			MX6UL_PAD_SNVS_TAMPER5__GPIO5_IO05	0x1b0b0 /* DOUT1 */
>> -			MX6UL_PAD_SNVS_TAMPER4__GPIO5_IO04	0x1b0b0 /* DIN1 */
>> -			MX6UL_PAD_SNVS_TAMPER1__GPIO5_IO01	0x1b0b0 /* DOUT2 */
>> -			MX6UL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x1b0b0 /* DIN2 */
>> +			MX6UL_PAD_SNVS_TAMPER5__GPIO5_IO05	0x1b0b0	/* DOUT1 */
>> +			MX6UL_PAD_SNVS_TAMPER4__GPIO5_IO04	0x1b0b0	/* DIN1 */
>> +			MX6UL_PAD_SNVS_TAMPER1__GPIO5_IO01	0x1b0b0	/* DOUT2 */
>> +			MX6UL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x1b0b0	/* DIN2 */
>>   		>;
>>   	};
>>   
>> -- 
>> 2.17.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
