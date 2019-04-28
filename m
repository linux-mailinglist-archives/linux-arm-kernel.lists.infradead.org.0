Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B21AAB5CC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 11:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4uGPJQWIA2KuW59DIUhQCt8Dgnxm977Q9Ohg6Bek5a8=; b=Uiyx5lTp8uepmD
	C2V6lG9CxY8H82n9eGPrv6xRcim1fOpL0GqBw1qHeQWSxwQOFUDwdI7cYXNz6YUhfU/mR5phBB1SH
	nGeakFUDq0on49x318pJ2qy/rHg33B/Gn43Kb+3SvGC1JtcU8T6YY39gRQbdnlQat0/j9fZj0kUOn
	cMDDhBOqdfnz4BAzX0OPPmh46hq+UzdyGHGHJ7AP51zP5msGCK2z2htzU7zxp79jYqD2IqX0uC/gY
	Wf7pxR2ZkyXrUUc6NHkSc8+g9IeZYvydUh/ZSs4aD9pGZSByI/G21mT1uEhiBSvTUiXFtcKyUWClB
	Fqpc4qOtSHEPZwe726Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKgUX-0005uH-Hp; Sun, 28 Apr 2019 09:53:01 +0000
Received: from mail-eopbgr30082.outbound.protection.outlook.com ([40.107.3.82]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKgUQ-0005tj-AN
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 09:52:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GH/3FWEXzmXk6SRD8UQBZdibKbpa0jZEZRwSldsIEdw=;
 b=t8f5bxDnVwuk1+OHy2RvAuYdarIH4nS3fMiupJSWg1eXsF/Cq0Yh6zZim4u68XrEg0iXDqrMv3r7z/75P6qUCymYXD1pTFrLApw5P0DbbbLxkjMtzFawN/H7sl/YPN2JnrAQsqKafWHjTT1BNhWRdwBdH2e13NsqLDpJGwQs0Sc=
Received: from VE1PR04MB6479.eurprd04.prod.outlook.com (20.179.233.80) by
 VE1PR04MB6350.eurprd04.prod.outlook.com (10.255.118.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Sun, 28 Apr 2019 09:52:49 +0000
Received: from VE1PR04MB6479.eurprd04.prod.outlook.com
 ([fe80::6c03:86ad:729d:e311]) by VE1PR04MB6479.eurprd04.prod.outlook.com
 ([fe80::6c03:86ad:729d:e311%7]) with mapi id 15.20.1835.016; Sun, 28 Apr 2019
 09:52:49 +0000
From: "S.j. Wang" <shengjiu.wang@nxp.com>
To: "lee.jones@linaro.org" <lee.jones@linaro.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] mfd: imx6sx: add MQS register definition for iomuxc gpr
Thread-Topic: [PATCH] mfd: imx6sx: add MQS register definition for iomuxc gpr
Thread-Index: AQHU/agjfPz5ks/OzEakw7KYMflrHQ==
Date: Sun, 28 Apr 2019 09:52:48 +0000
Message-ID: <1556445161-29477-1-git-send-email-shengjiu.wang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 1.9.1
x-clientproxiedby: HK2PR0401CA0011.apcprd04.prod.outlook.com
 (2603:1096:202:2::21) To VE1PR04MB6479.eurprd04.prod.outlook.com
 (2603:10a6:803:11e::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=shengjiu.wang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 95739329-d3ea-4b7e-9f3b-08d6cbbf456f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6350; 
x-ms-traffictypediagnostic: VE1PR04MB6350:
x-microsoft-antispam-prvs: <VE1PR04MB635094D55453A52860F7F9ECE3380@VE1PR04MB6350.eurprd04.prod.outlook.com>
x-forefront-prvs: 0021920B5A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(136003)(39860400002)(346002)(396003)(189003)(199004)(6116002)(81166006)(2201001)(86362001)(68736007)(256004)(8676002)(2501003)(3846002)(99286004)(305945005)(7736002)(81156014)(8936002)(50226002)(71190400001)(71200400001)(476003)(486006)(2616005)(26005)(4326008)(6512007)(102836004)(6436002)(386003)(25786009)(6506007)(2906002)(186003)(6486002)(66066001)(5660300002)(316002)(53936002)(73956011)(52116002)(36756003)(97736004)(66476007)(66556008)(64756008)(66446008)(66946007)(110136005)(14454004)(478600001)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6350;
 H:VE1PR04MB6479.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zTSsNZ0jfOmgDnz97nDkAn8DxHeXNQOsWUtC2fz8XhhEzBLwvTarxJNK0VLuO87y07VwLjzDL3yUprSFbeoR3dZXoByVC3JfjwYAgPgiUt99/oxauSEnPE8m6Y3Thg6lkm1wyf2AtqEWdy7w5c1J0QUJQG7/biu87cVW0WTyHw2eHc5nRehFkC1KuxcoEacM7x+9KgWxVMqSvwE/sMf8DFvhslt5Q1TUuB3G6khM1YY0CDsyzi1vwWAry/heeNGDrgM2WQAyuk6T8/Bca0ncruyNoFbAEclrxIoji8896go9L2uB7RsJxOqhTC/4gfQieYonarinB+X1AJcoGfWoopMA0o9sRlLU2napsJi/mwqQ5JN2JneUcv8dBP+3b+DtHRHtZEtST5KSMJvIelDe3Kc3SGDhyFTLjTP0XtXOV2Y=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95739329-d3ea-4b7e-9f3b-08d6cbbf456f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2019 09:52:49.1204 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6350
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_025254_413005_04246334 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add macros to define masks and bits for imx6sx MQS registers

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 include/linux/mfd/syscon/imx6q-iomuxc-gpr.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/linux/mfd/syscon/imx6q-iomuxc-gpr.h b/include/linux/mfd/syscon/imx6q-iomuxc-gpr.h
index c1b25f5e386d..f232c8130d00 100644
--- a/include/linux/mfd/syscon/imx6q-iomuxc-gpr.h
+++ b/include/linux/mfd/syscon/imx6q-iomuxc-gpr.h
@@ -410,6 +410,15 @@
 #define IMX6SX_GPR1_FEC_CLOCK_PAD_DIR_MASK		(0x3 << 17)
 #define IMX6SX_GPR1_FEC_CLOCK_MUX_SEL_EXT		(0x3 << 13)
 
+#define IMX6SX_GPR2_MQS_OVERSAMPLE_MASK			(0x1 << 26)
+#define IMX6SX_GPR2_MQS_OVERSAMPLE_SHIFT		(26)
+#define IMX6SX_GPR2_MQS_EN_MASK				(0x1 << 25)
+#define IMX6SX_GPR2_MQS_EN_SHIFT			(25)
+#define IMX6SX_GPR2_MQS_SW_RST_MASK			(0x1 << 24)
+#define IMX6SX_GPR2_MQS_SW_RST_SHIFT			(24)
+#define IMX6SX_GPR2_MQS_CLK_DIV_MASK			(0xFF << 16)
+#define IMX6SX_GPR2_MQS_CLK_DIV_SHIFT			(16)
+
 #define IMX6SX_GPR4_FEC_ENET1_STOP_REQ			(0x1 << 3)
 #define IMX6SX_GPR4_FEC_ENET2_STOP_REQ			(0x1 << 4)
 
-- 
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
