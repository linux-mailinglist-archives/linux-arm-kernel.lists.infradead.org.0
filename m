Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 978184FB91
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 14:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2j8UmDMAI43qufmMabSYoHbGcv9iaxzfiX0n7kF1/Q=; b=MQtWb1RD2Gsfni
	S3BsyKRC3YYDwyyjZjBhu88TW1kCPbHHbcQyGsHj7scJ1a1jL9mujoV1lO84+1xUNs0SdV9F809vA
	N/CDjIex+qcppchsu7VWaR1TL4avKybHHrJvVJxuP2J1MQvdfQzEud8YO7hZMYnoYOrnB8aW490Ih
	hYITnGdX/7B4ULgWKwsUZfCYf7twGHWnxPzuPPAS99rdmc437vHjvsn13AdHHhlFuiNbvY5GU4ssp
	gLwTFWCYuRzyyydz0s8LH6RJznQfXUtY6m3x8ig9BoZX5/e5AZAZZyeyK/ob5Jnsu5l44U1jbM12b
	GfJRW5TmnplxpmSogbsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf1Y0-0002iF-Da; Sun, 23 Jun 2019 12:24:40 +0000
Received: from mail-eopbgr70047.outbound.protection.outlook.com ([40.107.7.47]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf1Xl-0002hl-J9
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 12:24:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nbPrApaPO1J8+RuUsUfkGpPn4x1KcDxkk/WnZ3tI+Qk=;
 b=lK04Va+zi6g5aM+LcTScYPPrR71zuUu0/yRrtmnfpe+lT6/AW2dfDRst8nFFKPyJJcIAp4kXv1ylBAVRkpRy02rGYeVBq7iDxQxLFjEzmnXCmTET/ZtRvxJhFyYFgyXYcl8bXn7H6vhCc+93S0s4jXVRBSXC0YVSRWK0hH6wUO0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3786.eurprd04.prod.outlook.com (52.134.71.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Sun, 23 Jun 2019 12:24:15 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2008.014; Sun, 23 Jun 2019
 12:24:15 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: RE: [PATCH V2 2/3] clocksource: imx-sysctr: Add of_clk skip option
Thread-Topic: [PATCH V2 2/3] clocksource: imx-sysctr: Add of_clk skip option
Thread-Index: AQHVKbuWNWrHQhlrtkONmwA387ffcaapJ8uAgAABY9A=
Date: Sun, 23 Jun 2019 12:24:15 +0000
Message-ID: <DB3PR0402MB3916EF5948655AE1373E0AF9F5E10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190623120434.19556-1-Anson.Huang@nxp.com>
 <20190623120434.19556-2-Anson.Huang@nxp.com>
 <alpine.DEB.2.21.1906231413110.32342@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1906231413110.32342@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a28c3474-ce7a-4895-6e18-08d6f7d5b52b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3786; 
x-ms-traffictypediagnostic: DB3PR0402MB3786:
x-microsoft-antispam-prvs: <DB3PR0402MB378663CF37E034B4375B38D7F5E10@DB3PR0402MB3786.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00770C4423
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(39860400002)(346002)(396003)(366004)(54534003)(189003)(199004)(186003)(102836004)(229853002)(4326008)(86362001)(5660300002)(71200400001)(6916009)(26005)(478600001)(71190400001)(25786009)(73956011)(52536014)(66446008)(66556008)(14454004)(7416002)(66476007)(66946007)(76116006)(64756008)(81166006)(33656002)(7696005)(68736007)(81156014)(6506007)(486006)(44832011)(9686003)(476003)(256004)(6116002)(14444005)(11346002)(446003)(305945005)(74316002)(7736002)(3846002)(53936002)(2906002)(8936002)(316002)(99286004)(6246003)(55016002)(76176011)(66066001)(54906003)(8676002)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3786;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NR3WsAjgzO64Z0QYiwy3JYp3jichEB0d6vK1Wk3jRxIo3L4VGQIMoFlsBQLV5EhHRzsVJ2jSe6j9vlShfFkcPZoJw4rQtLkgXZtYRA0luw2v+aypP9COhnY3aymdhHiUhxh3wNzkEvVZDmk2/x7GTpVx0FwBOrABnhx3jbpbQtYsKajaWf3FeMK1chBQSvBewam+gXnyPrybISAi8pci1ZkBs4HwxcLvifzg4RlWSkkPref2wphZ88omnqWB2kepwcmDBOuVrW7qEklFp6PDC6bCUE32lPbqxLYbdMXlH9jTSWm8Fp0GWTLrbyrIu7YePA5B1zNWw9sDns/aJJTShD48EUY+lK4O9klNMx6UaKLOuRfF0U8TfrSwwnuqW4PJOIFr4RXywbT91qCbvA9/okDBG2KPrcwgjKHh7mRhBjs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a28c3474-ce7a-4895-6e18-08d6f7d5b52b
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2019 12:24:15.7981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3786
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_052425_701773_4B65DB76 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.47 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "angus@akkea.ca" <angus@akkea.ca>, Abel Vesa <abel.vesa@nxp.com>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Thomas

> On Sun, 23 Jun 2019, Anson.Huang@nxp.com wrote:
> 
> Again the short summary could be more informative. Instead of 'Add foo'
> you could say:
> 
>     .....: Make timer work with platform driver model
> 
> That sums up the real meat of the patch. 'Add some option' is pretty
> uninformative.

Makes sense.

> 
> > On some i.MX8M platforms, clock driver uses platform driver model and
> > it is NOT ready during timer initialization phase, the clock
> > operations will fail and system counter driver will fail too. As all
> > the i.MX8M platforms' system counter clock are from OSC which is
> > always enabled, so it is no need to enable clock for system counter
> > driver, the ONLY thing is to pass clock frequence to driver.
> >
> > This patch adds an option of skipping of_clk operation for system
> > counter driver, an optional property "clock-frequency"
> > is introduced to pass the frequency value to system counter driver and
> > indicate driver to skip of_clk operations.
> 
> The comments to the changelog of patch 1 apply here as well :)
> 
> Hint: 'This patch'

Oops...did NOT notice that, I will resend the V2 patch series as they are actually
similar issues.

Thanks,
Anson

> 
> Thanks,
> 
> 	tglx
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
