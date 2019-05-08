Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E8017590
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 12:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxkwUe/dIWrA8/qKks3wnbUmqU5i/PHN6r3tvyJ6kfY=; b=T01/FPS+UlVjVE
	5rQu1HM7Fuc0sIy8k+MN9Zvs3pLbNNYvFtcnrM/HHEK//9trJ8m0qgkAQ2Gg6f2sfBbHe+okYQPYy
	EnVVtvTRmmO7cuxbyaFbhcpp2vCdIB0M0mCCTy+1nbd5hMry77n1WC0xSWfXM4DYvKMJYTZOCfUP3
	RsAVYoSytIYYylbJmDfUqGUNKhSZ+pe3vPG0MZNFIZCj8xLEXOq6Dwv87tSHrcOjn/tAI1QnmacWa
	F/ymsvmYMNgaCIYyYiRtsrDd8gbETGlvzl5RUCd69PgMY1vusnUbiorJ3YbmzQ2tVnfTFI/FLXqUF
	V4/XuBtfzXnSSF5dUpHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOJNm-0004mj-CB; Wed, 08 May 2019 10:01:02 +0000
Received: from mail-ve1eur03on0609.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::609]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOJND-0003vl-E0
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 10:00:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4B9htAaDGUQ7lU1VuL1ilAsP5SxQSsXz3AVv8b1ZTvw=;
 b=nx0OZaT7n/hS+RgVnil46siHX5F1rtQ8uXOD8V4DJ2HnGhloqPaGJEz/lFlda6/WGicmTweYo7gRoCC9WD4U2YbSyBzen+d+tTx4QFdoGoYqEro4cKJm3P9hC3xIb9bbt1heY8eYeyI//BnviOA7p6+y+jWHZIVN+hM0+O3lukg=
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com (20.176.215.158) by
 AM0PR04MB6083.eurprd04.prod.outlook.com (20.179.34.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Wed, 8 May 2019 10:00:19 +0000
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be]) by AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be%7]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 10:00:19 +0000
From: Wen He <wen.he_1@nxp.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: [v1 4/4] arm64: ls1028ardb: Add support DP nodes for LS1028ARDB
Thread-Topic: [v1 4/4] arm64: ls1028ardb: Add support DP nodes for LS1028ARDB
Thread-Index: AQHVBYTYyPYgW7vI8E6GQ5gNiL+aow==
Date: Wed, 8 May 2019 10:00:19 +0000
Message-ID: <20190508100136.7009-4-wen.he_1@nxp.com>
References: <20190508100136.7009-1-wen.he_1@nxp.com>
In-Reply-To: <20190508100136.7009-1-wen.he_1@nxp.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0P153CA0043.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::31) To AM0PR04MB4865.eurprd04.prod.outlook.com
 (2603:10a6:208:c4::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=wen.he_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 89b90a52-674c-49b0-a68a-08d6d39bfa4c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6083; 
x-ms-traffictypediagnostic: AM0PR04MB6083:
x-microsoft-antispam-prvs: <AM0PR04MB608390974C41FE75EE6D2EA7E2320@AM0PR04MB6083.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(39860400002)(376002)(136003)(366004)(199004)(189003)(476003)(11346002)(14454004)(316002)(2201001)(256004)(86362001)(4326008)(478600001)(305945005)(8936002)(25786009)(446003)(102836004)(2906002)(66446008)(66476007)(73956011)(66556008)(64756008)(66946007)(6486002)(71200400001)(81156014)(36756003)(81166006)(66066001)(8676002)(71190400001)(53936002)(6506007)(386003)(76176011)(5660300002)(54906003)(3846002)(99286004)(6116002)(52116002)(486006)(110136005)(6436002)(2616005)(68736007)(7736002)(2501003)(50226002)(1076003)(186003)(26005)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6083;
 H:AM0PR04MB4865.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tA3SY4cEmlQDYVisuH6teirySgBI/0SK2YkdcfyeKZBpTnSwzjiYwajDrcgwDWJ0mPe8mspN+u9I9Fyi6Pxnk6u+dSgOBvA1FZucJP0Bx14VLAXEZDRCRwejsUICw9ZYt3EyVE2Se2RSY//ljoDuCxXL9qvmYMEvz9hmfVmnSXkzWJH44TrreO7Zkx0+VixfiWCT3AREJuTS8jgBp6MCA11qVvYY/k/0+9gSSnqdHnpXkSic4IXE8nzq5nx+YwvEeNqi3V68RKVG82e1RP7y687aO+qkWo80u3xeJNRbjRun0H3GSGAcmcVx+xFg8090lWisFk9vkTbfyCxUh4CzP0vTdN2UNFD1/ls4PH0EfReTSf1dZGGplPDyjvdEQgFR1UfLKKnryRp95JYv+JRZ7P60PL7R3Wk+MvLFdNl/Cq0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89b90a52-674c-49b0-a68a-08d6d39bfa4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 10:00:19.6730 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_030027_670697_4DDECE66 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:609 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
