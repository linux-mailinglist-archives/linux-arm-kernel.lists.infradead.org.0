Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5D3FEEE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 19:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Kp+D0YweGItCnR1q0wwUiSBQdbCniMia18+hkLmpFM=; b=G1zw8KUco+mee3
	+/D7y3HbL1nk8zLHz2tZ4l9U0Go2fc7J6RJcfoHeNjpQ7vhTOWa+6ZGvtvrtWCAILmOrtOxply8RC
	F60h+Ou3gLi09KqxTJcaNTDaOmShLzwmZ4CaS+FcrArc2cJuGa6SHNOFuPUJcRVDNXTBuOfvKnciv
	/NEMy/Bawm2VNuXNPco4nhFwQDR6v35gV8Xl2yB1b7BWY762T1mRo3TjyFuJMwbXPEW/wgDLEZzKK
	zgOt51ogglMicuG0GJist83MComblgnQ2YwyuSbcfPS2vrMJSN8VTWIp02T//rqfZ12SACtbWlEC3
	gKIZumA73a9gdlaCEloA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWfG-0002Mr-OO; Tue, 30 Apr 2019 17:35:34 +0000
Received: from mail-eopbgr00069.outbound.protection.outlook.com ([40.107.0.69]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWf9-0002MS-Bj
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 17:35:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=408jCAjXoqXLUOrJsVVQLEpwt2PSYNkkcoApMrwjfgs=;
 b=Ldm9ZR8stLcKwdqQnEtDQk7wS7PfYbbAV29KrBVMs0g7U4NI6XxFq2vN9aW08wu7YWB+X6bVElruzICLrtiCsjqFXIM7QRwv7FLQ2FygVyCh28+Iys3r385QXCaq8rxjC1ByWoLi2SDb99Q5hZogKViThQmotrDZONUfPRq9He4=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4995.eurprd04.prod.outlook.com (20.176.215.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.18; Tue, 30 Apr 2019 17:35:24 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cda:4e52:8e87:8f0e]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cda:4e52:8e87:8f0e%2]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 17:35:24 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: [PATCH V2 0/2] clk: imx: scu: add parsing clocks from device tree
 support
Thread-Topic: [PATCH V2 0/2] clk: imx: scu: add parsing clocks from device
 tree support
Thread-Index: AQHU/3sXAchBbqvng0+oy01651OLQg==
Date: Tue, 30 Apr 2019 17:35:24 +0000
Message-ID: <1556645270-20648-1-git-send-email-aisheng.dong@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2P15301CA0007.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::17) To AM0PR04MB4211.eurprd04.prod.outlook.com
 (2603:10a6:208:5b::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 839da188-9cc3-40bc-679e-08d6cd923a09
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4995; 
x-ms-traffictypediagnostic: AM0PR04MB4995:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB4995435E90796BDA9DE92C1F803A0@AM0PR04MB4995.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(39860400002)(376002)(136003)(396003)(199004)(189003)(54534003)(6506007)(5660300002)(36756003)(386003)(102836004)(186003)(256004)(26005)(4326008)(68736007)(71190400001)(71200400001)(25786009)(2501003)(6486002)(6436002)(8936002)(6512007)(50226002)(8676002)(81166006)(81156014)(6306002)(53936002)(54906003)(66066001)(2906002)(110136005)(966005)(66556008)(99286004)(73956011)(66446008)(316002)(66946007)(66476007)(64756008)(52116002)(2616005)(44832011)(476003)(486006)(97736004)(7736002)(86362001)(478600001)(14454004)(6116002)(3846002)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4995;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: r0CYGi4JtszwxgwXT6dCBmygfOAG+HwsO+PhUVfuYMtvaNsP+4U0oTV64smFLumK1X77gZNya/pDrYG54dQFVz/aZnZ+DWGg/tqSWwhpQkuq8HniQZEqOh+gZ++vVRNShRUae9Ye3zC+TBmNd3vbnX2+hOH7Rz90iQ2KfhysVu5tB0/Ua26qTDD4oakAubHylEWgpHCHBYaBiyz/8LaPFVZz+oCFK+SPxJ8zc0SAmHH51IgflzG8AReTOjbpTzWw/vbS71aF7vgwvQLByAZtXrfzTF/OthFMlILzDGAX9dMmzyETjuGjEAeEKJRKPzz/y1x0w7Ikd9dYD0ojhyHcI6j1Ux/APVunX3m1tNUvlG90ZJPWWkMHVpiIe03up7B1mJYV2dnrf/RicVm+2lq05+f+Ga/ezitrRYs2GdZWdww=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 839da188-9cc3-40bc-679e-08d6cd923a09
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 17:35:24.5040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4995
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_103527_472370_58319D7B 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a follow up of the patch thread.
https://www.spinics.net/lists/devicetree/msg283675.html

This patch series is a preparation for the MX8 Architecture improvement.
As for IMX SCU based platforms like MX8QM and MX8QXP, they are comprised
of a couple of SS(Subsystems) while most of them within the same SS
can be shared. e.g. Clocks, Devices and etc.

However, current device tree is heavily depends on Clocks IDs defined which
cause some troubles in writing the common <soc>-ss-xx.dtsi file.

This patch series adds a new binding to support parsing clocks from device tree
which can fully decouple the dependency of Clock IDs in device tree and make
us be able to write a fully generic clock driver for SCU based SoCs.
And it can make the driver much easily to be maintained in the future and
avoid writing a lot of duplicated codes.

ChangeLog:
v1->v2:
 * SCU clock changed to one cell clock binding inspired by arm,scpi.txt
   Documentation/devicetree/bindings/arm/arm,scpi.txt
 * Add required power domain property
 * Dropped PATCH 3&4 first, will send the updated version accordingly
   after the binding is finally determined,

Dong Aisheng (2):
  dt-bindings: firmware: imx-scu: new binding to parse clocks from
    device tree
  dt-bindings: clock: imx-lpcg: add support to parse clocks from device
    tree

 .../devicetree/bindings/arm/freescale/fsl,scu.txt  | 45 ++++++++++++++++++----
 .../devicetree/bindings/clock/imx8qxp-lpcg.txt     | 34 +++++++++++++---
 include/dt-bindings/firmware/imx/rsrc.h            | 17 ++++++++
 3 files changed, 82 insertions(+), 14 deletions(-)

-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
