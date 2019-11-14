Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D674AFCA6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 17:02:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=7wutNZWH+0WXb7y0jL42vyItcF1zYhQNrOT86yYz7YE=; b=FpDFwX2a90ipbI
	zQQZ6h9oDR98SDV+Q0VZM7DSVRqSGTqaS2idTRIP7Sdh5P+3Ac6sZ1m5HAqgz5MqzN4nD3cM2oBfK
	GcrC8dqGHwpJkwuUQCiG1IP3Fqh1falb00PSsY0zdyB342EsGySJgR9aR9XeYWcfz5w918fsWZMQU
	xtxAopwvfJ7oDwgbbMaEMfONPOmEOipYaEmnvLsxgK48mKW2Jj3mkBoo7wcrGqmOSgvQmSxVhwAtN
	V+syYKHNQ7Tf3Dfo+9tM3Qil4eFQUgvd4jzeltvvt14PIIpyYaDYrAN+GCCyV8wyKEgLBsW6xfl4i
	cuV50n4hvlEu/BcGuhCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVHZI-0006Vd-9Q; Thu, 14 Nov 2019 16:02:00 +0000
Received: from mail-eopbgr50061.outbound.protection.outlook.com ([40.107.5.61]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVHZ6-0006V8-KX
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 16:01:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PTduGJBwJJTxe/gsxGMbZkGS37QNB4dNvet4Xsb/w7FDV/ljPTbOP6K/zOOhmvhsrYlY6fx/8bHYWmH+zE/don1yxXfXQVHAkdKXRHtKhHWWgfrnZH7XJJN4zxyDzfzmf6HsSYqiKY63qJfI25ewZ6IZdkXRs/UmoFGD1yT4PitaF9SKUMRIPQSFgwhcLLW64NdViiHwrDO+6ta2Mp89RwIAw4T1OZyU+SUnjrwxVq90xN2VeY1T8oF1jwmh40PqqokBV/4BARCN7DBXjdvgWStBV4VKDdbQy0kZfxo7zAr5QkasIIZi9dKaz8NRcmQQN4CkMAfEVHCL3tfHrtaeRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tKrirMikbgA+/Mw+7D6J2X2L9gWsw29r1YlXyCEjQis=;
 b=jX4A2KM7P8UXjtVY5KlNlSU3f9p/VkntxyaFjedJIKNBd6cIqmNMnfCzmbhJxyTkriUJfbBPPocXLQIE80TevZPJNifpCY7zNR57sdnIsYKXdIfhi3VEgu9OtcUiW4Y36JgPVgnt08LBjy3d/eKQB9cl7yJsWikL8ppDVKD+aafDFWdoj0P80M02H1qTpxLxWUwxMvy3G8GayXXtyyqIJ55IdzBI0TZcxOW2MOptZ3DZGQPvCfDju/ZMwd9/CejR3z4kM+maI17/4Wl0AbZZMDt9g4jVAbdWeYHtfTa5R0J72JB7T9n8aUM8ph3DgXqq82yZnAy/BPV2izUUt+R3Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tKrirMikbgA+/Mw+7D6J2X2L9gWsw29r1YlXyCEjQis=;
 b=lVyzUSFmqldrsNDqonpWfr/bkOsqUuMe0HHiddvRRLuZoLsZpNnbACCRCWQkXXVEsfWrUZ4rsy22G9rxYSaWFuw5i9Cy5d37RuBL/7ALbMBuXBX5c5gQ3t7R/vdSrfsgecBWnfW9r9KN6rEn6GSZqdxe1CazoRmnWKDOEV2GYsA=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5647.eurprd04.prod.outlook.com (20.178.126.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Thu, 14 Nov 2019 16:01:44 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2451.024; Thu, 14 Nov 2019
 16:01:44 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH v5 4/5] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
Thread-Topic: [PATCH v5 4/5] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
Thread-Index: AQHVmaNOsaN7UjD1dEWSlMW3gWLuow==
Date: Thu, 14 Nov 2019 16:01:44 +0000
Message-ID: <VI1PR04MB702383D0C9BDF609CE60B194EE710@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573595318.git.leonard.crestez@nxp.com>
 <CGME20191112215123epcas5p47d93a1e1837accf16ba0430963d03858@epcas5p4.samsung.com>
 <d33acdcc043ce12713a9279636e32d039da5ee54.1573595319.git.leonard.crestez@nxp.com>
 <0c416a08-811d-f3bc-af37-9e182f7c4d37@samsung.com>
 <6d9ace7b-3177-9bb2-82e6-7ee47f0fdf1c@samsung.com>
 <VI1PR04MB70238C187E23AFAA6DB3281CEE760@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <b89a5518-6628-3ef4-7e16-827c2fef8f9e@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 347f18a8-8019-4906-ee37-08d7691bf23e
x-ms-traffictypediagnostic: VI1PR04MB5647:|VI1PR04MB5647:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB56478562E3EA7087E3AE8A10EE710@VI1PR04MB5647.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02213C82F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(366004)(346002)(396003)(51444003)(189003)(199004)(3846002)(478600001)(52536014)(14444005)(6916009)(6246003)(256004)(305945005)(86362001)(66946007)(6506007)(53546011)(6436002)(66556008)(66446008)(64756008)(66476007)(55016002)(2906002)(7736002)(9686003)(7696005)(25786009)(74316002)(30864003)(5660300002)(76176011)(44832011)(8676002)(81166006)(81156014)(186003)(476003)(6116002)(446003)(14454004)(229853002)(33656002)(486006)(26005)(66066001)(316002)(99286004)(7416002)(71190400001)(71200400001)(102836004)(54906003)(91956017)(8936002)(76116006)(4326008)(32563001)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5647;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mhT1wodpzmTF/HeKoUn0aT5o7q2CHBiQZCUwyavxsWA1flx1/mkNzhWcYmxRNbw+NfBogS3mBSAY/7t30941Ujmz9XVvG6fdCRr30k4/b8yfx6PBJIF+7WLdogoklS5XtGJ/zD0CABm4ITdVLGDIUr7G5ovasR2KHrznZHz/9Gt68Lpn9Z+MiicaLJXgDgVUgbYCyuQ1VNrAKWs40sgoi5i1ZS9VKvmFa/0BK4WfKCppIRf2xPz/5gaZK4oVQOKnR+ZxA3XtYvMg11m24R8w26Ox2FJ4+9n5AuCxrmiSie19xFdBmiVSzw+gSMSy28JMPy3FDmYSSxojxd7SGIcEG7DuLPm8fXrkrhtwBukteW67rTRC7KzBT0FNVUsJfG7Fxqjvkt5zH7pv+a77oTCsvjBS+n8+ysFZt3+DA4CZiEGYA6VYG5O7ZNLkgaw1yv0I
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 347f18a8-8019-4906-ee37-08d7691bf23e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2019 16:01:44.2272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VsnBM3Zh2PyipXBNSwJPZpQt1Ek6zm7TmtDcNAJ2huj1ZshtOtjPwfWRmpJ1FABr3Tau0/MRahPY3nX+1O2YsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5647
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_080150_276537_F36C0559 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.61 listed in list.dnswl.org]
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
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14.11.2019 03:16, Chanwoo Choi wrote:
> On 11/13/19 10:10 PM, Leonard Crestez wrote:
>> On 13.11.2019 08:23, Chanwoo Choi wrote:
>>> On 11/13/19 11:30 AM, Chanwoo Choi wrote:
>>>> Hi Leonard,
>>>>
>>>> On 11/13/19 6:50 AM, Leonard Crestez wrote:
>>>>> Add driver for dynamic scaling the DDR Controller on imx8m chips. Actual
>>>>> frequency switching is implemented inside TF-A, this driver wraps the
>>>>> SMC calls and synchronizes the clk tree.
>>>>>
>>>>> The DRAM clocks on imx8m have the following structure (abridged):
>>>>>
>>>>>    +----------+       |\            +------+
>>>>>    | dram_pll |-------|M| dram_core |      |
>>>>>    +----------+       |U|---------->| D    |
>>>>>                    /--|X|           |  D   |
>>>>>      dram_alt_root |  |/            |   R  |
>>>>>                    |                |    C |
>>>>>               +---------+           |      |
>>>>>               |FIX DIV/4|           |      |
>>>>>               +---------+           |      |
>>>>>     composite:     |                |      |
>>>>>    +----------+    |                |      |
>>>>>    | dram_alt |----/                |      |
>>>>>    +----------+                     |      |
>>>>>    | dram_apb |-------------------->|      |
>>>>>    +----------+                     +------+
>>>>>
>>>>> The dram_pll is used for higher rates and dram_alt is used for lower
>>>>> rates. The dram_alt and dram_apb clocks are "imx composite" and their
>>>>> parent can also be modified.
>>>>>
>>>>> This driver will prepare/enable the new parents ahead of switching (so
>>>>> that the expected roots are enabled) and afterwards it will call
>>>>> clk_set_parent to ensure the parents in clock framework are up-to-date.
>>>>>
>>>>> The driver relies on dram_pll dram_alt and dram_apb being marked with
>>>>> CLK_GET_RATE_NOCACHE for rate updates.
>>>>>
>>>>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>>>>> ---
>>>>>    drivers/devfreq/Kconfig      |   9 +
>>>>>    drivers/devfreq/Makefile     |   1 +
>>>>>    drivers/devfreq/imx8m-ddrc.c | 460 +++++++++++++++++++++++++++++++++++
>>>>>    3 files changed, 470 insertions(+)
>>>>>    create mode 100644 drivers/devfreq/imx8m-ddrc.c
>>>>>
>>>>> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
>>>>> index 066e6c4efaa2..923a6132e741 100644
>>>>> --- a/drivers/devfreq/Kconfig
>>>>> +++ b/drivers/devfreq/Kconfig
>>>>> @@ -89,10 +89,19 @@ config ARM_EXYNOS_BUS_DEVFREQ
>>>>>    	  Each memory bus group could contain many memoby bus block. It reads
>>>>>    	  PPMU counters of memory controllers by using DEVFREQ-event device
>>>>>    	  and adjusts the operating frequencies and voltages with OPP support.
>>>>>    	  This does not yet operate with optimal voltages.
>>>>>    
>>>>> +config ARM_IMX8M_DDRC_DEVFREQ
>>>>> +	tristate "i.MX8M DDRC DEVFREQ Driver"
>>>>> +	depends on ARCH_MXC || COMPILE_TEST
>>>>> +	select DEVFREQ_GOV_SIMPLE_ONDEMAND
>>>>> +	select DEVFREQ_GOV_USERSPACE
>>>>> +	help
>>>>> +	  This adds the DEVFREQ driver for the i.MX8M DDR Controller. It allows
>>>>> +	  adjusting DRAM frequency.
>>>>> +
>>>>>    config ARM_TEGRA_DEVFREQ
>>>>>    	tristate "NVIDIA Tegra30/114/124/210 DEVFREQ Driver"
>>>>>    	depends on ARCH_TEGRA_3x_SOC || ARCH_TEGRA_114_SOC || \
>>>>>    		ARCH_TEGRA_132_SOC || ARCH_TEGRA_124_SOC || \
>>>>>    		ARCH_TEGRA_210_SOC || \
>>>>> diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
>>>>> index 338ae8440db6..3eb4d5e6635c 100644
>>>>> --- a/drivers/devfreq/Makefile
>>>>> +++ b/drivers/devfreq/Makefile
>>>>> @@ -7,10 +7,11 @@ obj-$(CONFIG_DEVFREQ_GOV_POWERSAVE)	+= governor_powersave.o
>>>>>    obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+= governor_userspace.o
>>>>>    obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+= governor_passive.o
>>>>>    
>>>>>    # DEVFREQ Drivers
>>>>>    obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+= exynos-bus.o
>>>>> +obj-$(CONFIG_ARM_IMX8M_DDRC_DEVFREQ)	+= imx8m-ddrc.o
>>>>>    obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+= rk3399_dmc.o
>>>>>    obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+= tegra30-devfreq.o
>>>>>    obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+= tegra20-devfreq.o
>>>>>    
>>>>>    # DEVFREQ Event Drivers
>>>>> diff --git a/drivers/devfreq/imx8m-ddrc.c b/drivers/devfreq/imx8m-ddrc.c
>>>>> new file mode 100644
>>>>> index 000000000000..62abb9b79d8a
>>>>> --- /dev/null
>>>>> +++ b/drivers/devfreq/imx8m-ddrc.c
>>>>> @@ -0,0 +1,460 @@
>>>>> +// SPDX-License-Identifier: GPL-2.0
>>>>> +/*
>>>>> + * Copyright 2019 NXP
>>>>> + */
>>>>> +
>>>>> +#include <linux/module.h>
>>>>> +#include <linux/device.h>
>>>>> +#include <linux/of_device.h>
>>>>> +#include <linux/platform_device.h>
>>>>> +#include <linux/devfreq.h>
>>>>> +#include <linux/pm_opp.h>
>>>>> +#include <linux/clk.h>
>>>>> +#include <linux/clk-provider.h>
>>>>> +#include <linux/arm-smccc.h>
>>>>> +
>>>>> +#define IMX_SIP_DDR_DVFS			0xc2000004
>>>>> +
>>>>> +/* Values starting from 0 switch to specific frequency */
>>>>> +#define IMX_SIP_DDR_FREQ_SET_HIGH		0x00
>>>>> +
>>>>> +/* Deprecated after moving IRQ handling to ATF */
>>>>> +#define IMX_SIP_DDR_DVFS_WAIT_CHANGE		0x0F
>>>>> +
>>>>> +/* Query available frequencies. */
>>>>> +#define IMX_SIP_DDR_DVFS_GET_FREQ_COUNT		0x10
>>>>> +#define IMX_SIP_DDR_DVFS_GET_FREQ_INFO		0x11
>>>>> +
>>>>> +/*
>>>>> + * This should be in a 1:1 mapping with devicetree OPPs but
>>>>> + * firmware provides additional info.
>>>>> + */
>>>>> +struct imx8m_ddrc_freq {
>>>>> +	unsigned long rate;
>>>>> +	unsigned long smcarg;
>>>>> +	int dram_core_parent_index;
>>>>> +	int dram_alt_parent_index;
>>>>> +	int dram_apb_parent_index;
>>>>> +};
>>>>> +
>>>>> +/* Hardware limitation */
>>>>> +#define IMX8M_DDRC_MAX_FREQ_COUNT 4
>>>>> +
>>>>> +/*
>>>>> + * i.MX8M DRAM Controller clocks have the following structure (abridged):
>>>>> + *
>>>>> + * +----------+       |\            +------+
>>>>> + * | dram_pll |-------|M| dram_core |      |
>>>>> + * +----------+       |U|---------->| D    |
>>>>> + *                 /--|X|           |  D   |
>>>>> + *   dram_alt_root |  |/            |   R  |
>>>>> + *                 |                |    C |
>>>>> + *            +---------+           |      |
>>>>> + *            |FIX DIV/4|           |      |
>>>>> + *            +---------+           |      |
>>>>> + *  composite:     |                |      |
>>>>> + * +----------+    |                |      |
>>>>> + * | dram_alt |----/                |      |
>>>>> + * +----------+                     |      |
>>>>> + * | dram_apb |-------------------->|      |
>>>>> + * +----------+                     +------+
>>>>> + *
>>>>> + * The dram_pll is used for higher rates and dram_alt is used for lower rates.
>>>>> + *
>>>>> + * Frequency switching is implemented in TF-A (via SMC call) and can change the
>>>>> + * configuration of the clocks, including mux parents. The dram_alt and
>>>>> + * dram_apb clocks are "imx composite" and their parent can change too.
>>>>> + *
>>>>> + * We need to prepare/enable the new mux parents head of switching and update
>>>>> + * their information afterwards.
>>>>> + */
>>>>> +struct imx8m_ddrc {
>>>>> +	struct devfreq_dev_profile profile;
>>>>> +	struct devfreq *devfreq;
>>>>> +
>>>>> +	/* For frequency switching: */
>>>>> +	struct clk *dram_core;
>>>>> +	struct clk *dram_pll;
>>>>> +	struct clk *dram_alt;
>>>>> +	struct clk *dram_apb;
>>>>> +
>>>>> +	int freq_count;
>>>>> +	struct imx8m_ddrc_freq freq_table[IMX8M_DDRC_MAX_FREQ_COUNT];
>>>>> +};
>>>>> +
>>>>> +static struct imx8m_ddrc_freq *imx8m_ddrc_find_freq(struct imx8m_ddrc *priv,
>>>>> +						    unsigned long rate)
>>>>> +{
>>>>> +	struct imx8m_ddrc_freq *freq;
>>>>> +	int i;
>>>>> +
>>>>> +	/*
>>>>> +	 * Firmware reports values in MT/s, so we round-down from Hz
>>>>> +	 * Rounding is extra generous to ensure a match.
>>>>> +	 */
>>>>> +	rate = DIV_ROUND_CLOSEST(rate, 250000);
>>>>> +	for (i = 0; i < priv->freq_count; ++i) {
>>>>> +		freq = &priv->freq_table[i];
>>>>> +		if (freq->rate == rate ||
>>>>> +				freq->rate + 1 == rate ||
>>>>> +				freq->rate - 1 == rate)
>>>>> +			return freq;
>>>>> +	}
>>>>> +
>>>>> +	return NULL;
>>>>> +}
>>>>> +
>>>>> +static void imx8m_ddrc_smc_set_freq(int target_freq)
>>>>> +{
>>>>> +	struct arm_smccc_res res;
>>>>> +	u32 online_cpus = 0;
>>>>> +	int cpu;
>>>>> +
>>>>> +	local_irq_disable();
>>>>> +
>>>>> +	for_each_online_cpu(cpu)
>>>>> +		online_cpus |= (1 << (cpu * 8));
>>>>> +
>>>>> +	/* change the ddr freqency */
>>>>> +	arm_smccc_smc(IMX_SIP_DDR_DVFS, target_freq, online_cpus,
>>>>> +			0, 0, 0, 0, 0, &res);
>>>>> +
>>>>> +	local_irq_enable();
>>>>> +}
>>>>> +
>>>>> +struct clk *clk_get_parent_by_index(struct clk *clk, int index)
>>>>> +{
>>>>> +	struct clk_hw *hw;
>>>>> +
>>>>> +	hw = clk_hw_get_parent_by_index(__clk_get_hw(clk), index);
>>>>> +
>>>>> +	return hw ? hw->clk : NULL;
>>>>> +}
>>>>> +
>>>>> +static int imx8m_ddrc_set_freq(struct device *dev, struct imx8m_ddrc_freq *freq)
>>>>> +{
>>>>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>>>>> +	struct clk *new_dram_core_parent;
>>>>> +	struct clk *new_dram_alt_parent;
>>>>> +	struct clk *new_dram_apb_parent;
>>>>> +	int ret;
>>>>> +
>>>>> +	/*
>>>>> +	 * Fetch new parents
>>>>> +	 *
>>>>> +	 * new_dram_alt_parent and new_dram_apb_parent are optional but
>>>>> +	 * new_dram_core_parent is not.
>>>>> +	 */
>>>>> +	new_dram_core_parent = clk_get_parent_by_index(
>>>>> +			priv->dram_core, freq->dram_core_parent_index - 1);
>>>>> +	if (!new_dram_core_parent) {
>>>>> +		dev_err(dev, "failed to fetch new dram_core parent\n");
>>>>> +		return -EINVAL;
>>>>> +	}
>>>>> +	if (freq->dram_alt_parent_index) {
>>>>> +		new_dram_alt_parent = clk_get_parent_by_index(
>>>>> +				priv->dram_alt,
>>>>> +				freq->dram_alt_parent_index - 1);
>>>>> +		if (!new_dram_alt_parent) {
>>>>> +			dev_err(dev, "failed to fetch new dram_alt parent\n");
>>>>> +			return -EINVAL;
>>>>> +		}
>>>>> +	} else
>>>>> +		new_dram_alt_parent = NULL;
>>>>> +
>>>>> +	if (freq->dram_alt_parent_index) {
>>>>> +		new_dram_apb_parent = clk_get_parent_by_index(
>>>>> +				priv->dram_apb, freq->dram_apb_parent_index - 1);
>>>>> +		if (!new_dram_alt_parent) {
>>>>> +			dev_err(dev, "failed to fetch new dram_apb parent\n");
>>>>> +			return -EINVAL;
>>>>> +		}
>>>>> +	} else
>>>>> +		new_dram_apb_parent = NULL;
>>>>> +
>>>>> +	/* increase reference counts and ensure clks are ON before switch */
>>>>> +	ret = clk_prepare_enable(new_dram_core_parent);
>>>>> +	if (ret) {
>>>>> +		dev_err(dev, "failed enable new dram_core parent: %d\n", ret);
>>>>
>>>> s/failed enable/failed to enable
>>>>
>>>>> +		goto out;
>>>>> +	}
>>>>> +	ret = clk_prepare_enable(new_dram_alt_parent);
>>>>> +	if (ret) {
>>>>> +		dev_err(dev, "failed enable new dram_alt parent: %d\n", ret);
>>>>
>>>> s/failed enable/failed to enable
>>>>
>>>>> +		goto out_disable_core_parent;
>>>>> +	}
>>>>> +	ret = clk_prepare_enable(new_dram_apb_parent);
>>>>> +	if (ret) {
>>>>> +		dev_err(dev, "failed enable new dram_apb parent: %d\n", ret);
>>>>
>>>> s/failed enable/failed to enable
>>>>
>>>>> +		goto out_disable_alt_parent;
>>>>> +	}
>>>>> +
>>>>> +	imx8m_ddrc_smc_set_freq(freq->smcarg);
>>>>> +
>>>>> +	/* update parents in clk tree after switch. */
>>>>> +	ret = clk_set_parent(priv->dram_core, new_dram_core_parent);
>>>>> +	if (ret)
>>>>> +		dev_warn(dev, "failed set dram_core parent: %d\n", ret);
>>>>
>>>> s/failed set/failed to set
>>>>
>>>>> +	if (new_dram_alt_parent) {
>>>>> +		ret = clk_set_parent(priv->dram_alt, new_dram_alt_parent);
>>>>> +		if (ret)
>>>>> +			dev_warn(dev, "failed set dram_alt parent: %d\n", ret);
>>>>
>>>> s/failed set/failed to set
>>>>
>>>>> +	}
>>>>> +	if (new_dram_apb_parent) {
>>>>> +		ret = clk_set_parent(priv->dram_apb, new_dram_apb_parent);
>>>>> +		if (ret)
>>>>> +			dev_warn(dev, "failed set dram_apb parent: %d\n", ret);
>>>>
>>>> s/failed set/failed to set
>>
>> OK, but this might make a few messages longer than 80 chars.
> 
> I don't like over 80 chars as I already commented.
> 
> 	dev_warn(dev,
> 		"failed set dram_apb parent: %d\n", ret);
> 
>>
>>>>> +	}
>>>>> +
>>>>> +	/*
>>>>> +	 * Explicitly refresh dram PLL rate.
>>>>> +	 *
>>>>> +	 * Even if it's marked with CLK_GET_RATE_NOCACHE the rate will not be
>>>>> +	 * automatically refreshed when clk_get_rate is called on children.
>>>>> +	 */
>>>>> +	clk_get_rate(priv->dram_pll);
>>>>> +
>>>>> +	/*
>>>>> +	 * clk_set_parent transfer the reference count from old parent.
>>>>> +	 * now we drop extra reference counts used during the switch
>>>>> +	 */
>>>>> +	clk_disable_unprepare(new_dram_apb_parent);
>>>>> +out_disable_alt_parent:
>>>>> +	clk_disable_unprepare(new_dram_alt_parent);
>>>>> +out_disable_core_parent:
>>>>> +	clk_disable_unprepare(new_dram_core_parent);
>>>>> +out:
>>>>> +	return ret;
>>>>> +}
>>>>> +
>>>>> +static int imx8m_ddrc_target(struct device *dev, unsigned long *freq, u32 flags)
>>>>> +{
>>>>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>>>>> +	struct imx8m_ddrc_freq *freq_info;
>>>>> +	struct dev_pm_opp *new_opp;
>>>>> +	unsigned long old_freq, new_freq;
>>>>> +	int ret;
>>>>> +
>>>>> +	new_opp = devfreq_recommended_opp(dev, freq, flags);
>>>>> +	if (IS_ERR(new_opp)) {
>>>>> +		ret = PTR_ERR(new_opp);
>>>>> +		dev_err(dev, "failed to get recommended opp: %d\n", ret);
>>>>> +		return ret;
>>>>> +	}
>>>>> +	dev_pm_opp_put(new_opp);
>>>>> +
>>>>> +	old_freq = clk_get_rate(priv->dram_core);
>>>>> +	if (*freq == old_freq)
>>>>> +		return 0;
>>>>> +
>>>>> +	freq_info = imx8m_ddrc_find_freq(priv, *freq);
>>>>> +	if (!freq_info)
>>>>> +		return -EINVAL;
>>>>> +
>>>>> +	/*
>>>>> +	 * Read back the clk rate to verify switch was correct and so that
>>>>> +	 * we can report it on all error paths.
>>>>> +	 */
>>>>> +	ret = imx8m_ddrc_set_freq(dev, freq_info);
>>>>> +
>>>>> +	new_freq = clk_get_rate(priv->dram_core);
>>>>> +	if (ret)
>>>>> +		dev_err(dev, "ddrc failed freq switch to %lu from %lu: error %d. now at %lu\n",
>>>>> +			old_freq, *freq, ret, new_freq);
>>>>> +	else if (*freq != new_freq)
>>>>> +		dev_err(dev, "ddrc failed freq update to %lu from %lu, now at %lu\n",
>>>>> +			old_freq, *freq, new_freq);
>>>>
>>>> Actually, is it error? When use clk_set_rate with target_freq,
>>>> if target_freq is not same with supported clock of h/w clock,
>>>> the clk_set_rate set the similiar clock rate among the supported clock table.
>>>>
>>>> It means that if the user of clock_set_rate() enters the unsupported clock rate,
>>>> the case of (*freq != new_freq) happen.
>>>>
>>>> Are you sure that you want to show the error when this case (*freq != new_freq)?
>>>> The your origin code is not wrong. Just question from me.
>>
>> The assumption here is that the OPP table will contain the precise
>> frequency as reported by clk_get_rate after a switch.
> 
> nitpick:
> As I said, I think it's not error. If failed to set the clock rate
> with any value, it is error.  But, if clk_set_rate() selected
> the supported clock, it is not error.
> 
> But, I'm sure that you completed the test and you could want to
> keep this line. I'm OK.

Yes, I think it's helpful to be extra paranoid here.
>> For example imx8mq-evk.dts has an OPP of exactly 166935483 Hz.>
>>>>> +	else
>>>>> +		dev_dbg(dev, "ddrc freq set to %lu (was %lu)\n",
>>>>> +			*freq, old_freq);
>>>>> +
>>>>> +	return ret;
>>>>> +}
>>>>> +
>>>>> +static int imx8m_ddrc_get_cur_freq(struct device *dev, unsigned long *freq)
>>>>> +{
>>>>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>>>>> +
>>>>> +	*freq = clk_get_rate(priv->dram_core);
>>>>> +
>>>>> +	return 0;
>>>>> +}
>>>>> +
>>>>> +static int imx8m_ddrc_get_dev_status(struct device *dev,
>>>>> +				     struct devfreq_dev_status *stat)
>>>>
>>>> get_dev_status() callback is called by only simpleondemand governor.
>>>> When userspace governor is used, this function is never called.
>>>> So, need to drop this function and then add this function on next time.
>>
>> Then you get an oops on "echo simple_ondemand > governor".
>>
>> In theory the simple_ondemand governor could check for NULL
>> "get_dev_status" or devfreq core could reject switching to
>> simple_ondemand if no get_dev_status is implemented. For example a
>> devfreq_governor.validate callback could be implemented?
> 
> Don't do that. I'll re-implement the governor flag like immutable
> /interrupt-driven and add the feature that the devfreq device driver
> specifies the supported governors when adding the device. I'll.
> 
>>
>> But right now the "get_dev_status" callback is NOT optional.
> 
> OK. Keep the get_dev_status().

Yes, it can be removed after devfreq core makes it optional.
>>>>> +{
>>>>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>>>>> +
>>>>> +	stat->busy_time = 0;
>>>>> +	stat->total_time = 0;
>>>>> +	stat->current_frequency = clk_get_rate(priv->dram_core);
>>>>> +
>>>>> +	return 0;
>>>>> +}
>>>>> +
>>>>> +static int imx8m_ddrc_init_freq_info(struct device *dev)
>>>>> +{
>>>>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>>>>> +	struct arm_smccc_res res;
>>>>> +	int index;
>>>>> +
>>>>> +	/* An error here means DDR DVFS API not supported by firmware */
>>>>> +	arm_smccc_smc(IMX_SIP_DDR_DVFS, IMX_SIP_DDR_DVFS_GET_FREQ_COUNT,
>>>>> +			0, 0, 0, 0, 0, 0, &res);
>>>>> +	priv->freq_count = res.a0;
>>>>> +	if (priv->freq_count <= 0 ||
>>>>> +			priv->freq_count > IMX8M_DDRC_MAX_FREQ_COUNT)
>>>>> +		return -ENODEV;
>>>>> +
>>>>> +	for (index = 0; index < priv->freq_count; ++index) {
>>>>> +		struct imx8m_ddrc_freq *freq = &priv->freq_table[index];
>>>>> +
>>>>> +		arm_smccc_smc(IMX_SIP_DDR_DVFS, IMX_SIP_DDR_DVFS_GET_FREQ_INFO,
>>>>> +			      index, 0, 0, 0, 0, 0, &res);
>>>>> +		/* Result should be strictly positive */
>>>>> +		if ((long)res.a0 <= 0)
>>>>> +			return -ENODEV;
>>>>> +
>>>>> +		freq->rate = res.a0;
>>>>> +		freq->smcarg = index;
>>>>> +		freq->dram_core_parent_index = res.a1;
>>>>> +		freq->dram_alt_parent_index = res.a2;
>>>>> +		freq->dram_apb_parent_index = res.a3;
>>>>> +
>>>>> +		/* dram_core has 2 options: dram_pll or dram_alt_root */
>>>>> +		if (freq->dram_core_parent_index != 1 &&
>>>>> +				freq->dram_core_parent_index != 2)
>>>>> +			return -ENODEV;
>>>>> +		/* dram_apb and dram_alt have exactly 8 possible parents */
>>>>> +		if (freq->dram_alt_parent_index > 8 ||
>>>>> +				freq->dram_apb_parent_index > 8)
>>>>> +			return -ENODEV;
>>>>> +		/* dram_core from alt requires explicit dram_alt parent */
>>>>> +		if (freq->dram_core_parent_index == 2 &&
>>>>> +				freq->dram_alt_parent_index == 0)
>>>>> +			return -ENODEV;
>>>>> +	}
>>>>> +
>>>>> +	return 0;
>>>>> +}
>>>>> +
>>>>> +static int imx8m_ddrc_check_opps(struct device *dev)
>>>>> +{
>>>>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>>>>> +	struct imx8m_ddrc_freq *freq_info;
>>>>> +	struct dev_pm_opp *opp;
>>>>> +	unsigned long freq;
>>>>> +
>>>>> +	/* Enumerate DT OPPs and disable those not supported by firmware */
>>>>> +	freq = ULONG_MAX;
>>>>> +	while (true) {
>>>
>>> You can get the number of OPP entries int the opp table
>>> with dev_pm_opp_get_count(dev). I think that better to
>>> use the correct number of OPP entries instead of 'while(true)' style.
>>
>> I need to enumerate frequencies and there's no "get_freq_by_index" in
>> opp core that I can find so I'd still need to use
>> dev_pm_opp_find_freq_floor.
> 
> Yes. I agree. Just I recommend that use the dev_pm_opp_get_opp_count()
> instead of infinite loop style with 'while(true)'. I don't prefer to
> use the infinite loop coding-sytle.
> 
>>
>> It's strange that OPP core doesn't offer additional support for
>> enumerating OPPs like a for_each macro?
> 
> Right there are no for_each_macro.
> 
> imx8m_ddrc_check_opps() is similiar with 'set_freq_table()'
> in devfreq.c with dev_pm_opp_get_opp_count(). You can refer to it.

OK

>>>>> +		opp = dev_pm_opp_find_freq_floor(dev, &freq);
>>>>> +		if (opp == ERR_PTR(-ERANGE))
>>>>> +			break;
>>>>> +		if (IS_ERR(opp)) {
>>>>> +			dev_err(dev, "Failed enumerating OPPs: %ld\n",
>>>>> +				PTR_ERR(opp));
>>>>> +			return PTR_ERR(opp);
>>>>> +		}
>>>>> +		dev_pm_opp_put(opp);
>>>>> +
>>>>> +		freq_info = imx8m_ddrc_find_freq(priv, freq);
>>>>> +		if (!freq_info) {
>>>>> +			dev_info(dev, "Disable unsupported OPP %luHz %luMT/s\n",
>>>>> +					freq, DIV_ROUND_CLOSEST(freq, 250000));
>>>>> +			dev_pm_opp_disable(dev, freq);
>>>>> +		}
>>>>> +
>>>>> +		freq--;
>>>>> +	}
>>>>> +
>>>>> +	return 0;
>>>>> +}
>>>>> +
>>>>> +static void imx8m_ddrc_exit(struct device *dev)
>>>>> +{
>>>>> +	dev_pm_opp_of_remove_table(dev);
>>>>> +}
>>>>> +
>>>>> +static int imx8m_ddrc_probe(struct platform_device *pdev)
>>>>> +{
>>>>> +	struct device *dev = &pdev->dev;
>>>>> +	struct imx8m_ddrc *priv;
>>>>> +	const char *gov = DEVFREQ_GOV_USERSPACE;
>>>>> +	int ret;
>>>>> +
>>>>> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>>>>> +	if (!priv)
>>>>> +		return -ENOMEM;
>>>>> +
>>>>> +	platform_set_drvdata(pdev, priv);
>>>>> +
>>>>> +	ret = imx8m_ddrc_init_freq_info(dev);
>>>>> +	if (ret) {
>>>>> +		dev_err(dev, "failed to init firmware freq info: %d\n", ret);
>>>>> +		return ret;
>>>>> +	}
>>>>> +
>>>>> +	priv->dram_core = devm_clk_get(dev, "core");
>>>>> +	priv->dram_pll = devm_clk_get(dev, "pll");
>>>>> +	priv->dram_alt = devm_clk_get(dev, "alt");
>>>>> +	priv->dram_apb = devm_clk_get(dev, "apb");
>>>>> +	if (IS_ERR(priv->dram_core) ||
>>>>> +		IS_ERR(priv->dram_pll) ||
>>>>> +		IS_ERR(priv->dram_alt) ||
>>>>> +		IS_ERR(priv->dram_apb)) {
>>>>> +		ret = PTR_ERR(priv->devfreq);
>>>>> +		dev_err(dev, "failed to fetch clocks: %d\n", ret);
>>>>> +		return ret;
>>>>> +	}
>>>>> +
>>>>> +	ret = dev_pm_opp_of_add_table(dev);
>>>>> +	if (ret < 0) {
>>>>> +		dev_err(dev, "failed to get OPP table\n");
>>>>> +		return ret;
>>>>> +	}
>>>>> +
>>>>> +	ret = imx8m_ddrc_check_opps(dev);
>>>>> +	if (ret < 0)
>>>>> +		goto err;
>>>>> +
>>>>> +	priv->profile.polling_ms = 1000;
>>>>> +	priv->profile.target = imx8m_ddrc_target;
>>>>> +	priv->profile.get_dev_status = imx8m_ddrc_get_dev_status;
>>>>
>>>> ditto. It is not used on this patch. On later, add the get_dev_status
>>>> for the ondemand governor.
>>>>
>>>>> +	priv->profile.exit = imx8m_ddrc_exit;
>>>>> +	priv->profile.get_cur_freq = imx8m_ddrc_get_cur_freq;
>>>>> +	priv->profile.initial_freq = clk_get_rate(priv->dram_core);
>>>>> +
>>>>> +	priv->devfreq = devm_devfreq_add_device(dev, &priv->profile,
>>>>> +						gov, NULL);
>>>>> +	if (IS_ERR(priv->devfreq)) {
>>>>> +		ret = PTR_ERR(priv->devfreq);
>>>>> +		dev_err(dev, "failed to add devfreq device: %d\n", ret);
>>>>> +		goto err;
>>>>> +	}
>>>>> +
>>>>> +	return 0;
>>>>> +
>>>>> +err:
>>>>> +	dev_pm_opp_of_remove_table(dev);
>>>>> +	return ret;
>>>>> +}
>>>>> +
>>>>> +static const struct of_device_id imx8m_ddrc_of_match[] = {
>>>>> +	{ .compatible = "fsl,imx8m-ddrc", },
>>>>> +	{ /* sentinel */ },
>>>>> +};
>>>>> +MODULE_DEVICE_TABLE(of, imx8m_ddrc_of_match);
>>>>> +
>>>>> +static struct platform_driver imx8m_ddrc_platdrv = {
>>>>> +	.probe		= imx8m_ddrc_probe,
>>>>> +	.driver = {
>>>>> +		.name	= "imx8m-ddrc-devfreq",
>>>>> +		.of_match_table = of_match_ptr(imx8m_ddrc_of_match),
>>>>> +	},
>>>>> +};
>>>>> +module_platform_driver(imx8m_ddrc_platdrv);
>>>>> +
>>>>> +MODULE_DESCRIPTION("i.MX8M DDR Controller frequency driver");
>>>>> +MODULE_AUTHOR("Leonard Crestez <leonard.crestez@nxp.com>");
>>>>> +MODULE_LICENSE("GPL v2");
>>
>>
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
