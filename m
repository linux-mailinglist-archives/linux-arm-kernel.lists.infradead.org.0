Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DABE6151B88
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 14:42:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0mRgN2tbxvWE9jZjj/ZBy/obZuCFYMetgkJDk3Hy4g=; b=oajwzdc2yG2n+j
	eP9Twdg0sKLCzNqgf9DOr/t3dh07rJTTwAJjtuFB2td/HaTQfGI+o+xMMry2939gQhx5ERX9iIOn9
	M3mHQWfN4b0tIDL+ct35NZE6UyUef38GWnf4MYRVlcFB+/ihuqUo1/hSorVgqm6NFszBB13aO6nrU
	yTlV381Nf4RRQ0MXcYQs2GEsRkPc/tyx/FI+F3WNN8J4daYh2HGvLljGnS9hVx5Hl3q39KPdiSNzX
	JCtDk/mVTSN8cpkLEUe5wmompzfCLSpyUdINyoNOTXRTC86mGpusfFUGdTfpTtv+TEizGo2nGWVi0
	l4/efOeSusoMaT5SJ8nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyyTM-0006NW-Cw; Tue, 04 Feb 2020 13:42:36 +0000
Received: from mail-eopbgr150084.outbound.protection.outlook.com
 ([40.107.15.84] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyySH-0005ZB-E6
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 13:41:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R3ftOINwGo+HFxru8tipcMgRpGhcR3H/NSZZLGhFdH9toaVxb6C645WkCcKI4fRz2yAXaA5ye16R63XZ+iAIebnxDBB8gt6MwTIMrj1Fl4pKLFWExw57NgocX9RIyCgFJeOzTNdA5DJKwrQHY844NTML4gpPAVT2/gzGOqMy2DcO/ucs72cIbYLd6aoX/UHzogVF531LZirOoDVgBuwznMDWIya58GVcMqZSiYuqFx8/Eg65LVYieCJuKSv9NnK7wCr0ek5ZpDuoEb0Pj5GECtUWtkq2o2CRHevRDKoiuACvhlPcBVnrwr7pSzefTZRRszQDOVz3+yK10MbKg/fjMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=856MVVHfaue28uC7j+zrjbOHalXQ/kbePxN3row+0Yg=;
 b=bETpXd+rF5C0zTu3lg6dSw7qR1O1plN+1spl9UthFh4gW6526pHurte48Piqrq/k7/vSpbEpIs9+uSmmp7nC5xHInCP8txpLc2QtUh5zbAlbCh8K2S5OLWJHDhA+RhmQSPFqxQSYvx8mHyUOfLpNKbjDxkc3q3H4j3HaGneZv6BAHeUVZUL9ZBBZGiEThpyn+D7AIHw+J7SQ9JLqqbiXO5ShnFYPWYxXLkVp/YM6QUU4EpGTDw62V3oMXKdXuJiWBkh3wBy/7cUKxPWVSTKTYcpqwAQ0sPh1ugczwVU/39CPekZKu58PmUzGasGtYNIyoATdNSKlGLrYPa7rJyiTEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=856MVVHfaue28uC7j+zrjbOHalXQ/kbePxN3row+0Yg=;
 b=nytRbPL3+ftY8W0um3Q3Jon/NiY6zxsUBSx620L3WOXi68WEaEI6zGsdN+M0lsf0T4lcKwfQFJBhSyPzqVqdBxgXFBuojxG6u3zaL/2gFYftVpHVT1wttFK/V9GsvPN8WNH24Osm1o8mLxvxIT4LIUB55pV80LPy2z7PfeiBY7A=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4851.eurprd04.prod.outlook.com (20.176.215.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Tue, 4 Feb 2020 13:41:27 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2686.031; Tue, 4 Feb 2020
 13:41:27 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 abel.vesa@nxp.com, aisheng.dong@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH 4/7] clk: imx: add imx_hw_clk_cpuv2 for i.MX7ULP
Date: Tue,  4 Feb 2020 21:34:34 +0800
Message-Id: <1580823277-13644-5-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580823277-13644-1-git-send-email-peng.fan@nxp.com>
References: <1580823277-13644-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK0PR03CA0107.apcprd03.prod.outlook.com
 (2603:1096:203:b0::23) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR03CA0107.apcprd03.prod.outlook.com (2603:1096:203:b0::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2686.28 via Frontend Transport; Tue, 4 Feb 2020 13:41:23 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 483429a0-f596-40ef-188c-08d7a977eeee
X-MS-TrafficTypeDiagnostic: AM0PR04MB4851:|AM0PR04MB4851:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4851111B273284B6830D2F3D88030@AM0PR04MB4851.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 03030B9493
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(396003)(39860400002)(366004)(199004)(189003)(26005)(956004)(2616005)(316002)(6486002)(186003)(16526019)(8676002)(2906002)(69590400006)(81156014)(36756003)(6506007)(81166006)(86362001)(6666004)(8936002)(478600001)(66946007)(66476007)(66556008)(4326008)(52116002)(9686003)(5660300002)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4851;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ntERt7V2Ae1q9yW6Wb1cXzhnou5gZoHOjuI2B1WKsGIDXetydDN5d/z2pwGXpTjcO8j22FysB6bE2SMF+ERQKcropowPjZvgjJUgdCxsfKsJEtN3gtVX0xUrOsMFrdCczT2G69mZEIthL3ItPtaWMjPKBpf8JI3eQAKAEAuh+Q4oCDkGH2U+PTikave5iDCnhqH0uphCwI3WKgWdRfXyoMOYhLO+dqIyt1Zp26nbTDhaToRRHTnDj0ki+GZsXxvW/OnPgmw+V9lNnAQgspUj4OQn+JrDF7NW5zwRb/I9K/Fac1Ot8ZBZC94/qx2aGKgnX4CoFL/+Rn3nJvx/gwOTsLOXvxOuDLOzKs8XEnF3IuQFlEhRHqolaaDAv4zYnTey6bpvFHj+OU146n3skA1Vbe511uIukn3BoiT5Psf/kVIU1IghMkOTnZ/UNiZ0iutUVsSE8XEldgC7EQOSGlmfqSCOXUv0KetdRCe5TonNE8YKcSinu7MYe8BMGJKBC5k49EC93dR4QQO1Bh72Zx5v4Sgqux5Ar+vL/XsGSZpRQoc=
X-MS-Exchange-AntiSpam-MessageData: ktK6WV4ic6ZWck9I5qTsKtPADTSIfxySxaXVlD5TFpWsUn93lTMgB7cVmgBbHSXu5LunqOQDhxeQyYiorsmAMiTfT5tXRjhqnOg7uwAEFIbxJK7B4MFb3r3olo6DxzPFKHRi04E1JioEqocI2HgrMg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 483429a0-f596-40ef-188c-08d7a977eeee
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2020 13:41:27.4725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hx4P6SD/2g1O8fC25A3JOMoY9XY5lv2FOisOg9DZcnbRfRSkgindMg68nm4Ptc5bwyffbSCztcGy5flfQe0Bkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4851
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_054129_513966_015EB790 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Peng Fan <peng.fan@nxp.com>, ping.bai@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add a clk api for i.MX7ULP ARM core clk usage.
imx_hw_clk_cpu could not be reused, because i.MX7ULP ARM core
clk has totally different design. To simplify ARM core clk
change logic, add a new clk api.

A draft picture to show the ARM core clock.
                                                      |-sirc
     |->   run(500MHz)    ->  div -> mux -------------|-firc
  ARM|                                                |
     |->   hsrun(720MHz)  ->  hs div -> hs mux -------|-spll pfd
                                                      |-....

Need to configure PMC when ARM core runs in HSRUN or RUN mode.

RUN and HSRUN related registers are not same, but their
mux has same clocks as input.

The API takes arm core, div, hs div, mux, hs mux, mux parent, pfd, step
as params for switch clk freq.

When set rate, need to switch mux to take firc as input, then
set spll pfd freq, then switch back mux to spll pfd as parent.

Per i.MX7ULP requirement, when clk runs in HSRUN mode, it could
only support arm core wfi idle, so add pm qos to support it.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/Makefile    |   1 +
 drivers/clk/imx/clk-cpuv2.c | 137 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/clk/imx/clk.h       |   9 +++
 3 files changed, 147 insertions(+)
 create mode 100644 drivers/clk/imx/clk-cpuv2.c

diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
index 928f874c73d2..9707fef8da98 100644
--- a/drivers/clk/imx/Makefile
+++ b/drivers/clk/imx/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_MXC_CLK) += \
 	clk-busy.o \
 	clk-composite-8m.o \
 	clk-cpu.o \
+	clk-cpuv2.o \
 	clk-composite-7ulp.o \
 	clk-divider-gate.o \
 	clk-fixup-div.o \
diff --git a/drivers/clk/imx/clk-cpuv2.c b/drivers/clk/imx/clk-cpuv2.c
new file mode 100644
index 000000000000..a73d97a782aa
--- /dev/null
+++ b/drivers/clk/imx/clk-cpuv2.c
@@ -0,0 +1,137 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2020 NXP
+ *
+ * Peng Fan <peng.fan@nxp.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/slab.h>
+#include <linux/pm_qos.h>
+#include "clk.h"
+
+static struct pm_qos_request pm_qos_hsrun;
+
+#define MAX_NORMAL_RUN_FREQ	528000000
+
+struct clk_cpu {
+	struct clk_hw	hw;
+	struct clk_hw	*core;
+	struct clk_hw	*div_nor;
+	struct clk_hw	*div_hs;
+	struct clk_hw	*mux_nor;
+	struct clk_hw	*mux_hs;
+	struct clk_hw	*mux_parent;
+	struct clk_hw	*pfd;
+	struct clk_hw	*step;
+};
+
+static inline struct clk_cpu *to_clk_cpu(struct clk_hw *hw)
+{
+	return container_of(hw, struct clk_cpu, hw);
+}
+
+static unsigned long clk_cpu_recalc_rate(struct clk_hw *hw,
+					 unsigned long parent_rate)
+{
+	struct clk_cpu *cpu = to_clk_cpu(hw);
+
+	return clk_hw_get_rate(cpu->core);
+}
+
+static long clk_cpu_round_rate(struct clk_hw *hw, unsigned long rate,
+			       unsigned long *prate)
+{
+	return rate;
+}
+
+static int clk_cpu_set_rate(struct clk_hw *hw, unsigned long rate,
+			    unsigned long parent_rate)
+{
+	struct clk_cpu *cpu = to_clk_cpu(hw);
+	int ret;
+	struct clk_hw *div, *mux_now;
+	unsigned long old_rate = clk_hw_get_rate(cpu->core);
+
+	div = clk_hw_get_parent(cpu->core);
+
+	if (div == cpu->div_nor)
+		mux_now = cpu->mux_nor;
+	else
+		mux_now = cpu->mux_hs;
+
+	ret = clk_hw_set_parent(mux_now, cpu->step);
+	if (ret)
+		return ret;
+
+	ret = clk_set_rate(cpu->pfd->clk, rate);
+	if (ret) {
+		clk_hw_set_parent(mux_now, cpu->mux_parent);
+		return ret;
+	}
+
+	if (rate > MAX_NORMAL_RUN_FREQ) {
+		pm_qos_add_request(&pm_qos_hsrun, PM_QOS_CPU_DMA_LATENCY, 0);
+		clk_hw_set_parent(cpu->mux_hs, cpu->mux_parent);
+		clk_hw_set_parent(cpu->core, cpu->div_hs);
+	} else {
+		clk_hw_set_parent(cpu->mux_nor, cpu->mux_parent);
+		clk_hw_set_parent(cpu->core, cpu->div_nor);
+		if (old_rate > MAX_NORMAL_RUN_FREQ)
+			pm_qos_remove_request(&pm_qos_hsrun);
+	}
+
+	return 0;
+}
+
+static const struct clk_ops clk_cpu_ops = {
+	.recalc_rate	= clk_cpu_recalc_rate,
+	.round_rate	= clk_cpu_round_rate,
+	.set_rate	= clk_cpu_set_rate,
+};
+
+struct clk_hw *imx_clk_hw_cpuv2(const char *name, const char *parent_names,
+				struct clk_hw *core,
+				struct clk_hw *div_nor, struct clk_hw *div_hs,
+				struct clk_hw *mux_nor, struct clk_hw *mux_hs,
+				struct clk_hw *mux_parent,
+				struct clk_hw *pfd, struct clk_hw *step,
+				unsigned long flags,
+				unsigned long plat_flags)
+{
+	struct clk_cpu *cpu;
+	struct clk_hw *hw;
+	struct clk_init_data init;
+	int ret;
+
+	cpu = kzalloc(sizeof(*cpu), GFP_KERNEL);
+	if (!cpu)
+		return ERR_PTR(-ENOMEM);
+
+	cpu->core = core;
+	cpu->div_nor = div_nor;
+	cpu->div_hs = div_hs;
+	cpu->mux_nor = mux_nor;
+	cpu->mux_hs = mux_hs;
+	cpu->mux_parent = mux_parent;
+	cpu->pfd = pfd;
+	cpu->step = step;
+
+	init.name = name;
+	init.ops = &clk_cpu_ops;
+	init.flags = flags;
+	init.parent_names = &parent_names;
+	init.num_parents = 1;
+
+	cpu->hw.init = &init;
+	hw = &cpu->hw;
+
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
+		kfree(cpu);
+		return ERR_PTR(ret);
+	}
+
+	return hw;
+}
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index f074dd8ec42e..7deaba2e525c 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -521,4 +521,13 @@ struct clk_hw *imx_clk_hw_divider_gate(const char *name, const char *parent_name
 		unsigned long flags, void __iomem *reg, u8 shift, u8 width,
 		u8 clk_divider_flags, const struct clk_div_table *table,
 		spinlock_t *lock);
+
+struct clk_hw *imx_clk_hw_cpuv2(const char *name, const char *parent_names,
+				struct clk_hw *core,
+				struct clk_hw *div_nor, struct clk_hw *div_hs,
+				struct clk_hw *mux_nor, struct clk_hw *mux_hs,
+				struct clk_hw *mux_parent,
+				struct clk_hw *pfd, struct clk_hw *step,
+				unsigned long flags,
+				unsigned long plat_flags);
 #endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
