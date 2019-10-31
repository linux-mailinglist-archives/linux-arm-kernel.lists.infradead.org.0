Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58609EB0E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:12:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68IEhFOHxzHGO1ZzN0nNseci+xwG8ptE+hOhqAAdudE=; b=MJP6XAl3x/ISP9
	ggaT+nUmwuzO5WoytIqfTrRyJYgNzUKsVLNCQMHCESpJENJKoujRytDJPix4eTgZ6KQ1X6s4ZOlOH
	X2m1rQC5PnW6jd/vbPrUsmA50t+8/1t7+Aic+ZcF6ldQ9VoU0iOXSNCZQwoc1cFXPLUbGwb0i2e67
	EUqwkWvK7IzbijP++eENZqzuOZkBKO3nBO7lMgb3pvuYYAFSnRtZTd2gBkRhauttda+BzlutyGHH/
	ijQaascgTrfufaibueVdgNG+UyH0MDvUm8Fw04dYOv+VjparUiyZvbMGO5EFWgDx+IB/ryWGjAsXQ
	UzpKM5Ld2odGy18n79/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAFN-0000BM-Jn; Thu, 31 Oct 2019 13:12:17 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAFA-0000AG-Kb
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:12:06 +0000
Received: from sntmail12r.snt-is.com (unknown [10.203.32.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 3B4B160CB06;
 Thu, 31 Oct 2019 14:11:58 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail12r.snt-is.com
 (10.203.32.182) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 31 Oct
 2019 14:11:57 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Thu, 31 Oct 2019 14:11:57 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 11/11] ARM: dts: imx6ul-kontron-n6310-s-43: Add missing
 includes for GPIOs and IRQs
Thread-Topic: [PATCH v2 11/11] ARM: dts: imx6ul-kontron-n6310-s-43: Add
 missing includes for GPIOs and IRQs
Thread-Index: AQHVjkv1caDmIh8k/USvzgDB9794sqd0qwcAgAABJwA=
Date: Thu, 31 Oct 2019 13:11:57 +0000
Message-ID: <83173997-c3dd-319f-35bc-503485d80131@kontron.de>
References: <20191029112655.15058-1-frieder.schrempf@kontron.de>
 <20191029112655.15058-12-frieder.schrempf@kontron.de>
 <20191031130748.GC27967@pi3>
In-Reply-To: <20191031130748.GC27967@pi3>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <C6362DCFD56BBC4DA3EA755A016B9B8F@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 3B4B160CB06.AE926
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
X-CRM114-CacheID: sfid-20191031_061205_007593_A83081E2 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
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
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31.10.19 14:07, Krzysztof Kozlowski wrote:
> On Tue, Oct 29, 2019 at 11:28:16AM +0000, Schrempf Frieder wrote:
>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>>
>> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
>> Fixes: 1ea4b76cdfde ("ARM: dts: imx6ul-kontron-n6310: Add Kontron i.MX6UL N6310 SoM and boards")
>> ---
>>   arch/arm/boot/dts/imx6ul-kontron-n6310-s-43.dts | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6310-s-43.dts b/arch/arm/boot/dts/imx6ul-kontron-n6310-s-43.dts
>> index 5bad29683cc3..295bc3138fea 100644
>> --- a/arch/arm/boot/dts/imx6ul-kontron-n6310-s-43.dts
>> +++ b/arch/arm/boot/dts/imx6ul-kontron-n6310-s-43.dts
>> @@ -7,6 +7,9 @@
>>   
>>   #include "imx6ul-kontron-n6310-s.dts"
>>   
>> +#include <dt-bindings/interrupt-controller/irq.h>
>> +#include <dt-bindings/gpio/gpio.h>
> 
> This is not needed. This includes imx6ul-kontron-n6310-s.dts, which
> includes imx6ul-kontron-n6310-som.dtsi which has proper GPIO include. It
> also polls imx6ul.dtsi which has the IRQ defines.
> 
> My comment from v1 was for a case where you have a DTSI standing on its
> own. If it does not include anything else, then it should have all
> necessary inclusions (not only GPIO but also iMX-specific pinctrl and clock).

Ok, got it. Thanks for clarifying.
This patch can be dropped then.

> 
> Best regards,
> Krzysztof
> 
> 
>> +
>>   / {
>>   	model = "Kontron N6310 S 43";
>>   	compatible = "kontron,imx6ul-n6310-s-43", "kontron,imx6ul-n6310-s",
>> -- 
>> 2.17.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
