Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B047135637
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:52:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TtB//f+SuZ0eHJXAqxWIetMyjKgbJo/Z3Ax0fx/uG/M=; b=Rd588HjSy2jGAN
	AkKPj8V/tQAmSkeEdyuwt1xrehHXt17mBrnySkll16z2MSiNt1wOU+AGknfW1Kc3dnJVizCdJSviV
	Epy4BoEMBZMibm0i2Z24soyEMp8wBqLZ+HqLRJrxqQYegpg09tynG3WoeZUJWg1IBjSjCQwouewFu
	4ZRQtWZhJujbf0s/38LWUHknUPc3v7m/496a8ZBhWOJhH9Dr6NWgaOUTH/CUWUwVGscD+ujfZpnIh
	XSWhst/s74TruHlRWcma/OUlDQgLd9Ig/2j3vlYR4c2QhRBztVQWiRAr8M5iYqiXv7ZA6XdHQf+HG
	ZWrTNl1RiipXEEMjUDzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUTx-0003u1-Bd; Thu, 09 Jan 2020 09:52:01 +0000
Received: from mail-eopbgr140074.outbound.protection.outlook.com
 ([40.107.14.74] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUTo-0003tS-34
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:51:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YHJhs3K8FCiVVQWqRH1JMkfzcVSu+Aq4YEizh54IXw6oLl8elKTP0qPqZ5BU56Cjml5Dgap+Savy7JU79YmHKA+VhRqpL7B/V8ie5AxuCzZY96Fy1+ouOmKlf2hhOEKFBv4rn8mPuXY+IPdemDKYomwSgeW1Z0GUbCMiIWLnvKFl6FVeQGw5++spFoRa+A+t/W47A8hwbWoD40YXqOu+awOOJkUZLEMZt4YGcLDcuSbOUksdSbaF6SZ4aqSqLaBPOhweS0wWN71oUbgFPE08z3sFEc6FtouAYRhK+nfCPAP60vfs7TeywMKW/FJdPyphmoSVLkHcQ1x0Ka974UyG3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Un/+aLSy2KO3Qq5mo2zg7NEW6r5/RSNGiowqM8tjHpA=;
 b=Pl59GK/bFpn+UCFrl10ZOipei+8nKWfwv3yhXa3zgH/exVZc171bkMXepsyeX8IGxtI5e6rXzvP424Q8QbvuKsGHEPVzDM945joG0SFTf4hlABXgQy9uaT0g/SHqg+SCTCXNhualPbY5XtqEl3oZNSUy3jijNX5wMWGP2qKpkP38taUSi311Jg5J9ld9zEP/+bdPMctFoC1aorZpO/2EoMG7wPzoG3ZF8eweu3z80aGJmlxMbNhCf8ApPEtdakIc7jd7dABchESZC+3aRApQgQQE9nk9x9IkQ5nmOcUe8ctRHLuJu+Fn8j+6JcJMn9FxbP7uzrFQRQ61nY4Oej+IPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Un/+aLSy2KO3Qq5mo2zg7NEW6r5/RSNGiowqM8tjHpA=;
 b=ae322fqFoCdXXdcTFjFk0ti7+WnL3Dm6EOWUAsyVsG5cfwRNA8vB8vJvSdhbgMZWivY2+Tf+8OPb6SKagWTGbHe7nb+NLj58cnXtR5FmZUnFAinrWFIL8saBK1KlUH605YOL0qIK1SVtev/jlkGFyep5+tEpQBE6WipOwy8AwZk=
Received: from VI1PR04MB4496.eurprd04.prod.outlook.com (20.177.54.92) by
 VI1PR04MB6878.eurprd04.prod.outlook.com (52.133.244.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Thu, 9 Jan 2020 09:51:49 +0000
Received: from VI1PR04MB4496.eurprd04.prod.outlook.com
 ([fe80::25c7:9207:684a:5e2b]) by VI1PR04MB4496.eurprd04.prod.outlook.com
 ([fe80::25c7:9207:684a:5e2b%6]) with mapi id 15.20.2623.010; Thu, 9 Jan 2020
 09:51:49 +0000
Received: from localhost.localdomain (119.31.174.67) by
 HK2PR02CA0172.apcprd02.prod.outlook.com (2603:1096:201:1f::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2602.12 via Frontend Transport; Thu, 9 Jan 2020 09:51:44 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH 0/4] clk: imx: imx8m: introduce imx8m_clk_hw_core_composite
Thread-Topic: [PATCH 0/4] clk: imx: imx8m: introduce
 imx8m_clk_hw_core_composite
Thread-Index: AQHVxtJpermqa5NGzEysq2aeSusjmw==
Date: Thu, 9 Jan 2020 09:51:49 +0000
Message-ID: <1578563269-32710-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0172.apcprd02.prod.outlook.com
 (2603:1096:201:1f::32) To VI1PR04MB4496.eurprd04.prod.outlook.com
 (2603:10a6:803:69::28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b05b16f3-b03a-4a6f-98f1-08d794e98bb5
x-ms-traffictypediagnostic: VI1PR04MB6878:|VI1PR04MB6878:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB687875EE897743FCABC7FD6488390@VI1PR04MB6878.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(366004)(346002)(39860400002)(189003)(199004)(6486002)(26005)(4326008)(54906003)(69590400006)(36756003)(6636002)(71200400001)(6506007)(110136005)(52116002)(478600001)(8936002)(6512007)(316002)(16526019)(186003)(86362001)(2616005)(956004)(44832011)(66946007)(66556008)(5660300002)(66446008)(64756008)(2906002)(8676002)(81166006)(66476007)(81156014)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6878;
 H:VI1PR04MB4496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Pl84RgLGQofZXzYxpO4eVtAelIPl5kttSK2Ef+DzIY6QHFbk2xjt8eYxHcG6r+SiCbPe+CAvAgwWDjuBHHqN7R/GItp13jnMg/G9feqeV2oT62afZm0xOZufN6uB5RoWO8QSobTxlxYgSFhgmMSiDL4byRViQcB8nAXReEI8B1tTMGgmeHafgAJp5OlkBHHRItxdlVm/I+8NTqvHz3yUxPGEgWlw1lZflcZePTwHHU16rGDTaaoKWrESM4Q4vQe49n7cm5uoVKlr9IP2UpJisXz11oZ3T4UKNF0V0o1aGlMVrcMatuop/jGRMAoGeD+cEj4eY1nlgPyubotd/RkVvunwuNKHSIip7HS79U/u2VIT0s/Bx6tiLwjNKAIXYsQ/emRIlf5t6r0Y3NgDvGgATxiWMCGqL6VwrtKMr1+X3pMkUw8XVuNqOXUt1gaapcAG1aexTFs3yZoKmOnldNEl+tqyIO2DRfFO+VDUwCK7MVt8wuEIT9fIdPIYuSgV+DC1ufja1NTdqT/NxrgTuKYLgQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b05b16f3-b03a-4a6f-98f1-08d794e98bb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 09:51:49.2906 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FroJh/XxzOG6yqb3mHIIYcKYtSO1NqaC0o6x5j6lt2JXt+f6MXrDTPuFkGFo8BbJS7/OnMe8jL83QqilAQlcPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6878
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_015152_136665_01BDB67C 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

To i.MX8M family, there are different types of clock slices,
bus/core/ip and etc. Currently, the imx8m_clk_hw_composite
api could only handle bus and ip clock slice, it could
not handle core slice. The difference is core slice not have
pre divider and the width of post divider is 3 bits.

To simplify code and reuse imx8m_clk_hw_composite, introduce a
flag IMX_COMPOSITE_CORE to differentiate the slices.

With this new helper, we could simplify i.MX8M SoC clk drivers.

Peng Fan (4):
  clk: imx: composite-8m: add imx8m_clk_hw_core_composite
  clk: imx: imx8mq: use imx8m_clk_hw_core_composite
  clk: imx: imx8mm: use imx8m_clk_hw_core_composite
  clk: imx: imx8mn: use imx8m_clk_hw_core_composite

 drivers/clk/imx/clk-composite-8m.c | 18 ++++++++++++++----
 drivers/clk/imx/clk-imx8mm.c       | 17 +++++------------
 drivers/clk/imx/clk-imx8mn.c       | 10 +++-------
 drivers/clk/imx/clk-imx8mq.c       | 19 +++++--------------
 drivers/clk/imx/clk.h              | 12 ++++++++++--
 5 files changed, 37 insertions(+), 39 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
