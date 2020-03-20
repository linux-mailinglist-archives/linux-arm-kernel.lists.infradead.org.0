Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA7818C5EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 04:37:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nPemLxHXqEDUstJqNBLaOBGJ/fhgStRliJeyEzoBXP0=; b=IA5z6kp/oANAjN
	OGNkKXW897KU1yO5dR0MVxQ5b1fbJ1y7UWajQkx2PrY/7SUP8q0+nxxVLeH20TtstC+yhdBRUijiv
	skzaMxoTqTNkTnasdEcn5kgqpsfRcK7CQ5CYXpRaZfLR2jqBVGoNBEBZVkyqQboEpPUAI6nIEILSC
	wwcj9mljG/AgxYztdidT7c87kRc3acNDrRE5UxOVtKmqa1OHz2h9vxtUdeb22tmUQkFwDpn2ktFS1
	Tnq4i+VaM567jspo0PqE7nI8ORU9IFG5RROlXxdbAT5b8wdqpK0p+/vtB2lbV+vg8+0NRX6voDiZ/
	5H/99RrJ3b/bvInJlWXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF8Tb-0005yt-IC; Fri, 20 Mar 2020 03:37:39 +0000
Received: from mail-eopbgr10062.outbound.protection.outlook.com ([40.107.1.62]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF8TS-0005yH-Js
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 03:37:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c2/fUSzSin2kfzTtZZ3xAfhey3XAnn+VpR8WBkGjYjaBuxIwJuFjZ81hiRZmf3GLZ/NGffoaDM0aApVGm6biu8JxQ9W6Z7/0hrfvCLFj8emOfkDnMqFc59M1uBKyObsY9hDv6RCZrUaXld5bnWQQIDnLdd4aox2cZ8QjBBGpYaEAo9MvRab3O8s41Z4w8X2oEElgAyp0rpodwvtVKxuIKVLQdwdG1uCx7TNj5jhZ8i98AomCvW2g0wXgBZ8ZdMGKiXIoGrGCmY4mxO2HauKDS6ac8jln81Hyaov4iF/2ORKAMpQAuzp4OpVtLe5xy9BFeniMMs38Ch+axeDUFV9MJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=isaRkMDTseHu15vSiCWq66zL/8VwXApq/HqJ98N0LxM=;
 b=EQEh+gVJfrKfcsNAzovWjCEektJZvU9detK/H48KWzNywmQi4u5XrXwWptdkfTz750z/KGT7ILykiUmGrAzlImTWHqCNdhAvFqDj4Hx7lCG8v83CYnaDMZkcEyCA1S26jUD1NvkgMbp/Iv7DBiFGL7uNusKJ1BZZmIvnqFlpGJK7jlFfR7WZzevmRpL4dOWY3Aqf4ekC/7RBdVPnC2E5ulQjRX06GuU3UN/4JB+I/ltOzzOftoq8PvlqVTQOyk6jVu8Kp+c5Go5DpV7SQa6Mb38976K9oqxg0Nudy3I4qlHdzCM8TDmux9GF4m6S1QrGdaYCby9M1uksPUtRfEzHGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=isaRkMDTseHu15vSiCWq66zL/8VwXApq/HqJ98N0LxM=;
 b=CmJcJHVG9AJQMxXWrkPXKoYPgXJkP+VZIov9L09OOjrdRpfN3QVUn8ni1deeXSZBj6PxdsLIyrwM0t7YfILjcQpV3aLg9yZYWgeh/S2WOCFJ4qyDmBxJla6w/dzgPfu9hXMoZnRb+p+eB1fl9qHooy3K1vh6u3CqI8v1Kr/iLCE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3658.eurprd04.prod.outlook.com (52.134.65.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Fri, 20 Mar 2020 03:37:25 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2835.017; Fri, 20 Mar 2020
 03:37:25 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "rui.zhang@intel.com"
 <rui.zhang@intel.com>, "amit.kucheria@verdurent.com"
 <amit.kucheria@verdurent.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 2/3] thermal: imx8mm: Add i.MX8MP support
Thread-Topic: [PATCH 2/3] thermal: imx8mm: Add i.MX8MP support
Thread-Index: AQHV9V74kPvlCyYGZ0aw291WqUTD26hQTKgAgACZMtA=
Date: Fri, 20 Mar 2020 03:37:24 +0000
Message-ID: <DB3PR0402MB3916B1B0EB74BAA875349AF4F5F50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1583681240-14782-1-git-send-email-Anson.Huang@nxp.com>
 <1583681240-14782-2-git-send-email-Anson.Huang@nxp.com>
 <9ca81c42-6086-eb17-3eda-9bc2dab1101e@linaro.org>
In-Reply-To: <9ca81c42-6086-eb17-3eda-9bc2dab1101e@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bb8f79b6-bc28-4de6-1417-08d7cc8001a6
x-ms-traffictypediagnostic: DB3PR0402MB3658:|DB3PR0402MB3658:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3658CA6BE57A917971A22A57F5F50@DB3PR0402MB3658.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 03484C0ABF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(39860400002)(346002)(366004)(396003)(199004)(6506007)(53546011)(81166006)(66476007)(66446008)(2906002)(64756008)(9686003)(8936002)(66946007)(86362001)(66556008)(55016002)(110136005)(316002)(478600001)(76116006)(4326008)(81156014)(5660300002)(71200400001)(33656002)(7416002)(52536014)(44832011)(26005)(7696005)(186003)(8676002)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3658;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lqEo/TSQ3UsPoLAm2DvcBZXySnoQQVHtIo7krFmgtNvSL+NW8+af9dE+PFIaF/I+uZPiiM+teIyH3W3souQJmTZbDqOc6aKaNow/FgV5ZEyHpS8SZz0EdqGL4UZMfW4tIBdnblkInmjzss8Zb573fOJfylALmFtqMSJNpUMabyc87rUmZmCAREy5snxzom5ptEaMRKrMiXJr2/9WthBjigFdG1YvUzuNdAZgetSCYz/bcWnrHEww6mk0jpfhRGr81+Rvz0Ew5S1SW7vxh9GzJ5s64A6Xj8xp5CJEVTUIcX5ygZYMDLNg9iZUPUFXTRsetkrvd9CFuxCLXtDFSvGh3J312udr27+bV5G/6vtwVqe/xTiTg86g6DhTe+Zs7jSdArmZ5UHd7WXAvhGlnRRY7crWXzZB10WoEzTOUTzJlmsYmT+zaLuj+RjKv3IOvM1mpV4f+4uWnzy5sq2wRSj+Ku10sgJp/5tkPaVu+/+1CTXoV+eaqCX+0m7a/I55NVeuCkPck5tBm9/2K9S6DEdDOg==
x-ms-exchange-antispam-messagedata: Vu6R81wUFo56kAXMnCkIsyOvGrWXKQn1ns9cD+Za7OPI5F5ZHkopuZ4PJsH7Kn+uu8vGwYJQZnPwA2A6LnDy/YwwKPh4P4UBmhJVHWvIvD5lnyFg8Bimieil34ocO9o01f6OyGhuJAMSXtdgSwRcOQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb8f79b6-bc28-4de6-1417-08d7cc8001a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2020 03:37:25.0626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BF5f3iWVwcBpQk5Zq6t/tMT8dJXfiC+uD0BFz8vSwDqx5ma/lwWlhW88BGUlfLCiRL760LnTYKzK1RHeqW/smg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3658
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_203730_740080_58413C6D 
X-CRM114-Status: GOOD (  27.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.62 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.62 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel

> Subject: Re: [PATCH 2/3] thermal: imx8mm: Add i.MX8MP support
> 
> On 08/03/2020 16:27, Anson Huang wrote:
> > i.MX8MP shares same TMU with i.MX8MM, the only difference is i.MX8MP
> > has two thermal sensors while i.MX8MM ONLY has one, add multiple
> > sensors support for i.MX8MM TMU driver.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/thermal/imx8mm_thermal.c | 108
> > +++++++++++++++++++++++++++++++++------
> >  1 file changed, 93 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/thermal/imx8mm_thermal.c
> > b/drivers/thermal/imx8mm_thermal.c
> > index d597ceb..8a87ed0 100644
> > --- a/drivers/thermal/imx8mm_thermal.c
> > +++ b/drivers/thermal/imx8mm_thermal.c
> > @@ -10,34 +10,75 @@
> >  #include <linux/io.h>
> >  #include <linux/module.h>
> >  #include <linux/of.h>
> > -#include <linux/of_address.h>
> > +#include <linux/of_device.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/thermal.h>
> >
> >  #include "thermal_core.h"
> >
> >  #define TER			0x0	/* TMU enable */
> > +#define TPS			0x4
> >  #define TRITSR			0x20	/* TMU immediate temp */
> >
> >  #define TER_EN			BIT(31)
> >  #define TRITSR_VAL_MASK		0xff
> >
> > -#define TEMP_LOW_LIMIT		10
> > +#define PROBE_SEL_ALL		GENMASK(31, 30)
> >
> > -struct imx8mm_tmu {
> > +#define PROBE0_STATUS_OFFSET	30
> > +#define PROBE0_VAL_OFFSET	16
> > +#define SIGN_BIT		BIT(7)
> > +#define TEMP_VAL_MASK		GENMASK(6, 0)
> > +
> > +#define VER1_TEMP_LOW_LIMIT	10
> > +#define VER2_TEMP_LOW_LIMIT	-40
> > +#define VER2_TEMP_HIGH_LIMIT	125
> > +
> > +#define TMU_VER1		0x1
> > +#define TMU_VER2		0x2
> > +
> > +struct thermal_soc_data {
> > +	u32 num_sensors;
> > +	u32 version;
> > +};
> > +
> > +struct tmu_sensor {
> > +	struct imx8mm_tmu *priv;
> > +	u32 hw_id;
> >  	struct thermal_zone_device *tzd;
> > +};
> > +
> > +struct imx8mm_tmu {
> >  	void __iomem *base;
> >  	struct clk *clk;
> > +	const struct thermal_soc_data *socdata;
> > +	struct tmu_sensor sensors[0];
> >  };
> >
> >  static int tmu_get_temp(void *data, int *temp)  {
> > -	struct imx8mm_tmu *tmu = data;
> > +	struct tmu_sensor *sensor = data;
> > +	struct imx8mm_tmu *tmu = sensor->priv;
> > +	bool ready;
> >  	u32 val;
> >
> > -	val = readl_relaxed(tmu->base + TRITSR) & TRITSR_VAL_MASK;
> > -	if (val < TEMP_LOW_LIMIT)
> > -		return -EAGAIN;
> > +	if (tmu->socdata->version == TMU_VER1) {
> 
> Don't do this here, implement a callback to read the temp, store it in the
> socdata and call it directly from here.
> 
> So you end up with something simple like:
> 
> 	*temp = tmu->socdata->get_temp(...);
> 

Make sense, do it in V2.


> > +		val = readl_relaxed(tmu->base + TRITSR) &
> TRITSR_VAL_MASK;
> > +		if (val < VER1_TEMP_LOW_LIMIT)
> > +			return -EAGAIN;> +	} else {
> > +		val = readl_relaxed(tmu->base + TRITSR);
> > +		ready = val & (1 << (sensor->hw_id +
> PROBE0_STATUS_OFFSET));
> 
> 	test_bit()?

OK.

> 
> > +		val = (val >> (sensor->hw_id * PROBE0_VAL_OFFSET))
> > +		      & TRITSR_VAL_MASK;
> > +		if (val & SIGN_BIT) /* negative */
> > +			val = (~(val & TEMP_VAL_MASK) + 1);
> 
> Please have a look at the different bitops available to simplify this decoding.

I can ONLY find the FIELD_GET for getting the temperature value field, for the positive
and negative value check, I can't find any API for it.


> 
> > +		*temp = val;
> > +		if (!ready || *temp < VER2_TEMP_LOW_LIMIT ||
> > +		    *temp > VER2_TEMP_HIGH_LIMIT)
> > +			return -EAGAIN;
> > +	}
> >
> >  	*temp = val * 1000;
> >
> > @@ -50,14 +91,21 @@ static struct thermal_zone_of_device_ops
> > tmu_tz_ops = {
> >
> >  static int imx8mm_tmu_probe(struct platform_device *pdev)  {
> > +	const struct thermal_soc_data *data;
> >  	struct imx8mm_tmu *tmu;
> >  	u32 val;
> >  	int ret;
> > +	int i;
> > +
> > +	data = of_device_get_match_data(&pdev->dev);
> >
> > -	tmu = devm_kzalloc(&pdev->dev, sizeof(struct imx8mm_tmu),
> GFP_KERNEL);
> > +	tmu = devm_kzalloc(&pdev->dev, struct_size(tmu, sensors,
> > +			   data->num_sensors), GFP_KERNEL);
> >  	if (!tmu)
> >  		return -ENOMEM;
> >
> > +	tmu->socdata = data;
> > +
> >  	tmu->base = devm_platform_ioremap_resource(pdev, 0);
> >  	if (IS_ERR(tmu->base))
> >  		return PTR_ERR(tmu->base);
> > @@ -77,16 +125,35 @@ static int imx8mm_tmu_probe(struct
> platform_device *pdev)
> >  		return ret;
> >  	}
> >
> > -	tmu->tzd = devm_thermal_zone_of_sensor_register(&pdev->dev, 0,
> > -							tmu, &tmu_tz_ops);
> > -	if (IS_ERR(tmu->tzd)) {
> > -		dev_err(&pdev->dev,
> > -			"failed to register thermal zone sensor: %d\n", ret);
> > -		return PTR_ERR(tmu->tzd);
> > +	/* disable the monitor during initialization */
> > +	val = readl_relaxed(tmu->base + TER);
> > +	val &= ~TER_EN;
> > +	writel_relaxed(val, tmu->base + TER);
> 
> Could you wrap those calls inside a small helper function with a self
> described name?

OK.

> 
> > +
> > +	for (i = 0; i < data->num_sensors; i++) {
> > +		tmu->sensors[i].priv = tmu;
> > +		tmu->sensors[i].tzd =
> > +			devm_thermal_zone_of_sensor_register(&pdev->dev,
> i,
> > +							     &tmu->sensors[i],
> > +							     &tmu_tz_ops);
> > +		if (IS_ERR(tmu->sensors[i].tzd)) {
> > +			dev_err(&pdev->dev,
> > +				"failed to register thermal zone
> sensor[%d]: %d\n",
> > +				i, ret);
> > +			return PTR_ERR(tmu->sensors[i].tzd);
> > +		}
> > +		tmu->sensors[i].hw_id = i;
> 
> May be you can store the offset directly, so it is not computed every time the
> temperature is read?

There are 2 place need to identify the sensor ID, the ready bit and the temperature
value field, so I think the hw_id is necessary, and it also make the logic easy to read.


> 
> >  	}
> >
> >  	platform_set_drvdata(pdev, tmu);
> >
> > +	/* enable all the probes for V2 TMU */
> > +	if (tmu->socdata->version == TMU_VER2) {
> > +		val = readl_relaxed(tmu->base + TPS);
> > +		val |= PROBE_SEL_ALL;
> > +		writel_relaxed(val, tmu->base + TPS);
> > +	}
> 
> Same comment as before about putting these in a helper

OK

Please help review V2 patch.

Thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
