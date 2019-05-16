Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F311FDD0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 04:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jBbf8eMp5MMOL6FNixvBu+QbJZMJlloVenGuhduLvxI=; b=cTD98es9ieqjcB
	o20zmEfq6Neqn3SXABT6JiLZCAlJxAl9a4ZxxRKa8tPodUM+dhOjwyFvD99TS3BdiJ8bJAH1j0sbT
	6rs3G9s63D48iYmNPwvYLd5sRt2/mrk7acUsh1OqHdgBcAwLG8e41rvXpoBm6Kgs5n6Hwbs2NlYnp
	nQ62osPLRYoHcZ2k9YB7KLFOda/MEhqMG7ef4NPB2nuyxpJRaMCeDIFS6udY0QGAWxwxKO6D3vnyf
	lys7U7J3LiiabwPOTDB8cU1VahiOJoReHXslmbzXDywRN/IDaxytar9YDXLiHj+r+ae9QLOHJrLDw
	VvCl/sdQTiGSduGhUOsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR6Wq-0003Hq-JT; Thu, 16 May 2019 02:53:56 +0000
Received: from mail-eopbgr10066.outbound.protection.outlook.com ([40.107.1.66]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR6Wh-0003HS-On
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 02:53:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qlPfcP3xxoAFUtRUr0Tr0OT5ZE78iqZsfm+nCqkUqvg=;
 b=MfRQXwX51LlbmlthiRlz4fT+D42N3nD9gcnEtxGUKcl31ZDzVgPxNpaQmux7DbfX52rEQfsqeZZCdFm7Bbb7OIyd27kVDhb1FTtn/BzhIptNI1zO9lUB1OVwWFleQkkPrEnVCTTuLeTcf05F2C2RaVZbSXxYbQA0WCKID/cIqQQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3721.eurprd04.prod.outlook.com (52.134.67.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Thu, 16 May 2019 02:53:40 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 02:53:39 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>, "edubezval@gmail.com"
 <edubezval@gmail.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>, Daniel Baluta
 <daniel.baluta@nxp.com>, Peng Fan <peng.fan@nxp.com>, "heiko@sntech.de"
 <heiko@sntech.de>, "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>, 
 "agross@kernel.org" <agross@kernel.org>, "olof@lixom.net" <olof@lixom.net>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>
Subject: RE: [PATCH V12 3/5] thermal: imx_sc: add i.MX system controller
 thermal support
Thread-Topic: [PATCH V12 3/5] thermal: imx_sc: add i.MX system controller
 thermal support
Thread-Index: AQHU9AOc8iXKmYQeMUm4+FbUnbYclKZiKWGAgAsTpJA=
Date: Thu, 16 May 2019 02:53:39 +0000
Message-ID: <DB3PR0402MB3916BDD870608F0CAC76DB3FF50A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1555384609-7030-1-git-send-email-Anson.Huang@nxp.com>
 <1555384609-7030-3-git-send-email-Anson.Huang@nxp.com>
 <DB3PR0402MB3916791537B7C3C85B13A22BF5330@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916791537B7C3C85B13A22BF5330@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 49b57cad-27a5-437f-0b5f-08d6d9a9b344
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3721; 
x-ms-traffictypediagnostic: DB3PR0402MB3721:
x-microsoft-antispam-prvs: <DB3PR0402MB37211E6CF7503E978CA8E0B2F50A0@DB3PR0402MB3721.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:316;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(376002)(396003)(136003)(39860400002)(13464003)(199004)(189003)(76116006)(68736007)(64756008)(66446008)(66556008)(52536014)(66946007)(7736002)(66476007)(305945005)(81156014)(8676002)(81166006)(11346002)(66066001)(476003)(102836004)(6116002)(44832011)(446003)(3846002)(4326008)(25786009)(53546011)(6506007)(256004)(186003)(486006)(26005)(76176011)(71200400001)(71190400001)(7696005)(2501003)(110136005)(14454004)(99286004)(7416002)(316002)(2906002)(53936002)(6436002)(2201001)(5660300002)(33656002)(86362001)(478600001)(8936002)(55016002)(6246003)(229853002)(73956011)(74316002)(9686003)(921003)(1121003)(15866825006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3721;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NIFKxbj/b+JHvNoAp5sq1WzfqROrGyjrf29YTrYXWYVOZ5s25t7jTYdoGxhPECRcxYnloZiVvCOrXTA07GoC9OqXDCMeXaF5RW8qbibZ59dLkY2r5dLO9g1COkHb6APOkVYQQArUWH9xh1DBTMJZlvU1YhGqVcZ6Xh4Z2CnZy1xy5t4jet1TbSoWCy1dw7qM/SVT+4N7vrBmQx8bwTkNWrufvyqdsoLZEFdssEKkCtF0LuryYzVHZXluotlxp+bGHlRvtpha+NJ2ZpukPV6UqBnn08qCmwpUoTVwdxYFcL0hg3aoCR9BsW7eHXL+P4dV6YqQShdWx9f3Dn7CqnTAWusnMJGnJWmaIHfzPviMzaKsKqHOd3J1IM+DPiKUESg8yzamQCqGd9BHGOVYzGKI0Numvu4gkwuxnYo2+EshDZQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49b57cad-27a5-437f-0b5f-08d6d9a9b344
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 02:53:39.8934 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3721
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_195348_055163_0DD2A7E0 
X-CRM114-Status: GOOD (  27.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.66 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ping...

> -----Original Message-----
> From: Anson Huang
> Sent: Thursday, May 9, 2019 9:44 AM
> To: 'Anson Huang' <Anson.Huang@nxp.com>; robh+dt@kernel.org;
> mark.rutland@arm.com; shawnguo@kernel.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; catalin.marinas@arm.com;
> will.deacon@arm.com; rui.zhang@intel.com; edubezval@gmail.com;
> daniel.lezcano@linaro.org; Aisheng Dong <aisheng.dong@nxp.com>;
> ulf.hansson@linaro.org; Daniel Baluta <daniel.baluta@nxp.com>; Peng Fan
> <peng.fan@nxp.com>; heiko@sntech.de; horms+renesas@verge.net.au;
> agross@kernel.org; olof@lixom.net; bjorn.andersson@linaro.org;
> jagan@amarulasolutions.com; enric.balletbo@collabora.com;
> marc.w.gonzalez@free.fr; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> pm@vger.kernel.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: RE: [PATCH V12 3/5] thermal: imx_sc: add i.MX system controller
> thermal support
> 
> Ping...
> 
> > -----Original Message-----
> > From: Anson Huang [mailto:Anson.Huang@nxp.com]
> > Sent: Tuesday, April 16, 2019 11:22 AM
> > To: robh+dt@kernel.org; mark.rutland@arm.com; shawnguo@kernel.org;
> > s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> > catalin.marinas@arm.com; will.deacon@arm.com; rui.zhang@intel.com;
> > edubezval@gmail.com; daniel.lezcano@linaro.org; Aisheng Dong
> > <aisheng.dong@nxp.com>; ulf.hansson@linaro.org; Daniel Baluta
> > <daniel.baluta@nxp.com>; Peng Fan <peng.fan@nxp.com>;
> heiko@sntech.de;
> > horms+renesas@verge.net.au; agross@kernel.org; olof@lixom.net;
> > bjorn.andersson@linaro.org; jagan@amarulasolutions.com;
> > enric.balletbo@collabora.com; marc.w.gonzalez@free.fr;
> > devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> > kernel@lists.infradead.org; linux-pm@vger.kernel.org
> > Cc: dl-linux-imx <linux-imx@nxp.com>
> > Subject: [PATCH V12 3/5] thermal: imx_sc: add i.MX system controller
> > thermal support
> >
> > i.MX8QXP is an ARMv8 SoC which has a Cortex-M4 system controller
> > inside, the system controller is in charge of controlling power, clock
> > and thermal sensors etc..
> >
> > This patch adds i.MX system controller thermal driver support, Linux
> > kernel has to communicate with system controller via MU (message unit)
> > IPC to get each thermal sensor's temperature, it supports multiple
> > sensors which are passed from device tree, please see the binding doc for
> details.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V11:
> > 	- move the API of getting thermal zone sensor ID to of-thermal.c as
> > generic API;
> > 	- remove unnecessary __packed.
> > ---
> >  drivers/thermal/Kconfig          |  11 ++++
> >  drivers/thermal/Makefile         |   1 +
> >  drivers/thermal/imx_sc_thermal.c | 137
> > +++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 149 insertions(+)
> >  create mode 100644 drivers/thermal/imx_sc_thermal.c
> >
> > diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig index
> > 653aa27..4e4fa7e 100644
> > --- a/drivers/thermal/Kconfig
> > +++ b/drivers/thermal/Kconfig
> > @@ -223,6 +223,17 @@ config IMX_THERMAL
> >  	  cpufreq is used as the cooling device to throttle CPUs when the
> >  	  passive trip is crossed.
> >
> > +config IMX_SC_THERMAL
> > +	tristate "Temperature sensor driver for NXP i.MX SoCs with System
> > Controller"
> > +	depends on (ARCH_MXC && IMX_SCU) || COMPILE_TEST
> > +	depends on OF
> > +	help
> > +	  Support for Temperature Monitor (TEMPMON) found on NXP i.MX
> > SoCs with
> > +	  system controller inside, Linux kernel has to communicate with
> > system
> > +	  controller via MU (message unit) IPC to get temperature from
> > thermal
> > +	  sensor. It supports one critical trip point and one
> > +	  passive trip point for each thermal sensor.
> > +
> >  config MAX77620_THERMAL
> >  	tristate "Temperature sensor driver for Maxim MAX77620 PMIC"
> >  	depends on MFD_MAX77620
> > diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile index
> > 486d682..4062627 100644
> > --- a/drivers/thermal/Makefile
> > +++ b/drivers/thermal/Makefile
> > @@ -40,6 +40,7 @@ obj-$(CONFIG_DB8500_THERMAL)	+=
> > db8500_thermal.o
> >  obj-$(CONFIG_ARMADA_THERMAL)	+= armada_thermal.o
> >  obj-$(CONFIG_TANGO_THERMAL)	+= tango_thermal.o
> >  obj-$(CONFIG_IMX_THERMAL)	+= imx_thermal.o
> > +obj-$(CONFIG_IMX_SC_THERMAL)	+= imx_sc_thermal.o
> >  obj-$(CONFIG_MAX77620_THERMAL)	+= max77620_thermal.o
> >  obj-$(CONFIG_QORIQ_THERMAL)	+= qoriq_thermal.o
> >  obj-$(CONFIG_DA9062_THERMAL)	+= da9062-thermal.o
> > diff --git a/drivers/thermal/imx_sc_thermal.c
> > b/drivers/thermal/imx_sc_thermal.c
> > new file mode 100644
> > index 0000000..dcf16fc
> > --- /dev/null
> > +++ b/drivers/thermal/imx_sc_thermal.c
> > @@ -0,0 +1,137 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright 2018-2019 NXP.
> > + */
> > +
> > +#include <linux/err.h>
> > +#include <linux/firmware/imx/sci.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/of_device.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/slab.h>
> > +#include <linux/thermal.h>
> > +
> > +#include "thermal_core.h"
> > +
> > +#define IMX_SC_MISC_FUNC_GET_TEMP	13
> > +#define IMX_SC_C_TEMP			0
> > +
> > +static struct imx_sc_ipc *thermal_ipc_handle;
> > +
> > +struct imx_sc_sensor {
> > +	struct thermal_zone_device *tzd;
> > +	u32 resource_id;
> > +};
> > +
> > +struct req_get_temp {
> > +	u16 resource_id;
> > +	u8 type;
> > +} __packed;
> > +
> > +struct resp_get_temp {
> > +	u16 celsius;
> > +	u8 tenths;
> > +} __packed;
> > +
> > +struct imx_sc_msg_misc_get_temp {
> > +	struct imx_sc_rpc_msg hdr;
> > +	union {
> > +		struct req_get_temp req;
> > +		struct resp_get_temp resp;
> > +	} data;
> > +};
> > +
> > +static int imx_sc_thermal_get_temp(void *data, int *temp) {
> > +	struct imx_sc_msg_misc_get_temp msg;
> > +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > +	struct imx_sc_sensor *sensor = data;
> > +	int ret;
> > +
> > +	msg.data.req.resource_id = sensor->resource_id;
> > +	msg.data.req.type = IMX_SC_C_TEMP;
> > +
> > +	hdr->ver = IMX_SC_RPC_VERSION;
> > +	hdr->svc = IMX_SC_RPC_SVC_MISC;
> > +	hdr->func = IMX_SC_MISC_FUNC_GET_TEMP;
> > +	hdr->size = 2;
> > +
> > +	ret = imx_scu_call_rpc(thermal_ipc_handle, &msg, true);
> > +	if (ret) {
> > +		pr_err("read temp sensor %d failed, ret %d\n",
> > +			sensor->resource_id, ret);
> > +		return ret;
> > +	}
> > +
> > +	*temp = msg.data.resp.celsius * 1000 + msg.data.resp.tenths * 100;
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct thermal_zone_of_device_ops imx_sc_thermal_ops = {
> > +	.get_temp = imx_sc_thermal_get_temp, };
> > +
> > +static int imx_sc_thermal_probe(struct platform_device *pdev) {
> > +	struct device_node *np, *child;
> > +	int ret;
> > +
> > +	ret = imx_scu_get_handle(&thermal_ipc_handle);
> > +	if (ret)
> > +		return ret;
> > +
> > +	np = of_find_node_by_name(NULL, "thermal-zones");
> > +	if (!np)
> > +		return -ENODEV;
> > +
> > +	for_each_available_child_of_node(np, child) {
> > +		struct of_phandle_args sensor_specs;
> > +		struct imx_sc_sensor *sensor =
> > +			devm_kzalloc(&pdev->dev, sizeof(*sensor),
> > GFP_KERNEL);
> > +		if (!sensor)
> > +			return -ENOMEM;
> > +
> > +		ret = thermal_zone_of_get_sensor_id(child,
> > +						    &sensor_specs,
> > +						    &sensor->resource_id);
> > +		if (ret < 0) {
> > +			dev_err(&pdev->dev,
> > +				"failed to get valid sensor resource id: %d\n",
> > +				ret);
> > +			break;
> > +		}
> > +
> > +		sensor->tzd =
> > devm_thermal_zone_of_sensor_register(&pdev->dev,
> > +								   sensor-
> > >resource_id,
> > +								   sensor,
> > +
> > &imx_sc_thermal_ops);
> > +		if (IS_ERR(sensor->tzd)) {
> > +			dev_err(&pdev->dev, "failed to register thermal
> > zone\n");
> > +			ret = PTR_ERR(sensor->tzd);
> > +			break;
> > +		}
> > +	}
> > +
> > +	return ret;
> > +}
> > +
> > +static const struct of_device_id imx_sc_thermal_table[] = {
> > +	{ .compatible = "fsl,imx-sc-thermal", },
> > +	{}
> > +};
> > +MODULE_DEVICE_TABLE(of, imx_sc_thermal_table);
> > +
> > +static struct platform_driver imx_sc_thermal_driver = {
> > +		.probe = imx_sc_thermal_probe,
> > +		.driver = {
> > +			.name = "imx-sc-thermal",
> > +			.of_match_table = imx_sc_thermal_table,
> > +		},
> > +};
> > +module_platform_driver(imx_sc_thermal_driver);
> > +
> > +MODULE_AUTHOR("Anson Huang <Anson.Huang@nxp.com>");
> > +MODULE_DESCRIPTION("Thermal driver for NXP i.MX SoCs with system
> > +controller"); MODULE_LICENSE("GPL v2");
> > --
> > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
