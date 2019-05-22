Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 009CD260B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 11:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cr6Oc2PM6cgXOJ0dP7rciCdc56Mr40gn8zWml4K68G0=; b=SwWw1wgPqRUtYD
	rOZoRgUZi1youqKdjkJDgjKs1vspsL3zfsme1Jo3AiDGwGQHKsFm/dv5P5DxaefbiizMSMHlmLPP8
	GPVewyC/sCy/YE+nk03Yp4FmRn1oRaVpSQ1mN8xhH5llMw3Hur+2foOfFzPNiVrVt3mj1ShCB/Tz3
	HE0newEx+muhaF6MUHg+bontrN17BgZJFkImc1h8CCxlHQ7vy6M040q6PFx1W6UAWkyAr4wiV5xSN
	SZjmuQD1z6Ifg6pSrcaUT+NOTnWsy/fB5tmLz5S2xxxAcGz8rhK52M9qgY/0Q6hKvyOiC/z/LjbFh
	MFjUdVhHLLjyzmoBl7ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNrj-0006PG-2q; Wed, 22 May 2019 09:48:55 +0000
Received: from mail-ve1eur01on0613.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::613]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNrM-0006DG-K8
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 09:48:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kULYmvo3mDqppSDMDqSqaC/iJVJkTvxKlmWbA8dQQeo=;
 b=FO9/BK4dcM9C+GVKVx9Z2T6dV+qFWMwmKEI3VIO/zyUCo5sJvmUXZn/1tMNS+99nKIQGXwh2dhjzaHA99xoM5BbaAe1Sv1eXpkvoLZplekK6m7qOU7YN4p8dpgN9DBU4dZGRn6wflwN66K03JmjcqFpDA9VmTB5fDMjpLiQb2kM=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB4897.eurprd04.prod.outlook.com (20.177.40.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Wed, 22 May 2019 09:48:28 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1922.016; Wed, 22 May 2019
 09:48:28 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v2 0/2] clk: imx8m: Add GIC clock
Thread-Topic: [PATCH v2 0/2] clk: imx8m: Add GIC clock
Thread-Index: AQHVEIOCpLH3NHnZl0OVDpw6qRV78w==
Date: Wed, 22 May 2019 09:48:28 +0000
Message-ID: <cover.1558518323.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: LO2P265CA0441.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:e::21) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 780726be-e824-4b7f-74d8-08d6de9aa457
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4897; 
x-ms-traffictypediagnostic: AM0PR04MB4897:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB4897B8EBDF492936119B8CCFEE000@AM0PR04MB4897.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:883;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(189003)(199004)(71190400001)(4744005)(52116002)(71200400001)(966005)(498600001)(53936002)(256004)(73956011)(86362001)(3846002)(6116002)(99286004)(36756003)(66066001)(66556008)(64756008)(5660300002)(66946007)(66446008)(66476007)(14454004)(2906002)(50226002)(25786009)(6486002)(6436002)(54906003)(44832011)(486006)(476003)(2616005)(110136005)(386003)(26005)(6506007)(305945005)(68736007)(186003)(6306002)(7736002)(8936002)(4326008)(102836004)(6512007)(8676002)(81166006)(81156014)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4897;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: C6JNhXWXiOpNieHo9fi1VFdJ4YoCvFE3aaacM/B8q6JN7HJd2zvUMcq9MpHyUbqO1HoT1z7mOdzbHzSwvWWGMSXM8Epu+PRRp9Y4kVCuqQ3x/9DyZNJDMYEGkS6DO+6on6msC+rb6SxpcERaMp/muzn+WxENEA7G7KgKYRbYalPe6tVbmsSf4idLXx6IRSl9JREdqIvNFVukhWeDmiFeccoKkrFsFXQlgCDcabt/ZsUcBOt/M3GXVM7/AxfepxzOZ6O2pGlrcc3Ft186+EIS8ybdVF1fUvAsPFRbNllVKPrWPVffQce6qt421J7NlPokKlj9+PhLICdo/9cTC6FQGenKOJZfOm4KZcPRuN+Vdgmof0lMvIEtSlDaieQFkEjfRzpDvEpOS7bxZ51ZVXUgckmrOhoPgbHlZs32FXjW/BU=
Content-ID: <361D4F109FA8B74F9702A9555B20E70B@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 780726be-e824-4b7f-74d8-08d6de9aa457
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 09:48:28.5837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4897
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_024832_695338_393998E7 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:613 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Michael Turquette <mturquette@baylibre.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add gic clk and mark it as critical so that parents are not turned off
by accident.

Changes since v1:
 * Add imx8mq
 * Split dt-bindings to separate patch
 * Rebase on shawnguo/clk/imx
Link to v1: https://patchwork.kernel.org/patch/10940303/

Leonard Crestez (2):
  dt-bindings: clock: imx8m: Add GIC clock
  clk: imx8m: Add GIC clock

 drivers/clk/imx/clk-imx8mm.c             | 4 ++++
 drivers/clk/imx/clk-imx8mq.c             | 4 ++++
 include/dt-bindings/clock/imx8mm-clock.h | 4 +++-
 include/dt-bindings/clock/imx8mq-clock.h | 4 +++-
 4 files changed, 14 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
