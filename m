Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BE519ADB2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 16:21:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=zfavLq0KaMFsW3eeq2NGe0DTQCrhEZCnox3LrL5eqKg=; b=XiAhJR42n2qzsW
	kNZvh1CIUv/lkQ3pwDppXNnZQ0rTt1e2Y2cVqqSDqPVAqf99GcIZeE5vlgEYTVLHC/154EzVYHMtM
	1DbPLa3UhRW2NVUdTYyYDRRrJKSVGPSuDb2MMS0WjlMfsJMzuhf6FRPGqn01kWwF5l4jMVQXfeg/l
	YkKVAtWlPJVUy1r4aeVKaojTA2spOG8VRNBNGbuS2so0ZH+8Mnt1jJTXw9lxWWZCdTloddW+5ZI/R
	ELskDWpYmOoel570BlVN024CXEcoaSwxI6ywCiiRxfLeDGkWH47pddk+jSNrBxiMraTJDBpe0IHUf
	2+/KZGzXqE3Qut3IGZ/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJeEn-0004U8-E6; Wed, 01 Apr 2020 14:21:01 +0000
Received: from mail-vi1eur05on2060.outbound.protection.outlook.com
 ([40.107.21.60] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJeEf-0004TU-95
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 14:20:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jhvGfXA/cQTMzrEIeQ1HhcqwY4B9xUfjdtlkktJhIOMQmhRGvl6FkT3tJ15a13jf2DKDDttzP8F81bRl8j5QyvQ9biTCAd6Tz6kTSedjlqo3phPem/NVBjDXqY5cLnBfzflRJ6yxxKNF9/hc3X0kyDovb3CGIVcIt3SdezwfYSMGFs7X8HIEtdaDvJ9xhZ6xlNuEYkeXk0whjLFAvlaZbvk+q0XJvZ0PofpQyPBIw2D119IiH+nvqBlrUYZ84XdbWUQp+3xOXaBd9BxnmoQPb5cM6Epd/NYw2nn3itpKTv8sL2+H4gFSDIqjj1IN7CXpCywWP1+hr86+zHt02Md34Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o8lSC8Q/paxx78fnO1F+9tk8oruJ6DB1elK14Y0W5xQ=;
 b=ReLTyRbapV0WP/a69laXVZ6WG9UdOzsRS/ZJ2wkuG3a0/EbaIr1zvKxx52ir3GQeUjWlkWhKbqZS+3DS7jfd4ZCv5HkCHA8qj06q+iyOfa/OrFFHCQsr4wnMJ6Te9svBpQXWlEBKQwEcwAVJ1Fc15I4uOomI3ogAeZ3Zg3D0lksRdlcxVY9EXM0quUUpBcIEPy9DnaAvZTvW1+bWLwBh8R7sU9jpiR1TwCF0R3emMvdcmgkW7C1cRb0kwWoe9JbyhDgrU/EA6Jyh7a7LaouGV5KqxW/uVRNSuoxMxCbcI3K7VgKZfD0KdNxLPdiNQJ7osPwtSQfSp83BmbkX9Iz/MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o8lSC8Q/paxx78fnO1F+9tk8oruJ6DB1elK14Y0W5xQ=;
 b=s6j5ETvVndsZ5wYv6u9EA9QOm3hFAowUJ41g9QQ61weknuXcqyyd0UDdjUfPASUBsRSSEeKmYilXnYtGWvdCg8gBSp8QMmvlf4r0chU00rsHLB4XSPYaFHej4bzaFeQP4Kk2Tah4Gp5ga6+dz8ko1cjm+N5iJ4dqOc2fAy3GAOA=
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com (52.133.244.87) by
 VI1PR04MB6960.eurprd04.prod.outlook.com (52.133.244.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Wed, 1 Apr 2020 14:20:49 +0000
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200]) by VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200%2]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 14:20:49 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Georgi Djakov
 <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>, Martin
 Kepplinger <martink@posteo.de>
Subject: Re: [PATCH 2/8] PM / devfreq: Add generic imx bus scaling driver
Thread-Topic: [PATCH 2/8] PM / devfreq: Add generic imx bus scaling driver
Thread-Index: AQHWAxSPVPtoe31rEECA7ZPaKWog5A==
Date: Wed, 1 Apr 2020 14:20:49 +0000
Message-ID: <VI1PR04MB694183137034565F350E8587EEC90@VI1PR04MB6941.eurprd04.prod.outlook.com>
References: <cover.1585188174.git.leonard.crestez@nxp.com>
 <CGME20200326021637epcas1p26d84c256cf05a97ae1c90bb16ea6fa5d@epcas1p2.samsung.com>
 <e32290a36b31fbe922cc8ed48c33e89a5eb08804.1585188174.git.leonard.crestez@nxp.com>
 <781911a0-6139-8e41-cd96-da40fad685fc@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 19a56422-1d30-4cfe-b981-08d7d647e06e
x-ms-traffictypediagnostic: VI1PR04MB6960:|VI1PR04MB6960:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6960A98EB728A479CAA5D001EEC90@VI1PR04MB6960.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03607C04F0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB6941.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(396003)(346002)(136003)(376002)(39860400002)(6506007)(71200400001)(26005)(44832011)(66946007)(91956017)(186003)(33656002)(7696005)(5660300002)(66476007)(66446008)(52536014)(76116006)(478600001)(2906002)(53546011)(316002)(81156014)(966005)(86362001)(7416002)(8676002)(55016002)(81166006)(64756008)(54906003)(110136005)(4326008)(66574012)(9686003)(66556008)(8936002)(41533002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RLQ1Kg35HGIrsT/TqVcXRFg70wQBLC598ZSL7KiQYJ1XkcsyhE4zf3kGmT+oEVGfZyqtkTRFSvDMIrIH4btaoCVkKgHXElUTf+KAL4VHjhODBnVbhInOW7jNZy8uICUV4TmwSrioiOh9gS0yhusF9X9OyPdhrsHa8XhdCc0xe36Fd4XEUM8nswTvDggtm1ocaAe/DiqExFITNbJQt72G9k3gNqFwpnbdgYYD5cgh/+ngCnkg9AlHUqJLQ1DoYaZQIlo5KD4M+sHr7DddGweh8KcatEKMU1sRuwh1g0sztKDzErmSWggoUHTnDX4aBTpzah7qxH+pTbaSaPwGctKFTdwNRQhIYLohSjO5df9QOHqlQdWux3id1y+a8ylAG+cjC9o6J8KKMcuA80Y90yQQHy2Y7fEItA33fGJ6rFysfPo5yPGX4T3L+zLpkTVAE8bxCXrbwMMXLL4t04yaecJVpH5K4DxFQJQwCklE1AnmElOv+AJFJgqmMtADp9sFI52sjrlKtcGL8NMpMaXeIgPRNaSx8dCZVjWmw1wg5BostrccHpJqZmwHubyBhup8iR3e
x-ms-exchange-antispam-messagedata: 1et2XJljnDmDfoJS2udqf6JcEKgH19EZrhgILC1OQHqFxjUrHiH2g3Tws4YtoRgld8RSAZuJU2pEL+hy9pWirrKAjHhkH0fcVAG/VEeOVH8eGvo2RkMX8yOH95e7u4yk1wOCfu/9noJEH22NsUyt8A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19a56422-1d30-4cfe-b981-08d7d647e06e
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2020 14:20:49.0633 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5cJM2vBf93p8IKF2pXgDdZ2cWIVXr50fnQaMGelvoA5tX6LxfIPy8wKAxeCv8bZBxswKqH8J6N5aSyuUr8y1Jg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_072053_686863_40B9C1CA 
X-CRM114-Status: GOOD (  20.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.60 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-01 1:55 AM, Chanwoo Choi wrote:
> Hi,
> =

> Looks good to me. I added the comments.
> But, it need to add the dt binding documentation for this device.

DT bindings were included:

https://patchwork.kernel.org/patch/11458981/

> The old email of Artur =A6wigo=F1 is not used. On next time,
> use following the new email address Because when I reply the mail,
> always show the fail message from thunderbird due to the Artur's old emai=
l.
> <a.swigon@partnet.samsung.com> -> <a.swigon@samsung.com>

Yeah, I received multiple bounces because of this.

> On 3/26/20 11:16 AM, Leonard Crestez wrote:
>> Add initial support for dynamic frequency switching on pieces of the imx
>> interconnect fabric.
>>
>> All this driver does is set a clk rate based on an opp table, it does
>> not map register areas.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   drivers/devfreq/Kconfig   |   9 +++
>>   drivers/devfreq/Makefile  |   1 +
>>   drivers/devfreq/imx-bus.c | 142 ++++++++++++++++++++++++++++++++++++++
>>   3 files changed, 152 insertions(+)
>>   create mode 100644 drivers/devfreq/imx-bus.c
>>
>> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
>> index 0b1df12e0f21..44d26192ddc4 100644
>> --- a/drivers/devfreq/Kconfig
>> +++ b/drivers/devfreq/Kconfig
>> @@ -99,10 +99,19 @@ config ARM_IMX8M_DDRC_DEVFREQ
>>   	select DEVFREQ_GOV_USERSPACE
>>   	help
>>   	  This adds the DEVFREQ driver for the i.MX8M DDR Controller. It allo=
ws
>>   	  adjusting DRAM frequency.
>>   =

>> +config ARM_IMX_BUS_DEVFREQ
>> +	tristate "i.MX Generic Bus DEVFREQ Driver"
>> +	depends on ARCH_MXC || COMPILE_TEST
>> +	select DEVFREQ_GOV_PASSIVE
>> +	select DEVFREQ_GOV_USERSPACE
> =

> Maybe, you would update it by using passive governor?
> But, in this version, it doesn't handle the any passive governor.

dropped

>> +	help
>> +	  This adds the generic DEVFREQ driver for i.MX interconnects. It
>> +	  allows adjusting NIC/NOC frequency.
>> +
>>   config ARM_TEGRA_DEVFREQ
>>   	tristate "NVIDIA Tegra30/114/124/210 DEVFREQ Driver"
>>   	depends on ARCH_TEGRA_3x_SOC || ARCH_TEGRA_114_SOC || \
>>   		ARCH_TEGRA_132_SOC || ARCH_TEGRA_124_SOC || \
>>   		ARCH_TEGRA_210_SOC || \
>> diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
>> index 3eb4d5e6635c..3ca1ad0ecb97 100644
>> --- a/drivers/devfreq/Makefile
>> +++ b/drivers/devfreq/Makefile
>> @@ -7,10 +7,11 @@ obj-$(CONFIG_DEVFREQ_GOV_POWERSAVE)	+=3D governor_powe=
rsave.o
>>   obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+=3D governor_userspace.o
>>   obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+=3D governor_passive.o
>>   =

>>   # DEVFREQ Drivers
>>   obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+=3D exynos-bus.o
>> +obj-$(CONFIG_ARM_IMX_BUS_DEVFREQ)	+=3D imx-bus.o
> =

> The ARM_IMX_BUS_DEVFREQ config is under ARM_IMX8M_DDRC_DEVFREQ
> and imx-bus.o is over imx8m-ddrc.o. Need to edit the sequence.

Reordered kconfig to match. 8M_DDRC sorts before _BUS alphabetically but =

it's pettier this way, and matches tegra.

>>   obj-$(CONFIG_ARM_IMX8M_DDRC_DEVFREQ)	+=3D imx8m-ddrc.o
>>   obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+=3D rk3399_dmc.o
>>   obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+=3D tegra30-devfreq.o
>>   obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+=3D tegra20-devfreq.o
>>   =

>> diff --git a/drivers/devfreq/imx-bus.c b/drivers/devfreq/imx-bus.c
>> new file mode 100644
>> index 000000000000..285e0f1ae6b1
>> --- /dev/null
>> +++ b/drivers/devfreq/imx-bus.c
>> @@ -0,0 +1,142 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright 2019 NXP
>> + */
>> +
>> +#include <linux/clk.h>
>> +#include <linux/devfreq.h>
>> +#include <linux/device.h>
>> +#include <linux/module.h>
>> +#include <linux/of_device.h>
>> +#include <linux/pm_opp.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/slab.h>
>> +
>> +struct imx_bus {
>> +	struct devfreq_dev_profile profile;
>> +	struct devfreq *devfreq;
>> +	struct clk *clk;
>> +	struct devfreq_passive_data passive_data;
> =

> This patch doesn't touch the passive_data.

dropped

>> +};
>> +
>> +static int imx_bus_target(struct device *dev,
>> +		unsigned long *freq, u32 flags)
>> +{
>> +	struct imx_bus *priv =3D dev_get_drvdata(dev);
>> +	struct dev_pm_opp *new_opp;
>> +	unsigned long new_freq;
>> +	int ret;
>> +
>> +	new_opp =3D devfreq_recommended_opp(dev, freq, flags);
>> +	if (IS_ERR(new_opp)) {
>> +		ret =3D PTR_ERR(new_opp);
>> +		dev_err(dev, "failed to get recommended opp: %d\n", ret);
>> +		return ret;
>> +	}
>> +	new_freq =3D dev_pm_opp_get_freq(new_opp);
> =

> It doesn't need. Because the new frequency is stored to 'freq'
> by calling devfreq_recommended_opp().

fixed

>> +	dev_pm_opp_put(new_opp);
>> +
>> +	return clk_set_rate(priv->clk, new_freq);
> =

> nitpick. you can use dev_pm_opp_set_rate(). But, I'm not forcing to use i=
t.

Switched to dev_pm_opp_set_rate.

It might be interesting to add regulators control later, on some chips =

the main NOC can run at different voltages.

> =

>> +}
>> +
>> +static int imx_bus_get_cur_freq(struct device *dev, unsigned long *freq)
>> +{
>> +	struct imx_bus *priv =3D dev_get_drvdata(dev);
>> +
>> +	*freq =3D clk_get_rate(priv->clk);
>> +
>> +	return 0;
>> +}
>> +
>> +static int imx_bus_get_dev_status(struct device *dev,
>> +		struct devfreq_dev_status *stat)
>> +{
>> +	struct imx_bus *priv =3D dev_get_drvdata(dev);
>> +
>> +	stat->busy_time =3D 0;
>> +	stat->total_time =3D 0;
>> +	stat->current_frequency =3D clk_get_rate(priv->clk);
>> +
>> +	return 0;
>> +}
>> +
>> +static void imx_bus_exit(struct device *dev)
>> +{
>> +	dev_pm_opp_of_remove_table(dev);
>> +}
>> +
>> +static int imx_bus_probe(struct platform_device *pdev)
>> +{
>> +	struct device *dev =3D &pdev->dev;
>> +	struct imx_bus *priv;
>> +	const char *gov =3D DEVFREQ_GOV_USERSPACE;
>> +	int ret;
>> +
>> +	priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>> +	if (!priv)
>> +		return -ENOMEM;
>> +
>> +	/*
>> +	 * Fetch the clock to adjust but don't explictly enable.
> =

> Need to fix typo.
> s/explictly/explicitly

fixed

>> +	 *
>> +	 * For imx bus clock clk_set_rate is safe no matter if the clock is on
>> +	 * or off and some peripheral side-buses might be off unless enabled by
>> +	 * drivers for devices on those specific buses.
>> +	 *
>> +	 * Rate adjustment on a disabled bus clock just takes effect later.
>> +	 */
>> +	priv->clk =3D devm_clk_get(dev, NULL);
>> +	if (IS_ERR(priv->clk)) {
>> +		ret =3D PTR_ERR(priv->clk);
>> +		dev_err(dev, "failed to fetch clk: %d\n", ret);
>> +		return ret;
>> +	}
>> +	platform_set_drvdata(pdev, priv);
>> +
>> +	ret =3D dev_pm_opp_of_add_table(dev);
>> +	if (ret < 0) {
>> +		dev_err(dev, "failed to get OPP table\n");
>> +		return ret;
>> +	}
>> +
>> +	priv->profile.polling_ms =3D 1000;
>> +	priv->profile.target =3D imx_bus_target;
>> +	priv->profile.get_dev_status =3D imx_bus_get_dev_status;
>> +	priv->profile.exit =3D imx_bus_exit;
>> +	priv->profile.get_cur_freq =3D imx_bus_get_cur_freq;
>> +	priv->profile.initial_freq =3D clk_get_rate(priv->clk);
>> +
>> +	priv->devfreq =3D devm_devfreq_add_device(dev, &priv->profile,
>> +						gov, NULL);
>> +	if (IS_ERR(priv->devfreq)) {
>> +		ret =3D PTR_ERR(priv->devfreq);
>> +		dev_err(dev, "failed to add devfreq device: %d\n", ret);
>> +		goto err;
>> +	}
>> +
>> +	return 0;
>> +
>> +err:
>> +	dev_pm_opp_of_remove_table(dev);
>> +	return ret;
>> +}
>> +
>> +static const struct of_device_id imx_bus_of_match[] =3D {
>> +	{ .compatible =3D "fsl,imx8m-noc", },
>> +	{ .compatible =3D "fsl,imx8m-nic", },
>> +	{ /* sentinel */ },
>> +};
>> +MODULE_DEVICE_TABLE(of, imx_bus_of_match);
>> +
>> +static struct platform_driver imx_bus_platdrv =3D {
>> +	.probe		=3D imx_bus_probe,
>> +	.driver =3D {
>> +		.name	=3D "imx-bus-devfreq",
>> +		.of_match_table =3D of_match_ptr(imx_bus_of_match),
>> +	},
>> +};
>> +module_platform_driver(imx_bus_platdrv);
>> +
>> +MODULE_DESCRIPTION("Generic i.MX bus frequency scaling driver");
>> +MODULE_AUTHOR("Leonard Crestez <leonard.crestez@nxp.com>");
>> +MODULE_LICENSE("GPL v2");
>>
> =

> =




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
