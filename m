Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A290D1243F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:10:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=UNrzWUmQLJ5GfSgTasuZjwC77m9saCAXbZ/WTBlKRRY=; b=afbfKlU8M360IW
	+77qf/BrpNOmo3bVCrjeWfHLt+7H1Fy8iNkrMDoxmfE1SJEqgceDQQPFkOEy2ZPjw6gjSWp2h6vMq
	vMU7OxAwIDWHBct6gIL6cnv7IX1J+tIamJ4H5rFEtaIL/s0Bayk3C1QuQTVi5JrNoaUq9QIwU3uN5
	ZKZQnLZu09nE46j+TSUlrzuXajFOeWwT6bjC5oRmOg2p/ga13knELPIDwNM1IZbq3T5WTw8ABsRz/
	lvPalJKkqen6FM7hBKpF+mz/IsdKkKkIycFiOG6Lih+sX5UkP06RN3McpC5tbYvqAILnl3znJDVT5
	yGNYdhvnV/7YyEvLadOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWID-0001bO-MA; Wed, 18 Dec 2019 10:10:57 +0000
Received: from mail-eopbgr150072.outbound.protection.outlook.com
 ([40.107.15.72] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWI3-0001aa-Ok
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:10:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k6HApREaDlW03sQlL/J5vZof/Ze1CsgeNPvKvMM8IekaYcRI93JjW55nhcRKQBu3f4fR2r7NpFAxWtrF/Tq9f1gVK9v+lynVuP84nt2MT2WO63UNXWYEMBVUHCBZIkSool8SquA1dWQPI/EnulmvlSrKEaXmLMljFLmV1RLxELTw+bjROwv2o9aDsOomAMITl563ZBtVMNQjji6+OvmeaQCGqekATttPxExKpaOI7ZKanGj6pAcVeUTObo8YWj1NEfhr25X7Ru3k7iqlSxICzBEFsJGPD6WsaMFEVBVnC818vwM5g2+p8cZEV2QigWJP/nizgX6qNx3qwOAmMLOIGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E3vZ5VTEfro/5zfF+x14NopQuC0XDBVQ+f6pKW8DLMA=;
 b=nY/fTFKEx93gP1eIY6T8ssdUmSRWICGlu3EEM+is+2vlpwHgNWMtJ9SP/LT0SJRcPSgnfJ+zVd7iZrmgGIzTQ75xk3vra4uagcqqFnqvNqMZQ7WgIpQlcp29aNr1aSvsVqLEE7xB1Ip4/lZVHfdGsb7pbyxumTb3kUtw2wIpvTc5hmRFi2gyzZDEp9DtJuf/dnmUpucXTlCZxN8dHPDxm0OySCclKr2eG07v6W39LokC8JeqJb617kpq3Zh6Mhq44FZxWOzelVZqZT9Sg9tw0kDtjRY9cEmjyqmtCBAZARcQbpd1FS3VH/v0GSq/gNBzcSJd8nevSUH9lcFtS6MWZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E3vZ5VTEfro/5zfF+x14NopQuC0XDBVQ+f6pKW8DLMA=;
 b=iPA66yGUiNSiqk7svTqYoX1rr9wEh+8oR1bAptMBbwfEpsc6edybHwP39mFv5iX+ZTKdFnPub+AQF48Y3pM5QqEnEaRxUfhywedVRkaZX5jw/XXrHBa5lq5Olk4BrBIYoLDivMbcnK6xMTjiDFoDxjEcedYsdMHujysGJqdW0vc=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4384.eurprd04.prod.outlook.com (20.177.55.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Wed, 18 Dec 2019 10:10:44 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2559.012; Wed, 18 Dec 2019
 10:10:44 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Georgi Djakov
 <georgi.djakov@linaro.org>
Subject: Re: [PATCH RFC v6 2/9] PM / devfreq: Add generic imx bus scaling
 driver
Thread-Topic: [PATCH RFC v6 2/9] PM / devfreq: Add generic imx bus scaling
 driver
Thread-Index: AQHVmyeZDID07b0oVkajwef04uXjmg==
Date: Wed, 18 Dec 2019 10:10:44 +0000
Message-ID: <VI1PR04MB7023AE8CE3E05FE3E70D1FEEEE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <CGME20191114201049epcas5p4a24607634af7b31e6a2dbdb4166dd862@epcas5p4.samsung.com>
 <f329e715898a6b9fd0cee707a93fb1e144e31bd4.1573761527.git.leonard.crestez@nxp.com>
 <8734a934-79e2-7445-c3e5-a0bb59afd4a8@samsung.com>
 <047990a5-263d-d447-7f0a-77a99e4b1f63@samsung.com>
 <25e3177f-e2b9-6be4-cfb8-24f87ccba45b@samsung.com>
 <VI1PR04MB702396D09FCED6CBA49B6AE7EE510@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <698357b4-32e7-7f4b-3e67-59f5890f574a@samsung.com>
 <VI1PR04MB7023F0CCD7FAF5EEA74C7873EE500@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <f4267efa-1345-4fab-e6a7-73fca674dd72@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [2a04:241e:500:9200:9d5e:ad7d:41e0:989]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c599b84c-590f-4f35-9fc5-08d783a28b86
x-ms-traffictypediagnostic: VI1PR04MB4384:|VI1PR04MB4384:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB438416867FB3196FC8BAA2ECEE530@VI1PR04MB4384.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(136003)(396003)(366004)(189003)(199004)(51444003)(52314003)(55016002)(5660300002)(8676002)(71200400001)(54906003)(8936002)(6506007)(7416002)(53546011)(316002)(81166006)(9686003)(110136005)(30864003)(81156014)(86362001)(66556008)(64756008)(76116006)(66446008)(33656002)(66476007)(91956017)(52536014)(478600001)(44832011)(4326008)(7696005)(186003)(2906002)(66946007)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4384;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q/leyaFsZQWYDGNYI9A1+V/M8ohVKViKfNJIqqzp4G9KxQQkgPNjoxZtgZ2+ZGqgqNHBnunuOJMWLBzDcfst/Nm9p4WSnUAhRU5KdC3hk3QhQMfggg127BsQrouxaJajwram7ijTAKpGTKJn8+VN6RoWsYCjIiGckpcpFguNRiskIzP4YihhnI2fFCvui7louj5TVEnzAGuFduB2HfcqBfjbfBjp4rhNykn7e1L5gC/4ss+FBF3yfANiXF6NLGkmxqoJXyRUUWFP0R8eEPne6GltDCAez7SpgJEtvfYwM4JkkyVMjBUM9FOlYg8BAfchr1lMor41r1MZx7QwMRiNOKLKExdDfV5RLTImYLfamkVcYcYkMTq3xkFRm4wsuoraH+J85m3XHVxyZToM6DUciAwNwNmBfNcIThqUQ0b3h+Lqh+/hXYdVuGhDTzm8sS4q8NjW2qb32OwzM4d+0Dbhd1UpAtmQaXWA5n9aaMrt+uSrz0pNh5t0d/nyYv3PYWa5JA03A4iFtrtLuDL8WwyJ80aBEwjywLk8h2aHINBp99w=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c599b84c-590f-4f35-9fc5-08d783a28b86
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 10:10:44.3736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yGkv2H1wHr6DNqfo5VaUPaLg9AKnGmfcBplssF5Cb5ohIfwv+56Ml9FhozzjVtTGQN5W/YJqGRjO4MFGr85uJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4384
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_021047_948392_067DDF1E 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 18.12.2019 05:08, Chanwoo Choi wrote:
> On 12/18/19 6:05 AM, Leonard Crestez wrote:
>> On 17.12.2019 02:35, Chanwoo Choi wrote:
>>> On 12/16/19 11:57 PM, Leonard Crestez wrote:
>>>> On 16.12.2019 03:00, Chanwoo Choi wrote:
>>>>> Hi,
>>>>>
>>>>> Also, I think that 'devfreq' word is not proper for device driver name.
>>>>> imx-bus.c or imx-noc.c or others to inform the role of this driver of developer.
>>>>
>>>> I'll rename to "imx-bus". Calling it "imx-noc" is not appropriate
>>>> because I also want to use it for PL301 NICs.
>>>
>>> OK.
>>>
>>>>
>>>>> And, I have a question.
>>>>> This driver adds the devfreq device with either passive governor
>>>>> or userspace governor.
>>>>>
>>>>> As I understood, the devfreq device with passive governor
>>>>> will be operated with imx8m-ddrc.c driver.
>>>>> But, when is operating with userspace governor?
>>>>
>>>> There are multiple scalable buses inside the SOC, for example there's a
>>>> NIC for display controllers and one for (pci+usb). They can use
>>>> userspace governor for explicit frequency control.
>>>>
>>>>> I think that you better to add the explanation to description
>>>>> for two scenarios how to operate with interconnect provider
>>>>> on either passive governor or userspace governor usage case.
>>>>
>>>> I'll elaborate the example in bindings.
>>>
>>> OK.
>>>
>>>>
>>>>> On 12/13/19 10:51 AM, Chanwoo Choi wrote:
>>>>>> On 12/13/19 10:30 AM, Chanwoo Choi wrote:
>>>>>>> Hi,
>>>>>>>
>>>>>>> On 11/15/19 5:09 AM, Leonard Crestez wrote:
>>>>>>>> Add initial support for dynamic frequency switching on pieces of the imx
>>>>>>>> interconnect fabric.
>>>>>>>>
>>>>>>>> All this driver does is set a clk rate based on an opp table, it does
>>>>>>>> not map register areas.
>>>>>>>>
>>>>>>>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>>>>>>>> ---
>>>>>>>>     drivers/devfreq/Kconfig       |   9 ++
>>>>>>>>     drivers/devfreq/Makefile      |   1 +
>>>>>>>>     drivers/devfreq/imx-devfreq.c | 150 ++++++++++++++++++++++++++++++++++
>>>>>>>>     3 files changed, 160 insertions(+)
>>>>>>>>     create mode 100644 drivers/devfreq/imx-devfreq.c
>>>>>>>>
>>>>>>>> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
>>>>>>>> index 923a6132e741..fef5ce831e90 100644
>>>>>>>> --- a/drivers/devfreq/Kconfig
>>>>>>>> +++ b/drivers/devfreq/Kconfig
>>>>>>>> @@ -98,10 +98,19 @@ config ARM_IMX8M_DDRC_DEVFREQ
>>>>>>>>     	select DEVFREQ_GOV_USERSPACE
>>>>>>>>     	help
>>>>>>>>     	  This adds the DEVFREQ driver for the i.MX8M DDR Controller. It allows
>>>>>>>>     	  adjusting DRAM frequency.
>>>>>>>>     
>>>>>>>> +config ARM_IMX_DEVFREQ
>>>>>>>> +	tristate "i.MX Generic DEVFREQ Driver"
>>>>>>>> +	depends on ARCH_MXC || COMPILE_TEST
>>>>>>>> +	select DEVFREQ_GOV_PASSIVE
>>>>>>>> +	select DEVFREQ_GOV_USERSPACE
>>>>>>>> +	help
>>>>>>>> +	  This adds the generic DEVFREQ driver for i.MX interconnects. It
>>>>>>>> +	  allows adjusting NIC/NOC frequency.
>>>>>>>> +
>>>>>>>>     config ARM_TEGRA_DEVFREQ
>>>>>>>>     	tristate "NVIDIA Tegra30/114/124/210 DEVFREQ Driver"
>>>>>>>>     	depends on ARCH_TEGRA_3x_SOC || ARCH_TEGRA_114_SOC || \
>>>>>>>>     		ARCH_TEGRA_132_SOC || ARCH_TEGRA_124_SOC || \
>>>>>>>>     		ARCH_TEGRA_210_SOC || \
>>>>>>>> diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
>>>>>>>> index 3eb4d5e6635c..61d0edee16f7 100644
>>>>>>>> --- a/drivers/devfreq/Makefile
>>>>>>>> +++ b/drivers/devfreq/Makefile
>>>>>>>> @@ -8,10 +8,11 @@ obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+= governor_userspace.o
>>>>>>>>     obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+= governor_passive.o
>>>>>>>>     
>>>>>>>>     # DEVFREQ Drivers
>>>>>>>>     obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+= exynos-bus.o
>>>>>>>>     obj-$(CONFIG_ARM_IMX8M_DDRC_DEVFREQ)	+= imx8m-ddrc.o
>>>>>>>> +obj-$(CONFIG_ARM_IMX_DEVFREQ)		+= imx-devfreq.o
>>>>>>>>     obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+= rk3399_dmc.o
>>>>>>>>     obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+= tegra30-devfreq.o
>>>>>>>>     obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+= tegra20-devfreq.o
>>>>>>>>     
>>>>>>>>     # DEVFREQ Event Drivers
>>>>>>>> diff --git a/drivers/devfreq/imx-devfreq.c b/drivers/devfreq/imx-devfreq.c
>>>>>>>> new file mode 100644
>>>>>>>> index 000000000000..620b344e87aa
>>>>>>>> --- /dev/null
>>>>>>>> +++ b/drivers/devfreq/imx-devfreq.c
>>>>>>>> @@ -0,0 +1,150 @@
>>>>>>>> +// SPDX-License-Identifier: GPL-2.0
>>>>>>>> +/*
>>>>>>>> + * Copyright 2019 NXP
>>>>>>>> + */
>>>>>>>> +
>>>>>>>> +#include <linux/clk.h>
>>>>>>>> +#include <linux/devfreq.h>
>>>>>>>> +#include <linux/device.h>
>>>>>>>> +#include <linux/module.h>
>>>>>>>> +#include <linux/of_device.h>
>>>>>>>> +#include <linux/pm_opp.h>
>>>>>>>> +#include <linux/platform_device.h>
>>>>>>>> +#include <linux/slab.h>
>>>>>>>> +
>>>>>>>> +struct imx_devfreq {
>>>>>>>> +	struct devfreq_dev_profile profile;
>>>>>>>> +	struct devfreq *devfreq;
>>>>>>>> +	struct clk *clk;
>>>>>>>> +	struct devfreq_passive_data passive_data;
>>>>>>>> +};
>>>>>>>> +
>>>>>>>> +static int imx_devfreq_target(struct device *dev,
>>>>>>>> +			      unsigned long *freq, u32 flags)
>>>>>>>
>>>>>>> Don't use space for the indentation. Please use only tab.
>>>>
>>>> OK
>>
>> The spaces are required in order to align arguments to open paranthesis.
>> Should I drop that?
>>
>> It seems that check_patch.pl and process/coding-style.rst doesn't have a
>> strong opinion on this; my personal preference is for long argument
>> lists to just use double indentation.
> 
> Generally, almost patches use the tab for the indentation.
> I don't use space for the indentation. If use the tab
> for the indentation, it is not harmful for the readability.
> 
> If use the space for the pretty to make the alignment between parameter,
> I think it it not good.

OK, I'll just use two tabs. This also matches my personal preference.

>>>>>>>> +{
>>>>>>>> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
>>>>>>>> +	struct dev_pm_opp *new_opp;
>>>>>>>> +	unsigned long new_freq;
>>>>>>>> +	int ret;
>>>>>>>> +
>>>>>>>> +	new_opp = devfreq_recommended_opp(dev, freq, flags);
>>>>>>>> +	if (IS_ERR(new_opp)) {
>>>>>>>> +		ret = PTR_ERR(new_opp);
>>>>>>>> +		dev_err(dev, "failed to get recommended opp: %d\n", ret);
>>>>>>>> +		return ret;
>>>>>>>> +	}
>>>>>>>> +	new_freq = dev_pm_opp_get_freq(new_opp);
>>>>>>>> +	dev_pm_opp_put(new_opp);
>>>>>>>> +
>>>>>>>> +	return clk_set_rate(priv->clk, new_freq);
>>>>>>>> +}
>>>>>>>> +
>>>>>>>> +static int imx_devfreq_get_cur_freq(struct device *dev, unsigned long *freq)
>>>>>>>> +{
>>>>>>>> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
>>>>>>>> +
>>>>>>>> +	*freq = clk_get_rate(priv->clk);
>>>>>>>> +
>>>>>>>> +	return 0;
>>>>>>>> +}
>>>>>>>> +
>>>>>>>> +static int imx_devfreq_get_dev_status(struct device *dev,
>>>>>>>> +				      struct devfreq_dev_status *stat)
>>>>>>>
>>>>>>> ditto. Please use tab for the indentation.
>>>>>>>
>>>>>>>> +{
>>>>>>>> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
>>>>>>>> +
>>>>>>>> +	stat->busy_time = 0;
>>>>>>>> +	stat->total_time = 0;
>>>>>>>> +	stat->current_frequency = clk_get_rate(priv->clk);
>>>>>>>> +
>>>>>>>> +	return 0;
>>>>>>>> +}
>>>>>>>> +
>>>>>>>> +static void imx_devfreq_exit(struct device *dev)
>>>>>>>> +{
>>>>>>>> +	dev_pm_opp_of_remove_table(dev);
>>>>>>>> +}
>>>>>>>> +
>>>>>>>> +static int imx_devfreq_probe(struct platform_device *pdev)
>>>>>>>> +{
>>>>>>>> +	struct device *dev = &pdev->dev;
>>>>>>>> +	struct imx_devfreq *priv;
>>>>>>>
>>>>>>> How about changing the variable name 'priv' to 'imx' or 'imx_data'?
>>>>>>> because it is not easy to catch the role of 'priv' from variable name.
>>>>
>>>> The name "priv" refers to private data of current device: it is short
>>>> and not ambiguous in this context. I don't think that mentioning "imx"
>>>> adds any additional useful information.
>>>>
>>>> It doesn't seem like there's much of a convention for "local variable
>>>> containing private data", for example exynos-bus.c uses "struct
>>>> exynos_bus* bus" internally.
>>>
>>> OK. it is nitpick. Keep your style.
>>>
>>>>
>>>>>>>
>>>>>>>> +	const char *gov = DEVFREQ_GOV_USERSPACE;
>>>>>>>> +	void *govdata = NULL;
>>>>>>>
>>>>>>> How about changing the variable name 'govdata' to 'gov_data'?
>>>>>>> - govdata -> gov_data
>>>>
>>>> OK
>>>>
>>>>>>>> +	int ret;
>>>>>>>> +
>>>>>>>> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>>>>>>>> +	if (!priv)
>>>>>>>> +		return -ENOMEM;
>>>>>>>> +
>>>>>>>> +	priv->clk = devm_clk_get(dev, NULL);
>>>>>>>
>>>>>>> nitpick: because the clock-name is not mandatory.
>>>>>>> Don't need to specify the clock name to inform the role of clock
>>>>>>> of other developer/user?
>>>>>>>
>>>>>>> For example, "ddr", "bus" and so on.
>>>>
>>>> I'll call this bus, but I'm not sure it's useful when a single clock is
>>>> involved.
>>>>
>>>>>> And, this driver doesn't include the 'clk_prepare_enable'.
>>>>>> how to enable the clock?
>>>>
>>>> Clocks are either always on or perhaps controlled by some other
>>>> peripheral. This driver only provides scaling.
>>>
>>> It is not proper use-case of clock. If device driver
>>> want to control the clock, it have to be enabled on device driver.
>>
>>> Even it clock is always, the user don't know the state of clock.
>>> Also, user can't know what kind of device driver control the clock.
>>>
>>> It have to be controlled on this device driver
>>> before changing the clock frequency.
>>
>>   From clock framework perspective prepare/enable and rate bits can be
>> controlled separately.
>>
>> Many peripherals are grouped with their own bus (for example a PL301
>> NIC) which is normally off and only gets enabled when explicitly
>> requested by drivers. If this devfreq driver always enabled bus clocks
>> then it would waste power for no reason.
> 
> You can save the power with following sequence.
> You are keeping the following sequence without any problem.
> 	clk_prepare_enable()
> 	clk_set_rate()
> 	clk_disable_unprepare()
> 
> clk API support the reference count for the clock user.
> It doesn't affect the any behavior of other device sharing the bus clock
> and waste any power-consumption because it will always restore
> the reference count after changing the clock rate.

But this doesn't serve any purpose?

In some cases (depending on clock flags like CLK_SET_RATE_GATE or 
CLK_SET_RATE_UNGATE flags) the clk_set_rate function can require than 
clocks are either on or off and otherwise return an error.

For imx bus clocks there is no such requirement.

>> For example a display controller will first enable clocks to allow
>> access to device registers, then configure a resolution and make a
>> bandwith request which gets translated a min_freq request. Then when the
>> display is blanked the entire display bus should be powered off, even if
>> this makes control registers inaccessible.
>>
>> This series only enables scaling for the main NOC which can't be turned
>> off anyway.
>>
>>>>>>>> +	if (IS_ERR(priv->clk)) {
>>>>>>>> +		ret = PTR_ERR(priv->clk);
>>>>>>>> +		dev_err(dev, "failed to fetch clk: %d\n", ret);
>>>>>>>> +		return ret;
>>>>>>>> +	}
>>>>>>>> +	platform_set_drvdata(pdev, priv);
>>>>>>>> +
>>>>>>>> +	ret = dev_pm_opp_of_add_table(dev);
>>>>>>>> +	if (ret < 0) {
>>>>>>>> +		dev_err(dev, "failed to get OPP table\n");
>>>>>>>> +		return ret;
>>>>>>>> +	}
>>>>>>>> +
>>>>>>>> +	priv->profile.polling_ms = 1000;
>>>>>>>> +	priv->profile.target = imx_devfreq_target;
>>>>>>>> +	priv->profile.get_dev_status = imx_devfreq_get_dev_status;
>>>>>>>> +	priv->profile.exit = imx_devfreq_exit;
>>>>>>>> +	priv->profile.get_cur_freq = imx_devfreq_get_cur_freq;
>>>>>>>> +	priv->profile.initial_freq = clk_get_rate(priv->clk);
>>>>>>>> +
>>>>>>>> +	/* Handle passive devfreq parent link */
>>>>>>>> +	priv->passive_data.parent = devfreq_get_devfreq_by_phandle(dev, 0);
>>>>>>>> +	if (!IS_ERR(priv->passive_data.parent)) {
>>>>>>>> +		dev_info(dev, "setup passive link to %s\n",
>>>>>>>> +			 dev_name(priv->passive_data.parent->dev.parent));
>>>>>>>> +		gov = DEVFREQ_GOV_PASSIVE;
>>>>>>>> +		govdata = &priv->passive_data;
>>>>>>>> +	} else if (priv->passive_data.parent != ERR_PTR(-ENODEV)) {
>>>>>>>> +		// -ENODEV means no parent: not an error.
>>>>>>>> +		ret = PTR_ERR(priv->passive_data.parent);
>>>>>>>> +		if (ret != -EPROBE_DEFER)
>>>>>>>> +			dev_warn(dev, "failed to get initialize passive parent: %d\n",
>>>>>>>> +				 ret);
>>>>>>>> +		goto err;
>>>>>>>> +	}
>>>>>>>
>>>>>>> You better to change the exception handling as following: It is more simple.
>>>>>>>
>>>>>>> 	} else if (PTR_ERR(priv->passive_data.parent) == -EPROBE_DEFER)
>>>>>>> 			|| PTR_ERR(priv->passive_data.parent) == -ENODEV) {
>>>>>>> 		goto err;
>>>>>>> 	} else {
>>>>>>> 		ret = PTR_ERR(priv->passive_data.parent);
>>>>>>> 		dev_err(dev, "failed to get initialize passive parent: %d\n", ret);
>>>>>>> 		goto err;
>>>>>>> 	}
>>>>
>>>> But -ENODEV is not an error, it means no passive parent was found.
>>>
>>> OK. just I want to make 'if statement' more simple. This style
>>> is complicated.
>>
>> I can avoid handling EPROBE_DEFER in a nested if.
> 
> Anyway, if you make the exception more simple, I'm ok.
> 
>>
>>>>>>>> +	priv->devfreq = devm_devfreq_add_device(dev, &priv->profile,
>>>>>>>> +						gov, govdata);
>>>>>>>> +	if (IS_ERR(priv->devfreq)) {
>>>>>>>> +		ret = PTR_ERR(priv->devfreq);
>>>>>>>> +		dev_err(dev, "failed to add devfreq device: %d\n", ret);
>>>>>>>> +		goto err;
>>>>>>>> +	}
>>>>>>>> +
>>>>>>>> +	return 0;
>>>>>>>> +
>>>>>>>> +err:
>>>>>>>> +	dev_pm_opp_of_remove_table(dev);
>>>>>>>> +	return ret;
>>>>>>>> +}
>>>>>>>> +
>>>>>>>> +static const struct of_device_id imx_devfreq_of_match[] = {
>>>>>>>> +	{ .compatible = "fsl,imx8m-noc", },
>>>>>>>> +	{ .compatible = "fsl,imx8m-nic", },
>>>>>>>> +	{ /* sentinel */ },
>>>>>>>> +};
>>>>>>>> +MODULE_DEVICE_TABLE(of, imx_devfreq_of_match);
>>>>>>>> +
>>>>>>>> +static struct platform_driver imx_devfreq_platdrv = {
>>>>>>>> +	.probe		= imx_devfreq_probe,
>>>>>>>> +	.driver = {
>>>>>>>> +		.name	= "imx-devfreq",
>>>>>>>> +		.of_match_table = of_match_ptr(imx_devfreq_of_match),
>>>>>>>> +	},
>>>>>>>> +};
>>>>>>>> +module_platform_driver(imx_devfreq_platdrv);
>>>>>>>> +
>>>>>>>> +MODULE_DESCRIPTION("Generic i.MX bus frequency driver");
>>>>>>>
>>>>>>> If this driver is for bus frequency, you better to use 'bus' for the clock-name
>>>>>>> for the readability.
>>
>>
>>
>>
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
