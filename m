Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CAE1B020
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 08:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sQjo00poCnmWFsxQCOXNXibZ7xcq5IeJsucfIqEpAxU=; b=qYCXGqenPbxOR6
	xp/HhKKPOTOS83cHZWGielQRuAc8vZFWenCu385fzk4CMaOVmsaqabjVBYurXZla9IYWhYh16FH9e
	XZMJcYVMBeAoP4+hLGkuHsazXrnw0JnOGqkerAcpXGKAjI4aSShqYjSqwmhz9SL5SiJha0gwxO9Ks
	ePO0FyeN4WxshZ0PAaO3ERTEdv5Aj5x1V2QCzLcQjxje3neEWJcqDE87gQooDToE0EFnKkr35ovt1
	06zGmHCX3Yw0/Y4va0PP0rEws3Z1pY7vMOQYqFxGcaVpnnx6u+0VsI+gtJGgKoQTBZAoSYmCgkRZj
	8lCPv1NgZj8REhvd/V4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ439-0002Vf-1N; Mon, 13 May 2019 06:02:59 +0000
Received: from mail-eopbgr130078.outbound.protection.outlook.com
 ([40.107.13.78] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ431-0002Uf-Is
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 06:02:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MdHCYk/RI22Zk3ve9kuwK4A23FO3k67diWtQm1+OQJQ=;
 b=NJT6yPSDO7xh+GKdkZsfwzXbKpyoKaOcVejXDe4UzG6ITqlFjlKhlCI1rZ/WrQ2xa3D9J14TcMQnw1trbjIpSomjDVaBLGAtvuoFJTwCww0Tr8NaYxFoTLqoj4NZDS5uVp8NqwwCxfwj6w7mVWNnirmXDZqowCQEgU5OIFY3t7s=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2654.eurprd04.prod.outlook.com (10.168.66.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Mon, 13 May 2019 06:02:46 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::5e3:7122:7d0e:7fb7]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::5e3:7122:7d0e:7fb7%3]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 06:02:46 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Wolfgang Grandegger <wg@grandegger.com>, Marc Kleine-Budde
 <mkl@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH 0/2] arm64: dts: fsl: add flexcan nodes in layerscape SOCs
Thread-Topic: [PATCH 0/2] arm64: dts: fsl: add flexcan nodes in layerscape SOCs
Thread-Index: AQHVCVF8S3wmHv+gikKSOl+dndrPZg==
Date: Mon, 13 May 2019 06:02:45 +0000
Message-ID: <20190513112612.11036-1-pankaj.bansal@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0096.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:54::36) To VI1PR0401MB2496.eurprd04.prod.outlook.com
 (2603:10a6:800:56::10)
x-mailer: git-send-email 2.17.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [92.120.1.69]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 37541ab6-5d26-4733-6b39-08d6d7689e77
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2654; 
x-ms-traffictypediagnostic: VI1PR0401MB2654:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VI1PR0401MB2654AA2525CAEB474F501F05F10F0@VI1PR0401MB2654.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(39860400002)(136003)(366004)(346002)(199004)(189003)(53936002)(86362001)(316002)(4744005)(386003)(6506007)(1076003)(6486002)(6306002)(6512007)(99286004)(44832011)(5660300002)(8676002)(8936002)(81156014)(68736007)(54906003)(110136005)(81166006)(71200400001)(71190400001)(50226002)(52116002)(2616005)(478600001)(66066001)(73956011)(186003)(476003)(256004)(966005)(66556008)(2906002)(14454004)(66446008)(66946007)(66476007)(486006)(36756003)(64756008)(6636002)(26005)(3846002)(25786009)(6116002)(7736002)(6436002)(305945005)(102836004)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2654;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SZSozUtQzCr8XxEiX21q5FuzvsbRQcqdk5aK/MBwq9kWKELv1txZuO6cXPO/U3eqmKGJsjWLFlylv3ZhfXdgx558ZbtdAp0Z3YW1UwJywEuCBQzuYhNZf0tMbWP9M5WQMqjT33k+Akpl1/hpIJsQD/TRrb8JPDoSCamjN79wgL3xVRRqAviPzxRiZQuQAUrDOyDCmHFhk8/i14a+oQz9UD0QrdPR4TsHNGrqsUHoyZslzN/g4kaz4kMKNP/SXYYXon+nn/qgWUMnAPa9Sf/tyFxOjwPfUlb1vScx6B6DZV7OseRHNc8t/ke0DvFeHPWafs5OKH95fR2xB7TAfAScfB5EpB9A5ev6nUfHA323GjhMPRq9DEWhG2aZePD4ZWhmS/Ad/Yl73D0oCKHgGPqiy/6YKy6ONoRY5uMqyZBMXJ0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37541ab6-5d26-4733-6b39-08d6d7689e77
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 06:02:45.9895 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2654
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_230251_625782_7A48E095 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Pankaj Bansal <pankaj.bansal@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

NXP Layerscape SOCs LX2160A and LS1028A both contain flexcan node capable
of FD mode.

Cc: Varun Sethi <V.Sethi@nxp.com>

Dependencies:
 - https://www.spinics.net/lists/linux-can/msg01562.html

Pankaj Bansal (2):
  arm64: dts: fsl: lx2160a: add flexcan node
  arm64: dts: fsl: ls1028a: add flexcan node

 .../boot/dts/freescale/fsl-ls1028a-qds.dts    | 10 ++++++++-
 .../boot/dts/freescale/fsl-ls1028a-rdb.dts    | 18 ++++++++++++++-
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 22 ++++++++++++++++++-
 .../boot/dts/freescale/fsl-lx2160a-qds.dts    | 10 ++++++++-
 .../boot/dts/freescale/fsl-lx2160a-rdb.dts    | 18 ++++++++++++++-
 .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 20 ++++++++++++++++-
 6 files changed, 92 insertions(+), 6 deletions(-)

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
