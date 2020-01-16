Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BED3F13D742
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 10:53:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIG7vDBKJ2RympxihjT+qGCUDxcQGEYJlt/v5FEGflk=; b=FxEHxX2486DywW
	QWar0B9WjVIl4MvMozxH1upFQkphmql4JsN9+ddwGRzY+y306Tiw61ew3qm70WgImUs6qjOXhuWuL
	PgPA9eO/5GyjGuwlwIHuUlbS7WuCoC6677HoqKGDo0qmFlOsQiZ2LFCqJ23w1ix29bW6xlEm1IsxK
	5T9vzNDWksq2XlcqD+G9ZVSqAOGRQOcd1jvpap+wDJTa3dxG9FwRgz1uoJJSwfGr8S4fDIgSN/R+E
	2i0lpo7HszvfcEhmGeVkO5ZwZ5LmnUND/VVqhnSaUifsuD63tPUGaSo9kcskqdUmw6FylXtm9Jsl9
	aAOAEjQ9VWK6LBKccGXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is1pu-0001vF-VF; Thu, 16 Jan 2020 09:53:10 +0000
Received: from mail-db5eur03on0601.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::601]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is1ph-0001lS-6s
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 09:53:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ED3HeCh895ZxaGNyYX48sqg4/4al1WELIxBqms5RJ5pCiKB43lwkP5A6PXZVecV9W6JeaHuZ75yi/QwgCMNSqHhn+nMw3A9FtACJQDPVG0v6LKNvstfxRW4e0otjLUSFpoeNPhfo7vCuKFt5wZfK3xGQ7D9YR5/Ttag0s4IY1R5Z4WS8DVV3GQfGoxOKzGhiqWCGD/ahtVOLXxxKGgfpzQP6uOruarTtilKKnHrOUOB9Ch9wlztPH5TqHhqUwaJ/DiqRI+f1T5EBfNbE77SiGm3m8UHBzRWcymVmTdjIrvSbNZu6XzEdIp3MzrAyvqb5n3Y6wnNjd61lql18OQmmiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QANZ/0sdNkmcOgoO/G0FOwceTWYpZY88EkD6FW4Y0jQ=;
 b=koPbCUho6cjr6DRzY/evs4TBzvKMnXBfkRyGdISMf9/BAPC///I11oCp3s4Jtprz3kDbw26cx/djiNW8HYFGEG71ZiVboayJQO2auODederiho1iEWeWUe+i+0+WeWahCxLTav48MulJKsdMzkGajanVYlECp6J7DhAE7O911r7SSBr3NPdwcej/Z2BnLQMKpMp4OG/4Hy8A6jrx2ZIt2maUaE0Xzd/pvxrn0hn7stzK9HICoUK/z6qyGuMLyWadI7Qh2nXKBJFoslyih0+V51kGQYmvSc3Bm3n5fe+If3UWWLr2uT03uZsyM72pf3rnxJ9Q/9YbHoMyaLvSvcKdyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QANZ/0sdNkmcOgoO/G0FOwceTWYpZY88EkD6FW4Y0jQ=;
 b=US4K8ApssTvc69CSRITXtUI4TdccLf3aAmHGu/dHSADfe/R3/4nR/id3I/VZO+o0olHxKj5ZMcMkiOA9chVmOOT4adOZbefFf0iTlW8NRdxRXHglZDeu/63w5f1AMQnDf93oN5JqEypz1U0agkKy5Qp9YnFjF0vbn5P0LR2GSjg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4337.eurprd04.prod.outlook.com (52.134.124.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Thu, 16 Jan 2020 09:36:53 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 09:36:53 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0302CA0022.apcprd03.prod.outlook.com (2603:1096:202::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.6 via Frontend Transport; Thu, 16 Jan 2020 09:36:48 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: [RFC 2/4] ARM: imx: cpu: drop dead code
Thread-Topic: [RFC 2/4] ARM: imx: cpu: drop dead code
Thread-Index: AQHVzFB8b6e6R1l3A0aB7jlzoE7ofA==
Date: Thu, 16 Jan 2020 09:36:53 +0000
Message-ID: <1579167145-1480-3-git-send-email-peng.fan@nxp.com>
References: <1579167145-1480-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1579167145-1480-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0302CA0022.apcprd03.prod.outlook.com
 (2603:1096:202::32) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6931b8e7-9be1-4282-c67c-08d79a679e8a
x-ms-traffictypediagnostic: AM0PR04MB4337:|AM0PR04MB4337:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4337B2C23822D9F4554DAC7088360@AM0PR04MB4337.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(39860400002)(136003)(366004)(199004)(189003)(8936002)(86362001)(69590400006)(71200400001)(6512007)(186003)(16526019)(52116002)(956004)(44832011)(2616005)(6486002)(26005)(6506007)(478600001)(6666004)(4326008)(7416002)(2906002)(81166006)(66556008)(81156014)(66476007)(66446008)(8676002)(110136005)(316002)(54906003)(5660300002)(36756003)(66946007)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4337;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cUAIbWBpTUPOoCVa4qLpaSnl+U2PXtf+OP0X7HgYG1x7jMtXyVcMEr3VAzT8MArwVLOJHQKM2A/WkAyitttVEOOxXiIi96W/GKM/W1wtA3eQ7tsFQwN4l6hOSWgxrmFOZmZ7oInN0RjfFXrAiunzu3hccm6rUrEUNOFJtnPQZT5JDue25T3YtksGl1tWqZENlJFPCD6o3A5WOaPSebGE+oJDR7uSErLEr7TZiAvMorlGQ3gI848BxkJlhYsX7IdQwVuLCSS5z3xEuQNI2d8DuH7DjMqlFnnDMsBzhXiUdgvo10B5bye4UQ9AnhFNb5Up8UCTbn4d/hOmdfa+IF4I19tzpvdiTKTEBAvCQCZs/Ph8kLCqp52ipzv3jG6rIWl0+SZ1syxilEWZfl3lgOohfGI6QYuy43YbScCkM/J2pa+52HHSPRXS4Rc5axkoamXVqbj9Sh1W5cjuSSa8rkQXtB8SHLPNA5cyGlAiZKm5gWJzng19xeJD0iG9PLGKDl7R
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6931b8e7-9be1-4282-c67c-08d79a679e8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 09:36:53.1806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DUHME6ycwLYmsYqZogSTzwgJqr/Zuv3raYf7mJuQexhsXIXEfufuE+6MLPXTjr/iwWA/kzEuc0TPzsBOM0GTFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_015257_257081_AD99A51B 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:601 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
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
 <linux-arm-kernel@lists.infradead.org>, Peng Fan <peng.fan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "git@andred.net" <git@andred.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "info@metux.net" <info@metux.net>, "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

imx_soc_device_init is only called by i.MX6Q/SL/SX/UL/7D/7ULP.
So we could drop the switch case for i.MX1/2/3/5 which are dead code
that never be executed.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/mach-imx/cpu.c | 24 ------------------------
 1 file changed, 24 deletions(-)

diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
index 2df649a84697..0302cb66134b 100644
--- a/arch/arm/mach-imx/cpu.c
+++ b/arch/arm/mach-imx/cpu.c
@@ -108,30 +108,6 @@ static int __init imx_soc_device_init(void)
 		goto free_soc;
 
 	switch (__mxc_cpu_type) {
-	case MXC_CPU_MX1:
-		soc_id = "i.MX1";
-		break;
-	case MXC_CPU_MX21:
-		soc_id = "i.MX21";
-		break;
-	case MXC_CPU_MX25:
-		soc_id = "i.MX25";
-		break;
-	case MXC_CPU_MX27:
-		soc_id = "i.MX27";
-		break;
-	case MXC_CPU_MX31:
-		soc_id = "i.MX31";
-		break;
-	case MXC_CPU_MX35:
-		soc_id = "i.MX35";
-		break;
-	case MXC_CPU_MX51:
-		soc_id = "i.MX51";
-		break;
-	case MXC_CPU_MX53:
-		soc_id = "i.MX53";
-		break;
 	case MXC_CPU_IMX6SL:
 		ocotp_compat = "fsl,imx6sl-ocotp";
 		soc_id = "i.MX6SL";
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
