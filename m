Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D8115344A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 16:42:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8mz4pn1cXkyXwW+TUVw/G0HyjaEidctRyQIVTgjf0A=; b=F/WU1r0PSkyeh4
	glZAI9S/wCIOjCEyaVzCGaMRjWNfUZKQSiUTmjMlgmd9gZVjSoIwlhdMa7J/FXRIJp0hfOWdaP/C5
	E1kc/yakR/9nLEuDOY+95GuzAgVb8Gk4qL91u84sBfyozY+6Gj72pRcwnff7/1/dm2C/V87Kxgr3B
	I0C23A0dAfOpCA4dC7RRCZ7s5z44BPK5mp949xS4JWbFGbX+mPEhMhEt99cGkasEMCv5bnuteGxZU
	VRofVmNkrl/vElzGgR9rVHZ3Y9cYkgLCcidAUt1XtpZZCrAUmz58m3BTmcJNEw5z/xONhsS+fQ1+Q
	QNY4Vu1lIz7PmOFHDjlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izMoP-0002K7-JZ; Wed, 05 Feb 2020 15:41:57 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izMoG-0002Iy-2y
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 15:41:50 +0000
Received: from sntmail12r.snt-is.com (unknown [10.203.32.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id DCD5467A6FE;
 Wed,  5 Feb 2020 16:41:41 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail12r.snt-is.com
 (10.203.32.182) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Wed, 5 Feb 2020
 16:41:41 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.005; Wed, 5 Feb 2020 16:41:41 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Adam Ford <aford173@gmail.com>, Jacky Bai <ping.bai@nxp.com>, "NXP Linux
 Team" <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 5/7] arm64: dts: imx8mm: add GPC power domains
Thread-Topic: [PATCH 5/7] arm64: dts: imx8mm: add GPC power domains
Thread-Index: AQHVqxK76SDACaL8QUasrdsECo8DbaeqwvaAgAAKqICAYkD9AA==
Date: Wed, 5 Feb 2020 15:41:41 +0000
Message-ID: <db801b5e-0482-0379-c19e-5c293532c493@kontron.de>
References: <20191205021924.25188-1-aford173@gmail.com>
 <20191205021924.25188-6-aford173@gmail.com>
 <DB7PR04MB517877B39D4659568F69B813875C0@DB7PR04MB5178.eurprd04.prod.outlook.com>
 <CAHCN7xLwJvqb=Pc8oOxdRLOExjw-cDKaEmm4-bR3Yt=t+OwY6Q@mail.gmail.com>
In-Reply-To: <CAHCN7xLwJvqb=Pc8oOxdRLOExjw-cDKaEmm4-bR3Yt=t+OwY6Q@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <32680A5ECEBE5747A3268A81C8330511@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: DCD5467A6FE.A43F0
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: aford173@gmail.com, devicetree@vger.kernel.org,
 festevam@gmail.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com, peng.fan@nxp.com,
 ping.bai@nxp.com, robh+dt@kernel.org, s.hauer@pengutronix.de,
 shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_074148_457745_1483D85D 
X-CRM114-Status: GOOD (  21.44  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.68 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 05.12.19 04:15, Adam Ford wrote:
> On Wed, Dec 4, 2019 at 8:37 PM Jacky Bai <ping.bai@nxp.com> wrote:
>>
>>> -----Original Message-----
>>> From: Adam Ford <aford173@gmail.com>
>>> Sent: Thursday, December 5, 2019 10:19 AM
>>> To: linux-arm-kernel@lists.infradead.org
>>> Cc: Adam Ford <aford173@gmail.com>; Rob Herring <robh+dt@kernel.org>;
>>> Mark Rutland <mark.rutland@arm.com>; Shawn Guo
>>> <shawnguo@kernel.org>; Sascha Hauer <s.hauer@pengutronix.de>;
>>> Pengutronix Kernel Team <kernel@pengutronix.de>; Fabio Estevam
>>> <festevam@gmail.com>; dl-linux-imx <linux-imx@nxp.com>;
>>> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org
>>> Subject: [PATCH 5/7] arm64: dts: imx8mm: add GPC power domains
>>>
>>> There is a power domain controller on the i.XM8M Mini used for handling
>>> interrupts and controlling certain peripherals like USB OTG and PCIe, which
>>> are currently unavailable.
>>>
>>> This patch enables support the controller itself to the help facilitate enabling
>>> additional peripherals.
>>>
>>> Signed-off-by: Adam Ford <aford173@gmail.com>
>>> ---
>>>   arch/arm64/boot/dts/freescale/imx8mm.dtsi | 82
>>> ++++++++++++++++++++++-
>>>   1 file changed, 81 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
>>> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
>>> index 23c8fad7932b..d05c5b617a4d 100644
>>> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
>>> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
>>> @@ -4,6 +4,7 @@
>>>    */
>>>
>>>   #include <dt-bindings/clock/imx8mm-clock.h>
>>> +#include <dt-bindings/power/imx8m-power.h>
>>>   #include <dt-bindings/gpio/gpio.h>
>>>   #include <dt-bindings/input/input.h>
>>>   #include <dt-bindings/interrupt-controller/arm-gic.h>
>>> @@ -13,7 +14,7 @@
>>>
>>>   / {
>>>        compatible = "fsl,imx8mm";
>>> -     interrupt-parent = <&gic>;
>>> +     interrupt-parent = <&gpc>;
>>
>> NACK, for imx8mm, imx8mn & future i.MX8M SOC, we don't treat GPC as interrupt controller in linux anymore.
>> Above change will break the low power mode support(suspend/resume)
> 
> What makes it different than the i.MX8MQ?  The I basically copied this
> from the i.MX8MQ and updated the bit locations and tried to leave
> everything else the same.
> 
> I'm OK with removing the interrupt controller stuff, but if that's
> required, I'd like to understand why it's still in the i.MX8Q.

I would also like to know how NXP plans to implement things like GPC in 
mainline. I currently use a tree [1] that doesn't use any power domain 
driver but USB, LCDIF and MIPI-DSI are working fine.
For this I ported some patches from the imx_5.4.0_8dxlphantom_er tree in 
the NXP repository [2] and added a few small hacks to enable missing 
clocks, etc.

Is there some roadmap for the upstream support of the different drivers 
and features of the i.MX8MM?

Thanks,
Frieder

[1] https://git.kontron-electronics.de/linux/linux/commits/v5.4-ktn
[2] 
https://source.codeaurora.org/external/imx/linux-imx/log/?h=imx_5.4.0_8dxlphantom_er

> 
> adam
>>
>> BR
>> Jacky Bai
>>
>>>        #address-cells = <2>;
>>>        #size-cells = <2>;
>>>
>>> @@ -495,6 +496,85 @@
>>>                                interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
>>>                                #reset-cells = <1>;
>>>                        };
>>> +
>>> +                     gpc: gpc@303a0000 {
>>> +                             compatible = "fsl,imx8mm-gpc";
>>> +                             reg = <0x303a0000 0x10000>;
>>> +                             interrupt-parent = <&gic>;
>>> +                             interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
>>> +                             interrupt-controller;
>>> +                             #interrupt-cells = <3>;
>>> +
>>> +                             pgc {
>>> +                                     #address-cells = <1>;
>>> +                                     #size-cells = <0>;
>>> +
>>> +                                     pgc_mipi: power-domain@0 {
>>> +                                             #power-domain-cells = <0>;
>>> +                                             reg = <IMX8MM_POWER_DOMAIN_MIPI>;
>>> +                                     };
>>> +
>>> +                                     pgc_pcie: power-domain@1 {
>>> +                                             #power-domain-cells = <0>;
>>> +                                             reg = <IMX8MM_POWER_DOMAIN_PCIE>;
>>> +                                     };
>>> +
>>> +                                     pgc_otg1: power-domain@2 {
>>> +                                             #power-domain-cells = <0>;
>>> +                                             reg =
>>> <IMX8MM_POWER_DOMAIN_USB_OTG1>;
>>> +                                     };
>>> +
>>> +                                     pgc_otg2: power-domain@3 {
>>> +                                             #power-domain-cells = <0>;
>>> +                                             reg =
>>> <IMX8MM_POWER_DOMAIN_USB_OTG2>;
>>> +                                     };
>>> +
>>> +                                     pgc_ddr1: power-domain@4 {
>>> +                                             #power-domain-cells = <0>;
>>> +                                             reg = <IMX8MM_POWER_DOMAIN_DDR1>;
>>> +                                     };
>>> +
>>> +                                     pgc_gpu2d: power-domain@5 {
>>> +                                             #power-domain-cells = <0>;
>>> +                                             reg = <IMX8MM_POWER_DOMAIN_GPU2D>;
>>> +                                     };
>>> +
>>> +                                     pgc_gpu: power-domain@6 {
>>> +                                             #power-domain-cells = <0>;
>>> +                                             reg = <IMX8MM_POWER_DOMAIN_GPU>;
>>> +                                     };
>>> +
>>> +                                     pgc_vpu: power-domain@7 {
>>> +                                             #power-domain-cells = <0>;
>>> +                                             reg = <IMX8MM_POWER_DOMAIN_VPU>;
>>> +                                     };
>>> +
>>> +                                     pgc_gpu3d: power-domain@8 {
>>> +                                             #power-domain-cells = <0>;
>>> +                                             reg = <IMX8MM_POWER_DOMAIN_GPU3D>;
>>> +                                     };
>>> +
>>> +                                     pgc_disp: power-domain@9 {
>>> +                                             #power-domain-cells = <0>;
>>> +                                             reg = <IMX8MM_POWER_DOMAIN_DISP>;
>>> +                                     };
>>> +
>>> +                                     pgc_vpu_g1: power-domain@a {
>>> +                                             #power-domain-cells = <0>;
>>> +                                             reg = <IMX8MM_POWER_VPU_G1>;
>>> +                                     };
>>> +
>>> +                                     pgc_vpu_g2: power-domain@b {
>>> +                                             #power-domain-cells = <0>;
>>> +                                             reg = <IMX8MM_POWER_VPU_G2>;
>>> +                                     };
>>> +
>>> +                                     pgc_vpu_h1: power-domain@c {
>>> +                                             #power-domain-cells = <0>;
>>> +                                             reg = <IMX8MM_POWER_VPU_H1>;
>>> +                                     };
>>> +                             };
>>> +                     };
>>>                };
>>>
>>>                aips2: bus@30400000 {
>>> --
>>> 2.20.1
>>
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
