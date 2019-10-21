Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C41DEC8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 14:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jc5kUv0A7xxaiAAFJWGqgY9ldXT5q9oo8dzZezHeV4g=; b=DoOoh0gxKNKOIA
	Te709g+IiFjWA7scx++mxb6jamU7QJsDz+FJ3pftDaFyyuo1SIbiZb30HZD4y5PzIJ2hyQjjB3Zyf
	uKBDwho1lLc0abEhwlPDiD5YfL7TGxgu6qh0pJdRQBt9YvTGytobgZyVrfsJNlYX/mkHroaajHTl1
	UCSnrO8fTEkLzTyx+IxbwXK0fZf0zLwLWVlmQXuI1y0KJJ/5PaGReMVF6+63zIuMV69YTzuwQWWGu
	oz+SVBPyofF6DC879SuhszzWQF4otaZ5C4nqP6UxQaYQqjwoCydzmiaibkJ3edEhdn+eUzKPu/2tY
	dSMzt78qNjYbSUjY246Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMX34-0003ss-Vd; Mon, 21 Oct 2019 12:44:34 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMX2u-0003s0-6n
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 12:44:26 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 846D1626D74;
 Mon, 21 Oct 2019 14:44:20 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 21 Oct
 2019 14:44:20 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Mon, 21 Oct 2019 14:44:20 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: "krzk@kernel.org" <krzk@kernel.org>
Subject: Re: [PATCH 01/10] ARM: dts: imx6ul-kontron-n6310: Move common SoM
 nodes to a separate file
Thread-Topic: [PATCH 01/10] ARM: dts: imx6ul-kontron-n6310: Move common SoM
 nodes to a separate file
Thread-Index: AQHVhDNnN9aGUH4T40yWqnEyL2tHoqdkyomAgAAmC4A=
Date: Mon, 21 Oct 2019 12:44:19 +0000
Message-ID: <89a91b79-63f9-2a2d-30aa-d4447f1cbc96@kontron.de>
References: <20191016150622.21753-1-frieder.schrempf@kontron.de>
 <20191016150622.21753-2-frieder.schrempf@kontron.de>
 <20191021102809.GA1934@pi3>
In-Reply-To: <20191021102809.GA1934@pi3>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <6BDBCE0E9AD58646A5A23F8D39BE465A@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 846D1626D74.AF304
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
X-CRM114-CacheID: sfid-20191021_054424_574160_87E5AF98 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21.10.19 12:28, krzk@kernel.org wrote:
> On Wed, Oct 16, 2019 at 03:07:19PM +0000, Schrempf Frieder wrote:
>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>>
>> The Kontron N6311 and N6411 SoMs are very similar to N6310. In
>> preparation to add support for them, we move the common nodes to a
>> separate file imx6ul-kontron-n6x1x-som-common.dtsi.
>>
>> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
>> ---
>>   .../boot/dts/imx6ul-kontron-n6310-som.dtsi    |  95 +-------------
>>   .../dts/imx6ul-kontron-n6x1x-som-common.dtsi  | 123 ++++++++++++++++++
>>   2 files changed, 124 insertions(+), 94 deletions(-)
>>   create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6x1x-som-common.dtsi
>>
>> diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6310-som.dtsi b/arch/arm/boot/dts/imx6ul-kontron-n6310-som.dtsi
>> index a896b2348dd2..47d3ce5d255f 100644
>> --- a/arch/arm/boot/dts/imx6ul-kontron-n6310-som.dtsi
>> +++ b/arch/arm/boot/dts/imx6ul-kontron-n6310-som.dtsi
>> @@ -6,7 +6,7 @@
>>    */
>>   
>>   #include "imx6ul.dtsi"
>> -#include <dt-bindings/gpio/gpio.h>
>> +#include "imx6ul-kontron-n6x1x-som-common.dtsi"
>>   
>>   / {
>>   	model = "Kontron N6310 SOM";
>> @@ -18,49 +18,7 @@
>>   	};
>>   };
>>   
>> -&ecspi2 {
>> -	cs-gpios = <&gpio4 22 GPIO_ACTIVE_HIGH>;
>> -	pinctrl-names = "default";
>> -	pinctrl-0 = <&pinctrl_ecspi2>;
>> -	status = "okay";
>> -
>> -	spi-flash@0 {
>> -		compatible = "mxicy,mx25v8035f", "jedec,spi-nor";
>> -		spi-max-frequency = <50000000>;
>> -		reg = <0>;
>> -	};
>> -};
>> -
>> -&fec1 {
>> -	pinctrl-names = "default";
>> -	pinctrl-0 = <&pinctrl_enet1 &pinctrl_enet1_mdio>;
>> -	phy-mode = "rmii";
>> -	phy-handle = <&ethphy1>;
>> -	status = "okay";
>> -
>> -	mdio {
>> -		#address-cells = <1>;
>> -		#size-cells = <0>;
>> -
>> -		ethphy1: ethernet-phy@1 {
>> -			reg = <1>;
>> -			micrel,led-mode = <0>;
>> -			clocks = <&clks IMX6UL_CLK_ENET_REF>;
>> -			clock-names = "rmii-ref";
>> -		};
>> -	};
>> -};
>> -
>> -&fec2 {
>> -	phy-mode = "rmii";
>> -	status = "disabled";
>> -};
>> -
>>   &qspi {
>> -	pinctrl-names = "default";
>> -	pinctrl-0 = <&pinctrl_qspi>;
>> -	status = "okay";
>> -
>>   	spi-flash@0 {
> 
> You left qspi and flash partitions here, while adding it later. It is
> not pure move then and some duplicated stuff remains.

Indeed, the spi-flash node is duplicated, as I forgot to remove it from 
the common include file. I will change that.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
