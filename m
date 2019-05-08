Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 541701758D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 12:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I8HCKAvz+1jHdz/C8nhRAfMtRsKlrbzMr+2iKo2v2So=; b=M/l95W8E7kHhzu
	PD7EwO7JioxVfnq0vwSPXyBcj65GovJ1/Lp64lCTOSO9C4r7N+cAQfuq4HREvll5+XAZfA5ZUd9w3
	5W5qpZHBQKNS5NnqaCU1f6A2HuYYCbiG6OvjZWJ0oqD88RFwzH9IPYLRMKRpCOauoUekXmahdeUEh
	PEUxMVNKH3fBotakFe+pt/JXNbILoxcdUwCTt932tped1viuZVGeyg8oNjcQ5k3HVFHlasMvXBMat
	Z68C8K02aC1Crz9MBEikHIKkUdtIzQTZD6nkDRMXkHDmHL7O2vNLWuTUqAr+p1Q/EHoW4NT8R5ddR
	w6SiPvbwQYavZZJ0OY2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOJNQ-0004En-2h; Wed, 08 May 2019 10:00:40 +0000
Received: from mail-eopbgr150089.outbound.protection.outlook.com
 ([40.107.15.89] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOJNA-0003zE-2y
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 10:00:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4JDZ1ndfxZ/LGMLKjgHn4vd5N+Bi7zALvX8htPO3b/k=;
 b=QK+DwTEzbULxHGbGBY8mykw4rRk6uedySzE8Z2inTpAk2TfkwB6Asm/5OiuUWzXFISFNr/qINKWWJd9XjKJyHXZh6xkjv9oxfJ2XzTEKbsoxdezUmgX+PLj8gRWhwJ2dho66UA+dZr4MjMWMaCmM0ryPqNYbBbgtN0u5190fGVw=
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com (20.176.215.158) by
 AM0PR04MB4354.eurprd04.prod.outlook.com (52.134.90.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Wed, 8 May 2019 10:00:17 +0000
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be]) by AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be%7]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 10:00:16 +0000
From: Wen He <wen.he_1@nxp.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: [v1 3/4] arm64: ls1028aqds: Add support DP nodes for LS1028AQDS
Thread-Topic: [v1 3/4] arm64: ls1028aqds: Add support DP nodes for LS1028AQDS
Thread-Index: AQHVBYTWe75GjNxblEGmRUZupS7m9g==
Date: Wed, 8 May 2019 10:00:16 +0000
Message-ID: <20190508100136.7009-3-wen.he_1@nxp.com>
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
x-ms-office365-filtering-correlation-id: 341078f6-462e-49f5-bd4c-08d6d39bf8a0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4354; 
x-ms-traffictypediagnostic: AM0PR04MB4354:
x-microsoft-antispam-prvs: <AM0PR04MB4354421C3F24C0AF794E19CDE2320@AM0PR04MB4354.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(366004)(396003)(346002)(136003)(189003)(199004)(66446008)(2501003)(26005)(81156014)(66556008)(110136005)(71190400001)(53936002)(2201001)(99286004)(52116002)(76176011)(316002)(54906003)(2616005)(3846002)(6116002)(2906002)(71200400001)(102836004)(256004)(478600001)(386003)(6506007)(186003)(14454004)(486006)(11346002)(476003)(446003)(50226002)(305945005)(66066001)(66946007)(7736002)(64756008)(73956011)(86362001)(8936002)(8676002)(81166006)(6436002)(25786009)(6486002)(5660300002)(68736007)(1076003)(66476007)(6512007)(4326008)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4354;
 H:AM0PR04MB4865.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MwZOEBeaRrJI5Ml+4IbpJRA+TLRPMG/8jPLFDyRQIUatRzEc3iED6e3oNsa34e8LgMNLAIZgas0NiWE6C45vhRxNF+QE360U+ytcqnAVQmh3OM1TJTKRaLrsAaYs4BtmK38/nxn3Bum45mpNvM6F+7gI9Wy0rzgqZ4Kwssyoyj38vW3Qqn+J0Og9gzKYqh1IgpPp7GdpX3Tjhi6BVqbY/mtyzcNdsY6IanGG2OaMELchtujNFAIGtFyAdQRcGwd6bL+ZtLek0IxsNCBZmKJnqudIYvefAXuZaMv3Er2aV5ki6Y37ZDjFG1/yMUB/kV2qDTvhlnx9z86PhlSKGFASXCe6E5rMscxPYq8RL1OdadSBuOUvAbU2qbTF5uZAMxp+Cx6jUURyeYJGUQ2rIZ+lRG9TtHNm9/A562P5dgAabw4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 341078f6-462e-49f5-bd4c-08d6d39bf8a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 10:00:16.9036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4354
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_030024_126258_396E1D0A 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.89 listed in list.dnswl.org]
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

This patch add HDP PHY Controller related nodes on the LS1028AQDS.
Now LS1028AQDS on DP has following features:
- Supports 4 dp lane channel and lane mapping is 1-0-3-2.
- By default, the pixel link rate value's 27Mhz.
- By default, support the resoluions are 4k@60,1080p@60,720p@60,
480p@60. also user can specify any combination of monitor supported
resoluions by written in the node 'resoluion'.
- By default, the edid function is not in use.

Signed-off-by: Alison Wang <alison.wang@nxp.com>
Signed-off-by: Wen He <wen.he_1@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
index b359068d9605..c8a92d4c4964 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
@@ -153,3 +153,15 @@
 &sai1 {
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
