Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29998F92F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:47:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=fK2w9UVhJxDScSlpEZsSraP/du5OFsrFhTeWMyxhBvM=; b=rRRbHU6NmliJEq
	jWetPhxHvu2hs2QtObTyAbWwZfUoonzYkRdorTGiExi7aMN8wsv/wx6M7xgFE0AH95Z6bDirx8Ju3
	FdfCqRxsTGUadZY6aQeaSNIaWKcZQ7sCLbxWN9Z7Sb0ETdv0p01XP95W7H79vf68rtjKxE26dSvCZ
	r8JEQfRP5iWPM6f+40AbnbtjqQbcsYr9TK7wbKrN4KQB+YzyX9dIJQ814Ak8mHKRSuuLhY5a9Ecg+
	VP7Or6FAv9KA50CKlJ9UzS5v0GS7tukHQzF2lz/SqIguTjv1x70jfqxMiVukopOj1+NA/PbN7T2rc
	94ADts5PrAvyY294rDRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXSA-0007YX-3U; Tue, 12 Nov 2019 14:47:34 +0000
Received: from mail-eopbgr30086.outbound.protection.outlook.com ([40.107.3.86]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUXS0-0007Xr-4m
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:47:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hrlQ5T6Ec3PRBYpSgNS5W6/WN6MPI1FPOJrYLiGzNEIpcd1v9PYqxh4tNN9MGVeOtlniX+6DFqbyDcbTiW4DYBtUjOh06OEU9B1a8z0zZHV3DQn9xTmGx46oa7Na9IHBKrU1nZ9Gxu2aSAxaVZXCnyR+29r8ItzsUIwBEexG+ijObqyWsqfPUOQZRYaf6rGI1a/Nv4QugZxCUpU669DiCbxt0NbPb4xsUJKiFFnLBX+k+0CvsdIC0JiYTk0ta/BVrKkCOOhnfC6uL95H1LXpmB7FmnaIqj2h+nntef5XKaOtr21gXtvIlZVWAv9KamSJJZN8TbQHkcVxU0hOH4rGMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m7r7nwsuXqfLeeoSXcTxIRIXYGVS2Pjyyb5P7DJpPSo=;
 b=Dxd1LHDqX9ftcby+L+KKDGGvUq7dr2RMGRl1Q2dn6TIF+rzRHqxEAS3PyK/A9JoNB3Y5VsrmnOKaFXzQ0WwDiITySXRbiuouRtfBPeOoo1hSaYSP0g9ZpGNt49O59+1AKsJ5eZNpg4WvcvJYsozaaa2Yx98zaq7ySZarGiFAZOSzTE7ggAiIg+V3luks1s4sNELpejfYwR2qT6WJIDK47Zqm0N9LhXeL8tx3a4xWIOfjJ0o5xK6sxwcv8Y+TI8CXD6kguIHCtd2NlUffZcvGl+WQ0th8iQy1BWmwBYhS8YDT6xJLHNr/cUIEgINlWfGBY68fvUEdke6x/XMVX1971g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m7r7nwsuXqfLeeoSXcTxIRIXYGVS2Pjyyb5P7DJpPSo=;
 b=FwWIkayOWk9CkmwZpCElWddjmL6FMHErm6QPPCawge4bE1sYWRyECqgxXu67kQQY5eEORHmlVMRith9f0/M69fzpiX95Ui2dd5LqUmeEED2Oht3WmtIz1QhfcGXOY1olXn20Xx+FnLxQDnILcBHvP38i9hh/KOqeEWS0YuLS9U4=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5950.eurprd04.prod.outlook.com (20.178.121.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Tue, 12 Nov 2019 14:47:19 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 14:47:19 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v4 4/6] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
Thread-Topic: [PATCH v4 4/6] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
Thread-Index: AQHVloV+JlVzz2gms0Gh8HYpk8Otrw==
Date: Tue, 12 Nov 2019 14:47:19 +0000
Message-ID: <VI1PR04MB70239B081072BDEFF25772B7EE770@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573252696.git.leonard.crestez@nxp.com>
 <CGME20191108224026epcas1p35263d69e63d2e7357f82b2e41d9efe07@epcas1p3.samsung.com>
 <675f35b1e92f49e0d7889675c87e944d454d4e38.1573252696.git.leonard.crestez@nxp.com>
 <9eeb496b-2d7e-590c-3e9e-765a9e996481@samsung.com>
 <VI1PR04MB7023A07C682C9DA006D1BEF1EE740@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <45f4471b-55b2-498a-463c-2adbd03e84df@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d62ea603-abd5-4b99-c966-08d7677f37e1
x-ms-traffictypediagnostic: VI1PR04MB5950:|VI1PR04MB5950:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB595081328F17D9C86EF1EA5DEE770@VI1PR04MB5950.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(396003)(366004)(39860400002)(189003)(199004)(51444003)(4326008)(14454004)(6436002)(9686003)(26005)(99286004)(33656002)(6246003)(66066001)(71190400001)(446003)(25786009)(54906003)(71200400001)(186003)(229853002)(256004)(14444005)(76116006)(91956017)(316002)(110136005)(478600001)(30864003)(305945005)(3846002)(7736002)(6116002)(81166006)(81156014)(486006)(55016002)(102836004)(74316002)(86362001)(5660300002)(44832011)(6506007)(66556008)(66446008)(64756008)(7416002)(53546011)(52536014)(76176011)(2906002)(476003)(8676002)(66946007)(66476007)(7696005)(8936002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5950;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /Ux5gPfenGuB2dreH9/Zu6PXZWII6QQLH7TS+cdOYYq9Tu7hmVwIU/B1dMfkqlNlcmAP+CpQ6DkYU73teczu5At4+bzEeEPIG/FcMb+S1dApepDDEDXimcVn85ffPTj/0wlXYGKCE8uo23dxbzT3n6UNpQvyjruBLWqloD161TH9iIFo3sd+JecXlMzFUFnSNurY7/8EE+Bep3i7M3YFA6JK7rNTXGxc8zufJEC2WZBb6W5cEccqYDWDtSAH8/V1nWM22A3kPhCryG5e/23I1Lz5yDBWPkCd4qMnx89WAUTfLgH8VyOcaauZXJ6UO91zIHUkau/ixcy6FBMl7AhUhzsr1mtvOduoXjny1zTvD18cn34wjHoq7nDfPi+1+2u2p3Wga2xOlDZJmMY6FVycSQOX7hDgB9bkpLeMm1NxGTg6TjbDCTFXVg4zWO5xdioh
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d62ea603-abd5-4b99-c966-08d7677f37e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 14:47:19.0434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zceDC2t0VXpZvKivrdTN40tA8mi2XtJ9E6um77GMqqOqeVQ1jR2Rlp0t2v0XdMAePZJ98LX0UYr0ztcI/cVJEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5950
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_064724_554919_B9F6F0A9 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 12.11.2019 02:54, Chanwoo Choi wrote:
> On 11/12/19 2:23 AM, Leonard Crestez wrote:
>> On 11.11.2019 05:18, Chanwoo Choi wrote:
>>> Hi Leonard,
>>>
>>> On 11/9/19 7:39 AM, Leonard Crestez wrote:
>>>> Add driver for dynamic scaling the DDR Controller on imx8m chips. Actual
>>>> frequency switching is implemented inside TF-A, this driver wraps the
>>>> SMC calls and synchronizes the clk tree.
>>>>
>>>> The DRAM clocks on imx8m have the following structure (abridged):
>>>>
>>>>    +----------+       |\            +------+
>>>>    | dram_pll |-------|M| dram_core |      |
>>>>    +----------+       |U|---------->| D    |
>>>>                    /--|X|           |  D   |
>>>>      dram_alt_root |  |/            |   R  |
>>>>                    |                |    C |
>>>>               +---------+           |      |
>>>>               |FIX DIV/4|           |      |
>>>>               +---------+           |      |
>>>>     composite:     |                |      |
>>>>    +----------+    |                |      |
>>>>    | dram_alt |----/                |      |
>>>>    +----------+                     |      |
>>>>    | dram_apb |-------------------->|      |
>>>>    +----------+                     +------+
>>>>
>>>> The dram_pll is used for higher rates and dram_alt is used for lower
>>>> rates. The dram_alt and dram_apb clocks are "imx composite" and their
>>>> parent can also be modified.
>>>>
>>>> This driver will prepare/enable the new parents ahead of switching (so
>>>> that the expected roots are enabled) and afterwards it will call
>>>> clk_set_parent to ensure the parents in clock framework are up-to-date.
>>>>
>>>> The driver relies on dram_pll dram_alt and dram_apb being marked with
>>>> CLK_GET_RATE_NOCACHE for rate updates.
>>>>
>>>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>>>> ---
>>>>    drivers/devfreq/Kconfig      |  10 +
>>>>    drivers/devfreq/Makefile     |   1 +
>>>>    drivers/devfreq/imx8m-ddrc.c | 416 +++++++++++++++++++++++++++++++++++
>>>>    3 files changed, 427 insertions(+)
>>>>    create mode 100644 drivers/devfreq/imx8m-ddrc.c
>>>>
>>>> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
>>>> index defe1d438710..c519fd27808f 100644
>>>> --- a/drivers/devfreq/Kconfig
>>>> +++ b/drivers/devfreq/Kconfig
>>>> @@ -90,10 +90,20 @@ config ARM_EXYNOS_BUS_DEVFREQ
>>>>    	  Each memory bus group could contain many memoby bus block. It reads
>>>>    	  PPMU counters of memory controllers by using DEVFREQ-event device
>>>>    	  and adjusts the operating frequencies and voltages with OPP support.
>>>>    	  This does not yet operate with optimal voltages.
>>>>    
>>>> +config ARM_IMX8M_DDRC_DEVFREQ
>>>> +	tristate "i.MX8M DDRC DEVFREQ Driver"
>>>> +	depends on ARCH_MXC || COMPILE_TEST
>>>> +	select DEVFREQ_GOV_SIMPLE_ONDEMAND
>>>> +	select DEVFREQ_GOV_USERSPACE
>>>> +	select PM_OPP
>>>
>>> It doesn't need to add. CONFIG_DEVFREQ add 'select PM_OPP'
>>> because 'PM_OPP' is mandatory for devfreq.
>>
>> OK.
>>
>> All other drivers select PM_OPP, this was just copied
>>
>>>> +	help
>>>> +	  This adds the DEVFREQ driver for the i.MX8M DDR Controller. It allows
>>>> +	  adjusting DRAM frequency.
>>>> +
>>>>    config ARM_TEGRA_DEVFREQ
>>>>    	tristate "NVIDIA Tegra30/114/124/210 DEVFREQ Driver"
>>>>    	depends on ARCH_TEGRA_3x_SOC || ARCH_TEGRA_114_SOC || \
>>>>    		ARCH_TEGRA_132_SOC || ARCH_TEGRA_124_SOC || \
>>>>    		ARCH_TEGRA_210_SOC || \
>>>> diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
>>>> index 338ae8440db6..3eb4d5e6635c 100644
>>>> --- a/drivers/devfreq/Makefile
>>>> +++ b/drivers/devfreq/Makefile
>>>> @@ -7,10 +7,11 @@ obj-$(CONFIG_DEVFREQ_GOV_POWERSAVE)	+= governor_powersave.o
>>>>    obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+= governor_userspace.o
>>>>    obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+= governor_passive.o
>>>>    
>>>>    # DEVFREQ Drivers
>>>>    obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+= exynos-bus.o
>>>> +obj-$(CONFIG_ARM_IMX8M_DDRC_DEVFREQ)	+= imx8m-ddrc.o
>>>>    obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+= rk3399_dmc.o
>>>>    obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+= tegra30-devfreq.o
>>>>    obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+= tegra20-devfreq.o
>>>>    
>>>>    # DEVFREQ Event Drivers
>>>> diff --git a/drivers/devfreq/imx8m-ddrc.c b/drivers/devfreq/imx8m-ddrc.c
>>>> new file mode 100644
>>>> index 000000000000..51903fee21a7
>>>> --- /dev/null
>>>> +++ b/drivers/devfreq/imx8m-ddrc.c
>>>> @@ -0,0 +1,416 @@
>>>> +// SPDX-License-Identifier: GPL-2.0
>>>> +/*
>>>> + * Copyright 2019 NXP
>>>> + */
>>>> +
>>>> +#include <linux/module.h>
>>>> +#include <linux/device.h>
>>>> +#include <linux/of_device.h>
>>>> +#include <linux/platform_device.h>
>>>> +#include <linux/devfreq.h>
>>>> +#include <linux/pm_opp.h>
>>>> +#include <linux/clk.h>
>>>> +#include <linux/clk-provider.h>
>>>> +#include <linux/arm-smccc.h>
>>>> +
>>>> +#define IMX_SIP_DDR_DVFS			0xc2000004
>>>> +
>>>> +/* Values starting from 0 switch to specific frequency */
>>>> +#define IMX_SIP_DDR_FREQ_SET_HIGH		0x00
>>>> +
>>>> +/* Deprecated after moving IRQ handling to ATF */
>>>> +#define IMX_SIP_DDR_DVFS_WAIT_CHANGE		0x0F
>>>> +
>>>> +/* Query available frequencies. */
>>>> +#define IMX_SIP_DDR_DVFS_GET_FREQ_COUNT		0x10
>>>> +#define IMX_SIP_DDR_DVFS_GET_FREQ_INFO		0x11
>>>> +
>>>> +/*
>>>> + * This should be in a 1:1 mapping with devicetree OPPs but
>>>> + * firmware provides additional info.
>>>> + */
>>>> +struct imx8m_ddrc_freq {
>>>> +	unsigned long rate;
>>>> +	unsigned long smcarg;
>>>> +	int dram_core_parent_index;
>>>> +	int dram_alt_parent_index;
>>>> +	int dram_apb_parent_index;
>>>> +};
>>>> +
>>>> +/* Hardware limitation */
>>>> +#define IMX8M_DDRC_MAX_FREQ_COUNT 4
>>>> +
>>>> +/*
>>>> + * i.MX8M DRAM Controller clocks have the following structure (abridged):
>>>> + *
>>>> + * +----------+       |\            +------+
>>>> + * | dram_pll |-------|M| dram_core |      |
>>>> + * +----------+       |U|---------->| D    |
>>>> + *                 /--|X|           |  D   |
>>>> + *   dram_alt_root |  |/            |   R  |
>>>> + *                 |                |    C |
>>>> + *            +---------+           |      |
>>>> + *            |FIX DIV/4|           |      |
>>>> + *            +---------+           |      |
>>>> + *  composite:     |                |      |
>>>> + * +----------+    |                |      |
>>>> + * | dram_alt |----/                |      |
>>>> + * +----------+                     |      |
>>>> + * | dram_apb |-------------------->|      |
>>>> + * +----------+                     +------+
>>>> + *
>>>> + * The dram_pll is used for higher rates and dram_alt is used for lower rates.
>>>> + *
>>>> + * Frequency switching is implemented in TF-A (via SMC call) and can change the
>>>> + * configuration of the clocks, including mux parents. The dram_alt and
>>>> + * dram_apb clocks are "imx composite" and their parent can change too.
>>>> + *
>>>> + * We need to prepare/enable the new mux parents head of switching and update
>>>> + * their information afterwards.
>>>> + */
>>>> +struct imx8m_ddrc {
>>>> +	struct devfreq_dev_profile profile;
>>>> +	struct devfreq *devfreq;
>>>> +
>>>> +	/* For frequency switching: */
>>>> +	struct clk *dram_core;
>>>> +	struct clk *dram_pll;
>>>> +	struct clk *dram_alt;
>>>> +	struct clk *dram_apb;
>>>> +
>>>> +	int freq_count;
>>>> +	struct imx8m_ddrc_freq freq_table[IMX8M_DDRC_MAX_FREQ_COUNT];
>>>> +};
>>>> +
>>>> +static struct imx8m_ddrc_freq *imx8m_ddrc_find_freq(struct imx8m_ddrc *priv,
>>>> +						    unsigned long rate)
>>>> +{
>>>> +	struct imx8m_ddrc_freq *freq;
>>>> +	int i;
>>>> +
>>>> +	/*
>>>> +	 * Firmware reports values in MT/s, so we round-down from Hz
>>>> +	 * Rounding is extra generous to ensure a match.
>>>> +	 */
>>>> +	rate = DIV_ROUND_CLOSEST(rate, 250000);
>>>> +	for (i = 0; i < priv->freq_count; ++i) {
>>>> +		freq = &priv->freq_table[i];
>>>> +		if (freq->rate == rate ||
>>>> +				freq->rate + 1 == rate ||
>>>> +				freq->rate - 1 == rate)
>>>> +			return freq;
>>>> +	}
>>>> +
>>>> +	return NULL;
>>>> +}
>>>> +
>>>> +static void imx8m_ddrc_smc_set_freq(int target_freq)
>>>> +{
>>>> +	struct arm_smccc_res res;
>>>> +	u32 online_cpus = 0;
>>>> +	int cpu;
>>>> +
>>>> +	local_irq_disable();
>>>
>>> local_irq_disable is more proper than local_irq_save()?
>>
>> There's no need to use save/restore because we know that irqs are
>> enabled when entering the function. This is only called from devfreq
>> set_target which runs in process context.
> 
> local_irq might affect the whole architecture and other running device driver
> which requires the some CPU irq at the same time. Don't need to save the irqflag?

As far as I know IRQ disabling implicitly disables all forms of 
preemption, no other code can run until irqs are restored.

The difference between disable/enable and save/restore is that the 
latter also works when function is called with irqs already disabled but 
that is not required here. We know that devfreq set_target is called in 
process context with irqs enabled, otherwise it would be impossible to 
use the OPP framework (it uses mutexes internally) or touch regulators 
(they frequently sleep waiting on i2c transactions).

>>>> +	for_each_online_cpu(cpu)
>>>> +		online_cpus |= (1 << (cpu * 8));
>>>> +
>>>> +	/* change the ddr freqency */
>>>> +	arm_smccc_smc(IMX_SIP_DDR_DVFS, target_freq, online_cpus,
>>>> +			0, 0, 0, 0, 0, &res);
>>>> +
>>>> +	local_irq_enable();
>>>
>>> ditto. local_irq_restore() instead of local_irq_enable()
>>>
>>>> +}
>>>> +
>>>> +struct clk *clk_get_parent_by_index(struct clk *clk, int index)
>>>> +{
>>>> +	struct clk_hw *hw;
>>>> +
>>>> +	hw = clk_hw_get_parent_by_index(__clk_get_hw(clk), index);
>>>> +
>>>> +	return hw ? hw->clk : NULL;
>>>> +}
>>>> +
>>>> +static int imx8m_ddrc_set_freq(struct device *dev, struct imx8m_ddrc_freq *freq)
>>>> +{
>>>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>>>> +	struct clk *new_dram_core_parent;
>>>> +	struct clk *new_dram_alt_parent;
>>>> +	struct clk *new_dram_apb_parent;
>>>> +	int ret;
>>>> +
>>>> +	new_dram_core_parent = clk_get_parent_by_index(
>>>   > You can use 'clk_hw_get_parent_by_index' directly.
>>
>> The helper above avoids duplicating ?:
> 
> I think that it is not duplicate. You use 'clk_hw_get_parent_by_index' function
> and check the return value. it is essential behavior.

The clk_hw_get_parent_by_index function returns a clk_hw and I'm using 
the inner hw->clk. Without clk_get_parent_by_index I'd have to write:

     hw = clk_hw_get_parent_by_index
     if (!hw || !hw->clk) {
         dev_err(...);
         return
     }
     clk = hw->clk;

This seems pointlessly verbose.

>>> And, you need to check whether the return value is NULL or not.

>> Yes for dram_core_parent but others are deliberately allowed to be NULL.
>> For some setpoints some parents might be indifferent or require no
>> changes. For example when dram_core has pll as parent the expectation is
>> that dram_all will be OFF so parent is irrelevant.
> 
> If all case is not same as you commented, you just add the proper dev_warn
> or dev_info message according to the h/w characteristic. Because user
> cannot know the detailed reason why don't check the return value.

Really it's only freq->dram_alt/apb_parent_index which can be zero, if 
that has a valid value then clk fetching shouldn't fail for any other 
reason. Current code could indeed hide some errors.
>> Driver relies on the fact that clock API ignores prepare/enable for NULL
>> clocks. I can add a comment explaining that.
>>
>>>> +			priv->dram_core, freq->dram_core_parent_index - 1);
>>>> +	new_dram_alt_parent = clk_get_parent_by_index(
>>>
>>> ditto.
>>>
>>>> +			priv->dram_alt, freq->dram_alt_parent_index - 1);
>>>> +	new_dram_apb_parent = clk_get_parent_by_index(
>>>
>>> ditto.
>>
>>>> +			priv->dram_apb, freq->dram_apb_parent_index - 1);
>>>> +
>>>> +	/* increase reference counts and ensure clks are ON before switch */
>>>> +	ret = clk_prepare_enable(new_dram_core_parent);
>>>> +	if (ret) {
>>>> +		dev_err(dev, "failed enable new dram_core parent: %d\n", ret);
>>>> +		goto out;
>>>> +	}
>>>> +	ret = clk_prepare_enable(new_dram_alt_parent);
>>>> +	if (ret) {
>>>> +		dev_err(dev, "failed enable new dram_alt parent: %d\n", ret);
>>>> +		goto out_dis_core;
>>>
>>> I think that 'dis' is not general expression for 'disable'.
>>> Just, I think that 'out_disable_core' is better than 'out_dis_core'.
>>
>> OK
>>
>>>> +	}
>>>> +	ret = clk_prepare_enable(new_dram_apb_parent);
>>>> +	if (ret) {
>>>> +		dev_err(dev, "failed enable new dram_apb parent: %d\n", ret);
>>>> +		goto out_dis_alt;
>>>
>>> ditto.
>>>
>>>> +	}
>>>> +
>>>> +	imx8m_ddrc_smc_set_freq(freq->smcarg);
>>>> +
>>>> +	/* update parents in clk tree after switch. */
>>>> +	ret = clk_set_parent(priv->dram_core, new_dram_core_parent);
>>>> +	if (ret)
>>>> +		dev_err(dev, "failed set dram_core parent: %d\n", ret);
>>>
>>> if you don't return directly, you better to use 'dev_warn' instead of 'dev_err'.
>>
>> OK.
>>
>>>> +	if (new_dram_alt_parent) {
>>>> +		ret = clk_set_parent(priv->dram_alt, new_dram_alt_parent);
>>>> +		if (ret)
>>>> +			dev_err(dev, "failed set dram_alt parent: %d\n", ret);
>>>
>>> ditto. Use dev_warn.
>>>    
>>>> +	}
>>>> +	if (new_dram_apb_parent) {
>>>> +		ret = clk_set_parent(priv->dram_apb, new_dram_apb_parent);
>>>> +		if (ret)
>>>> +			dev_err(dev, "failed set dram_apb parent: %d\n", ret);
>>>
>>> ditto. Use dev_warn.
>>>
>>>> +	}
>>>> +
>>>> +	/*
>>>> +	 * Explicitly refresh dram PLL rate.
>>>> +	 *
>>>> +	 * Even if it's marked with CLK_GET_RATE_NOCACHE the rate will not be
>>>
>>> nitpick:
>>> What is more proper description either or 'Even if' or 'if' ?
>>
>> Rate updates work for dram_alt/apb but not for dram_pll because
>> additional clocks might be present between the PLL and dram_core mux.
>> This happens *even if* pll is marked with CLK_GET_RATE_NOCACHE.
> 
> ok.
> 
>>
>>>> +	 * automatically refreshed when clk_get_rate is called on children.
>>>> +	 */
>>>> +	clk_get_rate(priv->dram_pll);
>>>> +
>>>> +	/*
>>>> +	 * clk_set_parent transfer the reference count from old parent.
>>>> +	 * now we drop extra reference counts used during the switch
>>>> +	 */
>>>> +	clk_disable_unprepare(new_dram_apb_parent);
>>>> +out_dis_alt:
>>>> +	clk_disable_unprepare(new_dram_alt_parent);
>>>> +out_dis_core:
>>>> +	clk_disable_unprepare(new_dram_core_parent);
>>>> +out:
>>>> +	return ret;
>>>> +}
>>>> +
>>>> +static int imx8m_ddrc_target(struct device *dev, unsigned long *freq, u32 flags)
>>>> +{
>>>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>>>> +	struct imx8m_ddrc_freq *freq_info;
>>>> +	struct dev_pm_opp *new_opp;
>>>> +	unsigned long old_freq, new_freq;
>>>> +	int ret;
>>>> +
>>>> +	new_opp = devfreq_recommended_opp(dev, freq, flags);
>>>> +	if (IS_ERR(new_opp)) {
>>>> +		ret = PTR_ERR(new_opp);
>>>> +		dev_err(dev, "failed to get recommended opp: %d\n", ret);
>>>> +		return ret;
>>>> +	}
>>>> +	dev_pm_opp_put(new_opp);
>>>> +
>>>> +	old_freq = clk_get_rate(priv->dram_core);
>>>> +	if (*freq == old_freq)
>>>> +		return 0;
>>>> +
>>>> +	freq_info = imx8m_ddrc_find_freq(priv, *freq);
>>>> +	if (!freq_info)
>>>> +		return -EINVAL;
>>>> +	ret = imx8m_ddrc_set_freq(dev, freq_info);
>>>
>>> Need to check whether 'ret' is valid or not.
>>>
>>>> +
>>>> +	/* Also read back the clk rate to verify switch was correct */
>>>> +	new_freq = clk_get_rate(priv->dram_core);
>>>> +	if (ret || *freq != new_freq)
>>>
>>> You should check 'ret' right after imx8m_ddrc_set_freq()
>>> instead of this position.
>>
>> OK, I can add two error paths.
>>
>>>> +		dev_err(dev, "ddrc failed freq set to %lu from %lu, now at %lu\n",
>>>> +			old_freq, *freq, new_freq);
>>>> +	else
>>>> +		dev_dbg(dev, "ddrc freq set to %lu (was %lu)\n",
>>>> +			*freq, old_freq);
>>>> +
>>>> +	return ret;
>>>> +}
>>>> +
>>>> +static int imx8m_ddrc_get_cur_freq(struct device *dev, unsigned long *freq)
>>>> +{
>>>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>>>> +
>>>> +	*freq = clk_get_rate(priv->dram_core);
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> +static int imx8m_ddrc_init_freq_info(struct device *dev)
>>>> +{
>>>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>>>> +	struct arm_smccc_res res;
>>>> +	int index;
>>>> +
>>>> +	/*
>>>> +	 * An error here means DDR DVFS API not supported by firmware
>>>> +	 */
>>>
>>> Don't need to add multiple line comments. It is possible to be change as following:
>>>
>>> 	/* An error here means DDR DVFS API not supported by firmware */
>>
>> OK.
>>>> +	arm_smccc_smc(IMX_SIP_DDR_DVFS, IMX_SIP_DDR_DVFS_GET_FREQ_COUNT,
>>>> +			0, 0, 0, 0, 0, 0, &res);
>>>> +	priv->freq_count = res.a0;
>>>> +	if (priv->freq_count <= 0 ||
>>>> +			priv->freq_count > IMX8M_DDRC_MAX_FREQ_COUNT)
>>>> +		return -ENODEV;
>>>> +
>>>> +	for (index = 0; index < priv->freq_count; ++index) {
>>>> +		struct imx8m_ddrc_freq *freq = &priv->freq_table[index];
>>>> +
>>>> +		arm_smccc_smc(IMX_SIP_DDR_DVFS, IMX_SIP_DDR_DVFS_GET_FREQ_INFO,
>>>> +				index, 0, 0, 0, 0, 0, &res);
>>>> +		/* Result should be strictly positive */
>>>> +		if ((long)res.a0 <= 0)
>>>> +			return -ENODEV;
>>>> +
>>>> +		freq->rate = res.a0;
>>>> +		freq->smcarg = index;
>>>> +		freq->dram_core_parent_index = res.a1;
>>>> +		freq->dram_alt_parent_index = res.a2;
>>>> +		freq->dram_apb_parent_index = res.a3;
>>>> +
>>>> +		/* dram_core has 2 options: dram_pll or dram_alt_root */
>>>> +		if (freq->dram_core_parent_index != 1 &&
>>>> +				freq->dram_core_parent_index != 2)
>>>> +			return -ENODEV;
>>>> +		/* dram_apb and dram_alt have exactly 8 possible parents */
>>>> +		if (freq->dram_alt_parent_index > 8 ||
>>>> +				freq->dram_apb_parent_index > 8)
>>>> +			return -ENODEV;
>>>> +		/* dram_core from alt requires explicit dram_alt parent */
>>>> +		if (freq->dram_core_parent_index == 2 &&
>>>> +				freq->dram_alt_parent_index == 0)
>>>> +			return -ENODEV;
>>>> +	}
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> +/* imx8m_ddrc_check_opps() - disable OPPs not supported by firmware */
>>>
>>> nitpick:
>>> On this driver, there are no some description for internal function.
>>> In order to keep the coding style, you better to move this comment
>>> into function before 'freq = ULONG_MAX'.
>>
>> Is it a problem if only some internal functions have documentation? I
>> can add docs to more functions.
> 
> It is not problem. It is just preferable way to add the comment.
> Usually, if the function is public and exported, I added the detailed
> function comment as following example of devfreq_add_device().
> 
> /**
>   656  * devfreq_add_device() - Add devfreq feature to the device
>   657  * @dev:        the device to add devfreq feature.
>   658  * @profile:    device-specific profile to run devfreq.
>   659  * @governor_name:      name of the policy to choose frequency.
>   660  * @data:       private data for the governor. The devfreq framework does not
>   661  *              touch this value.
>   662  */
>   663 struct devfreq *devfreq_add_device(struct device *dev,
>   664                                    struct devfreq_dev_profile *profile,
>   665                                    const char *governor_name,
>   666                                    void *data)
> 
> 
> Otherwise, if function is used in the only local with static keyword,
> usually I don't add the above detailed description. Instead,
> add the detailed comment into the function.
> 
> It is not the standard way. Just preferable way for the function description
> if possible.
> 
> 
> 
>>
>> BTW: how can I generate devfreq documentation from these comments?
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
