Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD2F20479
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 13:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHj2VjGUfIFIcHNNnwTwbShnWwRzXe/2fXmXqYlyqJE=; b=MsphoOw8dFLMYu
	QVsIniR6S4okucfV3nZ1CJ7NyefOXKzUDOiE2icTZsFoSESzOI3tf1fbnTVz5hFrjBmIgLAP4yfrt
	JyuVF++K0dMa3fW1Y3qssiC509Sd5cO6PKg37CZzmUel3CbbxLyG0C64qslbTZFR5smGarG585Wl9
	bROIuYowHS7eXSCNwf247IZJCOaJYMZ+mXYZVYPixBAwlZz4WdF9zH0aEnDuOjmpi1DzdJcbt6oxW
	siI4oYCSuN0QEjT/ftJDaFvf5a8vjMlVb+SUpkaAvYBH7L400THDScwdqKoh0B72uinCjpgaMieI/
	C9f2yOaOJTbSmjjHVeGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRERu-0002Pa-9n; Thu, 16 May 2019 11:21:22 +0000
Received: from mail-eopbgr80088.outbound.protection.outlook.com ([40.107.8.88]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRERm-0002PE-9D
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 11:21:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=COEE6DCPcCYQJRjDL8XRhvHJvO2p5aylWaLGMYWJ1DA=;
 b=a7eXyNhNHCzMf9lhpNAh2I+VqOWg8+6t7d/1u3BV9TZwn0ysM8ExHW2F31jbaV8KLeusXQqXEX1xQ8CUQtsJgbxeUBWLSQzuNiqRLHtja/GdBqDbzWB0spqM7ny4dQgW+VmZ9+DRxccOUoFry8d28F5pqHDewg0lQEm/cyaLZsQ=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5364.eurprd04.prod.outlook.com (20.178.116.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Thu, 16 May 2019 11:21:10 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 11:21:10 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>
Subject: RE: [PATCH V3 2/4] nvmem: imx: add i.MX8 nvmem driver
Thread-Topic: [PATCH V3 2/4] nvmem: imx: add i.MX8 nvmem driver
Thread-Index: AQHVCvNIwnz8O4Mu9kSxqaYPdjuNSKZtnDNQ
Date: Thu, 16 May 2019 11:21:10 +0000
Message-ID: <AM0PR04MB42117D189498804D5E3A485F800A0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190515080703.19147-1-peng.fan@nxp.com>
 <20190515080703.19147-2-peng.fan@nxp.com>
In-Reply-To: <20190515080703.19147-2-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d05d3a5f-26af-4475-6396-08d6d9f09970
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5364; 
x-ms-traffictypediagnostic: AM0PR04MB5364:
x-microsoft-antispam-prvs: <AM0PR04MB53640D889D20E1E9F7D43DBA800A0@AM0PR04MB5364.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:369;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(136003)(396003)(346002)(376002)(189003)(199004)(66066001)(6506007)(229853002)(68736007)(316002)(476003)(6116002)(86362001)(110136005)(54906003)(2906002)(76116006)(2201001)(14454004)(66946007)(3846002)(66476007)(73956011)(66556008)(102836004)(25786009)(52536014)(9686003)(4326008)(55016002)(2501003)(64756008)(76176011)(6436002)(66446008)(6246003)(305945005)(7736002)(53936002)(71190400001)(71200400001)(11346002)(486006)(44832011)(446003)(33656002)(81156014)(81166006)(186003)(7696005)(99286004)(8676002)(7416002)(26005)(5660300002)(256004)(14444005)(8936002)(4744005)(478600001)(74316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5364;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oyep6M8wnlH6+1xeRADM2qFdBJy80uh1ZC5rpweCnso1a4kUlmI/49mokOY7CN8zovhK192rEYcKoA1AsGVO0CHV7gtRt0vo5YIhFLTgSUDe6fKFbvYwmbG9XCzKOAy/vqTmN+LFUqhWyA0jD20CvZZtZsoDkCUpdJiraSExAvLH4qCwR+IEBqxsCBUFgWUt/6LBdBUTee0QWjBzqvQxtnMXQTK4RgE1HU3jxkB95E5wMxjQQ4AmALXFRaq1OjlgUrDzenjik8JP+TxxWNqn3E85An1hKzND7a0/jFB+PVcdUIikMFBVPjJb53ATycWX5Q/nj+HxJqxAXVUov+0QbcrHq6GCJA+I4FRdyI9NZBpC8U9T157AapzHJwv3QLA1xR3X07sIu1u34LrCQ2Z97KBcpwbv2nNUbekT4jiKH0Q=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d05d3a5f-26af-4475-6396-08d6d9f09970
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 11:21:10.7452 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5364
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_042114_325511_E2392C65 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.88 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan
> Sent: Wednesday, May 15, 2019 3:53 PM
> 
> This patch adds i.MX8 nvmem ocotp driver to access fuse via RPC to i.MX8
> system controller.
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
