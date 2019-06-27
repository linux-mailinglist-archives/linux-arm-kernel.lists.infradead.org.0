Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A74D957DFC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 10:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lm+M5gPvsDfcdI807jTH+iH9BhbY/nUTZyp66NMeTOY=; b=ozOs+VukrQecgQ
	Z1TNelfksyUia4IOip//NwO1W0LEo4ZNkiLrVIllQDRF38mLKgvEGUhp5vyX4V53JHJUmR58n5cBi
	8Lr+vjihPreXq5f/Xqa+xIfxj1EOencn3xnOeXzMeR/Scw25z0SIpahmA4T+y+qzLaQN+J8xGzyYK
	gTdajWO7fvggK9yznYTObBKNHvigQ+qlF8y/i3YMf8hyhIrWBKUXxPkGRPH95aEmAfc8KjJdPWr5p
	8iL7roU0avGVhldZZFCWhLr/yoo5UUystdEOslZHhgiE3l+b55AxKRRVUIgZm2SdI61rpA0vGGF8o
	utMKWEN+erd03gNog1sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPWW-00043c-EF; Thu, 27 Jun 2019 08:12:52 +0000
Received: from mail-eopbgr60083.outbound.protection.outlook.com ([40.107.6.83]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPW3-0003xj-8O
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 08:12:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Edh21XYJrnG6YimwpaE0dr+Sw+dQYGYWcmI3HN1pH/A=;
 b=d3jgEwVO0Zj7T5BeWvPTL880Ddo9WhJxe4IaCKpanlJ1zHGVNST8Dj0ZMu7HDhVU4LLEHHLWaN6bc8YMtqOT93R11S5cppQOy7SZIbegIfCSi69RacP7JaaF7SvTFtymSlVCyrA2t0uc1lIjoQIF3C7fY4f88oCjH9rEYgm1y74=
Received: from AM6PR04MB5207.eurprd04.prod.outlook.com (20.177.35.159) by
 AM6PR04MB4453.eurprd04.prod.outlook.com (20.176.242.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.17; Thu, 27 Jun 2019 08:12:18 +0000
Received: from AM6PR04MB5207.eurprd04.prod.outlook.com
 ([fe80::9c87:7753:43b9:6d4a]) by AM6PR04MB5207.eurprd04.prod.outlook.com
 ([fe80::9c87:7753:43b9:6d4a%4]) with mapi id 15.20.2008.014; Thu, 27 Jun 2019
 08:12:18 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>
Subject: [PATCH v2 0/2] Add support for DSP IPC protocol driver
Thread-Topic: [PATCH v2 0/2] Add support for DSP IPC protocol driver
Thread-Index: AQHVLMAJcPye2nIwl0OOFv4iPigrbg==
Date: Thu, 27 Jun 2019 08:12:18 +0000
Message-ID: <20190627081205.22065-1-daniel.baluta@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0802CA0020.eurprd08.prod.outlook.com
 (2603:10a6:800:aa::30) To AM6PR04MB5207.eurprd04.prod.outlook.com
 (2603:10a6:20b:e::31)
x-mailer: git-send-email 2.17.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 64b1fdd8-0d82-4367-bf71-08d6fad72be2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB4453; 
x-ms-traffictypediagnostic: AM6PR04MB4453:
x-microsoft-antispam-prvs: <AM6PR04MB4453A3AD5ECE3910B5603A62F9FD0@AM6PR04MB4453.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(39860400002)(136003)(366004)(199004)(189003)(2501003)(81156014)(25786009)(68736007)(14444005)(256004)(186003)(14454004)(26005)(66066001)(476003)(99286004)(50226002)(6506007)(4326008)(8936002)(8676002)(81166006)(386003)(44832011)(102836004)(52116002)(305945005)(486006)(3846002)(71190400001)(54906003)(71200400001)(7736002)(6436002)(2616005)(478600001)(86362001)(316002)(53936002)(36756003)(5660300002)(1076003)(110136005)(66556008)(66476007)(64756008)(66946007)(73956011)(6486002)(2906002)(6116002)(66446008)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4453;
 H:AM6PR04MB5207.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mgpqGQnfA0sI0sx+sfUM6WtY5oq3Gw45fBfkHNZ0+RvjKwOnBShumsSlN12ki2w2mw88N/M+UXk3rFzxFle7orcKXZb6crtW/IQUCnibY4W/fZW7WfdUCmVTkvVF2Sr+yF23h+7KmtVEqyAcia1i6JPkxhjP1DlcDIt5tTclzeC1SatVOEA3W9Pka7NeEmqa2jQvNGBCT5LcN4yXWii2APJU7/sX8CxOaEvHo92TjQm/Tp5hM2hwsqGwS1mYzijZjnUQYScNkSHBhkG/LfF9+KicbJ9DwEMyURY3HkVnn2PA9UIBOKv2O3xTv+XJ8oni3a3V1WL8+HakNwf30OHI9T0iafVAs9cCK5DmGF0ySyWiK9kaBq59niDO+Ou7kHZ2X0siW3HbrTrYWzGKMVQlNFVixalJqmpZl/QJ/ZmgmtQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64b1fdd8-0d82-4367-bf71-08d6fad72be2
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 08:12:18.4374 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: daniel.baluta@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4453
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_011223_829558_E840B04C 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hifi4 DSP can be found on some i.MX8 platforms (e.g i.MX8QXP, i.MX8QM).
This patch series introduces the layer that allows Host CPU to
communicate with DSP.

This layer provides a doorbell and clients can used that to notify DSP
that a message is placed somewhere in the shared memory.

The protocol used is request - reply. Usually, Host/DSP write a message
in a shared memory area and notify the other side. The other side will
also write a reply in a designated shared memory area and then ring
the doorbell to let the counterpart that a message is ready.

Changes since v1: (after Rob's and Oleksij comments)
	- removed imx_dsp_get_handle now drivers wanting to use DSP IPC
          will get a reference to dsp_ipc node in dts.
        - added chip name in compatible string fsl,imx8qxp-dsp
	- avoid memory leaks
	- make dt_binding_check works fine now!

Daniel Baluta (2):
  firmware: imx: Add DSP IPC protocol interface
  dt-bindings: dsp: fsl: Add DSP IPC binding support

 .../devicetree/bindings/dsp/fsl,dsp_ipc.yaml  |  44 ++++++
 drivers/firmware/imx/Kconfig                  |  11 ++
 drivers/firmware/imx/Makefile                 |   1 +
 drivers/firmware/imx/imx-dsp.c                | 142 ++++++++++++++++++
 include/linux/firmware/imx/dsp.h              |  67 +++++++++
 5 files changed, 265 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dsp/fsl,dsp_ipc.yaml
 create mode 100644 drivers/firmware/imx/imx-dsp.c
 create mode 100644 include/linux/firmware/imx/dsp.h

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
