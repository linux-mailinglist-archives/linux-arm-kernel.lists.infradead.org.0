Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DD9203D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 12:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1XXBc8HTfHv8pJ02Yim1X4+AEezvUmVBBfryFwy4iTE=; b=qEfxeVtnr0nq0W
	rA0JELvgFYfMEEqgEYboxc+CSII4LizktHFKpRcLJdNk+l0mMl7Yyqgfgju+maVeQAArGrCprfo02
	cFSfDkZxhtMPzGp6TDiIxOekFmhzp4yHJE+Cs9USAmW9oRE5fQcZYgCTmRQaIlgurqHy27Em9I+yK
	x/rRW50LodpdG53B0ugJCw68EAjkwFEA8EEncvZ10Hb509tUZWhkXbaO+rrjTWflWEWNO1ZazyiPy
	wWD/KnBT2SH2tfKm2vsVQShovypeXT30SsrSwcr/OufgZo7rL2qcsav4l6zcW6gv8WBmLXj56/DFJ
	SBCcW557zUoi5yMRCuZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDuQ-0004zu-Ms; Thu, 16 May 2019 10:46:46 +0000
Received: from mail-am5eur03on0615.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::615]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDuG-0004tP-8e
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 10:46:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BZ0NLhMKHR9t/W7fvUSdnYSAwn4/rOJk47JWqBmfgZk=;
 b=oBTNDtQ+cT/O7lslbH8XACk9RJ8MKqAlJuC32b/DBc2hHJSsuxuVoYzB1jxMqj8yBBBTh9B+sUMkM79rx6ghWAH+7y2suaEHY+1BMX5arFHg1o1OXNjuua5Tmfzmv4SaIPYzsTdeF6u7rGeNlfUD85rT2DmaaUOpQkcx7DQOmqI=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3787.eurprd04.prod.outlook.com (52.134.73.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Thu, 16 May 2019 10:46:33 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 10:46:33 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>, "edubezval@gmail.com"
 <edubezval@gmail.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, "ulf.hansson@linaro.org"
 <ulf.hansson@linaro.org>, Daniel Baluta <daniel.baluta@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, "heiko@sntech.de" <heiko@sntech.de>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
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
Thread-Index: AQHU9AOc8iXKmYQeMUm4+FbUnbYclKY/+ukAgABUQSCALXAcAIAAAa8g
Date: Thu, 16 May 2019 10:46:33 +0000
Message-ID: <DB3PR0402MB3916ABB2E6B07C3AE8AAA9FAF50A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1555384609-7030-1-git-send-email-Anson.Huang@nxp.com>
 <1555384609-7030-3-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB421105BBF1B9A90B255D1F7A80250@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <DB3PR0402MB39163877C25E5BE7E10C96B7F5250@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <AM0PR04MB4211EF0D257E502C3BF917D0800A0@AM0PR04MB4211.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4211EF0D257E502C3BF917D0800A0@AM0PR04MB4211.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dd1097cb-8905-4e48-95c3-08d6d9ebc30d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3787; 
x-ms-traffictypediagnostic: DB3PR0402MB3787:
x-microsoft-antispam-prvs: <DB3PR0402MB3787512B9F92D6356D969F2FF50A0@DB3PR0402MB3787.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(366004)(396003)(39860400002)(136003)(13464003)(189003)(199004)(86362001)(52536014)(186003)(8676002)(66476007)(64756008)(66446008)(305945005)(229853002)(71190400001)(71200400001)(2201001)(76116006)(81166006)(66946007)(73956011)(66556008)(2501003)(14454004)(66066001)(6436002)(81156014)(74316002)(4326008)(7736002)(33656002)(486006)(316002)(3846002)(6116002)(110136005)(53936002)(53546011)(8936002)(44832011)(6506007)(102836004)(7416002)(478600001)(68736007)(76176011)(6246003)(26005)(55016002)(5660300002)(9686003)(256004)(25786009)(2906002)(446003)(11346002)(476003)(7696005)(99286004)(921003)(1121003)(15866825006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3787;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SRKf5YGjpmOXU2F+3ANWF6q9un1oLxp0qzduqnQeb2Lkxt5D7A5Uu/eTmHCyHv/uVwXWjY1Dkzjhl3futH9JK2QiVL7WQMr1f0902mg7+ORlsOh+0cAvi4ROWaYDaO23XMHv9lbZYGqHxFb/iHbWOQqdhCPczOHxsdPxXw/A582cOdHaMvdjm3H9DBB34D/4GYC7yWrXPe1yuhsaGNBM6POrBaJtxvRiGLk8vvfuHBzVr36sBSKLqm1HwkCV5E+trvxt8iRdYIJCAXxErdCHe6gqHfU1kRVyWvfCKHlZbZiZtvUiyAx0RRS/Lm3RvNcML5W6b5Uptfte70lYkOj35gas6CJnRT9UWwVHTyqJ9mVniCyrMfS5jHmGw5dxvQ1lhJcyHKsdHR0BJ0Le45uih220nHqV7T0S6WoGN12bXiY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd1097cb-8905-4e48-95c3-08d6d9ebc30d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 10:46:33.0721 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3787
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_034636_323634_3D7EF94C 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:615 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Aisheng Dong
> Sent: Thursday, May 16, 2019 6:40 PM
> To: Anson Huang <anson.huang@nxp.com>; robh+dt@kernel.org;
> mark.rutland@arm.com; shawnguo@kernel.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; catalin.marinas@arm.com;
> will.deacon@arm.com; rui.zhang@intel.com; edubezval@gmail.com;
> daniel.lezcano@linaro.org; ulf.hansson@linaro.org; Daniel Baluta
> <daniel.baluta@nxp.com>; Peng Fan <peng.fan@nxp.com>;
> heiko@sntech.de; horms+renesas@verge.net.au; agross@kernel.org;
> olof@lixom.net; bjorn.andersson@linaro.org; jagan@amarulasolutions.com;
> enric.balletbo@collabora.com; marc.w.gonzalez@free.fr;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-pm@vger.kernel.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: RE: [PATCH V12 3/5] thermal: imx_sc: add i.MX system controller
> thermal support
> 
> [...]
> 
> > > > +		if (!sensor)
> > > > +			return -ENOMEM;
> > > > +
> > > > +		ret = thermal_zone_of_get_sensor_id(child,
> > > > +						    &sensor_specs,
> > >
> > > It looks a bit strange why need sensor_specs as you even did not use it.
> >
> > It is because parsing the phandle arguments needs it, such as the
> > thermal_zone_of_sensor_register() function needs this pointer to be
> > passed back to check the elements are valid or NOT, so the API does
> > NOT define it as local structure. The API NOT just return the sensor
> > id, but also the of_phandle_args address, although we do NOT need it at all
> here.
> 
> The main problem is this one introduced in 2/5 which needs get ack from
> maintainer.
> For me, I would suggest to make sensor_specs transparent to user if it's
> really not needed by users.
> 
> Please try to make it either optional or hide to core users as well.
> And I guess the later one is doable after a glance at the core code.

OK, I will hide it to user if no other different comments.

Anson.

> 
> Regards
> Dong Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
