Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4429E50D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 18:09:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=iWXR1UF9bZ43RpBdBDCUfnzoJur81HthlXmFBjrj7hE=; b=AXmWO4EV822y8n
	iIX8u+gTjOecEqhzmPwdqtitVNBFqYd4owIhQ9wAz9Yqbv50Vbq40oMDLVLtYK1IvBBH+cIpgq0xP
	D00wfVOBSkhJg+qer9TmGPPpln/LAwKCXHfWbqLPoVsdxJgtnrhjp66isxtO0gHu5Xp1BNIrGaQV6
	7T+4c/zvFEeiE15TaIhLrNH8fYZCbiHG/IsuAwW5Pq2eNfgB/edqF42QPGEgA2okW2tkL70ambe73
	03OscW8i7QmTLltM0LpxIo5jCFuoEPYeAcxHBSIkq+EGB8UQIkc8qGs7Vxqzxjnw6HhfQW794Y0Yj
	u+453yuc0kyCmiFl3Q0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO29g-0000eI-C4; Fri, 25 Oct 2019 16:09:36 +0000
Received: from mail-eopbgr80057.outbound.protection.outlook.com ([40.107.8.57]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO29T-0000cn-KX
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 16:09:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gIrAepS/lJMeCf3B4ZaHH8N3PZEEoyDvKmn+QDmbE104xP22cHx8XpF3t6GVLNqsrs51Bc3BzCE602ffAVIJ/zFYZ90ctycOtxZ29jLO2AW/K8SmIGcTCgXy4FFuYcvZ1ubuGveS3EdR2Z6QNXfNl4+qt4HDGzbSNzsIT4lkiBNoh1HJ2B9XKe9BmnJ8GCddsp9M4hkWRIq0b20+XYM6vkRWLHRDsSHf7CGFZ3AE8UgKQuTW5XwhOPOPC72dN7eL3lc2H2InF39N21sTp6zQTISUbi8FZisKXdxFMlvYPNj2LHGSibKiZ0EE1ocOEcz5Od68/X+0DMpbkz2JHP55jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=goAnrE6GQ9Eogdbn3/slSGBTJWAqmFRTrHYAr9RN+p4=;
 b=KEmP4UvhncIFuKNrzRUaumrJLCnsKk6DOBHGVIIN0ilX9WQunD+ccSy8ZtE9Cke4NiLbMvruenH2BPjLtlwFVN6Qer2CiosaKJ0SBWn87dgOca27eQQip15/kqhmMUafk++KPqi+pk7lYrLYN0c4l8B5dNwl73eHg7h6ZW8e0maZ0I2S+LkQ4Mheut/TjWLR2OS/RHGQ2Ca2jlnLEcspYEYA3c5slK1LmB4wdGlmIFbUvBfnHf5xOiY5+Zq7yM5HnjPrVkX2EKgfEKg7LK7aY1e6tp4Sg0FELFCvPavXn+JDmGNiIKjdhIumKU/z6POyI6vffrsdqGi0Eu4dNniWqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=goAnrE6GQ9Eogdbn3/slSGBTJWAqmFRTrHYAr9RN+p4=;
 b=mVb00AdCKkKzculSYJy90DW3/34QrPsqhLZlxj4TAE4jZXE8/LyeyCcwDETb7YMKSO1HTzuDrbLNo3QcZhlt08no8mNS6jzmOjPasDBGTXeNX4y6Zp4dkwHgsGoNtN0isiCUY4leokJYgXuf+PAB2K08io1oqIaL2lxbWUnPCTg=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB2990.eurprd04.prod.outlook.com (10.170.227.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.20; Fri, 25 Oct 2019 16:09:20 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::24fb:fb99:b1c6:ba1f]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::24fb:fb99:b1c6:ba1f%4]) with mapi id 15.20.2387.021; Fri, 25 Oct 2019
 16:09:20 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6qdl-sabreauto: Fix storm of accelerometer
 interrupts
Thread-Topic: [PATCH] ARM: dts: imx6qdl-sabreauto: Fix storm of accelerometer
 interrupts
Thread-Index: AQHVfuJGXUsswrV33025/tYOUhVYYQ==
Date: Fri, 25 Oct 2019 16:09:20 +0000
Message-ID: <VI1PR04MB7023DFD8E28412640BB02F9AEE650@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <20191009204343.9316-1-festevam@gmail.com>
 <20191025061601.GE3208@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0f13ec74-29df-4c60-d1ca-08d75965b18f
x-ms-traffictypediagnostic: VI1PR04MB2990:|VI1PR04MB2990:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB29905D5F062F509FBDE23DF3EE650@VI1PR04MB2990.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-forefront-prvs: 02015246A9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(376002)(366004)(396003)(346002)(52314003)(189003)(199004)(256004)(14444005)(55016002)(76116006)(91956017)(99286004)(110136005)(54906003)(76176011)(316002)(81156014)(71190400001)(186003)(71200400001)(229853002)(81166006)(476003)(26005)(4326008)(9686003)(8676002)(5660300002)(86362001)(66476007)(64756008)(6436002)(53546011)(33656002)(6506007)(2906002)(74316002)(14454004)(66556008)(7696005)(66946007)(102836004)(305945005)(44832011)(446003)(7736002)(6246003)(478600001)(8936002)(52536014)(25786009)(66066001)(6116002)(486006)(3846002)(66446008)(32563001)(473944003)(414714003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB2990;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xzDLux4B+Mbjd7j3eSoFNzWPZ+DuAPQqObApMm1yct+7ksHJf0PFvXlqdTz6qDnAXc6UBkC0wcT4Xo8q6veRyO0k2sl16Uw3S06RqKIoNWEfyfrt3U+poCZQzlLIV2Bmkn42ZBR5TEnw/gCPDrrdcj5wnU5eyzMRWwb58+hnPUfYRIDotO1GdSyr5GGBPLbwJPQ3I3z2Ne4Y/rcn2cRSMAxkeudMe74dB2/grO9CDThRoYYoPuZOdViktW4omfEHszAVDCQam3uMocKxeyUqjnqgJauUAMEGG+XYe+7Y0JzmRAoxGLhrdw0+zAQDEfzcuytuaedyq7dOU6ngeB9K/w8/GbDBjil40p5ZJDDds9Tx4/0LWCLRaPR0OzssKE3HXeN+u5r2Dt4S2JlA+S50fOKympUpYnz87sFvkemwBKZh+NPJZxlZgOgWvsMex6iO
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f13ec74-29df-4c60-d1ca-08d75965b18f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2019 16:09:20.0820 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lw6hkzFcGx/pokihYYqVkVhuoVaFm3Dp399axJ7uFj7nWYmqs0lBqnhZjdm28kS4flfUcEKHkUUOi16JRAfztA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB2990
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_090923_757932_3A35BAF6 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25.10.2019 09:16, Shawn Guo wrote:
> @Leonard, comment?

This worked fine for me but after a bit of digging I was able to 
reproduce by using upstream uboot:

     U-Boot 2019.10-00181-g17fd9915a4c6 (Oct 25 2019 - 17:28:28 +0300)
     ...
     0x020E0158:  00000000
     0x020E046C:  0000B0B1

versus:

     U-Boot 2019.04-00890-g6a5534d13b9e (Oct 25 2019 - 18:56:40 +0300)
     ...
     0x020E0158:  00000005
     0x020E046C:  0000B0B1

But apparently what I reproduced was due to incorrect mux? Fabio: what 
is your exact bootloader?

Anyway, as far as I understand explicitly configuring pins is preferable 
to relying on bootloader anyway.

Reviewed-By: Leonard Crestez <leonard.crestez@nxp.com>

> Shawn
> 
> On Wed, Oct 09, 2019 at 05:43:43PM -0300, Fabio Estevam wrote:
>> Since commit a211b8c55f3c ("ARM: dts: imx6qdl-sabreauto: Add sensors")
>> a storm of accelerometer interrupts is seen:
>>
>> [  114.211283] irq 260: nobody cared (try booting with the "irqpoll" option)
>> [  114.218108] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.3.4 #1
>> [  114.223960] Hardware name: Freescale i.MX6 Quad/DualLite (Device Tree)
>> [  114.230531] [<c0112858>] (unwind_backtrace) from [<c010cdc8>] (show_stack+0x10/0x14)
>> [  114.238301] [<c010cdc8>] (show_stack) from [<c0c1aa1c>] (dump_stack+0xd8/0x110)
>> [  114.245644] [<c0c1aa1c>] (dump_stack) from [<c0193594>] (__report_bad_irq+0x30/0xc0)
>> [  114.253417] [<c0193594>] (__report_bad_irq) from [<c01933ac>] (note_interrupt+0x108/0x298)
>> [  114.261707] [<c01933ac>] (note_interrupt) from [<c018ffe4>] (handle_irq_event_percpu+0x70/0x80)
>> [  114.270433] [<c018ffe4>] (handle_irq_event_percpu) from [<c019002c>] (handle_irq_event+0x38/0x5c)
>> [  114.279326] [<c019002c>] (handle_irq_event) from [<c019438c>] (handle_level_irq+0xc8/0x154)
>> [  114.287701] [<c019438c>] (handle_level_irq) from [<c018eda0>] (generic_handle_irq+0x20/0x34)
>> [  114.296166] [<c018eda0>] (generic_handle_irq) from [<c0534214>] (mxc_gpio_irq_handler+0x30/0xf0)
>> [  114.304975] [<c0534214>] (mxc_gpio_irq_handler) from [<c0534334>] (mx3_gpio_irq_handler+0x60/0xb0)
>> [  114.313955] [<c0534334>] (mx3_gpio_irq_handler) from [<c018eda0>] (generic_handle_irq+0x20/0x34)
>> [  114.322762] [<c018eda0>] (generic_handle_irq) from [<c018f3ac>] (__handle_domain_irq+0x64/0xe0)
>> [  114.331485] [<c018f3ac>] (__handle_domain_irq) from [<c05215a8>] (gic_handle_irq+0x4c/0xa8)
>> [  114.339862] [<c05215a8>] (gic_handle_irq) from [<c0101a70>] (__irq_svc+0x70/0x98)
>> [  114.347361] Exception stack(0xc1301ec0 to 0xc1301f08)
>> [  114.352435] 1ec0: 00000001 00000006 00000000 c130c340 00000001 c130f688 9785636d c13ea2e8
>> [  114.360635] 1ee0: 9784907d 0000001a eaf99d78 0000001a 00000000 c1301f10 c0182b00 c0878de4
>> [  114.368830] 1f00: 20000013 ffffffff
>> [  114.372349] [<c0101a70>] (__irq_svc) from [<c0878de4>] (cpuidle_enter_state+0x168/0x5f4)
>> [  114.380464] [<c0878de4>] (cpuidle_enter_state) from [<c08792ac>] (cpuidle_enter+0x28/0x38)
>> [  114.388751] [<c08792ac>] (cpuidle_enter) from [<c015ef9c>] (do_idle+0x224/0x2a8)
>> [  114.396168] [<c015ef9c>] (do_idle) from [<c015f3b8>] (cpu_startup_entry+0x18/0x20)
>> [  114.403765] [<c015f3b8>] (cpu_startup_entry) from [<c1200e54>] (start_kernel+0x43c/0x500)
>> [  114.411958] handlers:
>> [  114.414302] [<a01028b8>] irq_default_primary_handler threaded [<fd7a3b08>] mma8452_interrupt
>> [  114.422974] Disabling IRQ #260
>>
>> # cat /proc/interrupts
>>             CPU0       CPU1
>> ....
>> 260:     100001          0  gpio-mxc  31 Level     mma8451
>>
>> The MMA8451 interrupt triggers as low level, so the GPIO6_IO31 pin
>> needs to activate its pull up, otherwise it will stay always at low level
>> generating multiple interrupts.
>>
>> The current device tree does not configure the IOMUX for this pin, so
>> it uses whathever comes configured from the bootloader.
>>
>> The IOMUXC_SW_PAD_CTL_PAD_EIM_BCLK register value comes as 0x8000 from
>> the bootloader, which has PKE bit cleared, hence disabling the
>> pull-up.
>>
>> Instead of relying on a previous configuration from the bootloader,
>> configure the GPIO6_IO31 pin with pull-up enabled in order to fix
>> this problem.

>> Fixes: a211b8c55f3c ("ARM: dts: imx6qdl-sabreauto: Add sensors")
>> Signed-off-by: Fabio Estevam <festevam@gmail.com>
>> ---
>>   arch/arm/boot/dts/imx6qdl-sabreauto.dtsi | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
>> index f3404dd10537..cf628465cd0a 100644
>> --- a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
>> +++ b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
>> @@ -230,6 +230,8 @@
>>   			accelerometer@1c {
>>   				compatible = "fsl,mma8451";
>>   				reg = <0x1c>;
>> +				pinctrl-names = "default";
>> +				pinctrl-0 = <&pinctrl_mma8451_int>;
>>   				interrupt-parent = <&gpio6>;
>>   				interrupts = <31 IRQ_TYPE_LEVEL_LOW>;
>>   			};
>> @@ -628,6 +630,12 @@
>>   			>;
>>   		};
>>   
>> +		pinctrl_mma8451_int: mma8451intgrp {
>> +			fsl,pins = <
>> +				MX6QDL_PAD_EIM_BCLK__GPIO6_IO31		0xb0b1
>> +			>;
>> +		};
>> +
>>   		pinctrl_pwm3: pwm1grp {
>>   			fsl,pins = <
>>   				MX6QDL_PAD_SD4_DAT1__PWM3_OUT		0x1b0b1
>> -- 
>> 2.17.1
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
