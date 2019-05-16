Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1FA20420
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 13:10:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kw+DUY0PKwxgHCeHcTYZeizor60QVP+Jek+NPIb0wYg=; b=F0itH7vaGfaMzX
	XtEObmiZOURihYA8xKpbDxtpIZrclNmXvJbTng3sxGV+jaoDgyOihL39wChoL2t51oBW3gk6HX7jz
	M/Jg+3+Xi7Njl/Hp6GDFPGOgd+H5FRxEXzqxpUIMFqB8venCyC8yeuu5/auQovH594SQoRn+oXwLC
	+YZS6HJ6t3sErcaNnKE8c9I6mRWqIKUdRWZozw2sLKXa4e5bP5c/SGVrcGWL2iinCM+uWhPYcU+H5
	H/cUyZXoI/AjtixT7SE83Q4SHLQzB39xSI+X+Xd8HdEkn55Doj2ZCOZJ3PVW2A/AjXT1ogIZqgQtH
	Q59LhiuOZhuyq8mqm+xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hREGl-0004aL-88; Thu, 16 May 2019 11:09:51 +0000
Received: from mail-eopbgr130078.outbound.protection.outlook.com
 ([40.107.13.78] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hREGT-0004O6-AN
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 11:09:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Ha2NsyKgYgQ1gbTS+hR677Dg5idbqKDTX/U4xyPZ/0=;
 b=sLM1xDEbdsm3cmv+RDMXenUNENxj4khcvTX0+X1v+84MQQRxpXKEB/Jjkph/lcXO+yMP7QhHl8QpdeZPyP9W+Q9y1H6TYRDzlfFnStgyM7dsf53rD06c05u+0U7l2D6yVou/6vxY1DxiplKqlAH6bn24W9SCIDStdBCTrezXNYQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3945.eurprd04.prod.outlook.com (52.134.65.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Thu, 16 May 2019 11:09:29 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 11:09:29 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: RE: [PATCH V3 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH V3 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVC5bqk1P5MqRzRU2gqcSUyb18B6ZtleYw
Date: Thu, 16 May 2019 11:09:29 +0000
Message-ID: <DB3PR0402MB3916C57857BC1064FD4295B5F50A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1557976777-8304-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB6434E01AD0A18405A9E0DDF8EE0A0@AM0PR04MB6434.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB6434E01AD0A18405A9E0DDF8EE0A0@AM0PR04MB6434.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cecb6db5-c70a-48c0-b9b1-08d6d9eef749
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3945; 
x-ms-traffictypediagnostic: DB3PR0402MB3945:
x-microsoft-antispam-prvs: <DB3PR0402MB394513EC19918715390266D7F50A0@DB3PR0402MB3945.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(396003)(376002)(39860400002)(366004)(13464003)(189003)(199004)(53936002)(6436002)(2906002)(2501003)(9686003)(110136005)(54906003)(14454004)(316002)(7416002)(99286004)(5660300002)(229853002)(74316002)(86362001)(478600001)(33656002)(6246003)(55016002)(8936002)(102836004)(446003)(81156014)(8676002)(476003)(66066001)(81166006)(64756008)(66556008)(66446008)(68736007)(76116006)(11346002)(66476007)(305945005)(7736002)(76176011)(26005)(7696005)(486006)(71190400001)(71200400001)(186003)(3846002)(6116002)(73956011)(52536014)(66946007)(44832011)(256004)(25786009)(4326008)(6506007)(53546011)(15866825006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3945;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Zt29hRZUbDamH7107o/fRAPBcyStR8659eEDhj/i94mmd7PCaklQVtWPJTfJjivmTuzAy6KGQW1j56Uh3hv1R2WhMlfCK++FnpmRIRTUJCfIHx2oSYrZgdvYENbMJPTQ36TxDIxptE+s4Ut+HFawkkkZ6JwJYR96Tu0QFXTLRm1IJyFQjhS2yAAbOwE1GexnjnjNn6hJVAsKnM9s97y14aLlcjoRgSTM/B+LWxbwx+ykPg2M7Y4xvZ4lD7szKK7fRpGe994hhLOJAFFqdnHbzbQ2CHjFogizwpgL9HU8Sb92Sj3PMV+uaQAFUcLPUI/fviSLQh1yZMi2VXSiUjfiDcJa87nKb4bhOOU87TsE9pkKqyyUWJ9HIdmsbbpCt1tYeLuO6zco7COE337ubdgCl3tF66qHYWDWYgwtSl9W/ag=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cecb6db5-c70a-48c0-b9b1-08d6d9eef749
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 11:09:29.1980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3945
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_040933_358547_761F71D1 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 Abel Vesa <abel.vesa@nxp.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "agross@kernel.org" <agross@kernel.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>, "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh@kernel.org" <robh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Leonard

> -----Original Message-----
> From: Leonard Crestez
> Sent: Thursday, May 16, 2019 6:07 PM
> To: Anson Huang <anson.huang@nxp.com>; shawnguo@kernel.org
> Cc: catalin.marinas@arm.com; will.deacon@arm.com;
> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> agross@kernel.org; maxime.ripard@bootlin.com; olof@lixom.net;
> horms+renesas@verge.net.au; jagan@amarulasolutions.com;
> bjorn.andersson@linaro.org; marc.w.gonzalez@free.fr;
> dinguyen@kernel.org; enric.balletbo@collabora.com;
> l.stach@pengutronix.de; Aisheng Dong <aisheng.dong@nxp.com>; Abel Vesa
> <abel.vesa@nxp.com>; robh@kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; dl-linux-imx
> <linux-imx@nxp.com>
> Subject: Re: [PATCH V3 1/2] soc: imx: Add SCU SoC info driver support
> 
> On 16.05.2019 06:24, Anson Huang wrote:
> > Add i.MX SCU SoC info driver to support i.MX8QXP SoC, introduce driver
> > dependency into Kconfig as CONFIG_IMX_SCU must be selected to support
> > i.MX SCU SoC driver, also need to use platform driver model to make
> > sure IMX_SCU driver is probed before i.MX SCU SoC driver.
> 
> > +#define imx_scu_revision(soc_rev) \
> > +	soc_rev ? \
> > +	kasprintf(GFP_KERNEL, "%d.%d", (soc_rev >> 4) & 0xf,  soc_rev &
> 0xf) : \
> > +	"unknown"
> 
> > +	id = of_match_node(imx_scu_soc_match, pdev->dev.of_node);
> > +	data = id->data;
> > +	if (data) {
> > +		soc_dev_attr->soc_id = data->name;
> > +		if (data->soc_revision)
> > +			soc_rev = data->soc_revision();
> > +	}
> > +
> > +	soc_dev_attr->revision = imx_scu_revision(soc_rev);
> > +	if (!soc_dev_attr->revision)
> > +		return -ENODEV;
> 
> The imx_scu_revision macro returns either kasprintf or "unknown", never
> NULL. So it's not clear what this return -ENODEV does exactly.

The kasprintf could return NULL though.

> 
> It makes more sense to return -ENODEV if get_soc_revision fails, so maybe
> check "soc_rev != 0" instead?
> 
> If you really want to check the kasprintf result then you should return -
> ENOMEM for it. It would be clearer if you dropped the imx_scu_revision
> revision macro and open-coded instead.

This makes more sense, I think maybe we can remove the imx_scu_revision macro,
just use below code instead, and return -ENOMEM if kasprintf returns NULL.

113         soc_dev_attr->revision = soc_rev ? kasprintf(GFP_KERNEL,
114                                                      "%d.%d",
115                                                      (soc_rev >> 4) & 0xf,
116                                                      soc_rev & 0xf) : "unknown";
117         if (!soc_dev_attr->revision)
118                 return -ENOMEM;

BTW, the soc-imx8.c looks like also having same issue, do you think we should fix it
as well?

Anson

> 
> --
> Regards,
> Leonard
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
