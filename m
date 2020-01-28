Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3037414AF18
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 06:29:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=js65s5AG1l1CTWhWZP2/dAO+oSInAko7bxzLUYfmMQs=; b=gxFX9EzREoVYxy
	K9TxD9IR7/91J8uGJZYr4cR6Gn4NljGpbspNA3uZHBpJY6S9uKr+cf/PLKXC+FceMJWD3RYGBTzuC
	Au1DFUr8CV9HRkT5XqpA1HBR3IaSdtu+Ir44JCGLUcjCoT9MySnAMJ5k2VOZNjwmxdPZfH9lfFvrG
	aTkNE0vI7pXZIy6CmCJl/RdRAEhBkPCddLWwW1m+h8ydvmGQzrbUgnYk4XTic24nMzN8rZ8+a72o0
	hcUEn6bUNvbQ+22fjCOByFkL9MgJ20mWPjnfglhine853gY+3B1odjiSHjtoTM2j2h1eS2z3CvzTD
	GS+McrI4/n6/00wIPrEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwJQl-0001or-Re; Tue, 28 Jan 2020 05:28:55 +0000
Received: from mail-eopbgr80041.outbound.protection.outlook.com ([40.107.8.41]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwJQV-0001nt-VN
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 05:28:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DLabxd0eY8eGzBkkyB209gXtF5zfc7BYrLjJWFZu2kPxvw0TwQD3gdayChdX55XKvPYyBkFhImBuzPp2nDnJhEn0NQqSE5JSPJMbbXINT8VB/0cQOpMSkX3J69FiESByzpCT0STq/x+CSkviNr1IPKyGtGV77wkR0e2lPIuhTgnGVGyNR6egSrFCrhMca8y8nk+N00rAeSu3pMFMWqaOY7IK2qd1jfnBM23daj+5yox+CMrw9pVP60+PmfayHgP5zLT5UfacmHbpqegFvVty6cnF7EH+ITpxlws3wKxz6jLqfe4iqenGltUF/4KctnxdAPiI4qrBvr5NJtTRcEHF6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uLKmliOlzZaavwQHUbPFwVDfiYQ9Ih/Z7+05z5lMGJw=;
 b=SI+ttF1fgJXkZBQRaomHBXUFtHmfcWywHNIQ/D5bvmbrQStMC/Gy1wPheHeYeP6fDjTnzE85+v/4N2k2wygoNSoEWN8G1k7P4wg3jDkUmZ3tRcn+62COrPm6nvKXeaZL8cjgpbouc/uv9/sbNip22mWyA6u+qy9YvI+CNL9rQMlZbDhHr8fFN14Yw4crXbNJ7yIrCYd3Woefz+mfmfJk+NS3SpU6iMIdCrAHTjeJz1ldW6yWmBaPgZFQYnZFnV7mFoi2JYTnPCV1DJuZw3liWZKbhW60nFbJo0YW6FSw2ukERXbA76qNYZSwRMuGJMjEOSaug+0v1ymD7UYMNUVZBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uLKmliOlzZaavwQHUbPFwVDfiYQ9Ih/Z7+05z5lMGJw=;
 b=PhrHH5ubcDe/xs3vEkktITysvBaI4u4vh/5DirVCIfUBiE66y7TWb2UFvMcc33dwdylQNHYH2164RYJVcJVYI/es2399GCVhc+2c30DHJtCc5YyuIDDql+k+u6F5uG0vJ2s/FlorN4Ver3pMEzA9p63wVY9e6/I5wjng4/TUEEo=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5890.eurprd04.prod.outlook.com (20.178.202.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Tue, 28 Jan 2020 05:28:32 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 05:28:32 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR03CA0113.apcprd03.prod.outlook.com (2603:1096:203:b0::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2665.22 via Frontend Transport; Tue, 28 Jan 2020 05:28:27 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V4 0/4] clk: imx: imx8m: introduce imx8m_clk_hw_composite_core
Thread-Topic: [PATCH V4 0/4] clk: imx: imx8m: introduce
 imx8m_clk_hw_composite_core
Thread-Index: AQHV1ZvHklheOLKStkK+igJOK/WgpA==
Date: Tue, 28 Jan 2020 05:28:32 +0000
Message-ID: <1580189015-5744-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0113.apcprd03.prod.outlook.com
 (2603:1096:203:b0::29) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ef93258e-6597-4dd2-9447-08d7a3b2e9de
x-ms-traffictypediagnostic: AM0PR04MB5890:|AM0PR04MB5890:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB58906D1C36F0791A657DF9E3880A0@AM0PR04MB5890.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(366004)(376002)(136003)(396003)(189003)(199004)(36756003)(69590400006)(110136005)(54906003)(4326008)(71200400001)(52116002)(44832011)(66556008)(64756008)(478600001)(66476007)(66946007)(66446008)(2616005)(5660300002)(956004)(316002)(86362001)(6486002)(186003)(8676002)(16526019)(6512007)(81156014)(81166006)(6506007)(6636002)(2906002)(26005)(8936002)(6666004)(32563001)(15585785002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5890;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qBBT+slQFh1KsCBQMeiSA4aDKdyhtrqKNDi4e+HiDOzAqN7XHxUvhDIRcxGoRP58SJONcm6rVI8iERz4NBVWmNxGJ6G159WHn087avNlCD/oNTYNcDaXU3ZASxpRWtH2hpBSi1oYHnusP+jYqUMsD3TxKsuKDeitlIEFjiypqXc9dvrqtDyTOik8OZvOhyZwN+P+/Q8DolCBkVAO7wk6kj4vvU6kT3S+rXBrvH3RXwkrtLn3hsNoKVJNW9koAJemuAZuZJvCeywhnLVvMce+i/H9iJX+i0ir7Ob6NgSj/DiqidEeYaUQKsqnEjUE0M30KJIxiUyN1pRqn3Fmw70ee23MeNTt2uGwgxUY6j2K6RTK7lm+LAWHmHcNBurzZEYJuKTr59f9yba9yQOhxm3cPba3tokCx9EE8omoERRrxwmYBohuj+R42bEQfQ7fcnKJAipXk7rQ7Rd3WBjTBuN2JX303KrsCTsn7PoAJ0K35id8WxNVmKMVAqC+wqrYAVl2G0Zbl6ncIGhzF8gl/OZX+h+2Tzh9g8W5bgCQHGLxrGkkRBw2SSDOfqktBzndIQHBAp/2pAS8gPHDaVPtgLDONplb2w01BzzIuUr02unYerg=
x-ms-exchange-antispam-messagedata: dJnn8X5u4NpwgdOdAqVBeNlQW0DOCuhC/nQ1Xh8dev1go4QHKMqEIYvx83Oq/KPxQmVFfUiR3AOdVkEnfRNtG7s7Go+1s+xy2D5pHdfon/oRZtlQxwtGvzsJxJgUz8jP/r3UnnUqad5ymRD+Ig1QVQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef93258e-6597-4dd2-9447-08d7a3b2e9de
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 05:28:32.1075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lOdegzN5iMLMS7l8KD7FJi8oChX+jk+DQg9HrpQqX1D/iPhDSOPIvk2QK28Cm8ETgEZMGaZ/RG9Fx6VDxOa12A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5890
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_212840_168082_897D5E91 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V4:
 Per Leonard's comments, added new definitions and  _SRC/CG/DIV are
 alias to the new definition.
 Did boot test on i.MX8MQ/M/N-EVK

V3:
 Add CLK_SET_RATE_NO_REPARENT and CLK_OPS_PARENT_ENABLE for core
 Avoid break DT for i.MX8MQ

V2:
 Rename imx8m_clk_hw_core_composite to imx8m_clk_hw_composite_core
 Add Abel's tag

To i.MX8M family, there are different types of clock slices,
bus/core/ip and etc. Currently, the imx8m_clk_hw_composite
api could only handle bus and ip clock slice, it could
not handle core slice. The difference is core slice not have
pre divider and the width of post divider is 3 bits.

To simplify code and reuse imx8m_clk_hw_composite, introduce a
flag IMX_COMPOSITE_CORE to differentiate the slices.

With this new helper, we could simplify i.MX8M SoC clk drivers.


Peng Fan (4):
  clk: imx: composite-8m: add imx8m_clk_hw_composite_core
  clk: imx: imx8mq: use imx8m_clk_hw_composite_core
  clk: imx: imx8mm: use imx8m_clk_hw_composite_core
  clk: imx: imx8mn: use imx8m_clk_hw_composite_core

 drivers/clk/imx/clk-composite-8m.c       | 18 ++++++++++++----
 drivers/clk/imx/clk-imx8mm.c             | 35 +++++++++++++++++++-------------
 drivers/clk/imx/clk-imx8mn.c             | 19 +++++++++--------
 drivers/clk/imx/clk-imx8mq.c             | 34 +++++++++++++++++--------------
 drivers/clk/imx/clk.h                    | 13 ++++++++++--
 include/dt-bindings/clock/imx8mm-clock.h |  7 ++++++-
 include/dt-bindings/clock/imx8mn-clock.h |  5 ++++-
 include/dt-bindings/clock/imx8mq-clock.h |  7 ++++++-
 8 files changed, 92 insertions(+), 46 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
