Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8843A13DC6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 08:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fKT9cs0DDuCixunQrQn9uDyHHQJGkStJRQQ9WxOu47o=; b=svHFyI66PpGBKw
	1PO4x+RzSs53d7To13hhH26RobcFqqAdipDWZs1TwzXvGdWnv9Eqq9leXef90g1MF2DZYX1TVW9v2
	lkk4kLqlseL7FbfUnMtsRX44/KIZquXd85+uDS+t8fOXl9aIRFBxu12JyTJSwueOOFxfyFKtW7bPZ
	q6fN7xAq2oPc5o7S3T0yb6cwaLCEFQVJn0gGbQQsNqrjA0R0Nnjs7Awc2yGk5TXYtpsytQpreE9EI
	hAg/yWFNRUDifzyYNTZIsCA+rtR9oeyMGE05/TpC7PaPAGLhUBsR7B4PAGhqI7DmiOlcjU+bUWWO+
	dLncugwH8Zt1Zo6eC7iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNAUT-0005Qo-2A; Sun, 05 May 2019 06:19:13 +0000
Received: from mail-eopbgr80048.outbound.protection.outlook.com ([40.107.8.48]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNAUF-0005Pu-7r
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 06:19:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jy5klBXohqkhr/d8PTb5lbUr957CztOnm8TydtplmXc=;
 b=kcbKRt5RikDnzoVSNepczO3ZbnRKy1U4oNMfnbANAVLH5xJG1YuaIlwFYByJOOqne6bosHzYngMSxkLK+67XonT2YhIhAhxRl/rn6W6y6tZCK0nXU054BkjDeMyLyJEx4hLRCDkFSErD7JXfpvPkgowpOjxCFlxg2Rwjc9epOoc=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3947.eurprd04.prod.outlook.com (52.134.67.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Sun, 5 May 2019 06:18:48 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 06:18:48 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Aisheng Dong
 <aisheng.dong@nxp.com>, "pp@emlix.com" <pp@emlix.com>,
 "tiny.windzz@gmail.com" <tiny.windzz@gmail.com>, "colin.didier@devialet.com"
 <colin.didier@devialet.com>, "robh@kernel.org" <robh@kernel.org>, Jacky Bai
 <ping.bai@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "hofrat@osadl.org" <hofrat@osadl.org>, "michael@amarulasolutions.com"
 <michael@amarulasolutions.com>, "stefan@agner.ch" <stefan@agner.ch>, Abel
 Vesa <abel.vesa@nxp.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] clk: imx: Add common API for masking MMDC handshake
Thread-Topic: [PATCH 1/2] clk: imx: Add common API for masking MMDC handshake
Thread-Index: AQHVAwpmnCdleDO3TECDUWrDtJQRdA==
Date: Sun, 5 May 2019 06:18:48 +0000
Message-ID: <1557036830-13567-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0001.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::13) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b243de87-7dfc-4576-7ca2-08d6d12188a5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3947; 
x-ms-traffictypediagnostic: DB3PR0402MB3947:
x-microsoft-antispam-prvs: <DB3PR0402MB3947FFDEC7F5DE52B1008792F5370@DB3PR0402MB3947.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(346002)(396003)(366004)(39860400002)(199004)(189003)(486006)(36756003)(7736002)(186003)(7416002)(52116002)(110136005)(2616005)(476003)(14444005)(99286004)(256004)(50226002)(86362001)(81166006)(5660300002)(8676002)(81156014)(2906002)(71200400001)(71190400001)(102836004)(26005)(305945005)(8936002)(6506007)(386003)(73956011)(66946007)(66476007)(66556008)(64756008)(66446008)(2201001)(6436002)(316002)(3846002)(53936002)(478600001)(6116002)(6512007)(25786009)(14454004)(68736007)(6486002)(4326008)(2501003)(66066001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3947;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cfz+p+Rnr7SZz1pkphfJTmI7JU1YeEXV6iSEP3G9WSOG2QwD0nJ8Y/+OkkcFmpFLxLFQom2cEeOw+usPoz75gbN9vgeUkaU7abyiRa+AhVogbNHF6C1GLyZW/h3OVUrHCzv5mOsXHof5kU8FOUEvtGKbQ7JjJYqcB1oXWIfcJyu9xObbGuk0ppfEEcVEHGrg7Xhz5jQt3Ncc3p2SDWuiC6JoVe59B478y1bi5DEf6a5zmdieoewfSovZot7RomT1GoDJ4hJr/RMKhsGtAKgYB77wKaOiMJnPYTgjs8AInPO7bicayu6hIlQyuIfPKxcPCOB9vBu2hbCk2SzZ1zdIpcnmZD332Y67M/H6kHuipOZn5qRh5rUKXSoKjtjq8gIAH2KhdhJTaTm0GujUgtiHCfXSNEYN8AewG5IRab+j370=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b243de87-7dfc-4576-7ca2-08d6d12188a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 06:18:48.1530 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3947
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_231859_285849_494F853F 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All i.MX6 SoCs need to mask unused MMDC channel's handshake
for low power modes, this patch provides common API for masking
the MMDC channel passed from caller.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clk/imx/clk.c | 14 ++++++++++++++
 drivers/clk/imx/clk.h |  1 +
 2 files changed, 15 insertions(+)

diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
index 1efed86..6f9bcee 100644
--- a/drivers/clk/imx/clk.c
+++ b/drivers/clk/imx/clk.c
@@ -6,8 +6,22 @@
 #include <linux/spinlock.h>
 #include "clk.h"
 
+#define CCM_CCDR			0x4
+#define CCDR_MMDC_CH0_MASK		BIT(17)
+#define CCDR_MMDC_CH1_MASK		BIT(16)
+
 DEFINE_SPINLOCK(imx_ccm_lock);
 
+void __init imx_mmdc_mask_handshake(void __iomem *ccm_base,
+				    unsigned int chn)
+{
+	unsigned int reg;
+
+	reg = readl_relaxed(ccm_base + CCM_CCDR);
+	reg |= chn == 0 ? CCDR_MMDC_CH0_MASK : CCDR_MMDC_CH1_MASK;
+	writel_relaxed(reg, ccm_base + CCM_CCDR);
+}
+
 void __init imx_check_clocks(struct clk *clks[], unsigned int count)
 {
 	unsigned i;
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 8639a8f..6dcdc91 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -10,6 +10,7 @@ extern spinlock_t imx_ccm_lock;
 void imx_check_clocks(struct clk *clks[], unsigned int count);
 void imx_check_clk_hws(struct clk_hw *clks[], unsigned int count);
 void imx_register_uart_clocks(struct clk ** const clks[]);
+void imx_mmdc_mask_handshake(void __iomem *ccm_base, unsigned int chn);
 
 extern void imx_cscmr1_fixup(u32 *val);
 
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
