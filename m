Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EAD10E776
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 10:12:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=muULRNogOhlSmZ5HxJCZG/LSw3SRaVXK6NKVywMISH0=; b=iMzP+5DsMjQMmn
	qnHIYNi8co4+WNNi9IkCGeNNti7jADrhTVD1+sAh+cnEpDdu4QTebMAatuAMGWSx6XaCZAfxzYU9F
	e1e++8tWuP2rGh84Mj/hBGethTDT8DWhl4FW2iks+Dr2tJQ/VbU1ZPCVB/Mj2WgBJTgCe3lhLmkn5
	vKwcjiEK9xPCRrEkIQvA7+oVcno+0/851xyhQPE8qidQd392hXfBgeB5hAznrd0l9PLSaaWTtIhME
	fdc6R/cHkgTpRl1/PVboU5E2NA8oNt0HKOfOu2JpnL/rdnjSDTYjcZEpkN++kqyAuhlSWJYe+xSe4
	77QR/P8Uu/U5jndMeUSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibhkl-0001wX-O8; Mon, 02 Dec 2019 09:12:23 +0000
Received: from mail-eopbgr140078.outbound.protection.outlook.com
 ([40.107.14.78] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibhke-0001vx-6N
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 09:12:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kxYSKdSp71zxbDWyvB+lUJ+YLkNgP1r/7HuMwFgce4JRY+Iv6cPlRo1BniBmurjDvF5N6Ssu/b8S/RjdFL4UBjpZ03uULB7tAmaCyWUwE+nDZrKS7F+pQ/VY6MhsJqvb/GwPaKYGSghySuj5E3hfVNbyA4QM8+6wJOFpq6F4zoikoe9RmSCo5t3kLhiWh/2mJaHN8R24it2mUrkocWc24YqzaH7+/3ofRfvm2+a3GeEDaAGlQl8LyudxVj7Xe1Jbu0+9Lhp23njoXsUlDm3ZrI0VsU6QS55Edu/xwqkI3Qh0epUeJCDRk4d6cwT9pg/fpSn2yLJaQNc3DhO4SDDTuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W1lAghbsehuGUkObX/2N39noCyI7M2frzmfou/uP8/s=;
 b=D/L9wCZ5uCZHTTJiJAlmnOicIy0vouOaRWFD4Htzo6sQgvyZWKQGV+wvjQz915fCCOQJYi41HtlBQFxLS0vDSG0H9Biq494txj6s6CcFNs/YrQ/+cnjvSOfDz9ei+oKjXOMM9D9nUyLFZzHzJnuievm4ib7p6CeV6CN7Iawo9cafvzQXIBTEIjsL/JK8vqyEcjZZbEzGhHOtZGTYueuX38m5LgX+6+o9bNlhWFrlU2mtOwu9biN913UeLX9cpBZtNGEkqo/19OgvrP5/hK6C04btpnTpinEv5owklPJi5H5MuSYAWzn9LuoiudCr78Dtx3LB1HmR05DA/Npa3p+SrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W1lAghbsehuGUkObX/2N39noCyI7M2frzmfou/uP8/s=;
 b=ETut1sO0AwpcCjz9auFQ9Nw7sKN0NKfMTRPk7fHkbAPfrTULLN/8dcYe/T5CLYMKWjA1uEBQasifp09Qw9k4Lu2Mqza/jbHnmhxDuYGmeDsc4WC8S0l/74YWkesNhFCOpDLPIYVLqr6IFYsxHWI/4aII+B1TX9P/QjoLzPJTxrM=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4224.eurprd04.prod.outlook.com (52.134.122.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.20; Mon, 2 Dec 2019 09:12:13 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 09:12:12 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 4/6] PM / devfreq: Add dynamic scaling for imx ddr
 controller
Thread-Topic: [PATCH v3 4/6] PM / devfreq: Add dynamic scaling for imx ddr
 controller
Thread-Index: AQHVkDU751yT9FzEn0iAYnZvaAii3w==
Date: Mon, 2 Dec 2019 09:12:12 +0000
Message-ID: <VI1PR04MB70234400D6CF248C18321FDBEE430@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1572558427.git.leonard.crestez@nxp.com>
 <5fcf829265ecde1af32cb1369528c97361c76992.1572558427.git.leonard.crestez@nxp.com>
 <20191202053847.GC9767@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5718e995-a24e-4822-663a-08d77707b7e3
x-ms-traffictypediagnostic: VI1PR04MB4224:|VI1PR04MB4224:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB42246E50A4262B5E61B861A5EE430@VI1PR04MB4224.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:289;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(136003)(396003)(39860400002)(199004)(189003)(316002)(2906002)(8936002)(54906003)(110136005)(305945005)(74316002)(81166006)(81156014)(7736002)(25786009)(3846002)(6116002)(99286004)(8676002)(26005)(66066001)(4326008)(44832011)(14444005)(256004)(446003)(14454004)(6436002)(71200400001)(71190400001)(33656002)(6246003)(186003)(86362001)(229853002)(478600001)(64756008)(966005)(66446008)(66556008)(66476007)(66946007)(76176011)(7696005)(76116006)(53546011)(91956017)(6506007)(102836004)(5660300002)(6306002)(55016002)(9686003)(52536014)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4224;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A3zAas3Y0OC+W9ocksV5y89GwgG8A0kJXSxkR0mIulGXBLbQhzYcAzso35XQ3AxNktMDcFmkUNfYaLoLQ9UpyEHamENq29NGkGzJd0G7Sl+fhaaiABSyPRgXHZIf3QgJhAOEgLpxRtHDHpSo7k1fyANdiOPrKw5qJEY5FyvUqYVP7VpoHtKzrHPRn+Zs8LQ1GcTWCW4r48W964d+fXyn0jAG73F903XGaMuXDm0qBhzOHyIdG1oAaYifziLjBQqZ7v9zlV7yHyFfPIr5SzbWJtKh+zLiEfujF/l5XBqQ7YjpayNllstz4XZjFBgiAywTsmre6qp/VeFL7gaCWyVhCjBFsegwIsgiAXA+0Kgc8dsJsnOpTVHniNn4pbbaNrUX6rdrnMj/GTQuatnyMXJ11ISThVY8KP31wij6HiV32Ty/HBdwlIGO6OJ1H3DY/2vFk73xGnaEoYPS2MP0+m+sp6a8GER+6U8QuFiFW7hU2rA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5718e995-a24e-4822-663a-08d77707b7e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2019 09:12:12.8141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UOrvi4VQh6iSbWirD49Ten+f5zibfkJMCsK88205W/Fips7VbB08GYhqU4j+77a8bjgLFMcpKU2HgDwr0Uli9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4224
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_011216_323913_035EC739 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-02 7:39 AM, Shawn Guo wrote:
> On Thu, Oct 31, 2019 at 11:50:25PM +0200, Leonard Crestez wrote:
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

A more recent version of this patch is already in next:

https://git.kernel.org/pub/scm/linux/kernel/git/chanwoo/linux.git/commit/?h=devfreq-next&id=518e99e2a22e318944d531a92aab5082fabb4d38

>>   drivers/devfreq/Makefile   |   1 +
>>   drivers/devfreq/imx-ddrc.c | 430 +++++++++++++++++++++++++++++++++++++
>>   2 files changed, 431 insertions(+)
>>   create mode 100644 drivers/devfreq/imx-ddrc.c

>> +++ b/drivers/devfreq/imx-ddrc.c
>> @@ -0,0 +1,430 @@
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
> 
> This is a header that should ideally be used by clock drivers only.
> 
>> +#include <linux/arm-smccc.h>
>> +
>> +#define IMX_SIP_DDR_DVFS			0xc2000004
>> +
>> +/* Values starting from 0 switch to specific frequency */
>> +#define IMX_SIP_DDR_FREQ_SET_HIGH		0x00
>> +
>> +/* Deprecated after moving IRQ handling to ATF */
>> +#define IMX_SIP_DDR_DVFS_WAIT_CHANGE		0x0F
> 
> These two defines are not used.  Will be?

No, can post a separate patch to remove them.
> 
>> +
>> +/* Query available frequencies. */
>> +#define IMX_SIP_DDR_DVFS_GET_FREQ_COUNT		0x10
>> +#define IMX_SIP_DDR_DVFS_GET_FREQ_INFO		0x11
>> +
>> +/*
>> + * This should be in a 1:1 mapping with devicetree OPPs but
>> + * firmware provides additional info.
>> + */
>> +struct imx_ddrc_freq {
>> +	unsigned long rate;
>> +	unsigned long smcarg;
>> +	int dram_core_parent_index;
>> +	int dram_alt_parent_index;
>> +	int dram_apb_parent_index;
>> +};
>> +
>> +/* Hardware limitation */
>> +#define IMX_DDRC_MAX_FREQ_COUNT 4
>> +
>> +/*
>> + * imx DRAM controller
>> + *
>> + * imx DRAM controller clocks have the following structure (abridged):
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
>> +struct imx_ddrc {
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
>> +	struct imx_ddrc_freq freq_table[IMX_DDRC_MAX_FREQ_COUNT];
>> +};
>> +

... snip ...

>> +static void imx_ddrc_smc_set_freq(int target_freq)
>> +{
>> +	struct arm_smccc_res res;
>> +	u32 online_cpus = 0;
>> +	int cpu;
>> +
>> +	local_irq_disable();
>> +
>> +	for_each_online_cpu(cpu)
>> +		online_cpus |= (1 << (cpu * 8));
> 
> Nit: one level of unnecessary parentheses.

Yes

>> +
>> +	/* change the ddr freqency */
>> +	arm_smccc_smc(IMX_SIP_DDR_DVFS, target_freq, online_cpus,
>> +			0, 0, 0, 0, 0, &res);
>> +
>> +	local_irq_enable();
>> +}
>> +
>> +struct clk *clk_get_parent_by_index(struct clk *clk, int index)
>> +{
>> +	struct clk_hw *hw;
>> +
>> +	hw = clk_hw_get_parent_by_index(__clk_get_hw(clk), index);
> 
> Okay, this is why you need clk-provider.h.  But this
> clk_get_parent_by_index() function looks completely generic, and should
> be proposed to clock core?

There are very few driver users of clk_hw_get_parent_by_index:

$ git grep -wl clk_hw_get_parent_by_index |grep -v drivers/clk
arch/mips/alchemy/common/clock.c
drivers/cpufreq/qoriq-cpufreq.c
drivers/devfreq/imx8m-ddrc.c
drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c
drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c
drivers/media/platform/atmel/atmel-isc-base.c
drivers/rtc/rtc-ac100.c
include/linux/clk-provider.h

Even clk_get_parent has few users and it contains this strange comment:

/* TODO: Create a per-user clk and change callers to call clk_put */

That proposed change effectively creates a new API? I didn't want to add 
a new clk core API with unclear semantics.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
