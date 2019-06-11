Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCA43C7F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:01:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rSyBUaEfSX2fM9vxzaMYn1iKhSZk7vX7ylRoZhfStlw=; b=hhqgb17j1v99Ct
	bLtLbEUMxuZ5mPAxebSCCy1+Tl/ZfU7OpjYiDfDek2NkXt7CY+hTWYh95+74xVIMpcYEZj5v6Nmsr
	dJcQIdfxY8hKWxkdB+3TU1mFyIH8hFF2rk8+hXdN9ltJ0AksezJ+n96jUuDyWvZo3qoxlhY6+UuLL
	rmWg8ydUfY+LPu3nEjoJQu1GIyAg9VGjIlGhXrEabrS5d6vjeTzFDxZdIv+JujATzG00cvAdxi6Sa
	tCaikjsHfUy21rTJGKTxfGM06eGp5JPz3NOt8q2KnJbXH53KNT0jGzthcQiEzhrsORH+LKeYsL+u4
	1TqAYxLnSSAb8NOa2s7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadaK-00007h-Ox; Tue, 11 Jun 2019 10:00:56 +0000
Received: from mail-eopbgr40058.outbound.protection.outlook.com ([40.107.4.58]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hada7-00005y-C6
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:00:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aKCs/l8ReRm7UvPlza56Cg9JjVoAdj9dZGcz0xpJ7D8=;
 b=fEkLdMkAnqv85SCNscXyrEcC4T1WusPf5l1aD2KER8YI9g7AZ+JkbH4d8Qn3l1OK4ghxPl9uKR9BgQ+RzHGk8rulZ7n6lbixmwxwiqwBkgL9+/mWABPExeu+i/Cs3YcxoYP8pkM4GAKLDKGgugaO/qDp6fEA87IJWcVVOdCdwpI=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4689.eurprd04.prod.outlook.com (20.176.214.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Tue, 11 Jun 2019 10:00:36 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::11e1:3bb9:156b:a3e4%3]) with mapi id 15.20.1965.017; Tue, 11 Jun 2019
 10:00:36 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Linus Walleij <linus.walleij@linaro.org>, Anson Huang
 <anson.huang@nxp.com>, Rob Herring <robh+dt@kernel.org>
Subject: RE: [PATCH 1/3] dt-bindings: imx: Add pinctrl binding doc for i.MX8MN
Thread-Topic: [PATCH 1/3] dt-bindings: imx: Add pinctrl binding doc for i.MX8MN
Thread-Index: AQHVFpRumCyIBeRsW0uQNvKpc4bmq6aQvAOAgAWFwOA=
Date: Tue, 11 Jun 2019 10:00:36 +0000
Message-ID: <AM0PR04MB421171336B9206D02FF6514080ED0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190530030546.9224-1-Anson.Huang@nxp.com>
 <CACRpkdY-35o378Ka+4bgeSPjmq6P8DM872sgTxq2X3dDP9XZHQ@mail.gmail.com>
In-Reply-To: <CACRpkdY-35o378Ka+4bgeSPjmq6P8DM872sgTxq2X3dDP9XZHQ@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7c088463-e407-42fa-55c7-08d6ee53a6b3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4689; 
x-ms-traffictypediagnostic: AM0PR04MB4689:
x-microsoft-antispam-prvs: <AM0PR04MB4689D219E6146588739A2F3B80ED0@AM0PR04MB4689.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 006546F32A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(136003)(366004)(39860400002)(189003)(199004)(486006)(52536014)(71200400001)(71190400001)(68736007)(25786009)(446003)(6436002)(11346002)(476003)(229853002)(53936002)(316002)(55016002)(54906003)(9686003)(44832011)(110136005)(256004)(3846002)(5660300002)(6116002)(7416002)(26005)(478600001)(14454004)(4326008)(186003)(53546011)(33656002)(6506007)(6246003)(2906002)(305945005)(73956011)(66946007)(81156014)(8676002)(66476007)(64756008)(66446008)(8936002)(86362001)(66556008)(76116006)(74316002)(7696005)(66066001)(81166006)(76176011)(99286004)(102836004)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4689;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nmod2sVtLKZTvzkJB/cXomYqiaiDfhS2NSeqH+ZvQbuuEiwmu3W8IHUFaH/zt0wZcZpIEKF2l0ALwVrvFUEGTOgtvOo71vnZZLgt6wVeOW2AbtAGX/E//cWgHlXfAUr2izabkR7YW6BhOudK0gItqEt4p7bmwaIrRUv+vj6ja+ju3BOejnFYXl91KmExKPzLtFvHd47gUdzrebDzCBYJLCop+PhWiq/E5/5ZDCLr6INxcO0T3OonBftrsEKCTlwQhXMpvEPH2vcLtmC5odANpH+5tQ5T4x3VKULGlKQnrKfbc8S412gta4+OEMW55YF5MoLYtO8JxoyRUSvHHvXnjZCoKC1c8qgPeiXo03r3egDMwC71hLZ+z3OqIbimerM5pt/D4Ffm8o/8p6ZYICaI//cnD1FEQ+G/bxkdWnnFVEY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c088463-e407-42fa-55c7-08d6ee53a6b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 10:00:36.4311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4689
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_030043_416541_606A61BF 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.58 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Sascha Hauer <kernel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Olof Johansson <olof@lixom.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Linus Walleij [mailto:linus.walleij@linaro.org]
> Sent: Saturday, June 8, 2019 5:04 AM
> 
> On Thu, May 30, 2019 at 5:04 AM <Anson.Huang@nxp.com> wrote:
> 
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > Add binding doc for i.MX8MN pinctrl driver.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> Looks mostly OK to me, but I'd like the maintainers to review, so Dong et al
> please look at this!
> 
> > +Required properties:
> > +- compatible: "fsl,imx8mn-iomuxc"
> 
> So should this not be "nxp,imx8mn-iomuxc"
> or "nxp,freescale-imx8mn-iomuxc" or something these days? The vendor name
> is nxp is it not.
> 
> I was complaining to the DT maintainers at one point that these companies
> seem to buy each other left and right so this vendor nomenclature is dubious,
> but I guess at least it should reflect the vendor that produced the chip or
> something.
> 
> If everyone is happy with "fsl,*" I will not complain though.
> (i.e. if the maintainers ACK it.)

We preferred to keep "fsl,*" for Freescale i.MX product line according to last discussion.
And we already did this way for most i.MX devices.

So:
Acked-by: Dong Aisheng <aisheng.dong@nxp.com>

(Rob, please let us know if you have different idea)

Regards
Dong Aisheng

> 
> Yours,
> Linus Walleij
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
