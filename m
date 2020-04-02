Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 942C219BEEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 11:53:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=UQc4PzkksOZ5uOm4JVyeYLPQZTlFZCRtQN+u47p/d4M=; b=A6QsFxLGHulMcH
	QVggykrv5T9mr3ZSETAD5OxQTMd3KekdejX5c8b/JoTp5EiD2mEIfSkg28wDz/C6w8Xr5Zv/jKwpm
	te53cfN8ERDqjAbVWvT0Swfb1US6DnPZVEfRAF/uThHTp5e3EiyvftcwHIlt3nXzAVSblAP8EWefM
	Dc5cnTHncxJKZA/4Ru3HQJhuT7b6q1DK10vrv2shWSHOvxF6JdpsfQzYVRXDQIHARDG6yQvu1LgQD
	FYQOqgasHSS+AFZfFSEfseb36s6+lU+frM3pMsXRDYTCHvkpX6htFPyBBYoWMWJbxiQz2FKje1RAF
	nnVrZlFeNq4XaBx8+acw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJwXP-0000RJ-9D; Thu, 02 Apr 2020 09:53:27 +0000
Received: from mail-am6eur05on2047.outbound.protection.outlook.com
 ([40.107.22.47] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJwXH-0000QH-99
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 09:53:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hNrBLs/hg9VRPrRLzl9eMdihVILc4kedCbNIIDtA1gy0nIZeMu0pXg9hSDrAVej6GJU0xIJ0hY4NYjusD7RNHskkYk/m25Y3cAy5SmGczfGxQWMSvVzyPPks4Pi7HcuAPI+oWmkF45TaPnd8ktWcZphjVhALAOIjJmVTRlYJVbyJPP2DhyVGIvLZ0EfC8Dou49tU5MKWZtgJ/Eigfa9oZuwg/OAgQ3phG0S1wE1cYhAC+pKwNJX37b1C5n58G1O2ZNsrMLa7o84sCvEYHqoUuq1jwKdhTMeBU5WkGepdI4nU3YTUyF0xcVXDaBZrCnhbVWJvP05ruaIiVDJdd6qpmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SRkQ1+B1Y3bfz3dyBTysi5xr5TiHZMt/iYsfnimckzs=;
 b=T2gQCZ3MdfeB6oiIR759shbjW6hWtE8OoP22Kkevg9B5MeU9beTs/0lfhVLzsQHVWLCW7LvvUWuJCEsUNhHV1fX6RZl+CBIKCETlFt0zwH1jw7+b44M0tFiR0n+qYUD+gX/UCB/jF1k/2SFfkQWd2O7w/aE0SvvAo6tEPvUqiKdzWKaDTMRUQvWi0WMIZ4uQNSOIG41snGwGAjlhh1K8vmpyH2xGVeCqoZAld1xDnXd8V6NKeDn/LJAUp8KP7+xK+9Wln9p2koMBLgJOvJ7vzD8cbDR1/XYC5fZ3ZCJYLLvzwoMBLBC7mATndis39IUJk8+0jOoxqOurIXIroRmR4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SRkQ1+B1Y3bfz3dyBTysi5xr5TiHZMt/iYsfnimckzs=;
 b=IRnHinPiLlVSI2nIXfi2kuKuZ6uR23MmtEbIX9tFCGQQnixKlcuooKm74r1RwfRIaHCUNv2mXFcrVraOI1Ji1cT6S7hk2BJ+MeuDeUKCylRTRlrz5XRc0rvrJCfQmnxvsxCCtFbaVCSHzM2zJ6zI78FUr/vty/eVQzkPByUvC/Q=
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com (52.133.244.87) by
 VI1PR04MB6208.eurprd04.prod.outlook.com (20.179.24.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.19; Thu, 2 Apr 2020 09:53:15 +0000
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200]) by VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200%2]) with mapi id 15.20.2878.016; Thu, 2 Apr 2020
 09:53:15 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Martin Kepplinger <martink@posteo.de>
Subject: Re: [PATCH 2/8] PM / devfreq: Add generic imx bus scaling driver
Thread-Topic: [PATCH 2/8] PM / devfreq: Add generic imx bus scaling driver
Thread-Index: AQHWAxSPVPtoe31rEECA7ZPaKWog5A==
Date: Thu, 2 Apr 2020 09:53:15 +0000
Message-ID: <VI1PR04MB69417B0BC486AE67957522ADEEC60@VI1PR04MB6941.eurprd04.prod.outlook.com>
References: <cover.1585188174.git.leonard.crestez@nxp.com>
 <CGME20200326021637epcas1p26d84c256cf05a97ae1c90bb16ea6fa5d@epcas1p2.samsung.com>
 <e32290a36b31fbe922cc8ed48c33e89a5eb08804.1585188174.git.leonard.crestez@nxp.com>
 <781911a0-6139-8e41-cd96-da40fad685fc@samsung.com>
 <VI1PR04MB694183137034565F350E8587EEC90@VI1PR04MB6941.eurprd04.prod.outlook.com>
 <8b1623d9-fb71-836f-776e-2dffdbcc27b3@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [95.76.3.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bddd6ff7-54d2-416e-ad62-08d7d6eba9ef
x-ms-traffictypediagnostic: VI1PR04MB6208:|VI1PR04MB6208:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6208E9A4C27CC6BD91B05D19EEC60@VI1PR04MB6208.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0361212EA8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB6941.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(396003)(39860400002)(136003)(316002)(55016002)(6506007)(9686003)(478600001)(8936002)(53546011)(2906002)(81166006)(76116006)(186003)(110136005)(7416002)(86362001)(5660300002)(54906003)(45080400002)(7696005)(966005)(8676002)(81156014)(26005)(66476007)(66946007)(4326008)(64756008)(33656002)(66556008)(44832011)(52536014)(66574012)(71200400001)(66446008)(41533002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3Qci88OW3j7HGXo37Z+decoHQBFXpUIP3V2ZSBhCqJHlOuWMcNjz9nVV8+8xF2l64lJLjNYNt8NKI1ehEwVRAeBLHSKOHeaaDKmaL8FaLVNjS9TV0f9tSBqKN1BJg9l7EADceHNGvnBXKiTAGQete0hO12tqSKff1EXblhUFFiMkxQTKSfnZ22IpMUaDKSie+vBnTkVaKfoP2RnLILYNeOFg5HgYfAANPwU2AVhliedECLLzNkowOLApg04+8jIDyYGeZdZavL8CpROUTYml0oOpEPm6BKiDLvtJ1uIqRucKngSy6RmIMcT5gkp+6sDpt7xhAjErgsHuO9VAotdwjNjkeo2EOglPwYqAMP6rbLwV3LRbjXVJpxtUk9dIqK15BbtRBTcE27f+Vd3ZXysPkQzeKlWTMaFoSsAP8Fi5d+KlUp/Fzop8Ke3dkuUuTkQ2+i8RIjatqfx81VBnZPPsbQubGGG1tCugklS8UZXr2m7n6IQdq0GtmeVFd9vDJAKsC5A05jMNEldSsQBG5sbDGqvjM7TSGao+671KYj6BzH1eYRF8pHvJP2mxFlmRh6Po
x-ms-exchange-antispam-messagedata: p7ykiJ8i2ym7tTYtwDQQ/8G46J3Bj8gZcgNNh2zPRgQYtVmp4oftQtxPTtlcHyUfIujKqR32fxbTCmbNBSloJ2zYJKWwEfSDBnTh7DueKlQE5NrLlr4+eXvXlrhb7OGGUfo4XkTro3BMIuTalRRd2Q==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bddd6ff7-54d2-416e-ad62-08d7d6eba9ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2020 09:53:15.1914 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zTdMr+tiIx4i5kZuIp+1vPIC1DORZtrO8/ontk3UfnQS2HzgqAhCgZotegZA+jIeO+Dh41AHVDlGrL6D8EBe5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6208
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_025319_582706_C02BB20D 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.47 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [95.76.3.222 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.47 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-02 1:48 AM, Chanwoo Choi wrote:
> On 4/1/20 11:20 PM, Leonard Crestez wrote:
>> On 2020-04-01 1:55 AM, Chanwoo Choi wrote:
>>> Hi,
>>>
>>> Looks good to me. I added the comments.
>>> But, it need to add the dt binding documentation for this device.
>>
>> DT bindings were included:
>>
>> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fpatc=
hwork.kernel.org%2Fpatch%2F11458981%2F&amp;data=3D02%7C01%7Cleonard.crestez=
%40nxp.com%7C7381d117a4d1468cd2c608d7d68ecfac%7C686ea1d3bc2b4c6fa92cd99c5c3=
01635%7C0%7C0%7C637213781167514099&amp;sdata=3DQu8x14cXnuxlwOT2SlUOf%2FLgCV=
WbnJRKA4TBjMIWQeA%3D&amp;reserved=3D0
> =

> The dt-binding document for this driver is required under
> Documentation/devicetree/binding/devfreq.

Bindings for imx8m-ddrc were at one point posted for =

devicetree/bindings/devfreq but Rob Herring suggested to move them under =

"memory-controller" instead and I expect same logic makes sense here. =

Link to previous discussion:

https://patchwork.kernel.org/patch/11221919/

DT bindings should try to describe "hardware" rather than "drivers" and =

an "interconnect" is a class of hardware while "devfreq" isn't.

Not only that but the main noc has properties parsed by interconnect driver.

> It is difficult to catch where is the dt-binding document
> for this driver for who don't know the detailed history
> of this driver. I don't said that add the duplicate documentation
> But, at least the some document have to point out the reference.

What I usually do to find information about a device is grep for the =

compat string in the entire tree.

>>> The old email of Artur =A6wigo=F1 is not used. On next time,
>>> use following the new email address Because when I reply the mail,
>>> always show the fail message from thunderbird due to the Artur's old em=
ail.
>>> <a.swigon@partnet.samsung.com> -> <a.swigon@samsung.com>
>>
>> Yeah, I received multiple bounces because of this.
>>
>>> On 3/26/20 11:16 AM, Leonard Crestez wrote:
>>>> Add initial support for dynamic frequency switching on pieces of the i=
mx
>>>> interconnect fabric.
>>>>
>>>> All this driver does is set a clk rate based on an opp table, it does
>>>> not map register areas.
>>>>
>>>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>>>> ---
>>>>    drivers/devfreq/Kconfig   |   9 +++
>>>>    drivers/devfreq/Makefile  |   1 +
>>>>    drivers/devfreq/imx-bus.c | 142 +++++++++++++++++++++++++++++++++++=
+++
>>>>    3 files changed, 152 insertions(+)
>>>>    create mode 100644 drivers/devfreq/imx-bus.c
>>>>
>>>> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
>>>> index 0b1df12e0f21..44d26192ddc4 100644
>>>> --- a/drivers/devfreq/Kconfig
>>>> +++ b/drivers/devfreq/Kconfig
>>>> @@ -99,10 +99,19 @@ config ARM_IMX8M_DDRC_DEVFREQ
>>>>    	select DEVFREQ_GOV_USERSPACE
>>>>    	help
>>>>    	  This adds the DEVFREQ driver for the i.MX8M DDR Controller. It a=
llows
>>>>    	  adjusting DRAM frequency.
>>>>    =

>>>> +config ARM_IMX_BUS_DEVFREQ
>>>> +	tristate "i.MX Generic Bus DEVFREQ Driver"
>>>> +	depends on ARCH_MXC || COMPILE_TEST
>>>> +	select DEVFREQ_GOV_PASSIVE
>>>> +	select DEVFREQ_GOV_USERSPACE
>>>
>>> Maybe, you would update it by using passive governor?
>>> But, in this version, it doesn't handle the any passive governor.
>>
>> dropped
>>
>>>> +	help
>>>> +	  This adds the generic DEVFREQ driver for i.MX interconnects. It
>>>> +	  allows adjusting NIC/NOC frequency.
>>>> +
>>>>    config ARM_TEGRA_DEVFREQ
>>>>    	tristate "NVIDIA Tegra30/114/124/210 DEVFREQ Driver"
>>>>    	depends on ARCH_TEGRA_3x_SOC || ARCH_TEGRA_114_SOC || \
>>>>    		ARCH_TEGRA_132_SOC || ARCH_TEGRA_124_SOC || \
>>>>    		ARCH_TEGRA_210_SOC || \
>>>> diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
>>>> index 3eb4d5e6635c..3ca1ad0ecb97 100644
>>>> --- a/drivers/devfreq/Makefile
>>>> +++ b/drivers/devfreq/Makefile
>>>> @@ -7,10 +7,11 @@ obj-$(CONFIG_DEVFREQ_GOV_POWERSAVE)	+=3D governor_po=
wersave.o
>>>>    obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+=3D governor_userspace.o
>>>>    obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+=3D governor_passive.o
>>>>    =

>>>>    # DEVFREQ Drivers
>>>>    obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+=3D exynos-bus.o
>>>> +obj-$(CONFIG_ARM_IMX_BUS_DEVFREQ)	+=3D imx-bus.o
>>>
>>> The ARM_IMX_BUS_DEVFREQ config is under ARM_IMX8M_DDRC_DEVFREQ
>>> and imx-bus.o is over imx8m-ddrc.o. Need to edit the sequence.
>>
>> Reordered kconfig to match. 8M_DDRC sorts before _BUS alphabetically but
>> it's pettier this way, and matches tegra.
>>
>>>>    obj-$(CONFIG_ARM_IMX8M_DDRC_DEVFREQ)	+=3D imx8m-ddrc.o
>>>>    obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+=3D rk3399_dmc.o
>>>>    obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+=3D tegra30-devfreq.o
>>>>    obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+=3D tegra20-devfreq.o
>>>>    =

>>>> diff --git a/drivers/devfreq/imx-bus.c b/drivers/devfreq/imx-bus.c
>>>> new file mode 100644
>>>> index 000000000000..285e0f1ae6b1
>>>> --- /dev/null
>>>> +++ b/drivers/devfreq/imx-bus.c
>>>> @@ -0,0 +1,142 @@
>>>> +// SPDX-License-Identifier: GPL-2.0
>>>> +/*
>>>> + * Copyright 2019 NXP
>>>> + */
>>>> +
>>>> +#include <linux/clk.h>
>>>> +#include <linux/devfreq.h>
>>>> +#include <linux/device.h>
>>>> +#include <linux/module.h>
>>>> +#include <linux/of_device.h>
>>>> +#include <linux/pm_opp.h>
>>>> +#include <linux/platform_device.h>
>>>> +#include <linux/slab.h>
>>>> +
>>>> +struct imx_bus {
>>>> +	struct devfreq_dev_profile profile;
>>>> +	struct devfreq *devfreq;
>>>> +	struct clk *clk;
>>>> +	struct devfreq_passive_data passive_data;
>>>
>>> This patch doesn't touch the passive_data.
>>
>> dropped
>>
>>>> +};
>>>> +
>>>> +static int imx_bus_target(struct device *dev,
>>>> +		unsigned long *freq, u32 flags)
>>>> +{
>>>> +	struct imx_bus *priv =3D dev_get_drvdata(dev);
>>>> +	struct dev_pm_opp *new_opp;
>>>> +	unsigned long new_freq;
>>>> +	int ret;
>>>> +
>>>> +	new_opp =3D devfreq_recommended_opp(dev, freq, flags);
>>>> +	if (IS_ERR(new_opp)) {
>>>> +		ret =3D PTR_ERR(new_opp);
>>>> +		dev_err(dev, "failed to get recommended opp: %d\n", ret);
>>>> +		return ret;
>>>> +	}
>>>> +	new_freq =3D dev_pm_opp_get_freq(new_opp);
>>>
>>> It doesn't need. Because the new frequency is stored to 'freq'
>>> by calling devfreq_recommended_opp().
>>
>> fixed
>>
>>>> +	dev_pm_opp_put(new_opp);
>>>> +
>>>> +	return clk_set_rate(priv->clk, new_freq);
>>>
>>> nitpick. you can use dev_pm_opp_set_rate(). But, I'm not forcing to use=
 it.
>>
>> Switched to dev_pm_opp_set_rate.
>>
>> It might be interesting to add regulators control later, on some chips
>> the main NOC can run at different voltages.
>>
>>>
>>>> +}
>>>> +
>>>> +static int imx_bus_get_cur_freq(struct device *dev, unsigned long *fr=
eq)
>>>> +{
>>>> +	struct imx_bus *priv =3D dev_get_drvdata(dev);
>>>> +
>>>> +	*freq =3D clk_get_rate(priv->clk);
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> +static int imx_bus_get_dev_status(struct device *dev,
>>>> +		struct devfreq_dev_status *stat)
>>>> +{
>>>> +	struct imx_bus *priv =3D dev_get_drvdata(dev);
>>>> +
>>>> +	stat->busy_time =3D 0;
>>>> +	stat->total_time =3D 0;
>>>> +	stat->current_frequency =3D clk_get_rate(priv->clk);
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> +static void imx_bus_exit(struct device *dev)
>>>> +{
>>>> +	dev_pm_opp_of_remove_table(dev);
>>>> +}
>>>> +
>>>> +static int imx_bus_probe(struct platform_device *pdev)
>>>> +{
>>>> +	struct device *dev =3D &pdev->dev;
>>>> +	struct imx_bus *priv;
>>>> +	const char *gov =3D DEVFREQ_GOV_USERSPACE;
>>>> +	int ret;
>>>> +
>>>> +	priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>>>> +	if (!priv)
>>>> +		return -ENOMEM;
>>>> +
>>>> +	/*
>>>> +	 * Fetch the clock to adjust but don't explictly enable.
>>>
>>> Need to fix typo.
>>> s/explictly/explicitly
>>
>> fixed
>>
>>>> +	 *
>>>> +	 * For imx bus clock clk_set_rate is safe no matter if the clock is =
on
>>>> +	 * or off and some peripheral side-buses might be off unless enabled=
 by
>>>> +	 * drivers for devices on those specific buses.
>>>> +	 *
>>>> +	 * Rate adjustment on a disabled bus clock just takes effect later.
>>>> +	 */
>>>> +	priv->clk =3D devm_clk_get(dev, NULL);
>>>> +	if (IS_ERR(priv->clk)) {
>>>> +		ret =3D PTR_ERR(priv->clk);
>>>> +		dev_err(dev, "failed to fetch clk: %d\n", ret);
>>>> +		return ret;
>>>> +	}
>>>> +	platform_set_drvdata(pdev, priv);
>>>> +
>>>> +	ret =3D dev_pm_opp_of_add_table(dev);
>>>> +	if (ret < 0) {
>>>> +		dev_err(dev, "failed to get OPP table\n");
>>>> +		return ret;
>>>> +	}
>>>> +
>>>> +	priv->profile.polling_ms =3D 1000;
>>>> +	priv->profile.target =3D imx_bus_target;
>>>> +	priv->profile.get_dev_status =3D imx_bus_get_dev_status;
>>>> +	priv->profile.exit =3D imx_bus_exit;
>>>> +	priv->profile.get_cur_freq =3D imx_bus_get_cur_freq;
>>>> +	priv->profile.initial_freq =3D clk_get_rate(priv->clk);
>>>> +
>>>> +	priv->devfreq =3D devm_devfreq_add_device(dev, &priv->profile,
>>>> +						gov, NULL);
>>>> +	if (IS_ERR(priv->devfreq)) {
>>>> +		ret =3D PTR_ERR(priv->devfreq);
>>>> +		dev_err(dev, "failed to add devfreq device: %d\n", ret);
>>>> +		goto err;
>>>> +	}
>>>> +
>>>> +	return 0;
>>>> +
>>>> +err:
>>>> +	dev_pm_opp_of_remove_table(dev);
>>>> +	return ret;
>>>> +}
>>>> +
>>>> +static const struct of_device_id imx_bus_of_match[] =3D {
>>>> +	{ .compatible =3D "fsl,imx8m-noc", },
>>>> +	{ .compatible =3D "fsl,imx8m-nic", },
>>>> +	{ /* sentinel */ },
>>>> +};
>>>> +MODULE_DEVICE_TABLE(of, imx_bus_of_match);
>>>> +
>>>> +static struct platform_driver imx_bus_platdrv =3D {
>>>> +	.probe		=3D imx_bus_probe,
>>>> +	.driver =3D {
>>>> +		.name	=3D "imx-bus-devfreq",
>>>> +		.of_match_table =3D of_match_ptr(imx_bus_of_match),
>>>> +	},
>>>> +};
>>>> +module_platform_driver(imx_bus_platdrv);
>>>> +
>>>> +MODULE_DESCRIPTION("Generic i.MX bus frequency scaling driver");
>>>> +MODULE_AUTHOR("Leonard Crestez <leonard.crestez@nxp.com>");
>>>> +MODULE_LICENSE("GPL v2");
>>>>
>>>
>>>
>>
>>
>>
>>
> =

> =



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
