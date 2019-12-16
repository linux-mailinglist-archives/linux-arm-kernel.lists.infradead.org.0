Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CABF120912
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 15:58:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Zc3vB8jxtO4yWSfDASOg/U5fWOgFg3zSf5CXdM5J5NU=; b=kYIBe0+AB1Lj2a
	QfdNwiDj292kolahSWJsuIvGbIBdDir8f+XdU7bxHl0JfmjS1wlxtl6LbvD7RHzKhQLerVrDy3536
	WHy2ZZN9d/q1Ofb2HnXJ/4opp7R/ObzTISL5A2FZ7rQcuv8sIlMYVg4EiBCKKh/6+4mAUyXFd0HZo
	nonBHljBMftV9bNio6XTe/y6vCaggXnT/FAdnQ64vPrlXCZG+X5VZ+4nIj6U3kAX36NfIxkU540rh
	MrobTtHLOZtDSgjlKSN+6+qVoGkuO5UrjmBol8Fw79G7zA/Y2eE6Eetmk68Uqic607Dvx9z+//wS2
	jj8OYcz5OYvwgW78Q4zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igroz-000423-By; Mon, 16 Dec 2019 14:58:05 +0000
Received: from mail-eopbgr40084.outbound.protection.outlook.com ([40.107.4.84]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igroq-00041M-Gv
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 14:57:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kTvXxcfcC2tnouMQm5TUf+qLYrSEaAQhQc264h0mBgDtPWODOvCJHJtlxwGIrQKQXHa+xe9fjqV4ZiYw5/9RUgpUDFxZvuXl357GdVPdxOUzytEDWFJtUtosz7XBdiJhYg6OWrBRo7/PV5BF01s3Ti/nB1ZktTMK3KTRov+r+j2fIvIRURbnhMvLzJ/VYgGBR/SaTkIjQagFD+2muO9Pl/UnGaitS1wwnHrFRywf90plm9F0iThRNdykjgB/lxJxJSdGTIsSoNl4VXjU5p92nOX/v8vTZRwE736GrTtAyaQHoasAsjImBRIaQ7zYMmJQStAWrc+VN1uH51xpjqAqZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ha3Pa/aNcEju1IT2rVX631S01ZhJSthG7H1STyZHxwE=;
 b=Kou90EeFD/Vfd/XBjKF08MfhrVN+Aji3G0yMVfCfzHR25KYKQUb4xwDi3ICxX2T9pb+RAp2sbvRLg+U/VCnNetOB4uvPHKeGPQbbcr/dSxTtWQ4VzcowhPRaJotvVtWgrLtJph+lFMgFvXxAMhMSvZr6pYwT6Px5bT+XF6iWdsychOSfkr9rnYFmbxfH3mfFUy62j5qdZQsmhzwDzK4AI1b33Ht7Xv1rGbmtX9/6WdAni+PsujAA1WpkaEJAhtlDopng23CsDuEkoxmTYocf5A0HWFVghwDKw2uwCCW7gfshXQdQB7mjXHuJV655SVskQD/khTKvT7Q3SnVCnxwaMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ha3Pa/aNcEju1IT2rVX631S01ZhJSthG7H1STyZHxwE=;
 b=Dnzt7/VOTuxiVPackJtIS6fhRp0m/iR8w5V1YLaabScea2bOWjL8NOAIYO/uY/XCclMmqORQOmALwZBS6M7/krpLZFNDHkNZ0pCp324wBqlX8SKYN9Ll/805aM+FVpMASSiVQe7zEVdet4wZ0kWzwMmeJh+fK78zIJQ/OrZ1LaU=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5584.eurprd04.prod.outlook.com (20.178.123.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Mon, 16 Dec 2019 14:57:53 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 14:57:53 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Georgi Djakov
 <georgi.djakov@linaro.org>
Subject: Re: [PATCH RFC v6 2/9] PM / devfreq: Add generic imx bus scaling
 driver
Thread-Topic: [PATCH RFC v6 2/9] PM / devfreq: Add generic imx bus scaling
 driver
Thread-Index: AQHVmyeZDID07b0oVkajwef04uXjmg==
Date: Mon, 16 Dec 2019 14:57:53 +0000
Message-ID: <VI1PR04MB702396D09FCED6CBA49B6AE7EE510@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <CGME20191114201049epcas5p4a24607634af7b31e6a2dbdb4166dd862@epcas5p4.samsung.com>
 <f329e715898a6b9fd0cee707a93fb1e144e31bd4.1573761527.git.leonard.crestez@nxp.com>
 <8734a934-79e2-7445-c3e5-a0bb59afd4a8@samsung.com>
 <047990a5-263d-d447-7f0a-77a99e4b1f63@samsung.com>
 <25e3177f-e2b9-6be4-cfb8-24f87ccba45b@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5a808776-19e6-4860-aed9-08d7823853f1
x-ms-traffictypediagnostic: VI1PR04MB5584:|VI1PR04MB5584:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5584D0368221C648C430B5EFEE510@VI1PR04MB5584.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(366004)(136003)(376002)(189003)(199004)(51444003)(71200400001)(7696005)(8676002)(81166006)(86362001)(81156014)(44832011)(478600001)(316002)(6506007)(26005)(76116006)(4326008)(8936002)(66946007)(53546011)(66556008)(186003)(66476007)(64756008)(7416002)(2906002)(54906003)(52536014)(66446008)(5660300002)(55016002)(110136005)(91956017)(33656002)(9686003)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5584;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /LFtQVYCNye8/rUMv5Y5sWfI6yF4B1NpG03+BV5dKzzfD4kx4MX0vzGBNf5YTUJAIXUU3QXf0aSH2/ibvXL7pKoiFQPAQy1+9jvkPp8ma0sI6KZa3tA+TrWLum1X4yRdcOCP1EJaLdaTKAcCblu3ECj0dIapffLE0UlQym/f+8xgrXNlr+mo4beZiUZKmOxBPfBz3DDpWHJxNrX4dIZ9YmjES450sWveDwqXjehUQtFtSwlR1YETkXDGRpSRu0XIV+1AZ/iDxG4gdDCLU5S2Joq6Ir4h5kHq7M35Ww7TyLmSvYkXAXm/jnkP/BDKY3tgkkWqVvjIOylHJIw0TidxiaH9Av3R1zk3LA8qDML6m+rFaNvzqmwonceXcYynOWKKiQx67YnqZVknFZGeJJ2AGXXCDVkJ0LK1lNpa9Q92LEivGjEZzHYfilEeCmBntHjsyklFtrTuRxNAjCGB5aR6yCWVs0WpIThGqOtfPFltgbUhydrkjNJOl6LMQD1+As2x/g7LTCIy5TL66+7ZkDtZog==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a808776-19e6-4860-aed9-08d7823853f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 14:57:53.2718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CBsO7XmckbAox0ugrf3zXGeDi9+4riFb9OQijpVzXX+WsfNxPYeRD8/OVvKzh3fR9Yx2dFWUVwwhwgM7QiDJog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5584
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_065756_704043_C3659FCC 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.84 listed in list.dnswl.org]
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
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16.12.2019 03:00, Chanwoo Choi wrote:
> Hi,
> 
> Also, I think that 'devfreq' word is not proper for device driver name.
> imx-bus.c or imx-noc.c or others to inform the role of this driver of developer.

I'll rename to "imx-bus". Calling it "imx-noc" is not appropriate 
because I also want to use it for PL301 NICs.

> And, I have a question.
> This driver adds the devfreq device with either passive governor
> or userspace governor.
> 
> As I understood, the devfreq device with passive governor
> will be operated with imx8m-ddrc.c driver.
> But, when is operating with userspace governor?

There are multiple scalable buses inside the SOC, for example there's a 
NIC for display controllers and one for (pci+usb). They can use 
userspace governor for explicit frequency control.

> I think that you better to add the explanation to description
> for two scenarios how to operate with interconnect provider
> on either passive governor or userspace governor usage case.

I'll elaborate the example in bindings.

> On 12/13/19 10:51 AM, Chanwoo Choi wrote:
>> On 12/13/19 10:30 AM, Chanwoo Choi wrote:
>>> Hi,
>>>
>>> On 11/15/19 5:09 AM, Leonard Crestez wrote:
>>>> Add initial support for dynamic frequency switching on pieces of the imx
>>>> interconnect fabric.
>>>>
>>>> All this driver does is set a clk rate based on an opp table, it does
>>>> not map register areas.
>>>>
>>>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>>>> ---
>>>>   drivers/devfreq/Kconfig       |   9 ++
>>>>   drivers/devfreq/Makefile      |   1 +
>>>>   drivers/devfreq/imx-devfreq.c | 150 ++++++++++++++++++++++++++++++++++
>>>>   3 files changed, 160 insertions(+)
>>>>   create mode 100644 drivers/devfreq/imx-devfreq.c
>>>>
>>>> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
>>>> index 923a6132e741..fef5ce831e90 100644
>>>> --- a/drivers/devfreq/Kconfig
>>>> +++ b/drivers/devfreq/Kconfig
>>>> @@ -98,10 +98,19 @@ config ARM_IMX8M_DDRC_DEVFREQ
>>>>   	select DEVFREQ_GOV_USERSPACE
>>>>   	help
>>>>   	  This adds the DEVFREQ driver for the i.MX8M DDR Controller. It allows
>>>>   	  adjusting DRAM frequency.
>>>>   
>>>> +config ARM_IMX_DEVFREQ
>>>> +	tristate "i.MX Generic DEVFREQ Driver"
>>>> +	depends on ARCH_MXC || COMPILE_TEST
>>>> +	select DEVFREQ_GOV_PASSIVE
>>>> +	select DEVFREQ_GOV_USERSPACE
>>>> +	help
>>>> +	  This adds the generic DEVFREQ driver for i.MX interconnects. It
>>>> +	  allows adjusting NIC/NOC frequency.
>>>> +
>>>>   config ARM_TEGRA_DEVFREQ
>>>>   	tristate "NVIDIA Tegra30/114/124/210 DEVFREQ Driver"
>>>>   	depends on ARCH_TEGRA_3x_SOC || ARCH_TEGRA_114_SOC || \
>>>>   		ARCH_TEGRA_132_SOC || ARCH_TEGRA_124_SOC || \
>>>>   		ARCH_TEGRA_210_SOC || \
>>>> diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
>>>> index 3eb4d5e6635c..61d0edee16f7 100644
>>>> --- a/drivers/devfreq/Makefile
>>>> +++ b/drivers/devfreq/Makefile
>>>> @@ -8,10 +8,11 @@ obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+= governor_userspace.o
>>>>   obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+= governor_passive.o
>>>>   
>>>>   # DEVFREQ Drivers
>>>>   obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+= exynos-bus.o
>>>>   obj-$(CONFIG_ARM_IMX8M_DDRC_DEVFREQ)	+= imx8m-ddrc.o
>>>> +obj-$(CONFIG_ARM_IMX_DEVFREQ)		+= imx-devfreq.o
>>>>   obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+= rk3399_dmc.o
>>>>   obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+= tegra30-devfreq.o
>>>>   obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+= tegra20-devfreq.o
>>>>   
>>>>   # DEVFREQ Event Drivers
>>>> diff --git a/drivers/devfreq/imx-devfreq.c b/drivers/devfreq/imx-devfreq.c
>>>> new file mode 100644
>>>> index 000000000000..620b344e87aa
>>>> --- /dev/null
>>>> +++ b/drivers/devfreq/imx-devfreq.c
>>>> @@ -0,0 +1,150 @@
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
>>>> +struct imx_devfreq {
>>>> +	struct devfreq_dev_profile profile;
>>>> +	struct devfreq *devfreq;
>>>> +	struct clk *clk;
>>>> +	struct devfreq_passive_data passive_data;
>>>> +};
>>>> +
>>>> +static int imx_devfreq_target(struct device *dev,
>>>> +			      unsigned long *freq, u32 flags)
>>>
>>> Don't use space for the indentation. Please use only tab.

OK

>>>> +{
>>>> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
>>>> +	struct dev_pm_opp *new_opp;
>>>> +	unsigned long new_freq;
>>>> +	int ret;
>>>> +
>>>> +	new_opp = devfreq_recommended_opp(dev, freq, flags);
>>>> +	if (IS_ERR(new_opp)) {
>>>> +		ret = PTR_ERR(new_opp);
>>>> +		dev_err(dev, "failed to get recommended opp: %d\n", ret);
>>>> +		return ret;
>>>> +	}
>>>> +	new_freq = dev_pm_opp_get_freq(new_opp);
>>>> +	dev_pm_opp_put(new_opp);
>>>> +
>>>> +	return clk_set_rate(priv->clk, new_freq);
>>>> +}
>>>> +
>>>> +static int imx_devfreq_get_cur_freq(struct device *dev, unsigned long *freq)
>>>> +{
>>>> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
>>>> +
>>>> +	*freq = clk_get_rate(priv->clk);
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> +static int imx_devfreq_get_dev_status(struct device *dev,
>>>> +				      struct devfreq_dev_status *stat)
>>>
>>> ditto. Please use tab for the indentation.
>>>
>>>> +{
>>>> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
>>>> +
>>>> +	stat->busy_time = 0;
>>>> +	stat->total_time = 0;
>>>> +	stat->current_frequency = clk_get_rate(priv->clk);
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> +static void imx_devfreq_exit(struct device *dev)
>>>> +{
>>>> +	dev_pm_opp_of_remove_table(dev);
>>>> +}
>>>> +
>>>> +static int imx_devfreq_probe(struct platform_device *pdev)
>>>> +{
>>>> +	struct device *dev = &pdev->dev;
>>>> +	struct imx_devfreq *priv;
>>>
>>> How about changing the variable name 'priv' to 'imx' or 'imx_data'?
>>> because it is not easy to catch the role of 'priv' from variable name.

The name "priv" refers to private data of current device: it is short 
and not ambiguous in this context. I don't think that mentioning "imx" 
adds any additional useful information.

It doesn't seem like there's much of a convention for "local variable 
containing private data", for example exynos-bus.c uses "struct 
exynos_bus* bus" internally.

>>>
>>>> +	const char *gov = DEVFREQ_GOV_USERSPACE;
>>>> +	void *govdata = NULL;
>>>
>>> How about changing the variable name 'govdata' to 'gov_data'?
>>> - govdata -> gov_data

OK

>>>> +	int ret;
>>>> +
>>>> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>>>> +	if (!priv)
>>>> +		return -ENOMEM;
>>>> +
>>>> +	priv->clk = devm_clk_get(dev, NULL);
>>>
>>> nitpick: because the clock-name is not mandatory.
>>> Don't need to specify the clock name to inform the role of clock
>>> of other developer/user?
>>>
>>> For example, "ddr", "bus" and so on.

I'll call this bus, but I'm not sure it's useful when a single clock is 
involved.

>> And, this driver doesn't include the 'clk_prepare_enable'.
>> how to enable the clock?

Clocks are either always on or perhaps controlled by some other 
peripheral. This driver only provides scaling.

>>>> +	if (IS_ERR(priv->clk)) {
>>>> +		ret = PTR_ERR(priv->clk);
>>>> +		dev_err(dev, "failed to fetch clk: %d\n", ret);
>>>> +		return ret;
>>>> +	}
>>>> +	platform_set_drvdata(pdev, priv);
>>>> +
>>>> +	ret = dev_pm_opp_of_add_table(dev);
>>>> +	if (ret < 0) {
>>>> +		dev_err(dev, "failed to get OPP table\n");
>>>> +		return ret;
>>>> +	}
>>>> +
>>>> +	priv->profile.polling_ms = 1000;
>>>> +	priv->profile.target = imx_devfreq_target;
>>>> +	priv->profile.get_dev_status = imx_devfreq_get_dev_status;
>>>> +	priv->profile.exit = imx_devfreq_exit;
>>>> +	priv->profile.get_cur_freq = imx_devfreq_get_cur_freq;
>>>> +	priv->profile.initial_freq = clk_get_rate(priv->clk);
>>>> +
>>>> +	/* Handle passive devfreq parent link */
>>>> +	priv->passive_data.parent = devfreq_get_devfreq_by_phandle(dev, 0);
>>>> +	if (!IS_ERR(priv->passive_data.parent)) {
>>>> +		dev_info(dev, "setup passive link to %s\n",
>>>> +			 dev_name(priv->passive_data.parent->dev.parent));
>>>> +		gov = DEVFREQ_GOV_PASSIVE;
>>>> +		govdata = &priv->passive_data;
>>>> +	} else if (priv->passive_data.parent != ERR_PTR(-ENODEV)) {
>>>> +		// -ENODEV means no parent: not an error.
>>>> +		ret = PTR_ERR(priv->passive_data.parent);
>>>> +		if (ret != -EPROBE_DEFER)
>>>> +			dev_warn(dev, "failed to get initialize passive parent: %d\n",
>>>> +				 ret);
>>>> +		goto err;
>>>> +	}
>>>
>>> You better to change the exception handling as following: It is more simple.
>>>
>>> 	} else if (PTR_ERR(priv->passive_data.parent) == -EPROBE_DEFER)
>>> 			|| PTR_ERR(priv->passive_data.parent) == -ENODEV) {
>>> 		goto err;
>>> 	} else {
>>> 		ret = PTR_ERR(priv->passive_data.parent);
>>> 		dev_err(dev, "failed to get initialize passive parent: %d\n", ret);
>>> 		goto err;
>>> 	}

But -ENODEV is not an error, it means no passive parent was found.

>>>> +	priv->devfreq = devm_devfreq_add_device(dev, &priv->profile,
>>>> +						gov, govdata);
>>>> +	if (IS_ERR(priv->devfreq)) {
>>>> +		ret = PTR_ERR(priv->devfreq);
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
>>>> +static const struct of_device_id imx_devfreq_of_match[] = {
>>>> +	{ .compatible = "fsl,imx8m-noc", },
>>>> +	{ .compatible = "fsl,imx8m-nic", },
>>>> +	{ /* sentinel */ },
>>>> +};
>>>> +MODULE_DEVICE_TABLE(of, imx_devfreq_of_match);
>>>> +
>>>> +static struct platform_driver imx_devfreq_platdrv = {
>>>> +	.probe		= imx_devfreq_probe,
>>>> +	.driver = {
>>>> +		.name	= "imx-devfreq",
>>>> +		.of_match_table = of_match_ptr(imx_devfreq_of_match),
>>>> +	},
>>>> +};
>>>> +module_platform_driver(imx_devfreq_platdrv);
>>>> +
>>>> +MODULE_DESCRIPTION("Generic i.MX bus frequency driver");
>>>
>>> If this driver is for bus frequency, you better to use 'bus' for the clock-name
>>> for the readability.

OK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
