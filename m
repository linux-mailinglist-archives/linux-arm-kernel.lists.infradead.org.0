Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2821019CCA3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 00:01:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=xvaqIvIKhraOA3+5VODlGyS+9gpJul03L79n+5uXpw8=; b=sns1D6TdgAlttO
	a01kp0byOlto9SItZKteidwcFjXqb7T7IH8LiLS/U8tyW84IMj/wqSAyDNNDbLpdAvYfWbmBveTNA
	qa2xYZjyjwf604X0LzaiS3mv56Kbu/AGcQpBZYF09Lkd5w2IsAStYu9kvSv1Dp2b3HYIcI8vhz/WI
	XTFm4EAKZVldYQoHenUndcBpOSWG4LIG08PvUei8PpeQNHPsOXIchV9vJz7ma/EMcLbisxqSTtSJY
	R1EzZLEE0r/lp1x/BQPwC1RaoYz2XyQmyB0uGm4K6MJfN0lj+5dRmtpyMMCCg6ZuAGs1cj7pvvEiR
	5T8f2pOs+1CoI66TlK4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK7te-0004wU-Oq; Thu, 02 Apr 2020 22:01:10 +0000
Received: from mail-am6eur05on2085.outbound.protection.outlook.com
 ([40.107.22.85] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK7tW-0004vZ-RT
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 22:01:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PVEE5YTML+BLLpnfmxcW+iD/dMcd1YSHblH479GZ0/DxjMBru1kUyFOAl8LnAMZ8DlarAQxkAd8TPLg5sKNyYf24if+V+vwz7WQNEZ2Y7mcr7cjUb70EUan1F61l8Gc0q6EOrb1PRS+MzhbRX3OCil/fl9SWafpycehPC1MeTVn4EB1zbDXm8qF+Q+56TMGIvepyWsfhFBTrMhdq9X0cGR6RCavqPpLlbwxlspECwX+JC0gI23UjtS2fguKTMEHwm0NMKE6rw37WiXKjFxj2eKdaVVSfehVlhY9Pp77szQj9xqRc5y0Cqaeinf2nfGAVQBf1s97SwdwskxKKkfUuyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eMyIFJfD0CzsEdthvfXRXtb14eyGTXlTvJNeKxsYmrU=;
 b=NuM5+IpQkQhWzmfAVupdz8dosVcQsQt3PBR492uAGYEhiUDFn6o87gteWjaUGtJjoCW/7stoU/jceCx61suL03HtN58ONCY9+B3bB4/aKhHATAHGR9V+ExoWKiwSo+2wPgSFo+oDQ2pZcqlxTfq+Zo/+BprF7Ahuxt6Y/22wxmXzVeCL055Jyp4fzAfaUnzZWoWDvKJSDOO4Nbkyyt59Bmv/QyQX75rdaqSDtzepL33w2EKCpYC9bEfxqScNVnHCGD2Rhf8PRMtRPLSnMDbQIhAUaviCvdrI8jaQTYYLpr6U9STYqq07yImnWDFkVNxIGnyONpFOvyhPjFOk44WENw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eMyIFJfD0CzsEdthvfXRXtb14eyGTXlTvJNeKxsYmrU=;
 b=lPO1xL5p33oYt2Nuljqo0M3Mxdhm+27ki+Ma+U5+EXJEiqAsPoUUsdY9PE4uG1mCwPOIVfz5uBpsapCFAHRU06pfy3sPSkA+WRPGqT+YgQo347ShKZpwMc2Fqx+0MC4fmc32r3SIJ0oQwZoToMgoUe9Stsxyi7OKPdFvjaXpu2Q=
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com (2603:10a6:803:12e::23)
 by VI1PR04MB5824.eurprd04.prod.outlook.com (2603:10a6:803:eb::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Thu, 2 Apr
 2020 22:00:56 +0000
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200]) by VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200%2]) with mapi id 15.20.2878.016; Thu, 2 Apr 2020
 22:00:56 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>
Subject: Re: [PATCH v2 4/8] interconnect: Add imx core driver
Thread-Topic: [PATCH v2 4/8] interconnect: Add imx core driver
Thread-Index: AQHWCDJ+vtFSR3fKPE6a5fasnP96Gg==
Date: Thu, 2 Apr 2020 22:00:56 +0000
Message-ID: <VI1PR04MB6941080388058184401EDB5EEEC60@VI1PR04MB6941.eurprd04.prod.outlook.com>
References: <cover.1585751281.git.leonard.crestez@nxp.com>
 <50e6bdb1aab7d8f73cb10d11a4ea1e55056448fc.1585751281.git.leonard.crestez@nxp.com>
 <4464d011-5948-61ef-97bb-173f428021ad@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b0b992d9-07c8-470a-e086-08d7d751521d
x-ms-traffictypediagnostic: VI1PR04MB5824:|VI1PR04MB5824:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5824F17362CE4E490B3D8E72EEC60@VI1PR04MB5824.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:785;
x-forefront-prvs: 0361212EA8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB6941.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(396003)(376002)(366004)(66946007)(66556008)(26005)(33656002)(316002)(6506007)(66446008)(9686003)(64756008)(2906002)(66476007)(86362001)(91956017)(76116006)(55016002)(8676002)(81156014)(71200400001)(52536014)(44832011)(186003)(53546011)(478600001)(4326008)(30864003)(8936002)(7416002)(5660300002)(81166006)(6916009)(7696005)(54906003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WF2cBX51crgkTkVDPdZxv36Hp3SxA4VJCsyniGnj4wPWh17M0/n/PJzRoz9wtovYwopjhGuiPZM+cWckTSRqlqzn6Am23LB8tickLhAjAtYSDo5que576XadNb8ee/lZsWfLAivEExOyeoF24lO1atTS784Z/PhDd0Ek4dwq82r7xLcZJ6oyDQmuaOYKY6Hr5q/5W5+0GnRi260O9RnJ6z080DN4mJwM1/+GofgcEJ8jAPVDi6GZGtKRJo0dG9H1ocnncV1FJYgATdmv1nNyPTO3WCun8G6TdBUBElaA91kkoC0F8TZRXrvkfhvwf9Nsk6ytqJhvmssDbV4OBTTxiZZrmKc7nUxkAnFXRJg8c24/lCc2DmrAUS/JHdn5CDgZmSGmHeFAcTDEqAPDcpFDaNeBdR9PuafXRv5eHnvXAQpf+CptbmFVgyHkXpE0Srm7
x-ms-exchange-antispam-messagedata: q3lpjJlRe9LEvvX6lm0Q2H3zXmwWXECaDe4jLFAaUjBTAhQrx7UDxjy48geogxub7jtmghuIR0rLwQHYmHX4icURkD81+PybPEZcTSA/kLBgY9uWqtucAa7vm/wgWhJ3rprSYC3gQzlXlvSVkF83/g==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0b992d9-07c8-470a-e086-08d7d751521d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2020 22:00:56.3986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p96gIEPCqsMIw7eH4flYiNW9XUxD3hOogKcS2xQ7KyIcwjmcKFzXhr0W8PM22/voXQU6gci+8JLPKjCZH37caA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5824
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_150103_177302_CB19D1E9 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.85 listed in list.dnswl.org]
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
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
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

On 2020-04-02 2:06 PM, Georgi Djakov wrote:
> Hi Leonard,
> 
> Thank you for updating the patches!
> 
> On 4/1/20 17:33, Leonard Crestez wrote:
>> This adds support for i.MX SoC family to interconnect framework.
>>
>> Platform drivers can describe the interconnect graph and several
>> adjustment knobs where icc node bandwidth is converted to a
>> DEV_PM_QOS_MIN_FREQUENCY request.
>>
>> The interconnect provider is probed through the main NOC device and
>> other adjustable nodes on the same graph are found from a
>> fsl,scalable-nodes phandle array property.
>>
>> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> Tested-by: Martin Kepplinger <martin.kepplinger@puri.sm>
>> ---
>>   drivers/interconnect/Kconfig      |   1 +
>>   drivers/interconnect/Makefile     |   1 +
>>   drivers/interconnect/imx/Kconfig  |   5 +
>>   drivers/interconnect/imx/Makefile |   3 +
>>   drivers/interconnect/imx/imx.c    | 298 ++++++++++++++++++++++++++++++
>>   drivers/interconnect/imx/imx.h    |  62 +++++++
>>   6 files changed, 370 insertions(+)
>>   create mode 100644 drivers/interconnect/imx/Kconfig
>>   create mode 100644 drivers/interconnect/imx/Makefile
>>   create mode 100644 drivers/interconnect/imx/imx.c
>>   create mode 100644 drivers/interconnect/imx/imx.h
>>
>> diff --git a/drivers/interconnect/Kconfig b/drivers/interconnect/Kconfig
>> index bfa4ca3ab7a9..e61802230f90 100644
>> --- a/drivers/interconnect/Kconfig
>> +++ b/drivers/interconnect/Kconfig
>> @@ -10,7 +10,8 @@ menuconfig INTERCONNECT
>>   	  If unsure, say no.
>>   
>>   if INTERCONNECT
>>   
>>   source "drivers/interconnect/qcom/Kconfig"
>> +source "drivers/interconnect/imx/Kconfig"
> 
> Nit: Please move it up to make it sorted.
> 
>>   
>>   endif
>> diff --git a/drivers/interconnect/Makefile b/drivers/interconnect/Makefile
>> index 725029ae7a2c..6998288a7d98 100644
>> --- a/drivers/interconnect/Makefile
>> +++ b/drivers/interconnect/Makefile
>> @@ -3,5 +3,6 @@
>>   CFLAGS_core.o				:= -I$(src)
>>   icc-core-objs				:= core.o
>>   
>>   obj-$(CONFIG_INTERCONNECT)		+= icc-core.o
>>   obj-$(CONFIG_INTERCONNECT_QCOM)		+= qcom/
>> +obj-$(CONFIG_INTERCONNECT_IMX)		+= imx/
> 
> Ditto.
> 
>> diff --git a/drivers/interconnect/imx/Kconfig b/drivers/interconnect/imx/Kconfig
>> new file mode 100644
>> index 000000000000..f39336f8d603
>> --- /dev/null
>> +++ b/drivers/interconnect/imx/Kconfig
>> @@ -0,0 +1,5 @@
>> +config INTERCONNECT_IMX
>> +	tristate "i.MX interconnect drivers"
>> +	depends on ARCH_MXC || COMPILE_TEST
>> +	help
>> +	  Generic interconnect drivers for i.MX SOCs
>> diff --git a/drivers/interconnect/imx/Makefile b/drivers/interconnect/imx/Makefile
>> new file mode 100644
>> index 000000000000..86ae0bd28d8c
>> --- /dev/null
>> +++ b/drivers/interconnect/imx/Makefile
>> @@ -0,0 +1,3 @@
>> +imx-interconnect-objs			:= imx.o
>> +
>> +obj-$(CONFIG_INTERCONNECT_IMX)		+= imx-interconnect.o
>> diff --git a/drivers/interconnect/imx/imx.c b/drivers/interconnect/imx/imx.c
>> new file mode 100644
>> index 000000000000..527b1de1c41a
>> --- /dev/null
>> +++ b/drivers/interconnect/imx/imx.c
>> @@ -0,0 +1,298 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Interconnect framework driver for i.MX SoC
>> + *
>> + * Copyright (c) 2019, BayLibre
>> + * Copyright (c) 2019, NXP
> 
> Maybe update it to 2020.
> 
>> + * Author: Alexandre Bailon <abailon@baylibre.com>
>> + * Author: Leonard Crestez <leonard.crestez@nxp.com>
>> + */
>> +
>> +#include <linux/device.h>
>> +#include <linux/interconnect-provider.h>
>> +#include <linux/module.h>
>> +#include <linux/of.h>
>> +#include <linux/of_platform.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/pm_qos.h>
>> +
>> +#include "imx.h"
>> +
>> +/* private icc_node data */
>> +struct imx_icc_node {
>> +	const struct imx_icc_node_desc *desc;
>> +	struct device *qos_dev;
>> +	struct dev_pm_qos_request qos_req;
>> +};
>> +
>> +static int imx_icc_aggregate(struct icc_node *node, u32 tag,
>> +			     u32 avg_bw, u32 peak_bw,
>> +			     u32 *agg_avg, u32 *agg_peak)
>> +{
>> +	*agg_avg += avg_bw;
>> +	*agg_peak = max(*agg_peak, peak_bw);
>> +
>> +	return 0;
>> +}
> 
> Please remove and use the common library function:
> icc_std_aggregate().

OK

>> +
>> +static int imx_icc_node_set(struct icc_node *node)
>> +{
>> +	struct device *dev = node->provider->dev;
>> +	struct imx_icc_node *node_data = node->data;
>> +	u64 freq;
>> +
>> +	if (!node_data->qos_dev)
>> +		return 0;
>> +
>> +	freq = (node->avg_bw + node->peak_bw) * node_data->desc->adj->bw_mul;
>> +	do_div(freq, node_data->desc->adj->bw_div);
>> +	dev_dbg(dev, "node %s device %s avg_bw %ukBps peak_bw %ukBps min_freq %llukHz\n",
>> +		node->name, dev_name(node_data->qos_dev),
>> +		node->avg_bw, node->peak_bw, freq);
>> +
>> +	if (freq > S32_MAX) {
>> +		dev_err(dev, "%s can't request more than S32_MAX freq\n",
>> +				node->name);
> 
> Please align with the open parenthesis.

Fixed all instances.

>> +		return -ERANGE;
>> +	}
>> +
>> +	dev_pm_qos_update_request(&node_data->qos_req, freq);
>> +
>> +	return 0;
>> +}
>> +
>> +static int imx_icc_set(struct icc_node *src, struct icc_node *dst)
>> +{
>> +	return imx_icc_node_set(dst);
>> +}
>> +
>> +/* imx_icc_node_destroy() - Destroy an imx icc_node, including private data */
>> +static void imx_icc_node_destroy(struct icc_node *node)
>> +{
>> +	struct imx_icc_node *node_data = node->data;
>> +	int ret;
>> +
>> +	if (dev_pm_qos_request_active(&node_data->qos_req)) {
>> +		ret = dev_pm_qos_remove_request(&node_data->qos_req);
>> +		if (ret)
>> +			dev_warn(node->provider->dev, "failed to remove qos request for %s\n",
>> +				 dev_name(node_data->qos_dev));
>> +	}
>> +
>> +	put_device(node_data->qos_dev);
>> +	icc_node_del(node);
>> +	icc_node_destroy(node->id);
>> +}
>> +
>> +static int imx_icc_node_init_qos(struct icc_provider *provider,
>> +				 struct icc_node *node)
>> +{
>> +	struct imx_icc_node *node_data = node->data;
>> +	const struct imx_icc_node_adj_desc *adj = node_data->desc->adj;
>> +	struct device *dev = provider->dev;
>> +	struct device_node *dn = NULL;
>> +	struct platform_device *pdev;
>> +
>> +	if (adj->main_noc) {
>> +		node_data->qos_dev = dev;
>> +		dev_info(dev, "icc node %s[%d] is main noc itself\n",
>> +			 node->name, node->id);
> 
> Should this be dev_dbg()?
> 
>> +	} else {
>> +		dn = of_parse_phandle(dev->of_node, adj->phandle_name, 0);
>> +		if (IS_ERR(dn)) {
>> +			dev_warn(dev, "Failed to parse %s: %ld\n",
>> +					adj->phandle_name, PTR_ERR(dn));
> 
> Please align with the open parenthesis.
> 
>> +			return PTR_ERR(dn);
>> +		}
>> +		/* Allow scaling to be disabled on a per-node basis */
>> +		if (!dn || !of_device_is_available(dn)) {
>> +			dev_warn(dev, "Missing property %s, skip scaling %s\n",
>> +					adj->phandle_name, node->name);
> 
> Please align with the open parenthesis.
> 
>> +			return 0;
>> +		}
>> +
>> +		pdev = of_find_device_by_node(dn);
>> +		of_node_put(dn);
>> +		if (!pdev) {
>> +			dev_warn(dev, "node %s[%d] missing device for %pOF\n",
>> +					node->name, node->id, dn);
> 
> Please align with the open parenthesis.
> 
>> +			return -EPROBE_DEFER;
>> +		}
>> +		node_data->qos_dev = &pdev->dev;
>> +		dev_info(dev, "node %s[%d] has device node %pOF\n",
>> +			 node->name, node->id, dn);
> 
> dev_dbg() again maybe? Unless you think that it make sense to print this
> information to the user?
> 
>> +	}
>> +
>> +	return dev_pm_qos_add_request(node_data->qos_dev,
>> +				      &node_data->qos_req,
>> +				      DEV_PM_QOS_MIN_FREQUENCY, 0);
>> +}
>> +
>> +static struct icc_node *imx_icc_node_add(struct icc_provider *provider,
>> +					 const struct imx_icc_node_desc *node_desc)
>> +{
>> +	struct device *dev = provider->dev;
>> +	struct imx_icc_node *node_data;
>> +	struct icc_node *node;
>> +	int ret;
>> +
>> +	node = icc_node_create(node_desc->id);
>> +	if (IS_ERR(node)) {
>> +		dev_err(dev, "failed to create node %d\n", node_desc->id);
>> +		return node;
>> +	}
>> +
>> +	if (node->data) {
>> +		dev_err(dev, "already created node %s id=%d\n",
>> +				node_desc->name, node_desc->id);
> 
> Please align with the open parenthesis.
> 
>> +		return ERR_PTR(-EEXIST);
>> +	}
>> +
>> +	node_data = devm_kzalloc(dev, sizeof(*node_data), GFP_KERNEL);
>> +	if (!node_data) {
>> +		icc_node_destroy(node->id);
>> +		return ERR_PTR(-ENOMEM);
>> +	}
>> +
>> +	node->name = node_desc->name;
>> +	node->data = node_data;
>> +	node_data->desc = node_desc;
>> +	icc_node_add(node, provider);
>> +
>> +	if (node_desc->adj) {
>> +		ret = imx_icc_node_init_qos(provider, node);
>> +		if (ret < 0) {
>> +			imx_icc_node_destroy(node);
>> +			return ERR_PTR(ret);
>> +		}
>> +	}
>> +
>> +	return node;
>> +}
>> +
>> +static void imx_icc_unregister_nodes(struct icc_provider *provider)
>> +{
>> +	struct icc_node *node, *tmp;
>> +
>> +	list_for_each_entry_safe(node, tmp, &provider->nodes, node_list)
>> +		imx_icc_node_destroy(node);
>> +}
>> +
>> +static int imx_icc_register_nodes(struct icc_provider *provider,
>> +				  const struct imx_icc_node_desc *descs,
>> +				  int count)
>> +{
>> +	struct icc_onecell_data *provider_data = provider->data;
>> +	int ret;
>> +	int i;
>> +
>> +	for (i = 0; i < count; i++) {
>> +		struct icc_node *node;
>> +		const struct imx_icc_node_desc *node_desc = &descs[i];
>> +		size_t j;
>> +
>> +		node = imx_icc_node_add(provider, node_desc);
>> +		if (IS_ERR(node)) {
>> +			ret = PTR_ERR(node);
>> +			if (ret != -EPROBE_DEFER)
>> +				dev_err(provider->dev, "failed to add %s: %d\n",
>> +					node_desc->name, ret);
>> +			goto err;
>> +		}
>> +		provider_data->nodes[node->id] = node;
>> +
>> +		for (j = 0; j < node_desc->num_links; j++) {
>> +			ret = icc_link_create(node, node_desc->links[j]);
>> +			if (ret) {
>> +				dev_err(provider->dev, "failed to link node %d to %d: %d\n",
>> +					node->id, node_desc->links[j], ret);
>> +				goto err;
>> +			}
>> +		}
>> +	}
>> +
>> +	return 0;
>> +
>> +err:
>> +	imx_icc_unregister_nodes(provider);
>> +
>> +	return ret;
>> +}
>> +
>> +static int get_max_node_id(struct imx_icc_node_desc *nodes, int nodes_count)
>> +{
>> +	int i, ret = 0;
>> +
>> +	for (i = 0; i < nodes_count; ++i)
>> +		if (nodes[i].id > ret)
>> +			ret = nodes[i].id;
>> +
>> +	return ret;
>> +}
>> +
>> +int imx_icc_register(struct platform_device *pdev,
>> +		     struct imx_icc_node_desc *nodes, int nodes_count)
>> +{
>> +	struct device *dev = &pdev->dev;
>> +	struct icc_onecell_data *data;
>> +	struct icc_provider *provider;
>> +	int max_node_id;
>> +	int ret;
>> +
>> +	/* icc_onecell_data is indexed by node_id, unlike nodes param */
>> +	max_node_id = get_max_node_id(nodes, nodes_count);
>> +	data = devm_kzalloc(dev, struct_size(data, nodes, max_node_id),
>> +			    GFP_KERNEL);
>> +	if (!data)
>> +		return -ENOMEM;
>> +	data->num_nodes = max_node_id;
>> +
>> +	provider = devm_kzalloc(dev, sizeof(*provider), GFP_KERNEL);
>> +	if (!provider)
>> +		return -ENOMEM;
>> +	provider->set = imx_icc_set;
>> +	provider->aggregate = imx_icc_aggregate;
> 
> provider->aggregate = icc_std_aggregate;
> 
>> +	provider->xlate = of_icc_xlate_onecell;
>> +	provider->data = data;
>> +	provider->dev = dev->parent;
>> +	platform_set_drvdata(pdev, provider);
>> +
>> +	ret = icc_provider_add(provider);
>> +	if (ret) {
>> +		dev_err(dev, "error adding interconnect provider: %d\n", ret);
>> +		return ret;
>> +	}
>> +
>> +	ret = imx_icc_register_nodes(provider, nodes, nodes_count);
>> +	if (ret)
>> +		goto provider_del;
>> +
>> +	return 0;
>> +
>> +provider_del:
>> +	icc_provider_del(provider);
>> +	return ret;
>> +}
>> +EXPORT_SYMBOL_GPL(imx_icc_register);
>> +
>> +int imx_icc_unregister(struct platform_device *pdev)
>> +{
>> +	struct icc_provider *provider = platform_get_drvdata(pdev);
>> +	int ret;
>> +
>> +	if (provider->users) {
>> +		dev_warn(&pdev->dev, "interconnect provider still has %d users\n",
>> +			provider->users);
>> +		return -EBUSY;
>> +	}
> 
> The above check already exists in icc_provider_del(). But i assume you don't
> want to delete any nodes from the provider if it still has users. Maybe it will
> be sensible to add this check into icc_nodes_remove() instead, so that such
> cases are handled on a framework level.

Actually device removal is not allowed to fail, for example doing an 
explicit unbind will ignore errors coming from the unregister function:

echo imx8mm-interconnect > 
/sys/bus/platform/drivers/imx8mm-interconnect/unbind

results in the following stack trace where device_driver_detach actually 
continues even if remove returns an error:

[   24.017901]  imx_icc_unregister+0x24/0x80
[   24.021925]  imx8mm_icc_remove+0x18/0x28
[   24.025863]  platform_drv_remove+0x34/0x58
[   24.029974]  device_release_driver_internal+0x104/0x1d8
[   24.035213]  device_driver_detach+0x20/0x30
[   24.039409]  unbind_store+0xe8/0x110
[   24.042999]  drv_attr_store+0x2c/0x40
[   24.046677]  sysfs_kf_write+0x54/0x80

I'm not sure how the framework should handle provider removal. Right now 
icc_path holds icc_node pointers so when nodes are freed any consumer 
calling into icc will corrupt memory.

One option would be to reference count the allocation of struct 
icc_node, this way icc_path functions could safely check for 
node->provider == NULL and return an error.

I'll remove this check from the imx driver because it does not solve 
anything.

> 
>> +	imx_icc_unregister_nodes(provider);
>> +
>> +	ret = icc_provider_del(provider);
>> +	if (ret)
>> +		return ret;
>> +
>> +	return 0;
>> +}
>> +EXPORT_SYMBOL_GPL(imx_icc_unregister);
>> +
>> +MODULE_LICENSE("GPL v2");
>> diff --git a/drivers/interconnect/imx/imx.h b/drivers/interconnect/imx/imx.h
>> new file mode 100644
>> index 000000000000..aa811e4ebb7e
>> --- /dev/null
>> +++ b/drivers/interconnect/imx/imx.h
>> @@ -0,0 +1,62 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Interconnect framework driver for i.MX SoC
>> + *
>> + * Copyright (c) 2019, BayLibre
>> + * Copyright (c) 2019, NXP
>> + * Author: Alexandre Bailon <abailon@baylibre.com>
>> + * Author: Leonard Crestez <leonard.crestez@nxp.com>
>> + */
>> +#ifndef __DRIVERS_INTERCONNECT_IMX_H
>> +#define __DRIVERS_INTERCONNECT_IMX_H
>> +
>> +#include <linux/kernel.h>
>> +
>> +#define IMX_ICC_MAX_LINKS	4
>> +
>> +/*
>> + * struct imx_icc_node_adj - Describe a dynamic adjustable node
>> + */
>> +struct imx_icc_node_adj_desc {
>> +	unsigned int bw_mul, bw_div;
>> +	const char *phandle_name;
>> +	bool main_noc;
>> +};
>> +
>> +/*
>> + * struct imx_icc_node - Describe an interconnect node
>> + * @name: name of the node
>> + * @id: an unique id to identify the node
>> + * @links: an array of slaves' node id
>> + * @num_links: number of id defined in links
>> + */
>> +struct imx_icc_node_desc {
>> +	const char *name;
>> +	u16 id;
>> +	u16 links[IMX_ICC_MAX_LINKS];
>> +	u16 num_links;
>> +
> 
> Why the blank line?

Removed

>> +	const struct imx_icc_node_adj_desc *adj;
>> +};
>> +
>> +#define DEFINE_BUS_INTERCONNECT(_name, _id, _adj, ...)			\
>> +	{								\
>> +		.id = _id,						\
>> +		.name = _name,						\
>> +		.adj = _adj,						\
>> +		.num_links = ARRAY_SIZE(((int[]){ __VA_ARGS__ })),	\
>> +		.links = { __VA_ARGS__ },				\
>> +	}
>> +
>> +#define DEFINE_BUS_MASTER(_name, _id, _dest_id)				\
>> +	DEFINE_BUS_INTERCONNECT(_name, _id, NULL, _dest_id)
>> +
>> +#define DEFINE_BUS_SLAVE(_name, _id, _adj)				\
>> +	DEFINE_BUS_INTERCONNECT(_name, _id, _adj)
>> +
>> +int imx_icc_register(struct platform_device *pdev,
>> +		     struct imx_icc_node_desc *nodes,
>> +		     int nodes_count);
>> +int imx_icc_unregister(struct platform_device *pdev);
>> +
>> +#endif /* __DRIVERS_INTERCONNECT_IMX_H */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
