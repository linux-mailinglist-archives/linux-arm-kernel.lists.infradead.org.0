Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BA212385D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 22:06:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=CR5hv+EejZJeeVTV30obMdyVIWF7KKY7ExbbM+MOodg=; b=gN0kDVdv11Djkp
	gWlof3ou7X0OBD9r6SJlwgj/SEXPnKQgCrbZDrT5+0/wPGRkNKxXJvVQ7MPfGk7VOL/6ISMZkhn78
	1y0AtXuUZbm4FKmZcI992VFxQ5/vhhJXZhXhn2OqzSK757eHZouainmsJ8xqKSFl6cpB2JAd0sBSE
	GoXEewaoeLubIzNqt7fEcGLSG/aSmqtjrHy9Xz9BoI7IxiJrpxLqTV9qhRZgjX+ubFFSemYXYjPiG
	CdGy3M1wROsbQffURIeu/CDu1bZKd17n0qZRz2pOjiiBtr1dtXe0te2zSfK2lxA88DiGka96hHUw5
	Z25qg9DrtWG2vbh5AuNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihK2c-0002Hv-R9; Tue, 17 Dec 2019 21:06:02 +0000
Received: from mail-db3eur04on060d.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::60d]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihK2T-0002H1-M4
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 21:05:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X5VrYUOOW732Uc+fL2V/poXcO/iQtQtTzAJRZRVJFp9FEL0wbLfCqTJAoa/prr165pXfuz+NGCsl1mytQb2XXxmVQhA3hDdiheXw701biN5ocV/rRGZVNjV9jIJqWEQnlOwTu6UmdE/CdbvCupjtH5EAe/XvOWbVqGw/V9emcskkJcCxsiwR+Bx99V7DWbN8gtM+QVKBP1xT86+oZ53Ool0OMQgR+IeV6ztqYHoslPckpqP/X+EerCC9fh0uoBA2SQCjaRP293SGgB/nIg0EKobsSAnBXq/LHngF5T+mhVaJHxHulYNMO9IET5jBs577RwkBBzFcWYo9ehc+WyVMlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=69evSFg0ME5PSuqJdUZj3Pn7ZwH1PCxUXkDYALpm4tQ=;
 b=AUbFOs1VcGkF7EXR8X/HNZlvVZQUvmt0WMyybar3QomaPfA4Mqz/u1/tzgJ3WBQy7QEva6LZGatyFnY2m2f7+xw1Y4X8rw7u0+zXh1W5nMkJhIgy2GwVNRupTNP9uQCY5GIRVBkFrAu0BZsci8Hqv/PgbhvPefDL/zE7qsLfjrH/QbDbRirzRTJmDemuylcGyRRStyHrLeyJe/p+yE9MBTZyn78W8hj+fh7IIQyY1OSCDJXYpBR8bSNdLQp3rw+CNt1PFuDchdNX9N/0w5xXpW6m/ILOZsMaHa810Y2+1CjGhx+VR/8+LDWpjXxCh6OPDYOdzC7oJ6uYkoPetlmmwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=69evSFg0ME5PSuqJdUZj3Pn7ZwH1PCxUXkDYALpm4tQ=;
 b=ZffOO6aa359Fqktj0Jv2ZRpOZvbO2zAOLUngb7BgnyWb1WYCV5bc3DkKPmDgDGdDnoSZ6XWsGik5PaKyVq4ZuKkIVrZ5VZQrX+p/6pEvB+f9aSCy2aBm1FuPkUXHQ2SZcpJzkyir5/PlITcXZhIuz5JP4dyyHUqMY9z0A+e4h+Q=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5279.eurprd04.prod.outlook.com (20.177.52.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Tue, 17 Dec 2019 21:05:48 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 21:05:48 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Georgi Djakov
 <georgi.djakov@linaro.org>
Subject: Re: [PATCH RFC v6 2/9] PM / devfreq: Add generic imx bus scaling
 driver
Thread-Topic: [PATCH RFC v6 2/9] PM / devfreq: Add generic imx bus scaling
 driver
Thread-Index: AQHVmyeZDID07b0oVkajwef04uXjmg==
Date: Tue, 17 Dec 2019 21:05:48 +0000
Message-ID: <VI1PR04MB7023F0CCD7FAF5EEA74C7873EE500@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <CGME20191114201049epcas5p4a24607634af7b31e6a2dbdb4166dd862@epcas5p4.samsung.com>
 <f329e715898a6b9fd0cee707a93fb1e144e31bd4.1573761527.git.leonard.crestez@nxp.com>
 <8734a934-79e2-7445-c3e5-a0bb59afd4a8@samsung.com>
 <047990a5-263d-d447-7f0a-77a99e4b1f63@samsung.com>
 <25e3177f-e2b9-6be4-cfb8-24f87ccba45b@samsung.com>
 <VI1PR04MB702396D09FCED6CBA49B6AE7EE510@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <698357b4-32e7-7f4b-3e67-59f5890f574a@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5f2534b6-ff0d-46a9-56fc-08d78334e3fc
x-ms-traffictypediagnostic: VI1PR04MB5279:|VI1PR04MB5279:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5279653EFCAD7B764800AB01EE500@VI1PR04MB5279.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(39860400002)(346002)(376002)(189003)(199004)(51444003)(91956017)(64756008)(76116006)(6506007)(53546011)(7696005)(52536014)(33656002)(5660300002)(44832011)(81156014)(2906002)(71200400001)(478600001)(26005)(81166006)(8936002)(4326008)(9686003)(55016002)(186003)(30864003)(110136005)(8676002)(86362001)(54906003)(66946007)(66446008)(66556008)(66476007)(7416002)(316002)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5279;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XfOXAYTo6Hck3zB+wsWhTfMz7LmeevB9+Q2mTKQ5Wfs7SxxV/qCLvj9Ln7cqmQO2b0fFHm7kulRC5MMLNbz2F1NdfxRHRYDPwjGa4ytENGPC+oDorBUghZuLFy1UjcyVA83Nr1I0SDXzlCGU92P8VTEZqFtwcjfNIZDkEdhOiIRVbJZ7PV6289cJgxhN0BiPNEFOrtk3t+5K81wEMWD+US0xqHW8kWgPq/NaGLaimYfY/sQPFUZv+OpuqcFAGQr2fYhIKy9zhBMl4F1wzgrF4jP4Y/HhNiSGnOXKtduoFYUZ5dJFEfgbITRJWO43cUBkKqRG7VWx7cZ5js50gJWmgkG+gekiStW1OCX2KPWO2OrA+VerX47yG9zCLjpnOx5VWlFyRK6wlbOnkK2NFG/ztpWnAxUON4/sh9V1wvEymvrNNyC6izIbWEPou9nIPeaWpIgk/AhpgVMlrL026DQjhOSp81SJXG8NhULFw9O8Dnt7C4FfIrYCRufDE3/B8KdSC3sDk44dCVvfNSVQ5o5oFg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f2534b6-ff0d-46a9-56fc-08d78334e3fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 21:05:48.0836 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YWYN0UxmiYNi4RlmEvWPAMBDX31TTizdQqXjVpsQnHJOOwfEeO2NSK0edaKl11y5vSAx9/K3q/CMgwvRDCwDLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5279
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_130554_043681_C70EC379 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:60d listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
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

On 17.12.2019 02:35, Chanwoo Choi wrote:
> On 12/16/19 11:57 PM, Leonard Crestez wrote:
>> On 16.12.2019 03:00, Chanwoo Choi wrote:
>>> Hi,
>>>
>>> Also, I think that 'devfreq' word is not proper for device driver name.
>>> imx-bus.c or imx-noc.c or others to inform the role of this driver of developer.
>>
>> I'll rename to "imx-bus". Calling it "imx-noc" is not appropriate
>> because I also want to use it for PL301 NICs.
> 
> OK.
> 
>>
>>> And, I have a question.
>>> This driver adds the devfreq device with either passive governor
>>> or userspace governor.
>>>
>>> As I understood, the devfreq device with passive governor
>>> will be operated with imx8m-ddrc.c driver.
>>> But, when is operating with userspace governor?
>>
>> There are multiple scalable buses inside the SOC, for example there's a
>> NIC for display controllers and one for (pci+usb). They can use
>> userspace governor for explicit frequency control.
>>
>>> I think that you better to add the explanation to description
>>> for two scenarios how to operate with interconnect provider
>>> on either passive governor or userspace governor usage case.
>>
>> I'll elaborate the example in bindings.
> 
> OK.
> 
>>
>>> On 12/13/19 10:51 AM, Chanwoo Choi wrote:
>>>> On 12/13/19 10:30 AM, Chanwoo Choi wrote:
>>>>> Hi,
>>>>>
>>>>> On 11/15/19 5:09 AM, Leonard Crestez wrote:
>>>>>> Add initial support for dynamic frequency switching on pieces of the imx
>>>>>> interconnect fabric.
>>>>>>
>>>>>> All this driver does is set a clk rate based on an opp table, it does
>>>>>> not map register areas.
>>>>>>
>>>>>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>>>>>> ---
>>>>>>    drivers/devfreq/Kconfig       |   9 ++
>>>>>>    drivers/devfreq/Makefile      |   1 +
>>>>>>    drivers/devfreq/imx-devfreq.c | 150 ++++++++++++++++++++++++++++++++++
>>>>>>    3 files changed, 160 insertions(+)
>>>>>>    create mode 100644 drivers/devfreq/imx-devfreq.c
>>>>>>
>>>>>> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
>>>>>> index 923a6132e741..fef5ce831e90 100644
>>>>>> --- a/drivers/devfreq/Kconfig
>>>>>> +++ b/drivers/devfreq/Kconfig
>>>>>> @@ -98,10 +98,19 @@ config ARM_IMX8M_DDRC_DEVFREQ
>>>>>>    	select DEVFREQ_GOV_USERSPACE
>>>>>>    	help
>>>>>>    	  This adds the DEVFREQ driver for the i.MX8M DDR Controller. It allows
>>>>>>    	  adjusting DRAM frequency.
>>>>>>    
>>>>>> +config ARM_IMX_DEVFREQ
>>>>>> +	tristate "i.MX Generic DEVFREQ Driver"
>>>>>> +	depends on ARCH_MXC || COMPILE_TEST
>>>>>> +	select DEVFREQ_GOV_PASSIVE
>>>>>> +	select DEVFREQ_GOV_USERSPACE
>>>>>> +	help
>>>>>> +	  This adds the generic DEVFREQ driver for i.MX interconnects. It
>>>>>> +	  allows adjusting NIC/NOC frequency.
>>>>>> +
>>>>>>    config ARM_TEGRA_DEVFREQ
>>>>>>    	tristate "NVIDIA Tegra30/114/124/210 DEVFREQ Driver"
>>>>>>    	depends on ARCH_TEGRA_3x_SOC || ARCH_TEGRA_114_SOC || \
>>>>>>    		ARCH_TEGRA_132_SOC || ARCH_TEGRA_124_SOC || \
>>>>>>    		ARCH_TEGRA_210_SOC || \
>>>>>> diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
>>>>>> index 3eb4d5e6635c..61d0edee16f7 100644
>>>>>> --- a/drivers/devfreq/Makefile
>>>>>> +++ b/drivers/devfreq/Makefile
>>>>>> @@ -8,10 +8,11 @@ obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+= governor_userspace.o
>>>>>>    obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+= governor_passive.o
>>>>>>    
>>>>>>    # DEVFREQ Drivers
>>>>>>    obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+= exynos-bus.o
>>>>>>    obj-$(CONFIG_ARM_IMX8M_DDRC_DEVFREQ)	+= imx8m-ddrc.o
>>>>>> +obj-$(CONFIG_ARM_IMX_DEVFREQ)		+= imx-devfreq.o
>>>>>>    obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+= rk3399_dmc.o
>>>>>>    obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+= tegra30-devfreq.o
>>>>>>    obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+= tegra20-devfreq.o
>>>>>>    
>>>>>>    # DEVFREQ Event Drivers
>>>>>> diff --git a/drivers/devfreq/imx-devfreq.c b/drivers/devfreq/imx-devfreq.c
>>>>>> new file mode 100644
>>>>>> index 000000000000..620b344e87aa
>>>>>> --- /dev/null
>>>>>> +++ b/drivers/devfreq/imx-devfreq.c
>>>>>> @@ -0,0 +1,150 @@
>>>>>> +// SPDX-License-Identifier: GPL-2.0
>>>>>> +/*
>>>>>> + * Copyright 2019 NXP
>>>>>> + */
>>>>>> +
>>>>>> +#include <linux/clk.h>
>>>>>> +#include <linux/devfreq.h>
>>>>>> +#include <linux/device.h>
>>>>>> +#include <linux/module.h>
>>>>>> +#include <linux/of_device.h>
>>>>>> +#include <linux/pm_opp.h>
>>>>>> +#include <linux/platform_device.h>
>>>>>> +#include <linux/slab.h>
>>>>>> +
>>>>>> +struct imx_devfreq {
>>>>>> +	struct devfreq_dev_profile profile;
>>>>>> +	struct devfreq *devfreq;
>>>>>> +	struct clk *clk;
>>>>>> +	struct devfreq_passive_data passive_data;
>>>>>> +};
>>>>>> +
>>>>>> +static int imx_devfreq_target(struct device *dev,
>>>>>> +			      unsigned long *freq, u32 flags)
>>>>>
>>>>> Don't use space for the indentation. Please use only tab.
>>
>> OK

The spaces are required in order to align arguments to open paranthesis. 
Should I drop that?

It seems that check_patch.pl and process/coding-style.rst doesn't have a 
strong opinion on this; my personal preference is for long argument 
lists to just use double indentation.

>>>>>> +{
>>>>>> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
>>>>>> +	struct dev_pm_opp *new_opp;
>>>>>> +	unsigned long new_freq;
>>>>>> +	int ret;
>>>>>> +
>>>>>> +	new_opp = devfreq_recommended_opp(dev, freq, flags);
>>>>>> +	if (IS_ERR(new_opp)) {
>>>>>> +		ret = PTR_ERR(new_opp);
>>>>>> +		dev_err(dev, "failed to get recommended opp: %d\n", ret);
>>>>>> +		return ret;
>>>>>> +	}
>>>>>> +	new_freq = dev_pm_opp_get_freq(new_opp);
>>>>>> +	dev_pm_opp_put(new_opp);
>>>>>> +
>>>>>> +	return clk_set_rate(priv->clk, new_freq);
>>>>>> +}
>>>>>> +
>>>>>> +static int imx_devfreq_get_cur_freq(struct device *dev, unsigned long *freq)
>>>>>> +{
>>>>>> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
>>>>>> +
>>>>>> +	*freq = clk_get_rate(priv->clk);
>>>>>> +
>>>>>> +	return 0;
>>>>>> +}
>>>>>> +
>>>>>> +static int imx_devfreq_get_dev_status(struct device *dev,
>>>>>> +				      struct devfreq_dev_status *stat)
>>>>>
>>>>> ditto. Please use tab for the indentation.
>>>>>
>>>>>> +{
>>>>>> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
>>>>>> +
>>>>>> +	stat->busy_time = 0;
>>>>>> +	stat->total_time = 0;
>>>>>> +	stat->current_frequency = clk_get_rate(priv->clk);
>>>>>> +
>>>>>> +	return 0;
>>>>>> +}
>>>>>> +
>>>>>> +static void imx_devfreq_exit(struct device *dev)
>>>>>> +{
>>>>>> +	dev_pm_opp_of_remove_table(dev);
>>>>>> +}
>>>>>> +
>>>>>> +static int imx_devfreq_probe(struct platform_device *pdev)
>>>>>> +{
>>>>>> +	struct device *dev = &pdev->dev;
>>>>>> +	struct imx_devfreq *priv;
>>>>>
>>>>> How about changing the variable name 'priv' to 'imx' or 'imx_data'?
>>>>> because it is not easy to catch the role of 'priv' from variable name.
>>
>> The name "priv" refers to private data of current device: it is short
>> and not ambiguous in this context. I don't think that mentioning "imx"
>> adds any additional useful information.
>>
>> It doesn't seem like there's much of a convention for "local variable
>> containing private data", for example exynos-bus.c uses "struct
>> exynos_bus* bus" internally.
> 
> OK. it is nitpick. Keep your style.
> 
>>
>>>>>
>>>>>> +	const char *gov = DEVFREQ_GOV_USERSPACE;
>>>>>> +	void *govdata = NULL;
>>>>>
>>>>> How about changing the variable name 'govdata' to 'gov_data'?
>>>>> - govdata -> gov_data
>>
>> OK
>>
>>>>>> +	int ret;
>>>>>> +
>>>>>> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>>>>>> +	if (!priv)
>>>>>> +		return -ENOMEM;
>>>>>> +
>>>>>> +	priv->clk = devm_clk_get(dev, NULL);
>>>>>
>>>>> nitpick: because the clock-name is not mandatory.
>>>>> Don't need to specify the clock name to inform the role of clock
>>>>> of other developer/user?
>>>>>
>>>>> For example, "ddr", "bus" and so on.
>>
>> I'll call this bus, but I'm not sure it's useful when a single clock is
>> involved.
>>
>>>> And, this driver doesn't include the 'clk_prepare_enable'.
>>>> how to enable the clock?
>>
>> Clocks are either always on or perhaps controlled by some other
>> peripheral. This driver only provides scaling.
> 
> It is not proper use-case of clock. If device driver
> want to control the clock, it have to be enabled on device driver.

> Even it clock is always, the user don't know the state of clock.
> Also, user can't know what kind of device driver control the clock.
> 
> It have to be controlled on this device driver
> before changing the clock frequency.

 From clock framework perspective prepare/enable and rate bits can be 
controlled separately.

Many peripherals are grouped with their own bus (for example a PL301 
NIC) which is normally off and only gets enabled when explicitly 
requested by drivers. If this devfreq driver always enabled bus clocks 
then it would waste power for no reason.

For example a display controller will first enable clocks to allow 
access to device registers, then configure a resolution and make a 
bandwith request which gets translated a min_freq request. Then when the 
display is blanked the entire display bus should be powered off, even if 
this makes control registers inaccessible.

This series only enables scaling for the main NOC which can't be turned 
off anyway.

>>>>>> +	if (IS_ERR(priv->clk)) {
>>>>>> +		ret = PTR_ERR(priv->clk);
>>>>>> +		dev_err(dev, "failed to fetch clk: %d\n", ret);
>>>>>> +		return ret;
>>>>>> +	}
>>>>>> +	platform_set_drvdata(pdev, priv);
>>>>>> +
>>>>>> +	ret = dev_pm_opp_of_add_table(dev);
>>>>>> +	if (ret < 0) {
>>>>>> +		dev_err(dev, "failed to get OPP table\n");
>>>>>> +		return ret;
>>>>>> +	}
>>>>>> +
>>>>>> +	priv->profile.polling_ms = 1000;
>>>>>> +	priv->profile.target = imx_devfreq_target;
>>>>>> +	priv->profile.get_dev_status = imx_devfreq_get_dev_status;
>>>>>> +	priv->profile.exit = imx_devfreq_exit;
>>>>>> +	priv->profile.get_cur_freq = imx_devfreq_get_cur_freq;
>>>>>> +	priv->profile.initial_freq = clk_get_rate(priv->clk);
>>>>>> +
>>>>>> +	/* Handle passive devfreq parent link */
>>>>>> +	priv->passive_data.parent = devfreq_get_devfreq_by_phandle(dev, 0);
>>>>>> +	if (!IS_ERR(priv->passive_data.parent)) {
>>>>>> +		dev_info(dev, "setup passive link to %s\n",
>>>>>> +			 dev_name(priv->passive_data.parent->dev.parent));
>>>>>> +		gov = DEVFREQ_GOV_PASSIVE;
>>>>>> +		govdata = &priv->passive_data;
>>>>>> +	} else if (priv->passive_data.parent != ERR_PTR(-ENODEV)) {
>>>>>> +		// -ENODEV means no parent: not an error.
>>>>>> +		ret = PTR_ERR(priv->passive_data.parent);
>>>>>> +		if (ret != -EPROBE_DEFER)
>>>>>> +			dev_warn(dev, "failed to get initialize passive parent: %d\n",
>>>>>> +				 ret);
>>>>>> +		goto err;
>>>>>> +	}
>>>>>
>>>>> You better to change the exception handling as following: It is more simple.
>>>>>
>>>>> 	} else if (PTR_ERR(priv->passive_data.parent) == -EPROBE_DEFER)
>>>>> 			|| PTR_ERR(priv->passive_data.parent) == -ENODEV) {
>>>>> 		goto err;
>>>>> 	} else {
>>>>> 		ret = PTR_ERR(priv->passive_data.parent);
>>>>> 		dev_err(dev, "failed to get initialize passive parent: %d\n", ret);
>>>>> 		goto err;
>>>>> 	}
>>
>> But -ENODEV is not an error, it means no passive parent was found.
> 
> OK. just I want to make 'if statement' more simple. This style
> is complicated.

I can avoid handling EPROBE_DEFER in a nested if.

>>>>>> +	priv->devfreq = devm_devfreq_add_device(dev, &priv->profile,
>>>>>> +						gov, govdata);
>>>>>> +	if (IS_ERR(priv->devfreq)) {
>>>>>> +		ret = PTR_ERR(priv->devfreq);
>>>>>> +		dev_err(dev, "failed to add devfreq device: %d\n", ret);
>>>>>> +		goto err;
>>>>>> +	}
>>>>>> +
>>>>>> +	return 0;
>>>>>> +
>>>>>> +err:
>>>>>> +	dev_pm_opp_of_remove_table(dev);
>>>>>> +	return ret;
>>>>>> +}
>>>>>> +
>>>>>> +static const struct of_device_id imx_devfreq_of_match[] = {
>>>>>> +	{ .compatible = "fsl,imx8m-noc", },
>>>>>> +	{ .compatible = "fsl,imx8m-nic", },
>>>>>> +	{ /* sentinel */ },
>>>>>> +};
>>>>>> +MODULE_DEVICE_TABLE(of, imx_devfreq_of_match);
>>>>>> +
>>>>>> +static struct platform_driver imx_devfreq_platdrv = {
>>>>>> +	.probe		= imx_devfreq_probe,
>>>>>> +	.driver = {
>>>>>> +		.name	= "imx-devfreq",
>>>>>> +		.of_match_table = of_match_ptr(imx_devfreq_of_match),
>>>>>> +	},
>>>>>> +};
>>>>>> +module_platform_driver(imx_devfreq_platdrv);
>>>>>> +
>>>>>> +MODULE_DESCRIPTION("Generic i.MX bus frequency driver");
>>>>>
>>>>> If this driver is for bus frequency, you better to use 'bus' for the clock-name
>>>>> for the readability.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
