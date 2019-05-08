Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 069DB1761F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 12:36:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxkwUe/dIWrA8/qKks3wnbUmqU5i/PHN6r3tvyJ6kfY=; b=STrMw5UTuJ4XA+
	W1zZoFQlVcO1INdc7yqr16l6zxyAzrqW0Yt4A1190CL04baAN3bxU3n8mAYcvxn30sazi1wcJXBdq
	LR6fSlvgyakhYFYjYWMuCFX/XovEg2yQ2dUaR1bVuwBLgHh49gLoCQSRxavN7p99GVE7F4bmvZIlq
	u/RFF1GFuPlEpsJyz3qvsefeIxbYJHZ0ScAcfqIHx8tBSvcUV6XKwJCx8IS7UXMc3dxgF6v97eN9R
	Gy7jaqOz4UkzMBHCSr2/i/vqOeD22KcshtnDqoRvt7ByY1ILhVsozbmjoFOC1mCSW3oJfIX0/gb7N
	A2XytYdUwmK2uob1KQ3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOJvj-0001Z4-B4; Wed, 08 May 2019 10:36:07 +0000
Received: from mail-eopbgr130059.outbound.protection.outlook.com
 ([40.107.13.59] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOJvG-0000yC-4i
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 10:35:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4B9htAaDGUQ7lU1VuL1ilAsP5SxQSsXz3AVv8b1ZTvw=;
 b=atvd/wF8BZfy9GkuuD8zSUalEbDl91t8S1KoLWUWT16UHKsZr8RV+M18g2/UrWksELaXbhYiVErTtYqtsu3KCFdsN6ufZk73SWa2dUQPU4hFwIdc9gLRvVG+oXNFGB9J3hcsykMxDQxi7cuqY6LX1O3pw3H0746N6SPmsoRyIC8=
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com (20.176.215.158) by
 AM0PR04MB4962.eurprd04.prod.outlook.com (20.177.41.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Wed, 8 May 2019 10:35:34 +0000
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be]) by AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be%7]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 10:35:33 +0000
From: Wen He <wen.he_1@nxp.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: [v1 4/4] arm64: ls1028ardb: Add support DP nodes for LS1028ARDB
Thread-Topic: [v1 4/4] arm64: ls1028ardb: Add support DP nodes for LS1028ARDB
Thread-Index: AQHVBYnEtul/Ag/Mmk2CN4LHECJtLQ==
Date: Wed, 8 May 2019 10:35:33 +0000
Message-ID: <20190508103703.40885-4-wen.he_1@nxp.com>
References: <20190508103703.40885-1-wen.he_1@nxp.com>
In-Reply-To: <20190508103703.40885-1-wen.he_1@nxp.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0037.apcprd03.prod.outlook.com
 (2603:1096:203:2f::25) To AM0PR04MB4865.eurprd04.prod.outlook.com
 (2603:10a6:208:c4::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=wen.he_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6e47d627-4b23-45d5-13bf-08d6d3a0e680
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4962; 
x-ms-traffictypediagnostic: AM0PR04MB4962:
x-microsoft-antispam-prvs: <AM0PR04MB4962EA01F6D71F865C2CE7E1E2320@AM0PR04MB4962.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(136003)(346002)(376002)(39860400002)(199004)(189003)(478600001)(66946007)(186003)(2616005)(476003)(53936002)(66556008)(99286004)(4326008)(66066001)(73956011)(1076003)(66446008)(36756003)(64756008)(305945005)(316002)(7736002)(54906003)(2501003)(110136005)(76176011)(52116002)(6506007)(386003)(256004)(2201001)(102836004)(86362001)(446003)(11346002)(66476007)(5660300002)(26005)(6116002)(3846002)(14454004)(2906002)(6512007)(8936002)(71190400001)(71200400001)(486006)(50226002)(6486002)(6436002)(68736007)(25786009)(8676002)(81166006)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4962;
 H:AM0PR04MB4865.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Rgo+CEcM4ufHO3Ad3LbY/hvOXc8cwrm2obxHhbiR4Cdff3/w6btTPTGEoVTIqM16SXvmbJ6uuSXagRfvwEpt+FPBZUFbN+yh2a2F3fwTLRGFvryC6H4nS6gM/862G2d/mUzOUJH+78YxppISOoWWXk28IuYdYoF4qYHcadjlO06kqUO97b446eklerEX0QD9KQwkbYQMWtGhtlWEYhHdSDnMVY6ng40el23SvpC/mS+Iswm05KpvYDEAZzh4JVrAycysCHZwhlse70LcxPP/Fdc2I+TIbFmtxnv6+JmstZQ24vvwn3M3j+UFtaafqDdzUcHecn2Yz0BNAMbOJrPB8ApChWay65ADAYiby9r6fBm7jZSQk4fAR/krQsehyNOB8Iyobiqc+BSJMfOgnBj4D0tD6X+UGLiH5jrNjs6RSs8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e47d627-4b23-45d5-13bf-08d6d3a0e680
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 10:35:33.9182 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4962
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_033538_676346_EC93BD04 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Wen He <wen.he_1@nxp.com>, Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add HDP PHY Controller related nodes on the LS1028ARDB.
Now LS1028ARDB on DP has following features:
- Supports 4 dp lane channel and lane mapping is 1-0-3-2.
- By default, the pixel link rate value's 27Mhz.
- By default, support the resoluions are 4k@60,1080p@60,720p@60,
480p@60. also user can specify any combination of monitor supported
resoluions by written in the node 'resoluion'.
- By default, the edid function is not in use.

Signed-off-by: Alison Wang <alison.wang@nxp.com>
Signed-off-by: Wen He <wen.he_1@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
index f9c272fb0738..513b0e37ea13 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
@@ -151,3 +151,15 @@
 &sai4 {
 	status = "okay";
 };
+
+&hdp {
+	fsl,no_edid;
+	resolution = "3840x2160@60",
+		   "1920x1080@60",
+		   "1280x720@60",
+		   "720x480@60";
+	lane_mapping = <0x4e>;
+	edp_link_rate = <0x6>;
+	edp_num_lanes = <0x4>;
+	status = "okay";
+};
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
