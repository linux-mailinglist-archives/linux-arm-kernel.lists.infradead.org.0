Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07070114CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PIhGyRBU9/DgpooNcYcHqSDRhfw3t3s0mNZ3E/Lu7VM=; b=ksUGyKAwVkRRsN
	Nh3VkCbn497gz6lrGb8faReoC8OzoW2GHfET4wbzEyAxWiQD9Qgty7Fk526rDBa+B0FG07slU2Bdv
	zQNrhSNuJqY+OdwWo6FmL3gTOb2/F/SLo3+ozvrGaY/DB8AIn6qdBYwYibdyVdejnWUyPL7CPtul7
	d8Vp+w5OEGpvFKEBZayzKSftE4qbuDb9eiA1QehJn4UxFIYs8cnd72NxnX05QT5mIFl8j+w/heXAI
	BeHwrAgSQu7VO7g3KDccls4aBetbG0O5KsSVCj/0A3DO6jG+ln5gwkB5YrA0UhI/eugWI8Rt/GxnM
	5A7RSbTdRWsYqzWPB/jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6l5-0006hi-2I; Thu, 02 May 2019 08:07:59 +0000
Received: from mail-ve1eur01on061c.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::61c]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6k1-0005LF-JG
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:06:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WF9uHNOS2uLHLx0k6rAAqNW/V9aASYd5kznhvt4+XTM=;
 b=pIWzDcVeREznlL0sbCGWd3u8cBLm3zOiCPKaCXfhTE5LIHNKOY7KJIVxUe9pGCEZqmLt9aK28Rwygr4g+3PXppia6zY1I/6sEmBMrU6R7adwihMlhl9k8HH4PmyEdpVgAS4mUXuFhDsb88+t+XvoP0skXihpB1rvGsz0D1W+NeE=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4563.eurprd04.prod.outlook.com (52.135.144.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Thu, 2 May 2019 08:06:44 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 08:06:44 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <fabio.estevam@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v2 05/18] clk: imx: clk-cpu: Switch to clk_hw based API
Thread-Topic: [PATCH v2 05/18] clk: imx: clk-cpu: Switch to clk_hw based API
Thread-Index: AQHVAL37FpiL5xT6JUqEET5f3vjLMA==
Date: Thu, 2 May 2019 08:06:44 +0000
Message-ID: <1556784376-7191-6-git-send-email-abel.vesa@nxp.com>
References: <1556784376-7191-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1556784376-7191-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0501CA0041.eurprd05.prod.outlook.com
 (2603:10a6:800:60::27) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 04c2db65-7541-4b68-181b-08d6ced51dcb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4563; 
x-ms-traffictypediagnostic: AM0PR04MB4563:
x-microsoft-antispam-prvs: <AM0PR04MB456322771AA82628FA77A373F6340@AM0PR04MB4563.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(376002)(346002)(366004)(199004)(189003)(53936002)(66476007)(66556008)(64756008)(66946007)(73956011)(66446008)(66066001)(6116002)(36756003)(3846002)(305945005)(86362001)(6486002)(81156014)(6512007)(81166006)(25786009)(8676002)(4326008)(71200400001)(71190400001)(99286004)(8936002)(14454004)(76176011)(50226002)(11346002)(446003)(2616005)(68736007)(478600001)(386003)(2906002)(6506007)(52116002)(316002)(44832011)(54906003)(110136005)(26005)(7736002)(5660300002)(256004)(102836004)(186003)(14444005)(486006)(476003)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4563;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5+yV+yODsI/vqluS82qm+y+fHvti68kL3ldr57F8Hc7vzYjRX5ciFAe0uAe8/E2EBJctAXaMNd1G5QmvGwdbSBDoAzWeqwMmf7kXtqnLW3qMXT24Fq7sadEVNlXjLGCxG8mAmtyZnxW+cyz1KsKu3v+BVcDi40CIw6+m6R916IhMPKqd6sCFSRog14K4vGZ3f61Jokx3iR1iJHm9rGIaPfsNe6obbuzTnaHEqKXB65ZN3n0qfwN3WIQ3m2nkMh/sAVvhJXJICyopmzp/dJ3yK1INtOfmx4QmLnuYu4eCaW/p+8C4qEfQfja8s5TjwpqZFvx1511el2aSZr+HF6aPKHSKpGgts2Xij6xyY8u1puKGRl1F5uJKCqj1tNecfRmHOnBl8vKRk5cnxVWdNRIFCT8Jj54f8mmAu0JaWXx2COQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04c2db65-7541-4b68-181b-08d6ced51dcb
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 08:06:44.4907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4563
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_010653_962822_29EED153 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:61c listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch the clk_cpu clock registering function to clk_hw based API and add
a macro for clk based legacy. This allows us to move closer to a clear
split between consumer and provider clk APIs.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-cpu.c | 14 +++++++++-----
 drivers/clk/imx/clk.h     |  5 ++++-
 2 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/imx/clk-cpu.c b/drivers/clk/imx/clk-cpu.c
index ed1b7e9..a7b9005 100644
--- a/drivers/clk/imx/clk-cpu.c
+++ b/drivers/clk/imx/clk-cpu.c
@@ -75,13 +75,14 @@ static const struct clk_ops clk_cpu_ops = {
 	.set_rate	= clk_cpu_set_rate,
 };
 
-struct clk *imx_clk_cpu(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_cpu(const char *name, const char *parent_name,
 		struct clk *div, struct clk *mux, struct clk *pll,
 		struct clk *step)
 {
 	struct clk_cpu *cpu;
-	struct clk *clk;
+	struct clk_hw *hw;
 	struct clk_init_data init;
+	int ret;
 
 	cpu = kzalloc(sizeof(*cpu), GFP_KERNEL);
 	if (!cpu)
@@ -99,10 +100,13 @@ struct clk *imx_clk_cpu(const char *name, const char *parent_name,
 	init.num_parents = 1;
 
 	cpu->hw.init = &init;
+	hw = &cpu->hw;
 
-	clk = clk_register(NULL, &cpu->hw);
-	if (IS_ERR(clk))
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
 		kfree(cpu);
+		return ERR_PTR(ret);
+	}
 
-	return clk;
+	return hw;
 }
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index ead668e1..996dcc6 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -55,6 +55,9 @@ struct imx_pll14xx_clk {
 #define imx_clk_busy_mux(name, reg, shift, width, busy_reg, busy_shift, parent_names, num_parents) \
 	imx_clk_hw_busy_mux(name, reg, shift, width, busy_reg, busy_shift, parent_names, num_parents)->clk
 
+#define imx_clk_cpu(name, parent_name, div, mux, pll, step) \
+	imx_clk_hw_cpu(name, parent_name, div, mux, pll, step)->clk
+
 struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
 
@@ -383,7 +386,7 @@ static inline struct clk_hw *imx_clk_hw_mux_flags(const char *name,
 				   reg, shift, width, 0, &imx_ccm_lock);
 }
 
-struct clk *imx_clk_cpu(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_cpu(const char *name, const char *parent_name,
 		struct clk *div, struct clk *mux, struct clk *pll,
 		struct clk *step);
 
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
