Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 564803AD10
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 04:35:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=suIIfAOKvDmTEwWONspAS/8MVhJtGRIA4dIacW64ApU=; b=U0WwBy3jBk5zQd
	1W/x03+enO8stWv1NJtr/gmRX2Fz6jYLyaWSJ4egzuIcdbFiOq4NdmTQIkO9QDtZosoyGXcHRgJlB
	L9Qf9dd0n+P3uxLAZBSqYMffsWHkuXTXY+oxi29v3vfkrRsrhderh13RytqDnbbxq00JVUYx6RqQn
	IANuxzt+zeIaT7zIE4N4REmMKtClapw0nvyePHxe3YXMvbM3lLK9YZK2nyFTZtSERVs7susg8Zqv2
	Hd5xdNTn9XXA0d2XLKVnhX1P+m7TNZKhNQWxbjsccXiDZ/orzJAlcxLWgdMWATajlSEZvH+DCzZ+t
	L+pejVprRKtT1IZvv55A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haA9k-0004Ya-HX; Mon, 10 Jun 2019 02:35:32 +0000
Received: from mail-vi1eur04on0603.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::603]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haA8i-0004N3-62
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 02:34:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CqEkc/GTUjQTv41AHDXW4vuHITr9eDsDRH+qtzcy0pY=;
 b=HK6vsIdMEAPIzBjHdyfT/jFOPMM/P/6U/mC8V16HBC0kOnZ+Totz/ktSddUB0cbKSsE70QErL5QnrhqwPHklKYj1P3wLNqAr3/y7mY+xlQSjyvYsa6HGozZJSBj0cskWB82sCMcCERZMED6df5I3A6G04/0F3pfnrvZSYsj6WTI=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3929.eurprd04.prod.outlook.com (52.134.70.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Mon, 10 Jun 2019 02:34:21 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1965.017; Mon, 10 Jun 2019
 02:34:21 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Eduardo Valentin <edubezval@gmail.com>
Subject: RE: [PATCH RESEND V13 2/5] thermal: of-thermal: add API for getting
 sensor ID from DT
Thread-Topic: [PATCH RESEND V13 2/5] thermal: of-thermal: add API for getting
 sensor ID from DT
Thread-Index: AQHVFRtF1HyUf82e5E+mJmD7zHGxLKaBa66AgAAIvwCAEsmvQA==
Date: Mon, 10 Jun 2019 02:34:21 +0000
Message-ID: <DB3PR0402MB3916BA73B800FB63B797007CF5130@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190528060621.47342-1-Anson.Huang@nxp.com>
 <20190528060621.47342-2-Anson.Huang@nxp.com>
 <20190529030225.GA2662@localhost.localdomain>
 <DB3PR0402MB3916A099D7DE4F89D3F50CB3F51F0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916A099D7DE4F89D3F50CB3F51F0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c6c4f78-c96e-47ba-49ad-08d6ed4c2551
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3929; 
x-ms-traffictypediagnostic: DB3PR0402MB3929:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB3PR0402MB3929F4A39050D16858B40C26F5130@DB3PR0402MB3929.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(346002)(376002)(366004)(136003)(13464003)(199004)(189003)(6116002)(74316002)(66946007)(76116006)(99286004)(7416002)(229853002)(66066001)(73956011)(2906002)(25786009)(66446008)(64756008)(66556008)(66476007)(9686003)(8676002)(8936002)(68736007)(7736002)(6246003)(478600001)(966005)(6306002)(316002)(1411001)(86362001)(81156014)(81166006)(53936002)(54906003)(305945005)(6916009)(11346002)(33656002)(7696005)(102836004)(76176011)(6506007)(53546011)(4326008)(14454004)(5660300002)(55016002)(6436002)(52536014)(256004)(71190400001)(26005)(44832011)(446003)(486006)(186003)(3846002)(71200400001)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3929;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3aqBr/qwBqlTMgzNivZpd0zoZVO8+Y8BCXiuBBBJ+7L00+5v72zGa2kg4y8cUo+N+SRvVWOeDroUhlSBldG+xkVgliuoVUAutMBig3EsLQlKgZR3NgggP3UZ/bZ9q6vUVLP+Bpje2yfhM+lI/f3E8d2Q8PXHb2+wkRJ5gZWhXx08v7lAfLpfRvn3Dh+YvTPQWN68HbG7lDx138mIVfAvjmtRaLr+1psrcxpzrsNEm5UkU8ii2IQPbUM4dQ3WNbEmAbZupDYiuKn/XMI50uNqNRKYXvkGoTMkWse9e3OB13ccf/YHsL6nGPlfS0xmzrmfbEJtOv3Lb5EY0Mbyarr9O9OCASftEPWxafiIk7/BuEmf3E4oHaTmYngCI48CyDj3rH1dGoOGUURyaVeACRQ6aHxfQOvAUkHuf1aUPdZyDI4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c6c4f78-c96e-47ba-49ad-08d6ed4c2551
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 02:34:21.6426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3929
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_193428_455677_59FF47CD 
X-CRM114-Status: GOOD (  28.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:603 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>, Peng Fan <peng.fan@nxp.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Eduardo

> -----Original Message-----
> From: Anson Huang
> Sent: Wednesday, May 29, 2019 11:37 AM
> To: Eduardo Valentin <edubezval@gmail.com>
> Cc: robh+dt@kernel.org; mark.rutland@arm.com; shawnguo@kernel.org;
> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> catalin.marinas@arm.com; will.deacon@arm.com; rui.zhang@intel.com;
> daniel.lezcano@linaro.org; Aisheng Dong <aisheng.dong@nxp.com>;
> ulf.hansson@linaro.org; Peng Fan <peng.fan@nxp.com>; Daniel Baluta
> <daniel.baluta@nxp.com>; maxime.ripard@bootlin.com; olof@lixom.net;
> jagan@amarulasolutions.com; horms+renesas@verge.net.au; Leonard
> Crestez <leonard.crestez@nxp.com>; bjorn.andersson@linaro.org;
> dinguyen@kernel.org; enric.balletbo@collabora.com;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-pm@vger.kernel.org; dl-linux-imx <linux-
> imx@nxp.com>
> Subject: RE: [PATCH RESEND V13 2/5] thermal: of-thermal: add API for getting
> sensor ID from DT
> 
> Hi, Eduardo
> 
> > -----Original Message-----
> > From: Eduardo Valentin <edubezval@gmail.com>
> > Sent: Wednesday, May 29, 2019 11:02 AM
> > To: Anson Huang <anson.huang@nxp.com>
> > Cc: robh+dt@kernel.org; mark.rutland@arm.com; shawnguo@kernel.org;
> > s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> > catalin.marinas@arm.com; will.deacon@arm.com; rui.zhang@intel.com;
> > daniel.lezcano@linaro.org; Aisheng Dong <aisheng.dong@nxp.com>;
> > ulf.hansson@linaro.org; Peng Fan <peng.fan@nxp.com>; Daniel Baluta
> > <daniel.baluta@nxp.com>; maxime.ripard@bootlin.com; olof@lixom.net;
> > jagan@amarulasolutions.com; horms+renesas@verge.net.au; Leonard
> > Crestez <leonard.crestez@nxp.com>; bjorn.andersson@linaro.org;
> > dinguyen@kernel.org; enric.balletbo@collabora.com;
> > devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> > kernel@lists.infradead.org; linux-pm@vger.kernel.org; dl-linux-imx
> > <linux- imx@nxp.com>
> > Subject: Re: [PATCH RESEND V13 2/5] thermal: of-thermal: add API for
> > getting sensor ID from DT
> >
> > On Tue, May 28, 2019 at 02:06:18PM +0800, Anson.Huang@nxp.com wrote:
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > >
> > > On some platforms like i.MX8QXP, the thermal driver needs a real HW
> > > sensor ID from DT thermal zone, the HW sensor ID is used to get
> > > temperature from SCU firmware, and the virtual sensor ID starting
> > > from
> > > 0 to N is NOT used at all, this patch adds new API
> > > thermal_zone_of_get_sensor_id() to provide the feature of getting
> > > sensor ID from DT thermal zone's node.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > > Changes since V12:
> > > 	- adjust the second parameter of thermal_zone_of_get_sensor_id()
> > > API,
> > then caller no need
> > > 	  to pass the of_phandle_args structure and put the sensor_specs.np
> > manually, also putting
> > > 	  the sensor node device check inside this API to make it easy for
> > > usage;
> >
> > What happened to using nxp,resource-id property in your driver?
> > Why do we need this as an API in of-thermal? What other drivers may
> > benefit of this?
> >
> > Regardless, this patch needs to document the new API under
> > Documentation/
> 
> As Rob has different opinion about this property, he thought it is
> unnecessary, see below discussion mail, that is why I need to add API to get
> the resource ID from phandle argument.
> I am totally confused now, which approach should we adopt?
> 
> https://patchwork.kernel.org/patch/10831397/

I will add the new API document in V14, I remembered that there is also other vendors
have similar sensor HW ID as i.MX8QXP, instead of adding private properties for each vendor,
adding an API to read out the sensor ID can benefit us a lot I think.

Thanks,
Anson

> 
> Thanks,
> Anson
> 
> >
> > > ---
> > >  drivers/thermal/of-thermal.c | 66
> > > +++++++++++++++++++++++++++++++++---
> > --------
> > >  include/linux/thermal.h      | 10 +++++++
> > >  2 files changed, 60 insertions(+), 16 deletions(-)
> > >
> > > diff --git a/drivers/thermal/of-thermal.c
> > > b/drivers/thermal/of-thermal.c index dc5093b..a53792b 100644
> > > --- a/drivers/thermal/of-thermal.c
> > > +++ b/drivers/thermal/of-thermal.c
> > > @@ -449,6 +449,54 @@ thermal_zone_of_add_sensor(struct
> device_node
> > > *zone,  }
> > >
> > >  /**
> > > + * thermal_zone_of_get_sensor_id - get sensor ID from a DT thermal
> > > + zone
> > > + * @tz_np: a valid thermal zone device node.
> > > + * @sensor_np: a sensor node of a valid sensor device.
> > > + * @id: a sensor ID pointer will be passed back.
> > > + *
> > > + * This function will get sensor ID from a given thermal zone node,
> > > + use
> > > + * "thermal-sensors" as list name, and get sensor ID from first
> > > + phandle's
> > > + * argument.
> > > + *
> > > + * Return: 0 on success, proper error code otherwise.
> > > + */
> > > +
> > > +int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
> > > +				  struct device_node *sensor_np,
> > > +				  u32 *id)
> > > +{
> > > +	struct of_phandle_args sensor_specs;
> > > +	int ret;
> > > +
> > > +	ret = of_parse_phandle_with_args(tz_np,
> > > +					 "thermal-sensors",
> > > +					 "#thermal-sensor-cells",
> > > +					 0,
> > > +					 &sensor_specs);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	if (sensor_specs.np != sensor_np) {
> > > +		of_node_put(sensor_specs.np);
> > > +		return -ENODEV;
> > > +	}
> > > +
> > > +	if (sensor_specs.args_count >= 1) {
> > > +		*id = sensor_specs.args[0];
> > > +		WARN(sensor_specs.args_count > 1,
> > > +		     "%pOFn: too many cells in sensor specifier %d\n",
> > > +		     sensor_specs.np, sensor_specs.args_count);
> > > +	} else {
> > > +		*id = 0;
> > > +	}
> > > +
> > > +	of_node_put(sensor_specs.np);
> > > +
> > > +	return 0;
> > > +}
> > > +EXPORT_SYMBOL_GPL(thermal_zone_of_get_sensor_id);
> > > +
> > > +/**
> > >   * thermal_zone_of_sensor_register - registers a sensor to a DT thermal
> zone
> > >   * @dev: a valid struct device pointer of a sensor device. Must contain
> > >   *       a valid .of_node, for the sensor node.
> > > @@ -499,36 +547,22 @@ thermal_zone_of_sensor_register(struct device
> > *dev, int sensor_id, void *data,
> > >  	sensor_np = of_node_get(dev->of_node);
> > >
> > >  	for_each_available_child_of_node(np, child) {
> > > -		struct of_phandle_args sensor_specs;
> > >  		int ret, id;
> > >
> > >  		/* For now, thermal framework supports only 1 sensor per
> > zone */
> > > -		ret = of_parse_phandle_with_args(child, "thermal-sensors",
> > > -						 "#thermal-sensor-cells",
> > > -						 0, &sensor_specs);
> > > +		ret = thermal_zone_of_get_sensor_id(child, sensor_np, &id);
> > >  		if (ret)
> > >  			continue;
> > >
> > > -		if (sensor_specs.args_count >= 1) {
> > > -			id = sensor_specs.args[0];
> > > -			WARN(sensor_specs.args_count > 1,
> > > -			     "%pOFn: too many cells in sensor specifier %d\n",
> > > -			     sensor_specs.np, sensor_specs.args_count);
> > > -		} else {
> > > -			id = 0;
> > > -		}
> > > -
> > > -		if (sensor_specs.np == sensor_np && id == sensor_id) {
> > > +		if (id == sensor_id) {
> > >  			tzd = thermal_zone_of_add_sensor(child, sensor_np,
> > >  							 data, ops);
> > >  			if (!IS_ERR(tzd))
> > >  				tzd->ops->set_mode(tzd,
> > THERMAL_DEVICE_ENABLED);
> > >
> > > -			of_node_put(sensor_specs.np);
> > >  			of_node_put(child);
> > >  			goto exit;
> > >  		}
> > > -		of_node_put(sensor_specs.np);
> > >  	}
> > >  exit:
> > >  	of_node_put(sensor_np);
> > > diff --git a/include/linux/thermal.h b/include/linux/thermal.h index
> > > 15a4ca5..5edffe6 100644
> > > --- a/include/linux/thermal.h
> > > +++ b/include/linux/thermal.h
> > > @@ -375,6 +375,9 @@ struct thermal_trip {
> > >
> > >  /* Function declarations */
> > >  #ifdef CONFIG_THERMAL_OF
> > > +int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
> > > +				  struct device_node *sensor_np,
> > > +				  u32 *id);
> > >  struct thermal_zone_device *
> > >  thermal_zone_of_sensor_register(struct device *dev, int id, void *data,
> > >  				const struct thermal_zone_of_device_ops
> > *ops); @@ -386,6 +389,13
> > > @@ struct thermal_zone_device
> *devm_thermal_zone_of_sensor_register(
> > >  void devm_thermal_zone_of_sensor_unregister(struct device *dev,
> > >  					    struct thermal_zone_device *tz);
> > #else
> > > +
> > > +static int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
> > > +					 struct device_node *sensor_np,
> > > +					 u32 *id)
> > > +{
> > > +	return -ENOENT;
> > > +}
> > >  static inline struct thermal_zone_device *
> > > thermal_zone_of_sensor_register(struct device *dev, int id, void *data,
> > >  				const struct thermal_zone_of_device_ops
> > *ops)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
