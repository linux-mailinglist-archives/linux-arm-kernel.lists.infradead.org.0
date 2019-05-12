Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 054931ABCA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 12:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dn26HcE5VzHeLvEIeevacHiy+cpB/2rVYCjcHZWe5dI=; b=m2J/I70l/EZXYL
	bwUBGfuf7rgo9EEt8bWlj1P9SHccV6YwQX1+GZn3ruWWnjgra3gJQgYN6+OCSfMWdFD0U1btDxxLf
	bXtzsCFGe4ucst7UUVSc8974jRrghRiYvnI+iGSSP+O6DbURMP+d2hn5BW2uhFRXPqBbpuq1Hk+oq
	SVgdO1s4TXuLrIm3o9ar67SA7DYa/5VJxn/Cv6VRfQ81VeIovHKlGqOmHRJmCGZTmngjM+GlOx2hf
	QKXUSM6C+Q/06MPbQ/l9ZrWe8hDLLRAnHwpcmb/ihy6Zq44B5iw2AEwNVVrMuvEg5iMuWZ5zuvEO8
	rThuR+21KikAdu1dRTzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPlec-00058s-9z; Sun, 12 May 2019 10:24:26 +0000
Received: from mail-eopbgr80089.outbound.protection.outlook.com ([40.107.8.89]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPleT-00058J-Qk
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 10:24:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JsHyy5VJgiWsLf0tWEzdrvTf3kLNw/sCXTHWc+VAdJQ=;
 b=L9/q0iKw6TSt9pIcYkhjdj2Xyr2by3Ap3h4vI9td82vKWlaQoXns3O+mLQdTWi5Or7i1XS6bf/pYUfGABqQ2N6Vdm48HmMJO7U8XNTCTHmankdq4hyB6rtHvvNr9+hp8K9ZbeEfxv75TcvTJ4DGi2gKU9P/7GClHDaQmD33Qe8w=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3675.eurprd04.prod.outlook.com (52.134.69.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Sun, 12 May 2019 10:24:12 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Sun, 12 May 2019
 10:24:12 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Aisheng Dong
 <aisheng.dong@nxp.com>, "tiny.windzz@gmail.com" <tiny.windzz@gmail.com>,
 "pp@emlix.com" <pp@emlix.com>, "colin.didier@devialet.com"
 <colin.didier@devialet.com>, "robh@kernel.org" <robh@kernel.org>, Jacky Bai
 <ping.bai@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "hofrat@osadl.org" <hofrat@osadl.org>, "michael@amarulasolutions.com"
 <michael@amarulasolutions.com>, "stefan@agner.ch" <stefan@agner.ch>, Abel
 Vesa <abel.vesa@nxp.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH RESEND 1/2] clk: imx: Add common API for masking MMDC handshake
Thread-Topic: [PATCH RESEND 1/2] clk: imx: Add common API for masking MMDC
 handshake
Thread-Index: AQHVCKzXj5CeLLFh1kCpP4B8xSmy8A==
Date: Sun, 12 May 2019 10:24:12 +0000
Message-ID: <1557656348-13040-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0036.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::24) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 97fdc2b7-a1a7-4a0d-6bf5-08d6d6c3fa17
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3675; 
x-ms-traffictypediagnostic: DB3PR0402MB3675:
x-microsoft-antispam-prvs: <DB3PR0402MB3675370625D6371605417799F50E0@DB3PR0402MB3675.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 0035B15214
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(39860400002)(396003)(346002)(366004)(199004)(189003)(14444005)(3846002)(6116002)(256004)(7416002)(2201001)(26005)(2906002)(66476007)(66556008)(64756008)(66446008)(5660300002)(8936002)(102836004)(73956011)(66946007)(6512007)(6506007)(71200400001)(386003)(99286004)(71190400001)(476003)(86362001)(2616005)(486006)(186003)(52116002)(110136005)(25786009)(14454004)(4326008)(305945005)(478600001)(2501003)(6436002)(7736002)(6486002)(53936002)(36756003)(68736007)(316002)(50226002)(66066001)(81166006)(81156014)(8676002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3675;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nHeNxPNSywblom9gjuTzn6EGrSM2HhQMYOlLl8OUyA/Jdv6GtBRjYuta3N/t5W/YV1vel0gmnGHC5tyvduaeaGntotk3rfcGfFmGASMm6HZVRS3/l7pDCOWoOwDV6OFIhb5wBucBjCahuEEbofk9grReKd6/jfHVpSQdayDbD0GvzP6UT6Ndz6f1o7yz1d+ILjJ0MyeDIX8pqOqmbJro9MYhjT8ByEbAiryEME+Sus5iZ4fM8K8Q4gXYAM7IXcHLb0v3WH1lDjnyygea8vQCROvvih3QsIcevKGbBpqYsHYPR/jZgYcf7yatH/Qjdthz/O3fT1G08QDnPUpcCdKawYOWU89mL5Mq7Rpk46Y4qDJAmAUK0sZYBZsFcutyh2UBHY3LbvB4FISpktVmg/HHJwEIOYv45evhu+n+sV4Wjq4=
Content-ID: <A76FF3D684F8BF428F56D299B6EE8572@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97fdc2b7-a1a7-4a0d-6bf5-08d6d6c3fa17
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2019 10:24:12.8153 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3675
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_032417_869346_772C507A 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
No change, just resend patch with correct encoding.
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
