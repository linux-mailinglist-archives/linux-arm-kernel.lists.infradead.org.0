Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B55A3CDF89
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 12:43:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ULYUfkS7hiHo/Qhs+z7q3t98ILTBrMdH5YCfiYe95O8=; b=BcH8x85t0lan8AKxzAZMDPXpz
	QBm6LyVZn5fGwjFWJMWm2evda1Op86ZZ/tmIoAqKWT6GDhZYIzvSxtpbEEwI7PdZHvu4A52XYQbhe
	1MYO3QwnttuAvBTbtz/bM3rHP+aGrL884DEeitUCT7jNPx8kBMBiyQ1kjoOzglq1QEiQWhRTdnFL1
	XprFOLx0uY+LwTI9Hiz1xFS3AaRGzmdVHfV5EkQhZzb8zck7UT6hmgU5bojaAMiZJ1k+HULY4ihte
	mz/GVZ0NlCLrOtRJPl1+Oq0bLxWlcX7DkUaUJ2svgKBQxV32VT6h3TTUrTZ66ghOBsG9Kq2GB4mG2
	dalL+f7Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHQTk-0004Eh-SS; Mon, 07 Oct 2019 10:43:00 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHQTd-0004DB-8N
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 10:42:55 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 46mxrl2qpYz1rpwC;
 Mon,  7 Oct 2019 12:42:47 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 46mxrl1c40z1qqkC;
 Mon,  7 Oct 2019 12:42:47 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 1rb2Z0aqgA5u; Mon,  7 Oct 2019 12:42:45 +0200 (CEST)
X-Auth-Info: I9YYeUNrKjVrdUUDAQTC/Y0aiMCFlFUVIzRUFRXKK/0=
Received: from antares.denx.de (unknown [62.91.23.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon,  7 Oct 2019 12:42:45 +0200 (CEST)
Subject: Re: [PATCH] ARM: dts: imx6: Extend support for Phytec phycore
 i.MX6ULL SoM
To: Shawn Guo <shawnguo@kernel.org>
References: <20190912202928.946200-1-pn@denx.de> <20191006082349.GA7150@dragon>
From: Parthiban Nallathambi <pn@denx.de>
Message-ID: <3c92e681-3b7b-fedf-48bc-cfb2080c3f12@denx.de>
Date: Mon, 7 Oct 2019 12:42:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191006082349.GA7150@dragon>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_034253_597391_42EB3846 
X-CRM114-Status: GOOD (  23.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, pn@denx.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/6/19 10:23 AM, Shawn Guo wrote:
> On Thu, Sep 12, 2019 at 10:29:28PM +0200, Parthiban Nallathambi wrote:
>> Extend Phycore i.MX6UL SoM for i.MX6ULL with on board eMMC. Phycore
>> i.MX6ULL is deployed with same carrier board Segin as the pins are
>> compatible with UL version.
>>
>> Signed-off-by: Parthiban Nallathambi <pn@denx.de>
> 
> What is the base that the patch was generated from?  It doesn't apply to
> my tree.

It was based on prior to 5.4 merge window. But there are series of patch
which renamed the filename and the changes are already part of mainline
from Phytec.

Please ignore this patch.

Thanks,
Parthiban N

> 
> Shawn
> 
>> ---
>>   arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi   | 26 +++++++++++++++++--
>>   .../dts/imx6ul-phytec-phyboard-segin-full.dts |  5 ++++
>>   arch/arm/boot/dts/imx6ull-phytec-pcl063.dtsi  | 24 +++++++++++++++++
>>   3 files changed, 53 insertions(+), 2 deletions(-)
>>   create mode 100644 arch/arm/boot/dts/imx6ull-phytec-pcl063.dtsi
>>
>> diff --git a/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi b/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi
>> index fc2997449b49..822a178ce438 100644
>> --- a/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi
>> +++ b/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi
>> @@ -7,7 +7,6 @@
>>   #include <dt-bindings/gpio/gpio.h>
>>   #include <dt-bindings/interrupt-controller/irq.h>
>>   #include <dt-bindings/pwm/pwm.h>
>> -#include "imx6ul.dtsi"
>>   
>>   / {
>>   	model = "Phytec phyCORE i.MX6 UltraLite";
>> @@ -65,7 +64,7 @@
>>   	pinctrl-names = "default";
>>   	pinctrl-0 = <&pinctrl_gpmi_nand>;
>>   	nand-on-flash-bbt;
>> -	status = "okay";
>> +	status = "disabled";
>>   };
>>   
>>   &i2c1 {
>> @@ -90,6 +89,15 @@
>>   	status = "okay";
>>   };
>>   
>> +&usdhc2 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pinctrl_usdhc2>;
>> +	bus-width = <8>;
>> +	no-1-8-v;
>> +	non-removable;
>> +	status = "disabled";
>> +};
>> +
>>   &iomuxc {
>>   	pinctrl_enet1: enet1grp {
>>   		fsl,pins = <
>> @@ -145,4 +153,18 @@
>>   		>;
>>   	};
>>   
>> +	pinctrl_usdhc2: usdhc2grp {
>> +		fsl,pins = <
>> +			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x170f9
>> +			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x100f9
>> +			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x170f9
>> +			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x170f9
>> +			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x170f9
>> +			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x170f9
>> +			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x170f9
>> +			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x170f9
>> +			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x170f9
>> +			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x170f9
>> +		>;
>> +	};
>>   };
>> diff --git a/arch/arm/boot/dts/imx6ul-phytec-phyboard-segin-full.dts b/arch/arm/boot/dts/imx6ul-phytec-phyboard-segin-full.dts
>> index b6a1407a9d44..76f2447f2657 100644
>> --- a/arch/arm/boot/dts/imx6ul-phytec-phyboard-segin-full.dts
>> +++ b/arch/arm/boot/dts/imx6ul-phytec-phyboard-segin-full.dts
>> @@ -5,6 +5,7 @@
>>    */
>>   
>>   /dts-v1/;
>> +#include "imx6ul.dtsi"
>>   #include "imx6ul-phytec-pcl063.dtsi"
>>   #include "imx6ul-phytec-phyboard-segin.dtsi"
>>   #include "imx6ul-phytec-peb-eval-01.dtsi"
>> @@ -37,6 +38,10 @@
>>   	status = "okay";
>>   };
>>   
>> +&gpmi {
>> +	status = "okay";
>> +};
>> +
>>   &i2c_rtc {
>>   	status = "okay";
>>   };
>> diff --git a/arch/arm/boot/dts/imx6ull-phytec-pcl063.dtsi b/arch/arm/boot/dts/imx6ull-phytec-pcl063.dtsi
>> new file mode 100644
>> index 000000000000..3f749d9f09a5
>> --- /dev/null
>> +++ b/arch/arm/boot/dts/imx6ull-phytec-pcl063.dtsi
>> @@ -0,0 +1,24 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (C) 2018 PHYTEC Messtechnik GmbH
>> + * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
>> + */
>> +
>> +#include "imx6ul-phytec-pcl063.dtsi"
>> +
>> +/ {
>> +	model = "PHYTEC phyCORE-i.MX 6ULL";
>> +	compatible = "phytec,imx6ull-pcl063", "fsl,imx6ull";
>> +};
>> +
>> +&iomuxc {
>> +	/delete-node/ gpioledssomgrp;
>> +};
>> +
>> +&iomuxc_snvs {
>> +	pinctrl_gpioleds_som: gpioledssomgrp {
>> +		fsl,pins = <
>> +			MX6ULL_PAD_SNVS_TAMPER4__GPIO5_IO04	0x0b0b0
>> +		>;
>> +	};
>> +};
>> -- 
>> 2.21.0
>>
> 

-- 
Thanks,
Parthiban N

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-22 Fax: (+49)-8142-66989-80 Email: pn@denx.de

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
