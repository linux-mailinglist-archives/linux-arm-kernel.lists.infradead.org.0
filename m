Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D87C178D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 13:50:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hAIzv/4m1LXgc685IPABWwAjxfif+tddPxad5it1OMU=; b=q2Wo/hKXKssK10
	zCbI8HQwBXldmXyurWZlfLGS1vyBEj74kpvwVuYN977MC6mPhq9qXAUhuLOW1ALt9XlNjwxV9vEB5
	BUQNB4U2qz141BBOLiWtC3bxXnOIPexisLYDBKhmTKsB+6aZDZgxRbtpNQc7zhGXpJwUJgApWJLCE
	XOyf9K3vxExDSBA2cu7FsNIIcIqW/5mPoPL903CF/PGvi4GrZMHEFd3SCySENJgnWuRHRHxcDq8Tt
	Jqz0z20/QJPf4TQGdV6RYubUscI/+fPp+lQ8PAmMa5fBpJMeI948EBq1tNbv+FyRaZq+Fd2gWVW7t
	J1/qPlOrj6RYBIG6t8wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOL5H-0007TK-80; Wed, 08 May 2019 11:50:03 +0000
Received: from mail-eopbgr50055.outbound.protection.outlook.com ([40.107.5.55]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOL4U-0006Zb-G8
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 11:49:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1tfYvloir+yRrmJ7bbXzzhF+As7jjb3W+G5yqlLikRk=;
 b=cP2HXhe/aOo005Ak8pZCKpxEqCVlLB3dljfYlFO8vzKH0KjfXd5y+jmBflQa0PKUDKFyEJG1HnxuKGqVd8RZi2WmBb/k2c4rldTrAtglX3GPEtGH4dfMk+2VeVEg3nAllR5etVcnju+V0F8y00tNvO1VCouG7ppHMQBQdmszsg0=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4945.eurprd04.prod.outlook.com (20.176.215.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Wed, 8 May 2019 11:49:06 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 11:49:06 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>
Subject: RE: [PATCH V2 4/4] arm64: dts: imx: add i.MX8QXP ocotp support
Thread-Topic: [PATCH V2 4/4] arm64: dts: imx: add i.MX8QXP ocotp support
Thread-Index: AQHVBUmcX4GOGcsPv0ihTPWps1XlRqZhHPxg
Date: Wed, 8 May 2019 11:49:06 +0000
Message-ID: <AM0PR04MB4211A76AA2D65894CCB0F39A80320@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190508030927.16668-1-peng.fan@nxp.com>
 <20190508030927.16668-4-peng.fan@nxp.com>
In-Reply-To: <20190508030927.16668-4-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 605cb25b-6a5f-438e-8567-08d6d3ab2cc3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4945; 
x-ms-traffictypediagnostic: AM0PR04MB4945:
x-microsoft-antispam-prvs: <AM0PR04MB4945E8A5D780556B4FC275DB80320@AM0PR04MB4945.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:160;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(136003)(366004)(39860400002)(189003)(199004)(2906002)(9686003)(6506007)(2501003)(99286004)(305945005)(102836004)(74316002)(7416002)(186003)(26005)(7736002)(6246003)(55016002)(33656002)(4326008)(25786009)(6436002)(6116002)(3846002)(53936002)(66066001)(68736007)(256004)(229853002)(52536014)(2201001)(8676002)(81156014)(81166006)(71190400001)(71200400001)(66446008)(86362001)(316002)(54906003)(14454004)(110136005)(66946007)(66556008)(64756008)(66476007)(76116006)(73956011)(7696005)(478600001)(76176011)(486006)(476003)(5660300002)(11346002)(446003)(4744005)(8936002)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4945;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: T7GG+qacRiBWo5XQRaZOAKYqknefD0as8osnqaRid6frXZ8L6Wd+z3piKKXGkBVzUo6jPFsPCyNn0Bc1pmsC2QPmkbzDLQ8YoSjfxQv/ObvELwtMIuA8R0GMkpEPZcNceM+oYujD/z7iwPXOma1/pxB3yeDPNJ8o6MbYTtNDpoziU8s4lX0MKSCii0s0Ykbm5vj9pgE7kF5UkufkGaz+zMa9ej43dzfq+8bv7RdQuDjjZ5dI5uZrlstuIu7mKzRZf0F0Ifr/o/2rv7C4zdkVrx1dspsxPDm3IckxfU2XK/HQrqSpQ+SFTMMajfw6+ivHmH7fWeaijf/4+40kIGTCYnpzXbhH+KIxWkPrM8PmXgriTdZ8HdllM8EhZkG5adkShivG95FpJAOlD/hSqCztI6E9lhLW8tU5WXHTVSHnfmc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 605cb25b-6a5f-438e-8567-08d6d3ab2cc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 11:49:06.2653 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4945
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_044915_450126_525BBA10 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan
> Sent: Wednesday, May 8, 2019 10:56 AM
> 
> Add i.MX8QXP ocotp node
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Aisheng Dong <aisheng.dong@nxp.com>
> Cc: Anson Huang <anson.huang@nxp.com>
> Cc: Daniel Baluta <daniel.baluta@nxp.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
