Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15ADEF79D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 18:23:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=bjf0iO06QB3PGzLgrXk1yHrLEx9rb1XvHgnFTmZ3O0c=; b=RrQWiijVGsrj+0
	8bleoJGlokjwe2iOMKLwR3JejfqS9+C3kzSyANKw6ac/RsVC8T0Qg8BiMxjYCWuKfuaDjJaVGTfB7
	/3lEr5ezyOWdH8jgtw5yYIKHBbYiHQnGcoWY10bjsmtokudrpRmmIzdXvkEMo0wOiwhHuo25Qvf2v
	40HShQ2OMopO71q/rfegqNRTNW6qDbjiIdLK4nf+910V73X+QRRbv5BCpYUd7Svmqa7Q2avXBz0GI
	LM3ticaUDdnTancSl5r3Zk08yd9N3KcGeXBxOhA58uw5GRQ2vKCibktmkGUX4P0bZ75/MeMmInw3s
	mxJAYGwaFvfeyLD5255w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUDPu-0006la-Fr; Mon, 11 Nov 2019 17:23:54 +0000
Received: from mail-eopbgr50079.outbound.protection.outlook.com ([40.107.5.79]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUDPk-0006ko-4J
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 17:23:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=buVBkTXzTcKIgx75oZU3TxmBF3zmBS3/lX9iFShFozDxm++Ge/yjBsUIHA6BOehwJf1wqHdVa6O0+wduhls1nIBSCJf4E9aifN38IJOcxVCKqtu7QQSojX4GonUwoDx/pTT6IzQRE6W0KsaY9/GCurpnztv9rZR02laBrrz01Ac2ood1+NtxcFYjDnqMVViV0e+ov51qjfeft87OB6vZqjbedPQ0zhMaM8C8zAePiL9afUsuEzpVz7qi3JH/k+wQMkXq90azyx+3XS8iQzn4Wo7Y1jaHcxMP1XLLEZryOJC3nRxLKXCIYs7LrzxjamUVA5cz4PQNArNCh4NNPPuWNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VdDQtIU+DfDL5Ni7m3RU7KBoLGDHbbZvFxFssPIQjw8=;
 b=CfTwjQnRgdk6ImcTn0g6/6G7z+LAE+YPMFhzKUZuqPeetRfZfAI3UbJM/uWo+4ICQNVzUePrGii0pKB2BX0PThb7DUhArV9tG++XUbfe/DOu1uohKnb99s8VH0VACeyZ+GJnxq/4rIHlRsZYLO86KLLStlHNCdlz6iEeXa8hlWljl3rnEeVceM69Vp42NXG63ZvOUoIlJ2OTbma3ah+Z7nLt67pdFq0LqED8UUj1hIgXJeLbIA0I2Vt5fzEA0Iz3z1AEDso01CZlVlWsWfFZyvAhfJRyYQoQbXMaabrel5frAlhwOtedS31NXQTIUJavzb29EyehgWxd6liwH6uGKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VdDQtIU+DfDL5Ni7m3RU7KBoLGDHbbZvFxFssPIQjw8=;
 b=jslsi6znxfiOc3AgWDx0J5p1jyAW/U/mt8OCT7qN1Ffpdh1LEsgoB0Fyf2gBSF8yNAB5l9Vu8OK5tf1bzROGMWoB3CzjWwcrSm37OXP2KcvLIOmGFjYwj1CszUAGooKT80q0Pyr5KhST+0R+oQFn5eAE36ysXH6QFvqq3svGsxE=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4157.eurprd04.prod.outlook.com (52.133.15.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Mon, 11 Nov 2019 17:23:38 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2430.027; Mon, 11 Nov 2019
 17:23:38 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v4 4/6] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
Thread-Topic: [PATCH v4 4/6] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
Thread-Index: AQHVloV+JlVzz2gms0Gh8HYpk8Otrw==
Date: Mon, 11 Nov 2019 17:23:38 +0000
Message-ID: <VI1PR04MB7023A07C682C9DA006D1BEF1EE740@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573252696.git.leonard.crestez@nxp.com>
 <CGME20191108224026epcas1p35263d69e63d2e7357f82b2e41d9efe07@epcas1p3.samsung.com>
 <675f35b1e92f49e0d7889675c87e944d454d4e38.1573252696.git.leonard.crestez@nxp.com>
 <9eeb496b-2d7e-590c-3e9e-765a9e996481@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 09b10c91-795e-41b1-f074-08d766cbe406
x-ms-traffictypediagnostic: VI1PR04MB4157:|VI1PR04MB4157:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB41578EEEA79AF6C957ABC65BEE740@VI1PR04MB4157.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(376002)(39860400002)(136003)(396003)(51444003)(189003)(199004)(5660300002)(54906003)(2906002)(14444005)(86362001)(7736002)(256004)(91956017)(81156014)(81166006)(76116006)(66066001)(8676002)(110136005)(7416002)(8936002)(52536014)(6246003)(305945005)(4326008)(55016002)(71200400001)(71190400001)(99286004)(9686003)(64756008)(33656002)(478600001)(6116002)(3846002)(66446008)(476003)(229853002)(446003)(26005)(74316002)(486006)(186003)(30864003)(102836004)(6436002)(44832011)(76176011)(6506007)(14454004)(316002)(66946007)(66476007)(7696005)(53546011)(25786009)(66556008)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4157;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pfqPO3HQgwpikTvvuc6BnhDMmPxD0EhekcCPrb9hh9rN56jJoh5QVa6NrUsJN+dMiraZFFJGwUjiz/Wz0Ms8fNiWP2LzfbbnMg1SaA3gdxqlHH14+BPVqnB6HYk/V0ujBcUMV6a2b3c8NRKmSqTMY5xtiOW3RuntNXLTj1qc79XLUh6tgHl8rjn+q1pW972RoDFjHyeprvh6TqXN+y1M7OgI8QypkYZAknTTR65Vcm1qLSs6e6K2r4DCnP8C2bkjAp5h4ohNLM9GY9Ps9bvgVPJL1o3I9dTk0jEiLFAtNlPFNauwztCseHe4GzviPqYMBxDhAoyTO5/6fCxphcwwb4LGJR7jgwSz+EyhutCFSOlJHfxNX/ezT2nmtDU4IInOgHgZuYf0qhdPQgnHQiN8O8GG+xlbDH9kHcu2cCZV9EfbQ+GPFTiJ1FvsyhYriTHX
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09b10c91-795e-41b1-f074-08d766cbe406
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 17:23:38.4635 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UbqiO9YLmNkufjMtvVrLO5opxtc/KCAXYDw6PAibtGy7AYpt9/4XOyMeZqHIU1MlOzwLSlP2uMYzeHwhgxULqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_092344_405903_910FF464 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11.11.2019 05:18, Chanwoo Choi wrote:
> Hi Leonard,
> 
> On 11/9/19 7:39 AM, Leonard Crestez wrote:
>> Add driver for dynamic scaling the DDR Controller on imx8m chips. Actual
>> frequency switching is implemented inside TF-A, this driver wraps the
>> SMC calls and synchronizes the clk tree.
>>
>> The DRAM clocks on imx8m have the following structure (abridged):
>>
>>   +----------+       |\            +------+
>>   | dram_pll |-------|M| dram_core |      |
>>   +----------+       |U|---------->| D    |
>>                   /--|X|           |  D   |
>>     dram_alt_root |  |/            |   R  |
>>                   |                |    C |
>>              +---------+           |      |
>>              |FIX DIV/4|           |      |
>>              +---------+           |      |
>>    composite:     |                |      |
>>   +----------+    |                |      |
>>   | dram_alt |----/                |      |
>>   +----------+                     |      |
>>   | dram_apb |-------------------->|      |
>>   +----------+                     +------+
>>
>> The dram_pll is used for higher rates and dram_alt is used for lower
>> rates. The dram_alt and dram_apb clocks are "imx composite" and their
>> parent can also be modified.
>>
>> This driver will prepare/enable the new parents ahead of switching (so
>> that the expected roots are enabled) and afterwards it will call
>> clk_set_parent to ensure the parents in clock framework are up-to-date.
>>
>> The driver relies on dram_pll dram_alt and dram_apb being marked with
>> CLK_GET_RATE_NOCACHE for rate updates.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   drivers/devfreq/Kconfig      |  10 +
>>   drivers/devfreq/Makefile     |   1 +
>>   drivers/devfreq/imx8m-ddrc.c | 416 +++++++++++++++++++++++++++++++++++
>>   3 files changed, 427 insertions(+)
>>   create mode 100644 drivers/devfreq/imx8m-ddrc.c
>>
>> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
>> index defe1d438710..c519fd27808f 100644
>> --- a/drivers/devfreq/Kconfig
>> +++ b/drivers/devfreq/Kconfig
>> @@ -90,10 +90,20 @@ config ARM_EXYNOS_BUS_DEVFREQ
>>   	  Each memory bus group could contain many memoby bus block. It reads
>>   	  PPMU counters of memory controllers by using DEVFREQ-event device
>>   	  and adjusts the operating frequencies and voltages with OPP support.
>>   	  This does not yet operate with optimal voltages.
>>   
>> +config ARM_IMX8M_DDRC_DEVFREQ
>> +	tristate "i.MX8M DDRC DEVFREQ Driver"
>> +	depends on ARCH_MXC || COMPILE_TEST
>> +	select DEVFREQ_GOV_SIMPLE_ONDEMAND
>> +	select DEVFREQ_GOV_USERSPACE
>> +	select PM_OPP
> 
> It doesn't need to add. CONFIG_DEVFREQ add 'select PM_OPP'
> because 'PM_OPP' is mandatory for devfreq.

OK.

All other drivers select PM_OPP, this was just copied

>> +	help
>> +	  This adds the DEVFREQ driver for the i.MX8M DDR Controller. It allows
>> +	  adjusting DRAM frequency.
>> +
>>   config ARM_TEGRA_DEVFREQ
>>   	tristate "NVIDIA Tegra30/114/124/210 DEVFREQ Driver"
>>   	depends on ARCH_TEGRA_3x_SOC || ARCH_TEGRA_114_SOC || \
>>   		ARCH_TEGRA_132_SOC || ARCH_TEGRA_124_SOC || \
>>   		ARCH_TEGRA_210_SOC || \
>> diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
>> index 338ae8440db6..3eb4d5e6635c 100644
>> --- a/drivers/devfreq/Makefile
>> +++ b/drivers/devfreq/Makefile
>> @@ -7,10 +7,11 @@ obj-$(CONFIG_DEVFREQ_GOV_POWERSAVE)	+= governor_powersave.o
>>   obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+= governor_userspace.o
>>   obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+= governor_passive.o
>>   
>>   # DEVFREQ Drivers
>>   obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+= exynos-bus.o
>> +obj-$(CONFIG_ARM_IMX8M_DDRC_DEVFREQ)	+= imx8m-ddrc.o
>>   obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+= rk3399_dmc.o
>>   obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+= tegra30-devfreq.o
>>   obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+= tegra20-devfreq.o
>>   
>>   # DEVFREQ Event Drivers
>> diff --git a/drivers/devfreq/imx8m-ddrc.c b/drivers/devfreq/imx8m-ddrc.c
>> new file mode 100644
>> index 000000000000..51903fee21a7
>> --- /dev/null
>> +++ b/drivers/devfreq/imx8m-ddrc.c
>> @@ -0,0 +1,416 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright 2019 NXP
>> + */
>> +
>> +#include <linux/module.h>
>> +#include <linux/device.h>
>> +#include <linux/of_device.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/devfreq.h>
>> +#include <linux/pm_opp.h>
>> +#include <linux/clk.h>
>> +#include <linux/clk-provider.h>
>> +#include <linux/arm-smccc.h>
>> +
>> +#define IMX_SIP_DDR_DVFS			0xc2000004
>> +
>> +/* Values starting from 0 switch to specific frequency */
>> +#define IMX_SIP_DDR_FREQ_SET_HIGH		0x00
>> +
>> +/* Deprecated after moving IRQ handling to ATF */
>> +#define IMX_SIP_DDR_DVFS_WAIT_CHANGE		0x0F
>> +
>> +/* Query available frequencies. */
>> +#define IMX_SIP_DDR_DVFS_GET_FREQ_COUNT		0x10
>> +#define IMX_SIP_DDR_DVFS_GET_FREQ_INFO		0x11
>> +
>> +/*
>> + * This should be in a 1:1 mapping with devicetree OPPs but
>> + * firmware provides additional info.
>> + */
>> +struct imx8m_ddrc_freq {
>> +	unsigned long rate;
>> +	unsigned long smcarg;
>> +	int dram_core_parent_index;
>> +	int dram_alt_parent_index;
>> +	int dram_apb_parent_index;
>> +};
>> +
>> +/* Hardware limitation */
>> +#define IMX8M_DDRC_MAX_FREQ_COUNT 4
>> +
>> +/*
>> + * i.MX8M DRAM Controller clocks have the following structure (abridged):
>> + *
>> + * +----------+       |\            +------+
>> + * | dram_pll |-------|M| dram_core |      |
>> + * +----------+       |U|---------->| D    |
>> + *                 /--|X|           |  D   |
>> + *   dram_alt_root |  |/            |   R  |
>> + *                 |                |    C |
>> + *            +---------+           |      |
>> + *            |FIX DIV/4|           |      |
>> + *            +---------+           |      |
>> + *  composite:     |                |      |
>> + * +----------+    |                |      |
>> + * | dram_alt |----/                |      |
>> + * +----------+                     |      |
>> + * | dram_apb |-------------------->|      |
>> + * +----------+                     +------+
>> + *
>> + * The dram_pll is used for higher rates and dram_alt is used for lower rates.
>> + *
>> + * Frequency switching is implemented in TF-A (via SMC call) and can change the
>> + * configuration of the clocks, including mux parents. The dram_alt and
>> + * dram_apb clocks are "imx composite" and their parent can change too.
>> + *
>> + * We need to prepare/enable the new mux parents head of switching and update
>> + * their information afterwards.
>> + */
>> +struct imx8m_ddrc {
>> +	struct devfreq_dev_profile profile;
>> +	struct devfreq *devfreq;
>> +
>> +	/* For frequency switching: */
>> +	struct clk *dram_core;
>> +	struct clk *dram_pll;
>> +	struct clk *dram_alt;
>> +	struct clk *dram_apb;
>> +
>> +	int freq_count;
>> +	struct imx8m_ddrc_freq freq_table[IMX8M_DDRC_MAX_FREQ_COUNT];
>> +};
>> +
>> +static struct imx8m_ddrc_freq *imx8m_ddrc_find_freq(struct imx8m_ddrc *priv,
>> +						    unsigned long rate)
>> +{
>> +	struct imx8m_ddrc_freq *freq;
>> +	int i;
>> +
>> +	/*
>> +	 * Firmware reports values in MT/s, so we round-down from Hz
>> +	 * Rounding is extra generous to ensure a match.
>> +	 */
>> +	rate = DIV_ROUND_CLOSEST(rate, 250000);
>> +	for (i = 0; i < priv->freq_count; ++i) {
>> +		freq = &priv->freq_table[i];
>> +		if (freq->rate == rate ||
>> +				freq->rate + 1 == rate ||
>> +				freq->rate - 1 == rate)
>> +			return freq;
>> +	}
>> +
>> +	return NULL;
>> +}
>> +
>> +static void imx8m_ddrc_smc_set_freq(int target_freq)
>> +{
>> +	struct arm_smccc_res res;
>> +	u32 online_cpus = 0;
>> +	int cpu;
>> +
>> +	local_irq_disable();
> 
> local_irq_disable is more proper than local_irq_save()?

There's no need to use save/restore because we know that irqs are 
enabled when entering the function. This is only called from devfreq 
set_target which runs in process context.

> 
>> +
>> +	for_each_online_cpu(cpu)
>> +		online_cpus |= (1 << (cpu * 8));
>> +
>> +	/* change the ddr freqency */
>> +	arm_smccc_smc(IMX_SIP_DDR_DVFS, target_freq, online_cpus,
>> +			0, 0, 0, 0, 0, &res);
>> +
>> +	local_irq_enable();
> 
> ditto. local_irq_restore() instead of local_irq_enable()
> 
>> +}
>> +
>> +struct clk *clk_get_parent_by_index(struct clk *clk, int index)
>> +{
>> +	struct clk_hw *hw;
>> +
>> +	hw = clk_hw_get_parent_by_index(__clk_get_hw(clk), index);
>> +
>> +	return hw ? hw->clk : NULL;
>> +}
>> +
>> +static int imx8m_ddrc_set_freq(struct device *dev, struct imx8m_ddrc_freq *freq)
>> +{
>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>> +	struct clk *new_dram_core_parent;
>> +	struct clk *new_dram_alt_parent;
>> +	struct clk *new_dram_apb_parent;
>> +	int ret;
>> +
>> +	new_dram_core_parent = clk_get_parent_by_index(
>  > You can use 'clk_hw_get_parent_by_index' directly.

The helper above avoids duplicating ?:

> And, you need to check whether the return value is NULL or not.
Yes for dram_core_parent but others are deliberately allowed to be NULL. 
For some setpoints some parents might be indifferent or require no 
changes. For example when dram_core has pll as parent the expectation is 
that dram_all will be OFF so parent is irrelevant.

Driver relies on the fact that clock API ignores prepare/enable for NULL 
clocks. I can add a comment explaining that.

>> +			priv->dram_core, freq->dram_core_parent_index - 1);
>> +	new_dram_alt_parent = clk_get_parent_by_index(
> 
> ditto.
> 
>> +			priv->dram_alt, freq->dram_alt_parent_index - 1);
>> +	new_dram_apb_parent = clk_get_parent_by_index(
> 
> ditto.

>> +			priv->dram_apb, freq->dram_apb_parent_index - 1);
>> +
>> +	/* increase reference counts and ensure clks are ON before switch */
>> +	ret = clk_prepare_enable(new_dram_core_parent);
>> +	if (ret) {
>> +		dev_err(dev, "failed enable new dram_core parent: %d\n", ret);
>> +		goto out;
>> +	}
>> +	ret = clk_prepare_enable(new_dram_alt_parent);
>> +	if (ret) {
>> +		dev_err(dev, "failed enable new dram_alt parent: %d\n", ret);
>> +		goto out_dis_core;
> 
> I think that 'dis' is not general expression for 'disable'.
> Just, I think that 'out_disable_core' is better than 'out_dis_core'.

OK

>> +	}
>> +	ret = clk_prepare_enable(new_dram_apb_parent);
>> +	if (ret) {
>> +		dev_err(dev, "failed enable new dram_apb parent: %d\n", ret);
>> +		goto out_dis_alt;
> 
> ditto.
> 
>> +	}
>> +
>> +	imx8m_ddrc_smc_set_freq(freq->smcarg);
>> +
>> +	/* update parents in clk tree after switch. */
>> +	ret = clk_set_parent(priv->dram_core, new_dram_core_parent);
>> +	if (ret)
>> +		dev_err(dev, "failed set dram_core parent: %d\n", ret);
> 
> if you don't return directly, you better to use 'dev_warn' instead of 'dev_err'.

OK.

>> +	if (new_dram_alt_parent) {
>> +		ret = clk_set_parent(priv->dram_alt, new_dram_alt_parent);
>> +		if (ret)
>> +			dev_err(dev, "failed set dram_alt parent: %d\n", ret);
> 
> ditto. Use dev_warn.
>   
>> +	}
>> +	if (new_dram_apb_parent) {
>> +		ret = clk_set_parent(priv->dram_apb, new_dram_apb_parent);
>> +		if (ret)
>> +			dev_err(dev, "failed set dram_apb parent: %d\n", ret);
> 
> ditto. Use dev_warn.
> 
>> +	}
>> +
>> +	/*
>> +	 * Explicitly refresh dram PLL rate.
>> +	 *
>> +	 * Even if it's marked with CLK_GET_RATE_NOCACHE the rate will not be
> 
> nitpick:
> What is more proper description either or 'Even if' or 'if' ?

Rate updates work for dram_alt/apb but not for dram_pll because 
additional clocks might be present between the PLL and dram_core mux. 
This happens *even if* pll is marked with CLK_GET_RATE_NOCACHE.

>> +	 * automatically refreshed when clk_get_rate is called on children.
>> +	 */
>> +	clk_get_rate(priv->dram_pll);
>> +
>> +	/*
>> +	 * clk_set_parent transfer the reference count from old parent.
>> +	 * now we drop extra reference counts used during the switch
>> +	 */
>> +	clk_disable_unprepare(new_dram_apb_parent);
>> +out_dis_alt:
>> +	clk_disable_unprepare(new_dram_alt_parent);
>> +out_dis_core:
>> +	clk_disable_unprepare(new_dram_core_parent);
>> +out:
>> +	return ret;
>> +}
>> +
>> +static int imx8m_ddrc_target(struct device *dev, unsigned long *freq, u32 flags)
>> +{
>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>> +	struct imx8m_ddrc_freq *freq_info;
>> +	struct dev_pm_opp *new_opp;
>> +	unsigned long old_freq, new_freq;
>> +	int ret;
>> +
>> +	new_opp = devfreq_recommended_opp(dev, freq, flags);
>> +	if (IS_ERR(new_opp)) {
>> +		ret = PTR_ERR(new_opp);
>> +		dev_err(dev, "failed to get recommended opp: %d\n", ret);
>> +		return ret;
>> +	}
>> +	dev_pm_opp_put(new_opp);
>> +
>> +	old_freq = clk_get_rate(priv->dram_core);
>> +	if (*freq == old_freq)
>> +		return 0;
>> +
>> +	freq_info = imx8m_ddrc_find_freq(priv, *freq);
>> +	if (!freq_info)
>> +		return -EINVAL;
>> +	ret = imx8m_ddrc_set_freq(dev, freq_info);
> 
> Need to check whether 'ret' is valid or not.
> 
>> +
>> +	/* Also read back the clk rate to verify switch was correct */
>> +	new_freq = clk_get_rate(priv->dram_core);
>> +	if (ret || *freq != new_freq)
> 
> You should check 'ret' right after imx8m_ddrc_set_freq()
> instead of this position.

OK, I can add two error paths.

>> +		dev_err(dev, "ddrc failed freq set to %lu from %lu, now at %lu\n",
>> +			old_freq, *freq, new_freq);
>> +	else
>> +		dev_dbg(dev, "ddrc freq set to %lu (was %lu)\n",
>> +			*freq, old_freq);
>> +
>> +	return ret;
>> +}
>> +
>> +static int imx8m_ddrc_get_cur_freq(struct device *dev, unsigned long *freq)
>> +{
>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>> +
>> +	*freq = clk_get_rate(priv->dram_core);
>> +
>> +	return 0;
>> +}
>> +
>> +static int imx8m_ddrc_init_freq_info(struct device *dev)
>> +{
>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>> +	struct arm_smccc_res res;
>> +	int index;
>> +
>> +	/*
>> +	 * An error here means DDR DVFS API not supported by firmware
>> +	 */
> 
> Don't need to add multiple line comments. It is possible to be change as following:
> 
> 	/* An error here means DDR DVFS API not supported by firmware */

OK.
>> +	arm_smccc_smc(IMX_SIP_DDR_DVFS, IMX_SIP_DDR_DVFS_GET_FREQ_COUNT,
>> +			0, 0, 0, 0, 0, 0, &res);
>> +	priv->freq_count = res.a0;
>> +	if (priv->freq_count <= 0 ||
>> +			priv->freq_count > IMX8M_DDRC_MAX_FREQ_COUNT)
>> +		return -ENODEV;
>> +
>> +	for (index = 0; index < priv->freq_count; ++index) {
>> +		struct imx8m_ddrc_freq *freq = &priv->freq_table[index];
>> +
>> +		arm_smccc_smc(IMX_SIP_DDR_DVFS, IMX_SIP_DDR_DVFS_GET_FREQ_INFO,
>> +				index, 0, 0, 0, 0, 0, &res);
>> +		/* Result should be strictly positive */
>> +		if ((long)res.a0 <= 0)
>> +			return -ENODEV;
>> +
>> +		freq->rate = res.a0;
>> +		freq->smcarg = index;
>> +		freq->dram_core_parent_index = res.a1;
>> +		freq->dram_alt_parent_index = res.a2;
>> +		freq->dram_apb_parent_index = res.a3;
>> +
>> +		/* dram_core has 2 options: dram_pll or dram_alt_root */
>> +		if (freq->dram_core_parent_index != 1 &&
>> +				freq->dram_core_parent_index != 2)
>> +			return -ENODEV;
>> +		/* dram_apb and dram_alt have exactly 8 possible parents */
>> +		if (freq->dram_alt_parent_index > 8 ||
>> +				freq->dram_apb_parent_index > 8)
>> +			return -ENODEV;
>> +		/* dram_core from alt requires explicit dram_alt parent */
>> +		if (freq->dram_core_parent_index == 2 &&
>> +				freq->dram_alt_parent_index == 0)
>> +			return -ENODEV;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +/* imx8m_ddrc_check_opps() - disable OPPs not supported by firmware */
> 
> nitpick:
> On this driver, there are no some description for internal function.
> In order to keep the coding style, you better to move this comment
> into function before 'freq = ULONG_MAX'.

Is it a problem if only some internal functions have documentation? I 
can add docs to more functions.

BTW: how can I generate devfreq documentation from these comments?

>> +static int imx8m_ddrc_check_opps(struct device *dev)
>> +{
>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>> +	struct imx8m_ddrc_freq *freq_info;
>> +	struct dev_pm_opp *opp;
>> +	unsigned long freq;
>> +
>> +	freq = ULONG_MAX;
>> +	while (true) {
>> +		opp = dev_pm_opp_find_freq_floor(dev, &freq);
>> +		if (opp == ERR_PTR(-ERANGE))
>> +			break;
>> +		if (IS_ERR(opp)) {
>> +			dev_err(dev, "Failed enumerating OPPs: %ld\n",
>> +				PTR_ERR(opp));
>> +			return PTR_ERR(opp);
>> +		}
>> +		dev_pm_opp_put(opp);
>> +
>> +		freq_info = imx8m_ddrc_find_freq(priv, freq);
>> +		if (!freq_info) {
>> +			dev_info(dev, "Disable unsupported OPP %luHz %luMT/s\n",
>> +					freq, DIV_ROUND_CLOSEST(freq, 250000));
>> +			dev_pm_opp_disable(dev, freq);
>> +		}
>> +
>> +		freq--;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static void imx8m_ddrc_exit(struct device *dev)
>> +{
>> +	dev_pm_opp_of_remove_table(dev);
>> +}
>> +
>> +static int imx8m_ddrc_probe(struct platform_device *pdev)
>> +{
>> +	struct device *dev = &pdev->dev;
>> +	struct imx8m_ddrc *priv;
>> +	const char *gov = DEVFREQ_GOV_USERSPACE;
>> +	int ret;
>> +
>> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>> +	if (!priv)
>> +		return -ENOMEM;
>> +
>> +	platform_set_drvdata(pdev, priv);
>> +
>> +	ret = imx8m_ddrc_init_freq_info(dev);
>> +	if (ret) {
>> +		dev_err(dev, "failed to init firmware freq info: %d\n", ret);
>> +		return ret;
>> +	}
>> +
>> +	priv->dram_core = devm_clk_get(dev, "core");
>> +	priv->dram_pll = devm_clk_get(dev, "pll");
>> +	priv->dram_alt = devm_clk_get(dev, "alt");
>> +	priv->dram_apb = devm_clk_get(dev, "apb");
>> +	if (IS_ERR(priv->dram_core) ||
>> +		IS_ERR(priv->dram_pll) ||
>> +		IS_ERR(priv->dram_alt) ||
>> +		IS_ERR(priv->dram_apb)) {
>> +		ret = PTR_ERR(priv->devfreq);
>> +		dev_err(dev, "failed to fetch clocks: %d\n", ret);
>> +		return ret;
>> +	}
>> +
>> +	ret = dev_pm_opp_of_add_table(dev);
>> +	if (ret < 0) {
>> +		dev_err(dev, "failed to get OPP table\n");
>> +		return ret;
>> +	}
>> +
>> +	ret = imx8m_ddrc_check_opps(dev);
>> +	if (ret < 0)
>> +		goto err;
>> +
>> +	priv->profile.polling_ms = 1000;
>> +	priv->profile.target = imx8m_ddrc_target;
>> +	priv->profile.exit = imx8m_ddrc_exit;
>> +	priv->profile.get_cur_freq = imx8m_ddrc_get_cur_freq;
>> +	priv->profile.initial_freq = clk_get_rate(priv->dram_core);
>> +
>> +	priv->devfreq = devm_devfreq_add_device(dev, &priv->profile,
>> +						gov, NULL);
>> +	if (IS_ERR(priv->devfreq)) {
>> +		ret = PTR_ERR(priv->devfreq);
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
>> +static const struct of_device_id imx8m_ddrc_of_match[] = {
>> +	{ .compatible = "fsl,imx8m-ddrc", },
>> +	{ /* sentinel */ },
>> +};
>> +MODULE_DEVICE_TABLE(of, imx8m_ddrc_of_match);
>> +
>> +static struct platform_driver imx8m_ddrc_platdrv = {
>> +	.probe		= imx8m_ddrc_probe,
>> +	.driver = {
>> +		.name	= "imx8m-ddrc-devfreq",
>> +		.of_match_table = of_match_ptr(imx8m_ddrc_of_match),
>> +	},
>> +};
>> +module_platform_driver(imx8m_ddrc_platdrv);
>> +
>> +MODULE_DESCRIPTION("i.MX8M DDR Controller frequency driver");
>> +MODULE_AUTHOR("Leonard Crestez <leonard.crestez@nxp.com>");
>> +MODULE_LICENSE("GPL v2");


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
