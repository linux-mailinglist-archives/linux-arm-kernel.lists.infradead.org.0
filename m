Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D28ED7E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 03:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XrSb1YwT5vC4tSPCanmMUWo9b8gGdVjbRka3LjKB02Q=; b=kHz4G/Tzk7BgxI
	5Bl6iJRAEZRLIbcu+2Zv9fEZ6OfI6b2J0nxXjlfQD8oh+hMCS5/6BM2OyDztTpuxoaM+FiCw3pPnt
	gKUjd0mYRN3liuzfgCgYv3pGYsSpxcFajmWPoYySrHDfG9WE1klozusDIRmMNN/kTXIz7fePwDwRU
	oJV0VD2ICjxHpsADA1amZ+9NW+ZCHy7PVqTaTneHA26LiRutLgkfZpkbe4NjzqboiMzl8g6lE/KTK
	vvzMg300xv2672YE8xQ+YgBg7hJHtJOCcc4WQCC08PtVolYEkYIJOv3ElNRzA7TOdl6mXfKgLFAKg
	Lzh8L7lNaqUc/bg3ejHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRSU9-00059L-5E; Mon, 04 Nov 2019 02:52:53 +0000
Received: from mail-eopbgr150044.outbound.protection.outlook.com
 ([40.107.15.44] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRSTz-00058N-ED
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 02:52:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DWHq5KYTgKHOzRJGBGsI5wksr5uxQq6mH+hTzD8EQwwDjAVIQqyf52zC6NEQbLNB2uvm+UpJGlIcQAi/EA4xl4PP5FFhMGAojDbvmDUc9qJDJ9t7ZGkAnVhRMD5abqWyP5DzdNUi+y7/Q5ccw/fO5Tnz259gB7VEv2g7xaipMblQgX/N9NI+g505wQ8TqXfS5xg4kCL/+PCbBW8ekky7+gz6GdHtJQq6ej2Qz6gHnSQfcSbiRNrv+dfey3Xyw/+pCOhSwIbu6jKWOos+UhlizrejItxIWeWHerfvoe71Z7y4Ausy5w8ZAMTktQVa2xSrpVbtPGJWCHWnDeAqj8xa3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yizdctDLKKImuyCpcGUN9liYBNf8OPhUvDU9fc97O6I=;
 b=oDLfOdMz19z+pYNGjYcNDGShxjpH+wbIO0NCNzrPrVqiJ8KfnUu+pQ0U1bKS+vJ27ezrPtaPFnIIktg0B0cpwGSQ3+7qEZB8paD39IJUzM1NIFie4aaLRFEuvMtMt/BtuAj+DzFz5n/zcKur/5h9l3UhtZNklyY+xKGLtCQzTuktVTnQQOtLJfEAxQmqHmsilS/aul3LTP3vVeHFI/pyi3Eh8PmvdoqhorD+J6NaSD9U8BMmkybaHqmNkRlMTf3SKqvdK+/a7QA1SfKHSLFuuZkeQgqIJedA72CgzQx51dndeycAkdlX4gl52PM6Xg0qUMxc+r0fmG8h7tvol4/XTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yizdctDLKKImuyCpcGUN9liYBNf8OPhUvDU9fc97O6I=;
 b=Y+edlDWAw+BINoCiMK/pyqYHhdD0/JWEiNFtPMx4m+vwz9c/g4bT4CPWoCzXdWFMtaCm7mn0/eQ/dFUFPAbtd5+3dklqMDq6pEwWnMOZNhw1/GnIk1c0VKG6IzOKYdO6wJsAZbbErmFfGml0s3eqLNOlJ0NG9wdlhxvtAyZ6bmM=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB3964.eurprd04.prod.outlook.com (52.134.107.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Mon, 4 Nov 2019 02:52:38 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c%7]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 02:52:38 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 0/3] clk: imx: imx8m[x]: switch to clk_hw API
Thread-Topic: [PATCH 0/3] clk: imx: imx8m[x]: switch to clk_hw API
Thread-Index: AQHVkrrrq3+6RnKlx0SgOHFznmoebw==
Date: Mon, 4 Nov 2019 02:52:38 +0000
Message-ID: <1572835730-1625-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0011.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::23) To DB7PR04MB4490.eurprd04.prod.outlook.com
 (2603:10a6:5:36::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dc6ef916-138b-4095-d19f-08d760d20d4f
x-ms-traffictypediagnostic: DB7PR04MB3964:|DB7PR04MB3964:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB39640544E0F3A47104C5CB03887F0@DB7PR04MB3964.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-forefront-prvs: 0211965D06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(136003)(376002)(39860400002)(189003)(199004)(476003)(52116002)(2616005)(99286004)(6506007)(102836004)(386003)(26005)(6636002)(6116002)(3846002)(81156014)(8676002)(50226002)(8936002)(6486002)(66476007)(66556008)(256004)(186003)(486006)(44832011)(6512007)(6306002)(4326008)(2501003)(71190400001)(71200400001)(7736002)(966005)(36756003)(5660300002)(64756008)(66446008)(66946007)(4744005)(14454004)(6436002)(54906003)(110136005)(81166006)(316002)(86362001)(2201001)(66066001)(478600001)(25786009)(305945005)(2906002)(32563001)(15585785002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB3964;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z+TSyRPZH/27T2NZ1iU9kMWT+iiMI0bHxWjIML67rF3kL6KzSXRmGlnd1v7dmcOBC0WgzcAQrrLq7RNasglz93AEabMw3G1caw4P2H6gAaqk+akF6VqkBl8lrxWXRdXKpXgN/lR75GZnILWoaqtsZ0qIZdUGU7UWzmkI9yt7hORlmKzGK9G7A0kwS2s0i8SkNzPE+J/jGiI255FJ8ES7HU9RdoThtDYCjcMGoJBwEqBOq7K2WaDPbR713s1Qf8ifdRIMSO0oVI2LH+TXmfWOfVPG2Xz6MV9S+UKRBXUReUukn2pnKj63h73T6ew3AM35QuU0QO0W3BqyHcf/EjfeJhnFGCrMdElMAlQZ2uNdfZLXjiiHhraOop7L0O2XF5B5qBOXYxhZ+QJzsux4456ane6NGUu8+VK9/PtYdcM6h3E7zMsYGSR7KWjXyz32ImC9ljzJhn9A5A9uOB0hynKMcQdyFxK6UsJfn4huPi+cu3I=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc6ef916-138b-4095-d19f-08d760d20d4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2019 02:52:38.3855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OuTtEE8m54X5UI+vGEFTus12M523Sd/QVodz5FMNRlM4JULmNGTaSLsWXKhhk6GZIZj0Nsby4D+Q0UHVKKU5jg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB3964
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_185243_564415_B1099F92 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

This patchset is to Switch i.MX8MN/M/Q clk driver to clk_hw
based API.

Based on imx/next branch, with [1][2] applied.

[1]  clk: imx: switch to clk_hw based API
     https://patchwork.kernel.org/cover/11217881/
[2]  clk: imx: imx8mq: fix sys3_pll_out_sels
     https://patchwork.kernel.org/patch/11214551/

Peng Fan (3):
  clk: imx: imx8mn: Switch to clk_hw based API
  clk: imx: imx8mm: Switch to clk_hw based API
  clk: imx: imx8mq: Switch to clk_hw based API

 drivers/clk/imx/clk-imx8mm.c | 550 +++++++++++++++++++++--------------------
 drivers/clk/imx/clk-imx8mn.c | 475 ++++++++++++++++++------------------
 drivers/clk/imx/clk-imx8mq.c | 569 ++++++++++++++++++++++---------------------
 3 files changed, 817 insertions(+), 777 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
