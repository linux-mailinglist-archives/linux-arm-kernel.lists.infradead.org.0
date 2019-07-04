Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E3C5F2F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 08:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jysSQKs+sEXcFhA45LxOQhwCVIFkWYXUcSd+g8VPdWQ=; b=UlEcKRTDSNvSks
	ZwQDcNOve/dZotH5R51TWvLpzSBL1ADsDJ1gZRj3iXJj5fxUmVPNy37gvHYRCRcaMgzz9yHLFXOt8
	qyZrLhi7pPO1CLIMS2FQSxu+F1ADIBEr13eUAZ9JGfEphLq/WmRZJhBF2XSIO4Hif3DvpfchSRFdL
	4lmresCTpElCukom/pEV5ezs9PLSdKCsESiJ0IkkuRY+Rb4KxGYcEANCXQtgSW/C6ZhpW0KCqESNC
	nsbM6flnuvWqDSgKAt7sHJE4zFHrlj+05IcpkY8iYwC7vPIE+UQvIuJhARWwSJsWTw9BS3YUwKeC3
	glKdao3D/VNEps9S8Bog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hivM6-0000Z0-Bs; Thu, 04 Jul 2019 06:36:30 +0000
Received: from mail-eopbgr40048.outbound.protection.outlook.com ([40.107.4.48]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hivLp-0000Xx-RJ
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 06:36:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IBb9RFssI/Acv7+5IhX9BWLMYVKCktj6uFKf7yA1o3M=;
 b=ASQoIMAw59BMiguqx4m14R3KX2qsId5MiiW/rXNSfDhef3e9q6glhb4xzo8P6izH97rP1YBAFcVR5ehJVC/j8BrW3qISrq+oCIa0KCH7cr1DkGxofKkCbzIdBjepG/Br0Uzr1Ed4pqTWg6m6qhv/2MTvv32MT5GuL9dPq2Typzs=
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com (52.133.46.11) by
 AM0PR0402MB3810.eurprd04.prod.outlook.com (52.133.39.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Thu, 4 Jul 2019 06:36:09 +0000
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::dd66:8e13:93f0:65eb]) by AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::dd66:8e13:93f0:65eb%7]) with mapi id 15.20.2032.019; Thu, 4 Jul 2019
 06:36:09 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 Richard Zhu <hongxing.zhu@nxp.com>
Subject: [RFC 0/2] arm64: dts: add the rpmsg support on imx8mq and imx8qxp
Thread-Topic: [RFC 0/2] arm64: dts: add the rpmsg support on imx8mq and imx8qxp
Thread-Index: AQHVMjLDpwUj7sudBUeXpPGnCF3lHQ==
Date: Thu, 4 Jul 2019 06:36:08 +0000
Message-ID: <1562220905-13875-1-git-send-email-hongxing.zhu@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0016.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::28) To AM0PR0402MB3570.eurprd04.prod.outlook.com
 (2603:10a6:208:1c::11)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hongxing.zhu@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b230900b-9da6-46fd-9f9a-08d70049e5e0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR0402MB3810; 
x-ms-traffictypediagnostic: AM0PR0402MB3810:
x-microsoft-antispam-prvs: <AM0PR0402MB38101A50CBD0D67720C6DD6A8CFA0@AM0PR0402MB3810.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0088C92887
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(376002)(396003)(346002)(189003)(199004)(316002)(6116002)(3846002)(110136005)(7736002)(66066001)(186003)(50226002)(2501003)(305945005)(478600001)(26005)(14444005)(256004)(25786009)(14454004)(2906002)(4326008)(2616005)(476003)(486006)(386003)(6506007)(8936002)(102836004)(7049001)(52116002)(6436002)(99286004)(8676002)(71200400001)(71190400001)(5660300002)(4744005)(81166006)(81156014)(36756003)(66556008)(64756008)(66476007)(66446008)(68736007)(86362001)(73956011)(66946007)(6486002)(6512007)(53936002)(2201001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3810;
 H:AM0PR0402MB3570.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: y0pPb7p2Cn7io3i9kvHNyc9KVEzDUuhpyPe4/fKglmFR6Df8BIZSfbiTEZNkx0ddz9voswGzhgtjx7eIAF2W70LRxzQFS+fn9FEmCLqr1gPM7SQ6n/sz2V5eyNYHWjy2O/u8Szg6TTs7zMMUM2SzD6s6WlFwgaqWdC9tBEXH03dvLjQYJfRbydhagRWzY0VmDFzYh/iwESuPXBBA7Jrw749e/S96wbrDqWbpL764gVyIIEuYGe1OnEA56PyrQMDC+L14m0VoQ6ewczXXcCzR7SeZ084hAb/K45JK2hULh1pZofCQzE4pKdgarR6N/EmvLriDiOghouHMRYRwBo+nuqHr73rzSa0Wpg8TBSviMykrBDNLPtu50sxsY09KEXA7q/RnoS9iNh8z9t9JsDg1dwF/IeEdoDVr5CjtdJirwlQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b230900b-9da6-46fd-9f9a-08d70049e5e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2019 06:36:09.0307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hongxing.zhu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3810
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_233613_883832_6119FAEF 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[RFC 1/2] arm64: dts: imx8mq: add the rpmsg support
[RFC 2/2] arm64: dts: imx8qxp: add the rpmsg support

arch/arm64/boot/dts/freescale/Makefile             |  2 +-
arch/arm64/boot/dts/freescale/imx8mq-evk-rpmsg.dts | 67 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
arch/arm64/boot/dts/freescale/imx8mq.dtsi          | 23 +++++++++++++++++++++++
arch/arm64/boot/dts/freescale/imx8qxp-mek.dts      | 36 ++++++++++++++++++++++++++++++++++++
arch/arm64/boot/dts/freescale/imx8qxp.dtsi         | 23 +++++++++++++++++++++++
5 files changed, 150 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
