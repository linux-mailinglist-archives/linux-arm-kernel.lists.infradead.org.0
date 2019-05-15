Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C27B41F459
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 14:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YC0cMO1MYmART215ZNjpjm+2EocPQRGqR9WZ0NjDJrc=; b=NdRA1jO4p3KXMk
	QTrnjMZMk7Wozs+U81xikwSgsgZAgjOl8LwAxslKOpZHG9ur8HXmPtrp9sxncxPELZLUSImSkHOiS
	h/NhV57Wm8RrCklQW/K3IKVAqJm0Cq6IcknfUEsYkI5hNG/7JiV6Vlkxs0B1XAXnXKqaBZShfhUUO
	nNdzhR9UwwsJtCajVESEOeRBYO5ee4tYsyJ+nRWF0kEmUeMqWgt5Prmq/4QrByGCuBMlZ2D+09EfO
	9eogSNDqPT/vXPR+j4U6qf1zXdsLAEoiA9wzaJX6LAaYgTejAO1xDuiEhRdM5chVlE79v5tlA5/qt
	PN/pIJPXbVgo6hlQzY7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQt1D-0007ZC-TG; Wed, 15 May 2019 12:28:23 +0000
Received: from mail-eopbgr150087.outbound.protection.outlook.com
 ([40.107.15.87] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQt17-0007Yf-8S
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 12:28:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jZ10VM0E0QGH+rFqn+KCRa0x5MdVNWbZ2uV9Wh376JI=;
 b=AqPqrT5HrrjsZ/E1b/BtEOa7Q9Oe7xML1e0jZ8xILy1nFWb5sPxqBkcZPiYjMY45w1CQ1o9C2xdVM0/Z71+Z6B2swAlmMt2fh/w4tnghDiWy+ngfVmTUINr9WhMVlUbzN2XIYMeAxKibO8f93j9oqV5X0or0EJH56xkRCnyt4/4=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3946.eurprd04.prod.outlook.com (52.134.72.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Wed, 15 May 2019 12:28:13 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Wed, 15 May 2019
 12:28:13 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Aisheng Dong
 <aisheng.dong@nxp.com>, "tiny.windzz@gmail.com" <tiny.windzz@gmail.com>,
 "pp@emlix.com" <pp@emlix.com>, "colin.didier@devialet.com"
 <colin.didier@devialet.com>, "robh@kernel.org" <robh@kernel.org>,
 "hofrat@osadl.org" <hofrat@osadl.org>, Jacky Bai <ping.bai@nxp.com>, Leonard
 Crestez <leonard.crestez@nxp.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "michael@amarulasolutions.com" <michael@amarulasolutions.com>, Abel Vesa
 <abel.vesa@nxp.com>, "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, 
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V2 1/2] clk: imx: Add common API for masking MMDC handshake
Thread-Topic: [PATCH V2 1/2] clk: imx: Add common API for masking MMDC
 handshake
Thread-Index: AQHVCxmq80TspEKNo0uWdJG5ctX+bA==
Date: Wed, 15 May 2019 12:28:13 +0000
Message-ID: <1557922984-20811-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0031.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::19) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dcad10e4-0a7e-423a-ebf7-08d6d930cc51
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3946; 
x-ms-traffictypediagnostic: DB3PR0402MB3946:
x-microsoft-antispam-prvs: <DB3PR0402MB39463515D1C6FBCA84E30F49F5090@DB3PR0402MB3946.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(136003)(396003)(366004)(199004)(189003)(5660300002)(68736007)(99286004)(8676002)(36756003)(2501003)(50226002)(66066001)(256004)(14444005)(110136005)(14454004)(478600001)(81166006)(81156014)(8936002)(52116002)(66556008)(3846002)(73956011)(6116002)(6486002)(64756008)(66446008)(7416002)(2906002)(2201001)(66946007)(6506007)(102836004)(6436002)(7736002)(305945005)(6512007)(386003)(316002)(26005)(86362001)(486006)(71200400001)(71190400001)(4326008)(25786009)(476003)(2616005)(186003)(66476007)(53936002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3946;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: k0N4P84mGLD6Scdfuxo96GiZVd3ggiZeJeFvP9RZdmVKGed4/dCQMOXra7w6kWDYPVXLg9fCrtlJIb1WjD6rI1fI8vrrKbWMdL15Ne9FQ6vSkIRdeo257OsCEYupqGde61CC7ap40/MlG1Ls6Ao3zREs8apw2DVZzQTiZ9+c0ggv+cdNZg4nAaO5REv4Z3lcIRzydGXvvA9zkhGN6spZwlJVQp+S603Rvz9Q7EtyIxkmN8wBqDtikepgQhumpmTegRUG2REphdW7aZ1FRsfSdB6AQNI6aneIj7V/fjZVQJcCgFT40NkeiJwsJlw4zi+tX7ljzEB0jPzcJ6wfjI1F5eBO223tNgHx1i7FxdcCa6VctRBkEel2waJl4eOy/NlkBokMsJj5fzs2q1MYsHeQxHkGiKe4viT4Vypl/olWWVA=
Content-ID: <02B300F23F96AE42A8237D96181AD782@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcad10e4-0a7e-423a-ebf7-08d6d930cc51
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 12:28:13.3645 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3946
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_052817_386808_43C0241C 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Changes since V1:
	- add necessary "io.h" head file to avoid build error based on latest linux-next.
---
 drivers/clk/imx/clk.c | 15 +++++++++++++++
 drivers/clk/imx/clk.h |  1 +
 2 files changed, 16 insertions(+)

diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
index 1efed86..9cd7097 100644
--- a/drivers/clk/imx/clk.c
+++ b/drivers/clk/imx/clk.c
@@ -1,13 +1,28 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <linux/io.h>
 #include <linux/of.h>
 #include <linux/slab.h>
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
