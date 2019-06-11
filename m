Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1655D3CA52
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 13:47:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OpkslFvABi3an3+igkrO/qCVh2EWCHahHemhX/VatbA=; b=GXzjsUxAD1bXUB
	TPP6duBuLoQOA08DEK2SnE1gaID8s+ywP4ap0qa6n4yEtcsQUupMTZdCvjh51fHd77l6sJ4wREH9H
	Fy3aqs3r/0MDErNV6tt6nIjZVUXBH7/RVFICDc3WRCXCbiaZxC5/zxY6dw4Fpq4Xj+zk0xXpFQM0B
	WeOcW+gg7ZrR34YVps63Ml6rc+wiXkl+v4N8jfapRuIiDEylez1gqPqioqVmyRzUm+fBHa1kMFsy8
	IPTI52dgcfXponfVNR243huVdA2obe6o9cNF1eIwtTVgDDX8QwEUUbrqIeS0gxS/u4gOPZmvWRf0s
	raZQwTMEFZUXxLAXMmog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafF3-0001At-Pw; Tue, 11 Jun 2019 11:47:05 +0000
Received: from mail-eopbgr30066.outbound.protection.outlook.com ([40.107.3.66]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafEn-00019D-7i
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 11:46:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qgBxrwLXijhAvAjzyP/WmGwlatGQaFNY0cvfnPEqt7U=;
 b=awWU8edqmHwyz47Q3/3wHa0PxZuaZti0dq9AOLte6FQ7FpRpRdWHMheHgQcB7lYUvHPmaJ9ScCY3gKoaDE5ES3FuvFBBTAqR00aucJBHhN1TdG//yfhLfvqEZAeG8aTwvb/4A5vPEh97b7ejLkoDWvc1JKQk0Mqg7V8pk86Z55c=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Tue, 11 Jun 2019 11:46:43 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4%3]) with mapi id 15.20.1965.017; Tue, 11 Jun 2019
 11:46:43 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>, "rui.zhang@intel.com"
 <rui.zhang@intel.com>, "edubezval@gmail.com" <edubezval@gmail.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>, Peng Fan
 <peng.fan@nxp.com>, "mchehab+samsung@kernel.org"
 <mchehab+samsung@kernel.org>, "linux@roeck-us.net" <linux@roeck-us.net>,
 Daniel Baluta <daniel.baluta@nxp.com>, "maxime.ripard@bootlin.com"
 <maxime.ripard@bootlin.com>, "olof@lixom.net" <olof@lixom.net>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>, Leonard Crestez
 <leonard.crestez@nxp.com>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>
Subject: RE: [PATCH V14 2/5] thermal: of-thermal: add API for getting sensor
 ID from DT
Thread-Topic: [PATCH V14 2/5] thermal: of-thermal: add API for getting sensor
 ID from DT
Thread-Index: AQHVHzduVJLnDucTi0KXitmpZJYpcaaWS8pg
Date: Tue, 11 Jun 2019 11:46:43 +0000
Message-ID: <AM0PR04MB42118F3F8E87A72758D4A7B780ED0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190610025254.23940-1-Anson.Huang@nxp.com>
 <20190610025254.23940-2-Anson.Huang@nxp.com>
In-Reply-To: <20190610025254.23940-2-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 19429248-47ae-4ed6-806d-08d6ee6279b4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4481; 
x-ms-traffictypediagnostic: AM0PR04MB4481:
x-microsoft-antispam-prvs: <AM0PR04MB44816DE2F7D93D072E393B4180ED0@AM0PR04MB4481.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 006546F32A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(136003)(366004)(39860400002)(199004)(189003)(68736007)(478600001)(2906002)(33656002)(66556008)(76116006)(14454004)(186003)(66476007)(6116002)(3846002)(66946007)(64756008)(66446008)(73956011)(81156014)(102836004)(81166006)(6506007)(26005)(8936002)(99286004)(256004)(8676002)(2501003)(76176011)(7696005)(25786009)(7416002)(66066001)(305945005)(74316002)(7736002)(4326008)(110136005)(6436002)(6246003)(44832011)(316002)(446003)(11346002)(53936002)(476003)(486006)(229853002)(71190400001)(71200400001)(5660300002)(86362001)(2201001)(52536014)(55016002)(9686003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4481;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MZuCB/LrNtNwldTtMQKcqYieSkf/d7NAIOtaLwkuDTRIsLdVpQS+TNTUA2nqrr4pFTJAkjKOW/LTB01jhGS+c+9A56gDtFJbMPMSJsHsimNCPA986scYd0Als76S/LHnj8NuNc0tYr7ny9tF93IqFnni3F3E3/qHHqyrSglHDsoUxmKapEA2aLo8vQmZc0Ux0HC3L17HHarQ7EaoYbVBrvg6PZ5xFZ8/wlGqj4RCvlDzYaCKeZQ0BKsNInuLIssuYiAbU1w8WbwEGSwZHPcCQTPybLAN9m4+AuUOvSWU61J9ISBtvr/MfODAa51mM3PPy5SFpbuv0b+bech/jqx2laD1AkJwCdVJhRugWeHMv7ZqfNXmuWZlleOQLVn/mTlP5Vj89no5vcIPiT8MA+ZBoVBLWqCsUmV3GARrgbKR9f4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19429248-47ae-4ed6-806d-08d6ee6279b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 11:46:43.3963 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4481
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_044649_432847_92E0A96F 
X-CRM114-Status: GOOD (  27.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.66 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

The implementation looks good to me.
A few minor comments on the doc:

> From: Anson.Huang@nxp.com [mailto:Anson.Huang@nxp.com]
> Sent: Monday, June 10, 2019 10:53 AM
> 
> On some platforms like i.MX8QXP, the thermal driver needs a real HW sensor
> ID from DT thermal zone, the HW sensor ID is used to get temperature from
> SCU firmware, and the virtual sensor ID starting from 0 to N is NOT used at all,

This API is unware of HW ID or Virtual ID. So we probably no need to mention
It here.

> this patch adds new API thermal_zone_of_get_sensor_id() to provide the
> feature of getting sensor ID from DT thermal zone's node.
> 

"It's useful for thermal driver to register the specific thermal zone devices
from DT in a common way."

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V13:
> 	- add new API into the thermal API doc.
> ---
>  Documentation/thermal/sysfs-api.txt |  8 +++++
>  drivers/thermal/of-thermal.c        | 66
> ++++++++++++++++++++++++++++---------
>  include/linux/thermal.h             | 10 ++++++
>  3 files changed, 68 insertions(+), 16 deletions(-)
> 
> diff --git a/Documentation/thermal/sysfs-api.txt
> b/Documentation/thermal/sysfs-api.txt
> index c3fa500..8d7f1b1 100644
> --- a/Documentation/thermal/sysfs-api.txt
> +++ b/Documentation/thermal/sysfs-api.txt
> @@ -159,6 +159,14 @@ temperature) and throttle appropriate devices.
>  	for the thermal zone device, which might be useful for platform
>  	drivers for temperature calculations.
> 
> +1.1.9 int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
> +		struct device_node *sensor_np,
> +		u32 *id)
> +
> +	This interface is used to get the sensor id from thermal sensor's
> +	phandle argument, it might be necessary for some platforms which
> +	have specific sensor ID rather than virtual ID from 0 - N.

Does below one look better?

"This interface is used to get the sensor id from the given thermal zone in
DT, which might be useful for thermal drivers to register specific thermal
zone device in a common way."

> +
>  1.2 thermal cooling device interface
>  1.2.1 struct thermal_cooling_device *thermal_cooling_device_register(char
> *name,
>  		void *devdata, struct thermal_cooling_device_ops *) diff --git
> a/drivers/thermal/of-thermal.c b/drivers/thermal/of-thermal.c index
> dc5093b..a53792b 100644
> --- a/drivers/thermal/of-thermal.c
> +++ b/drivers/thermal/of-thermal.c
> @@ -449,6 +449,54 @@ thermal_zone_of_add_sensor(struct device_node
> *zone,  }
> 
>  /**
> + * thermal_zone_of_get_sensor_id - get sensor ID from a DT thermal zone
> + * @tz_np: a valid thermal zone device node.
> + * @sensor_np: a sensor node of a valid sensor device.
> + * @id: a sensor ID pointer will be passed back.

the sensor ID returned if success

> + *
> + * This function will get sensor ID from a given thermal zone node, use
> + * "thermal-sensors" as list name, and get sensor ID from first
> + phandle's
> + * argument.

"This function will get sensor ID from a given thermal zone node and the sensor
get must match the temperature providers @sensor_np."

Regards
Dong Aisheng

> + *
> + * Return: 0 on success, proper error code otherwise.
> + */
> +
> +int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
> +				  struct device_node *sensor_np,
> +				  u32 *id)
> +{
> +	struct of_phandle_args sensor_specs;
> +	int ret;
> +
> +	ret = of_parse_phandle_with_args(tz_np,
> +					 "thermal-sensors",
> +					 "#thermal-sensor-cells",
> +					 0,
> +					 &sensor_specs);
> +	if (ret)
> +		return ret;
> +
> +	if (sensor_specs.np != sensor_np) {
> +		of_node_put(sensor_specs.np);
> +		return -ENODEV;
> +	}
> +
> +	if (sensor_specs.args_count >= 1) {
> +		*id = sensor_specs.args[0];
> +		WARN(sensor_specs.args_count > 1,
> +		     "%pOFn: too many cells in sensor specifier %d\n",
> +		     sensor_specs.np, sensor_specs.args_count);
> +	} else {
> +		*id = 0;
> +	}
> +
> +	of_node_put(sensor_specs.np);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(thermal_zone_of_get_sensor_id);
> +
> +/**
>   * thermal_zone_of_sensor_register - registers a sensor to a DT thermal zone
>   * @dev: a valid struct device pointer of a sensor device. Must contain
>   *       a valid .of_node, for the sensor node.
> @@ -499,36 +547,22 @@ thermal_zone_of_sensor_register(struct device *dev,
> int sensor_id, void *data,
>  	sensor_np = of_node_get(dev->of_node);
> 
>  	for_each_available_child_of_node(np, child) {
> -		struct of_phandle_args sensor_specs;
>  		int ret, id;
> 
>  		/* For now, thermal framework supports only 1 sensor per zone */
> -		ret = of_parse_phandle_with_args(child, "thermal-sensors",
> -						 "#thermal-sensor-cells",
> -						 0, &sensor_specs);
> +		ret = thermal_zone_of_get_sensor_id(child, sensor_np, &id);
>  		if (ret)
>  			continue;
> 
> -		if (sensor_specs.args_count >= 1) {
> -			id = sensor_specs.args[0];
> -			WARN(sensor_specs.args_count > 1,
> -			     "%pOFn: too many cells in sensor specifier %d\n",
> -			     sensor_specs.np, sensor_specs.args_count);
> -		} else {
> -			id = 0;
> -		}
> -
> -		if (sensor_specs.np == sensor_np && id == sensor_id) {
> +		if (id == sensor_id) {
>  			tzd = thermal_zone_of_add_sensor(child, sensor_np,
>  							 data, ops);
>  			if (!IS_ERR(tzd))
>  				tzd->ops->set_mode(tzd, THERMAL_DEVICE_ENABLED);
> 
> -			of_node_put(sensor_specs.np);
>  			of_node_put(child);
>  			goto exit;
>  		}
> -		of_node_put(sensor_specs.np);
>  	}
>  exit:
>  	of_node_put(sensor_np);
> diff --git a/include/linux/thermal.h b/include/linux/thermal.h index
> 15a4ca5..5edffe6 100644
> --- a/include/linux/thermal.h
> +++ b/include/linux/thermal.h
> @@ -375,6 +375,9 @@ struct thermal_trip {
> 
>  /* Function declarations */
>  #ifdef CONFIG_THERMAL_OF
> +int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
> +				  struct device_node *sensor_np,
> +				  u32 *id);
>  struct thermal_zone_device *
>  thermal_zone_of_sensor_register(struct device *dev, int id, void *data,
>  				const struct thermal_zone_of_device_ops *ops); @@
> -386,6 +389,13 @@ struct thermal_zone_device
> *devm_thermal_zone_of_sensor_register(
>  void devm_thermal_zone_of_sensor_unregister(struct device *dev,
>  					    struct thermal_zone_device *tz);  #else
> +
> +static int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
> +					 struct device_node *sensor_np,
> +					 u32 *id)
> +{
> +	return -ENOENT;
> +}
>  static inline struct thermal_zone_device *
> thermal_zone_of_sensor_register(struct device *dev, int id, void *data,
>  				const struct thermal_zone_of_device_ops *ops)
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
