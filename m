Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2EC167959
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 10:26:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUUzVzBjmpw5VkxK3qzf8GASnvb2H0UdOei460xaZ3I=; b=FJcsk+uAryAdWf
	xBMGN2fA2GbJ1XcMkZYfVFQ7xloZmd9/UDyKB6XcKU9SmKsh/rJ1Ktu9EAnppwuRbZxRjmrcQXtIn
	JNNtPd2PbmfMNBnORAe1Kgg0VOiK1taZXFhg7rSGDujFK7YhGyJb64pINFdaNGkW548/31DFI9yAq
	pb0y/okNHJXszAfJM5pXZ9iMH6gqrIe4wQrm3Dxg85BfnukwXCDwOOqk6vZ+DZRJLgr6u5uX9eXjB
	GKhebk3NCAnmTuxyWkDHyL57ByHlBrwxQXBxyk9VmWyOpeiYCuD9WmEUY4B+9ot+OVraei7L/9D05
	ld58RyiXN0lMJaQiUKuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j54a3-0000Qb-4m; Fri, 21 Feb 2020 09:26:43 +0000
Received: from mail-eopbgr30049.outbound.protection.outlook.com ([40.107.3.49]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j54Zt-0000Ot-RO
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 09:26:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oDRmH9arAq3dFlz5BPv5KEa1L6+aYcpL/tpK+kMFhu6QECXeQ6gKZhx8q3M8TU0bX5vt37oYSinzoTUK5dcY9CNEkQxgT24Hi9qmnW8uiIwZn/FsjeBIIlIv/WZZGg2+ZBKhV8kAn8kr0m0KrtgXQYpYxzkDKNA5mgEKo+YT8Q6jbUh2S4qsH3VtzWd4WV1srB8XPvlCIr1eXDFmW6ak9vnnLGCCaKRGfrP7Z6j12StCx263qb6FzPkexsakhNL2U9s9kzxpNTXD4EO9Znk2v+KvzeXZJQ7IxU2xbzgSfCMVUkIXu6YJDYh8BNgQAN45fOs1zYRXiykyHD3ja6VX4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s0giFPnSvmnjpbwqhx8Hne85FcxFlRSPX0nwydJJbV0=;
 b=ea71PZEa7psZhZ/zU0IXl40vQpKiKh2FF/mgHXJiaULjFCPEZdYF8DA+1IbQddivzXRx39k6aETbML2wGEsJnCv7yTh19uJRpDp9dInPnELmLwlHyoOFItGbMR+LAgfFKjrhHWpUFnFEpkTsASKRP2hudhOO0kyIxLrqxvrPzRAxiMYDfxt4my2uUlcjAcrn8gX2uclBXGTGcFNENe1+vv862xCW8AtHOYrKg+diD7tveQEoGK8RWWFtrLU5SXMOJKcTSTJPUZDINOGUhxJPkbJv8NMT343VTpL7m87VeqtxnqUBtSiq7wLJ/PGUzf8p9NgK/sVtx5YRmAg+0BLXqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s0giFPnSvmnjpbwqhx8Hne85FcxFlRSPX0nwydJJbV0=;
 b=fgBAY7wQ5rrlqTVa5i5oJVN868rO1ymlSsWHP4cXuPz3xegrijO5Gm9D3dVFKQkHno2ocYOTAQ9gXi/HvYtkBVkEBxR+Eqs7VHR2DOTw1bYqhBgqY52D8CA+9qzHmFCuvZRRO995xv/cgFfENHeU3It9zOhw879SoNvbZNV9L+4=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3737.eurprd04.prod.outlook.com (52.134.66.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.23; Fri, 21 Feb 2020 09:26:29 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 09:26:29 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: RE: [PATCH V15 RESEND 2/5] thermal: of-thermal: add API for getting
 sensor ID from DT
Thread-Topic: [PATCH V15 RESEND 2/5] thermal: of-thermal: add API for getting
 sensor ID from DT
Thread-Index: AQHV54twqrQqqnnsY0eYUhsqk5r9AKglXqIAgAADj2A=
Date: Fri, 21 Feb 2020 09:26:29 +0000
Message-ID: <DB3PR0402MB39161BB726FE5413F30F0263F5120@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1582161028-2844-1-git-send-email-Anson.Huang@nxp.com>
 <1582161028-2844-2-git-send-email-Anson.Huang@nxp.com>
 <20200221091112.GA10516@linaro.org>
In-Reply-To: <20200221091112.GA10516@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [220.161.57.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e40dc78a-034b-4243-515d-08d7b6b021cc
x-ms-traffictypediagnostic: DB3PR0402MB3737:|DB3PR0402MB3737:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3737A1FE521DD5D7155104F4F5120@DB3PR0402MB3737.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0320B28BE1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(39860400002)(396003)(376002)(189003)(199004)(44832011)(9686003)(66946007)(6506007)(66476007)(71200400001)(7696005)(2906002)(54906003)(66446008)(66556008)(64756008)(478600001)(4326008)(26005)(6916009)(8936002)(86362001)(7416002)(55016002)(76116006)(81166006)(8676002)(186003)(81156014)(316002)(52536014)(33656002)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3737;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zO4VrkzUXXZXpFJqPsWE2OvpQjaaM0Wu066Dw4MX8udYfK5S8H03IR8tLBlybzHcNY7/kYFYVPBU68WBwqUL/sBeGiqc8oZ3PZ4ieRzgzph1w+/WKLSSbgEifO9nM5VzD0E9B20258hx6e5r/3iWmZ7qA9KQfmCWFnxL/yW0GNpbISkrt6gB5czTOOiqaPgcI9wk0K46PqJFse9NWfYJiR5EpywHOUGvMrAKsdW3y9D7yKXM7PmwkbsV1A70p9Clr2tZewh0vm8Fg2qp0eAmpqaRDOps9h0krUGGtX4y7H0uRsprXmyT4jti4s7BxlY8ulRhJ0Wz+nKKzVXI+460UBskFFxU9i08/+OAq1fx23Gnecim4e7CY1ZVRENFHEATO+HINOBHz4DBdphm7llI/ZXI7SsJgNmsvhGsvYZe31O3JKa+z4eL/jmADzSLuOQr
x-ms-exchange-antispam-messagedata: kcMEX8JNac2kGJTadbF7k9I+B4iORTg2BVPIE/IGZv7grFZlJFF98ymJHD/YLr/l0luyYF8Co0/7YndxxiyJc05Qrx67ZOFZDO/nbbqO2c83P7w4O8Hd/U9b6gchiWWez87hZFI+Um5RGsxQYZOgiw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e40dc78a-034b-4243-515d-08d7b6b021cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2020 09:26:29.1703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IQAKJOZtFIi4RJviNGgYUDwsOUUHcY7vBTkGvPGzsvT73sTIHv8pj54HosqOxhw/Y64myy/gs1sQnMqR7+wYpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3737
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_012633_961208_6059FA95 
X-CRM114-Status: GOOD (  24.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "krzk@kernel.org" <krzk@kernel.org>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>, "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel

> Subject: Re: [PATCH V15 RESEND 2/5] thermal: of-thermal: add API for getting
> sensor ID from DT
> 
> Hi,
> 
> On Thu, Feb 20, 2020 at 09:10:25AM +0800, Anson Huang wrote:
> > This patch adds new API thermal_zone_of_get_sensor_id() to provide the
> > feature of getting sensor ID from DT thermal zone's node. It's useful
> > for thermal driver to register the specific thermal zone devices from
> > DT in a common way.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> > ---
> > Changes since V14:
> > 	- improve the commit message and comment, no code change.
> > ---
> >  drivers/thermal/of-thermal.c | 65 +++++++++++++++++++++++++++++++++-
> ----------
> >  include/linux/thermal.h      | 10 +++++++
> >  2 files changed, 59 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/thermal/of-thermal.c
> > b/drivers/thermal/of-thermal.c index ef0baa9..0f57108 100644
> > --- a/drivers/thermal/of-thermal.c
> > +++ b/drivers/thermal/of-thermal.c
> > @@ -449,6 +449,53 @@ thermal_zone_of_add_sensor(struct device_node
> > *zone,  }
> >
> >  /**
> > + * thermal_zone_of_get_sensor_id - get sensor ID from a DT thermal
> > + zone
> > + * @tz_np: a valid thermal zone device node.
> > + * @sensor_np: a sensor node of a valid sensor device.
> > + * @id: the sensor ID returned if success.
> > + *
> > + * This function will get sensor ID from a given thermal zone node
> > + and
> > + * the sensor node must match the temperature provider @sensor_np.
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
> 
> For the sake of clarity, move the sanity tests before:
> 
> 	if (sensor_specs.args_count > 1)
> 		pr_warn("...");
> 
> 	*id = sensor_specs.args_count ? sensor_specs.args[0] : 0;
> 

Make sense, will improve it in V16.

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
> > @@ -499,36 +546,22 @@ thermal_zone_of_sensor_register(struct device
> *dev, int sensor_id, void *data,
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
> 
> Please take also the opportunity to factor out the function
> thermal_zone_of_sensor_register().

Sorry, I do NOT quite understand terms "factor out the function ...", could you please advise more detail?

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
