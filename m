Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AD85F525
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:09:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1WqN8B7VbnDwAKmVyUWiKLi57mgAbP4S699f262TAU=; b=GV1u+bpAgD5nNH
	f2XAk0rUXcZVZr8VOjAvHJEXqKAYXPyD6UaWZBIZqdClJgtad27lCtsKOuGVWnUdaM6GyQd4vgxOG
	SfC8oJio0GGFJTWsz8B5ULHZ76l6v73+1ACM+3+MZXdHYrRroUMebeuGUbQZmGmmc1M67enDL6dWd
	RaXrgMZdctnz2hRgAqvYJWYnU9nhSiPMF8TCT3MM2VE5FFMe6VLqGjDmtrrSZxHh5ibx4/98Krv34
	SCzgvVG7EeuhwZekqJ+6MTUVeXAlFounJKFXhcldRf05cTifuwpVQH0CJBvUU9JV7Ga/eXsKfahpA
	r1Sgm12Gbqq5P5SseFkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixkK-0000fc-OR; Thu, 04 Jul 2019 09:09:40 +0000
Received: from mail-eopbgr140048.outbound.protection.outlook.com
 ([40.107.14.48] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hixk2-0000eP-2H
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:09:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C/2yZwkIv7CYd/X9yEoqQ+rc3rIdjLTIZSTg2seZohY=;
 b=ZWzgh6D+LHpYzSPG9FEM7n3eXzMUXlvThlfOYIVwQHBkwCe0ZCzuGoG6dfcCM0SGUgcMPqfkfYLD1toqeyFD2vdgAeJ6Je2u23SRoUZ6c0MOSVuVsbtpISqPd1KGc2fK36yPpOuO8I0zIp0WMwcnAiHD1ChI5mz/1FfBbmUfpck=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3756.eurprd04.prod.outlook.com (52.134.73.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Thu, 4 Jul 2019 09:09:18 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2052.010; Thu, 4 Jul 2019
 09:09:18 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, "viresh.kumar@linaro.org"
 <viresh.kumar@linaro.org>, Daniel Baluta <daniel.baluta@nxp.com>, Jacky Bai
 <ping.bai@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] reset: imx7: Add support for i.MX8MM SoC
Thread-Topic: [PATCH 1/2] reset: imx7: Add support for i.MX8MM SoC
Thread-Index: AQHVL/IwVPL1AMH7TkeLenNRsyk/8aa6LCsAgAADXSA=
Date: Thu, 4 Jul 2019 09:09:18 +0000
Message-ID: <DB3PR0402MB3916D53E9BD277C2152F7261F5FA0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190701093944.5540-1-Anson.Huang@nxp.com>
 <1562230444.6641.2.camel@pengutronix.de>
In-Reply-To: <1562230444.6641.2.camel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 51d9eb69-ba1f-4cd6-adee-08d7005f4b69
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3756; 
x-ms-traffictypediagnostic: DB3PR0402MB3756:
x-microsoft-antispam-prvs: <DB3PR0402MB37569D55908879227CE28A2DF5FA0@DB3PR0402MB3756.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0088C92887
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(396003)(376002)(346002)(189003)(199004)(14444005)(6116002)(229853002)(11346002)(66446008)(66476007)(3846002)(66946007)(55016002)(256004)(66556008)(64756008)(76116006)(6436002)(476003)(486006)(446003)(44832011)(99286004)(26005)(6506007)(102836004)(7696005)(76176011)(110136005)(316002)(186003)(2501003)(73956011)(2201001)(33656002)(14454004)(86362001)(68736007)(52536014)(53936002)(5660300002)(74316002)(7416002)(9686003)(6246003)(2906002)(8676002)(8936002)(71200400001)(66066001)(305945005)(7736002)(81166006)(81156014)(25786009)(4326008)(71190400001)(478600001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3756;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aOWDjd+HV+zMi9R0LnQu9rMBXtLJXOhfwpB8x7iekLEksmlRPZW57Li5ot7zxnVNt1D8LfO6blIjCer9+sqZ45PSP76FYhJ8AUa6PXhIbSZqBbHsMJIZEagS9xSXNai12uDmEOEWJNLLI1vli5UYtP1dk1n5NTIAoaZJVU2aoG95sDXbTDEEEjOe1TNYghYk8Cp5lEzdDqjn5LlVsOoEiGcV6yKaRIPgAbXVZaiRj5uWtFK86yVuk3PTZSG2zrLnolTUFOy7V7jxz8fT9FaYEyRVOXLAqEv6wuOtRO0bGYFoDtT0yrqLQ3aKdwtF9zFrWIkYLT/g+G0q4iMJA0dNJ+CREQ7G90uC7BcvJsvavXg+YC4oulXF2qSK76vqxFOBu23H8CVQjfbyEkvthEv3lIX6aABj0dYiu3V2XBZRKYU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51d9eb69-ba1f-4cd6-adee-08d7005f4b69
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2019 09:09:18.2754 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3756
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_020922_198504_4C651B36 
X-CRM114-Status: GOOD (  26.99  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.48 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi, Philipp

> On Mon, 2019-07-01 at 17:39 +0800, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > i.MX8MM SoC has a subset of i.MX8MQ IP block variant, it can reuse the
> > i.MX8MQ reset controller driver and just skip those non-existing IP
> > blocks, add support for i.MX8MM SoC reset control.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/reset/reset-imx7.c | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> >
> > diff --git a/drivers/reset/reset-imx7.c b/drivers/reset/reset-imx7.c
> > index 3ecd770..941131f 100644
> > --- a/drivers/reset/reset-imx7.c
> > +++ b/drivers/reset/reset-imx7.c
> > @@ -207,6 +207,26 @@ static int imx8mq_reset_set(struct
> reset_controller_dev *rcdev,
> >  	const unsigned int bit = imx7src->signals[id].bit;
> >  	unsigned int value = assert ? bit : 0;
> >
> > +	if (of_machine_is_compatible("fsl,imx8mm")) {
> 
> This should be checked once during probe, not in every reset_set, if this
> check has to be made at all. On i.MX8MM these unused reset controls are
> not going to be hooked up via phandle, so this function should never be
> called with the values that are filtered out here anyway.
> And in case somebody makes an error in the device tree, does writing 1 to
> the reserved bits on i.MX8MM have any negative side effects at all?
> Or are these bits just not hooked up? If this is no problem, I assume this
> patch is not needed at all.

I just tried it on i.MX8MM, read/write to the reserved registers looks like OK,
so this patch can be ignored, although accessing reserved registers is NOT good,
but the user should have correct settings in DT, there will be no access for these
reserved registers.

So, let's just ignore this patch, adding the fallback compatible should be good for
i.MX8MM to reuse this driver.

Thanks,
Anson 

> 
> The correct way to protect against DT writers hooking up the non- existing
> reset lines would be to replace rcdev.of_xlate with a version that returns -
> EINVAL for them on i.MX8MM. Also in that case I'd check the reset-controller
> compatible, not the machine compatible.
> 
> > +		switch (id) {
> > +		case IMX8MQ_RESET_HDMI_PHY_APB_RESET:
> > +		case IMX8MQ_RESET_PCIEPHY2: /* fallthrough */
> > +		case IMX8MQ_RESET_PCIEPHY2_PERST: /* fallthrough */
> > +		case IMX8MQ_RESET_PCIE2_CTRL_APPS_EN: /* fallthrough
> */
> > +		case IMX8MQ_RESET_PCIE2_CTRL_APPS_TURNOFF: /*
> fallthrough */
> > +		case IMX8MQ_RESET_MIPI_CSI1_CORE_RESET: /* fallthrough
> */
> > +		case IMX8MQ_RESET_MIPI_CSI1_PHY_REF_RESET: /*
> fallthrough */
> > +		case IMX8MQ_RESET_MIPI_CSI1_ESC_RESET: /* fallthrough
> */
> > +		case IMX8MQ_RESET_MIPI_CSI2_CORE_RESET: /* fallthrough
> */
> > +		case IMX8MQ_RESET_MIPI_CSI2_PHY_REF_RESET: /*
> fallthrough */
> > +		case IMX8MQ_RESET_MIPI_CSI2_ESC_RESET: /* fallthrough
> */
> > +		case IMX8MQ_RESET_DDRC2_PHY_RESET: /* fallthrough */
> > +		case IMX8MQ_RESET_DDRC2_CORE_RESET: /* fallthrough */
> > +		case IMX8MQ_RESET_DDRC2_PRST: /* fallthrough */
> 
> I think it would make sense to add IMX8MM_RESET_* defines for all but
> these, to avoid confusion when reading the imx8mm.dtsi
> 
> regards
> Philipp
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
