Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D623CBDC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0SOG3NyQ35kmtDnxIeYwfT5dhC29o6LmVqCXxBWrs1I=; b=RFp2i7ngqWb+gz
	uImGBeyq4sUPCd1qt7xLgBbSQw4o5fi7OKbcms4Dqels5WhbGh2e78Zy88kYJKe/9X4DtHLUnB0ye
	YtazJ2dK+TM+0VApwg4jRDqoZh45a7GkbS/TxOaaUK7BlG5PSSdHmCrYEPvEm6UpQaQhUNgyXDQHZ
	ug1T+XsL06mAH9c/kjvRYpan9OsqHObMVXVjFztLkOW+2VMZF0+0RoETVtX730ZzxUFTDO5ZIx4DK
	f9te3uNVI2n53tOnSpurjFTgROqDhBCu3ghWW1nugHOm2KRw5ShExjYo8V4SskQ48+m4hZrJkXjWY
	5jOffeJ/vVsec+CCBFxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hag1p-0003Ek-6b; Tue, 11 Jun 2019 12:37:29 +0000
Received: from mail-eopbgr140058.outbound.protection.outlook.com
 ([40.107.14.58] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hag1Z-0003EB-HZ
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:37:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H23z4g/U0EsTzeTd6dLkP7piLsBF2/NZ0/RjmsrY5T0=;
 b=O1ROo3YVUhxa6Q+Vdm/L25MntIYE1+1ybL9XMUvXcjVGzjQ4UZ51q5KP8p2EblI0nvK0fIzlFgveQ+gTWvYmZxlgDPSJC73mYhJnhkTjDMoyxEvHGSKnzlAX4f+SOyfM1Ib/KvgZ+VR1EHCQtfHRUO0pU+Hoso5b97Sgr9PbpTE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3835.eurprd04.prod.outlook.com (52.134.65.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Tue, 11 Jun 2019 12:37:07 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1965.017; Tue, 11 Jun 2019
 12:37:07 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "robh+dt@kernel.org"
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
Thread-Index: AQHVHzdukfa79SJ0YU+EW6tI7WFhPKaWWD6AgAANPiA=
Date: Tue, 11 Jun 2019 12:37:06 +0000
Message-ID: <DB3PR0402MB39169A1897B33DC6C3522E08F5ED0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190610025254.23940-1-Anson.Huang@nxp.com>
 <20190610025254.23940-2-Anson.Huang@nxp.com>
 <AM0PR04MB42118F3F8E87A72758D4A7B780ED0@AM0PR04MB4211.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB42118F3F8E87A72758D4A7B780ED0@AM0PR04MB4211.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dba9489d-bb22-4d65-59d3-08d6ee6983e9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3835; 
x-ms-traffictypediagnostic: DB3PR0402MB3835:
x-microsoft-antispam-prvs: <DB3PR0402MB38358F5C13BB91A5B49D9A82F5ED0@DB3PR0402MB3835.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 006546F32A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(136003)(396003)(376002)(366004)(13464003)(189003)(199004)(305945005)(26005)(2201001)(33656002)(186003)(110136005)(7736002)(76116006)(73956011)(8936002)(81166006)(8676002)(66946007)(25786009)(81156014)(11346002)(2501003)(64756008)(66556008)(478600001)(446003)(68736007)(66446008)(476003)(14454004)(66476007)(52536014)(6506007)(71190400001)(256004)(102836004)(2906002)(14444005)(71200400001)(316002)(76176011)(4326008)(86362001)(53546011)(66066001)(9686003)(3846002)(6246003)(44832011)(99286004)(53936002)(5660300002)(486006)(55016002)(7416002)(6116002)(229853002)(7696005)(74316002)(6436002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3835;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gY8iD16PGcS7UKVEDBRlSGDpeuP0mdr/A9044scw9qhuREsXl2l3FcqTv52SEIx+UV1TzpnnoCcxRjMQhtba/y9SDTq5LSJ/PLcyUj9jg1Ih3GiE440K9Gxf/t/vsxwxm6SvLvGd2+0KFM0SJzoXcc45sYq/OsgyDTmi4D9c9+NCI4fC3ACYwK+x5C0HSqjZPmKD1xMZW3SFgxLPgcSscQNpsPFRi7DtK24M0cnuwzgK9SQ4bGa7QwR5gLdyQGTzhp2iP99Z1RPMY9iX6uFsTiWtUAN4p6snsGtFtPjrwWHyS22ylLn2YLFOl1Gl6RiAPi9QxO+W+2REC+czWwi7i7Gt+AGNM8w1dq0WYhDlBeiRK6fI/cMxWfBlafZQ+h73GsIDwrMBm/VzXn4urXVy6jRe+oMaQHOyCdK5zlehpxw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dba9489d-bb22-4d65-59d3-08d6ee6983e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 12:37:06.8810 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3835
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_053713_746689_73613DC6 
X-CRM114-Status: GOOD (  30.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.58 listed in list.dnswl.org]
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

Hi, Aisheng

> -----Original Message-----
> From: Aisheng Dong
> Sent: Tuesday, June 11, 2019 7:47 PM
> To: Anson Huang <anson.huang@nxp.com>; robh+dt@kernel.org;
> mark.rutland@arm.com; corbet@lwn.net; shawnguo@kernel.org;
> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> catalin.marinas@arm.com; will.deacon@arm.com; rui.zhang@intel.com;
> edubezval@gmail.com; daniel.lezcano@linaro.org; ulf.hansson@linaro.org;
> Peng Fan <peng.fan@nxp.com>; mchehab+samsung@kernel.org;
> linux@roeck-us.net; Daniel Baluta <daniel.baluta@nxp.com>;
> maxime.ripard@bootlin.com; olof@lixom.net; jagan@amarulasolutions.com;
> horms+renesas@verge.net.au; Leonard Crestez <leonard.crestez@nxp.com>;
> bjorn.andersson@linaro.org; dinguyen@kernel.org;
> enric.balletbo@collabora.com; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-doc@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-pm@vger.kernel.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: RE: [PATCH V14 2/5] thermal: of-thermal: add API for getting sensor
> ID from DT
> 
> Hi Anson,
> 
> The implementation looks good to me.
> A few minor comments on the doc:

This patch is pending for so long and even till now I am NOT sure if everyone is OK for
this change, so I will wait for some comments if there is any, and will improve the doc
together in next version.

Thanks,
Anson

> 
> > From: Anson.Huang@nxp.com [mailto:Anson.Huang@nxp.com]
> > Sent: Monday, June 10, 2019 10:53 AM
> >
> > On some platforms like i.MX8QXP, the thermal driver needs a real HW
> > sensor ID from DT thermal zone, the HW sensor ID is used to get
> > temperature from SCU firmware, and the virtual sensor ID starting from
> > 0 to N is NOT used at all,
> 
> This API is unware of HW ID or Virtual ID. So we probably no need to
> mention It here.
> 
> > this patch adds new API thermal_zone_of_get_sensor_id() to provide the
> > feature of getting sensor ID from DT thermal zone's node.
> >
> 
> "It's useful for thermal driver to register the specific thermal zone devices
> from DT in a common way."
> 
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V13:
> > 	- add new API into the thermal API doc.
> > ---
> >  Documentation/thermal/sysfs-api.txt |  8 +++++
> >  drivers/thermal/of-thermal.c        | 66
> > ++++++++++++++++++++++++++++---------
> >  include/linux/thermal.h             | 10 ++++++
> >  3 files changed, 68 insertions(+), 16 deletions(-)
> >
> > diff --git a/Documentation/thermal/sysfs-api.txt
> > b/Documentation/thermal/sysfs-api.txt
> > index c3fa500..8d7f1b1 100644
> > --- a/Documentation/thermal/sysfs-api.txt
> > +++ b/Documentation/thermal/sysfs-api.txt
> > @@ -159,6 +159,14 @@ temperature) and throttle appropriate devices.
> >  	for the thermal zone device, which might be useful for platform
> >  	drivers for temperature calculations.
> >
> > +1.1.9 int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
> > +		struct device_node *sensor_np,
> > +		u32 *id)
> > +
> > +	This interface is used to get the sensor id from thermal sensor's
> > +	phandle argument, it might be necessary for some platforms which
> > +	have specific sensor ID rather than virtual ID from 0 - N.
> 
> Does below one look better?
> 
> "This interface is used to get the sensor id from the given thermal zone in DT,
> which might be useful for thermal drivers to register specific thermal zone
> device in a common way."
> 
> > +
> >  1.2 thermal cooling device interface
> >  1.2.1 struct thermal_cooling_device
> > *thermal_cooling_device_register(char
> > *name,
> >  		void *devdata, struct thermal_cooling_device_ops *) diff --git
> > a/drivers/thermal/of-thermal.c b/drivers/thermal/of-thermal.c index
> > dc5093b..a53792b 100644
> > --- a/drivers/thermal/of-thermal.c
> > +++ b/drivers/thermal/of-thermal.c
> > @@ -449,6 +449,54 @@ thermal_zone_of_add_sensor(struct device_node
> > *zone,  }
> >
> >  /**
> > + * thermal_zone_of_get_sensor_id - get sensor ID from a DT thermal
> > + zone
> > + * @tz_np: a valid thermal zone device node.
> > + * @sensor_np: a sensor node of a valid sensor device.
> > + * @id: a sensor ID pointer will be passed back.
> 
> the sensor ID returned if success
> 
> > + *
> > + * This function will get sensor ID from a given thermal zone node,
> > + use
> > + * "thermal-sensors" as list name, and get sensor ID from first
> > + phandle's
> > + * argument.
> 
> "This function will get sensor ID from a given thermal zone node and the
> sensor get must match the temperature providers @sensor_np."
> 
> Regards
> Dong Aisheng
> 
> > + *
> > + * Return: 0 on success, proper error code otherwise.
> > + */
> > +
> > +int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
> > +				  struct device_node *sensor_np,
> > +				  u32 *id)
> > +{
> > +	struct of_phandle_args sensor_specs;
> > +	int ret;
> > +
> > +	ret = of_parse_phandle_with_args(tz_np,
> > +					 "thermal-sensors",
> > +					 "#thermal-sensor-cells",
> > +					 0,
> > +					 &sensor_specs);
> > +	if (ret)
> > +		return ret;
> > +
> > +	if (sensor_specs.np != sensor_np) {
> > +		of_node_put(sensor_specs.np);
> > +		return -ENODEV;
> > +	}
> > +
> > +	if (sensor_specs.args_count >= 1) {
> > +		*id = sensor_specs.args[0];
> > +		WARN(sensor_specs.args_count > 1,
> > +		     "%pOFn: too many cells in sensor specifier %d\n",
> > +		     sensor_specs.np, sensor_specs.args_count);
> > +	} else {
> > +		*id = 0;
> > +	}
> > +
> > +	of_node_put(sensor_specs.np);
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(thermal_zone_of_get_sensor_id);
> > +
> > +/**
> >   * thermal_zone_of_sensor_register - registers a sensor to a DT thermal
> zone
> >   * @dev: a valid struct device pointer of a sensor device. Must contain
> >   *       a valid .of_node, for the sensor node.
> > @@ -499,36 +547,22 @@ thermal_zone_of_sensor_register(struct device
> > *dev, int sensor_id, void *data,
> >  	sensor_np = of_node_get(dev->of_node);
> >
> >  	for_each_available_child_of_node(np, child) {
> > -		struct of_phandle_args sensor_specs;
> >  		int ret, id;
> >
> >  		/* For now, thermal framework supports only 1 sensor per
> zone */
> > -		ret = of_parse_phandle_with_args(child, "thermal-sensors",
> > -						 "#thermal-sensor-cells",
> > -						 0, &sensor_specs);
> > +		ret = thermal_zone_of_get_sensor_id(child, sensor_np, &id);
> >  		if (ret)
> >  			continue;
> >
> > -		if (sensor_specs.args_count >= 1) {
> > -			id = sensor_specs.args[0];
> > -			WARN(sensor_specs.args_count > 1,
> > -			     "%pOFn: too many cells in sensor specifier %d\n",
> > -			     sensor_specs.np, sensor_specs.args_count);
> > -		} else {
> > -			id = 0;
> > -		}
> > -
> > -		if (sensor_specs.np == sensor_np && id == sensor_id) {
> > +		if (id == sensor_id) {
> >  			tzd = thermal_zone_of_add_sensor(child, sensor_np,
> >  							 data, ops);
> >  			if (!IS_ERR(tzd))
> >  				tzd->ops->set_mode(tzd,
> THERMAL_DEVICE_ENABLED);
> >
> > -			of_node_put(sensor_specs.np);
> >  			of_node_put(child);
> >  			goto exit;
> >  		}
> > -		of_node_put(sensor_specs.np);
> >  	}
> >  exit:
> >  	of_node_put(sensor_np);
> > diff --git a/include/linux/thermal.h b/include/linux/thermal.h index
> > 15a4ca5..5edffe6 100644
> > --- a/include/linux/thermal.h
> > +++ b/include/linux/thermal.h
> > @@ -375,6 +375,9 @@ struct thermal_trip {
> >
> >  /* Function declarations */
> >  #ifdef CONFIG_THERMAL_OF
> > +int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
> > +				  struct device_node *sensor_np,
> > +				  u32 *id);
> >  struct thermal_zone_device *
> >  thermal_zone_of_sensor_register(struct device *dev, int id, void *data,
> >  				const struct thermal_zone_of_device_ops
> *ops); @@
> > -386,6 +389,13 @@ struct thermal_zone_device
> > *devm_thermal_zone_of_sensor_register(
> >  void devm_thermal_zone_of_sensor_unregister(struct device *dev,
> >  					    struct thermal_zone_device *tz);
> #else
> > +
> > +static int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
> > +					 struct device_node *sensor_np,
> > +					 u32 *id)
> > +{
> > +	return -ENOENT;
> > +}
> >  static inline struct thermal_zone_device *
> > thermal_zone_of_sensor_register(struct device *dev, int id, void *data,
> >  				const struct thermal_zone_of_device_ops
> *ops)
> > --
> > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
