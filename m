Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E598D15A8DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 13:11:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x79+tuPLDwXcW2QUShC0V1+uCUHGrG6Z5URNyDNtQm8=; b=ByhYt3jNweUPIh
	h4uZluO0oz99j9amrFaxSZ5P9vNfeSmU1o1tX/yhnw5uTFQfNkQdPnDycoAPb/SjO2n8W/I4H5WjH
	mPQO4GECscKIHUbscEhib4EfF22zTuMC7xCAdX8ULEZbzf5Fx/OERGJ2kubrFSiN1+SEh9x3mGENn
	fTD+CnKTRyAQ4nzK4Fy9AnoamdNKQ4LurUGEKZTXvgUxlbINf+03+c/fsfcFgsrZhxlIZobBlAkTc
	wztIw66NPXZnkD8XESdYbIUB3oktdM/iKB0LYxAfOdNk2P01wMaq4qMf1in5AdRcaanpa+d0MvZtY
	05me/ERnF3h5pEeO5NEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qrn-000612-UR; Wed, 12 Feb 2020 12:11:43 +0000
Received: from mail-am6eur05on2086.outbound.protection.outlook.com
 ([40.107.22.86] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qrg-00060M-Lj
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 12:11:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NlaIVdRRGAls01qfAHo2XJp/ncF/bt3ELe150W6k/KzX98H5E2HQwLRRF2IuRzTYQQAdtNLkjmedgzGynB+IrZj1vudsF/ouFc5OExBYBWBJbLWIWUypWHPpXmKhI7rkkq/Lw2i5FxSWut6xJgsCEmk05VS6rfePXefNdUvjgt31V+7vN8zeDGShC8XvDzbjGoAymYc85he8cctwRbBNaX+nVrsmW25dTmsy/QFh4iQztvroCub+ErAm6TZvVL+xMYmrkhmgpz851R12C77c7QqR6TRS+3D2uFD20ibSuWH5PmYbwcdVTstJrOHjSE0wScasAI2LwUytpGOSnU9zeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s9EsvhWrOSCnWXnJMtNt6IExwGmy22qfMvEmbNYxl6s=;
 b=CB3mJ8K6p+qcG7XxQ3dBcXsoasw9DU+c2gRRQv+6MsGmlA6JHKKMlF4nQUgEQ81qCwi9UNVgPXwPrzw96VFKM3h46++tID4c000KZ+h7WrPmtI242GpB8X39RnoCaTUdQ4632XYLHC7hPPBcOIxXmF39HiaqeuQP1QLWZ3T1C+tU27Mel/JX4gi4jXAJQjztgwTfLJFfWb/E+yei/egVUSpo0hXecj8dO5u9hpiZ8cCHDph5sW/VZHIw1LMmW8FC7be5zG4wIwsJ32/PR0ayrxX3mKMdQd5CzX8zLX8U1lGJHPyZuD+JlSrc54p03cxsIGeZZLcrK08pHLFBVLDJsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s9EsvhWrOSCnWXnJMtNt6IExwGmy22qfMvEmbNYxl6s=;
 b=CQVwx4h6xibt4JKhYhK5XfIhuTiCzgfNAqQaH52rNcVTSP6hPHX+WQHcWnLkGA6B2l4FX46TUGlWy3hukM6xAaYx7eNDNYejgWIAwhH0Nnc/5TdzmpWoQ2ZI34B6nabm2l542VINNQ6V3/biYlISfyMwHKP9PXJeKshrGv7alKE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4026.eurprd04.prod.outlook.com (52.134.107.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.25; Wed, 12 Feb 2020 12:11:31 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca%7]) with mapi id 15.20.2707.030; Wed, 12 Feb 2020
 12:11:30 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: will@kernel.org,
	mark.rutland@arm.com,
	robin.murphy@arm.com
Subject: [PATCH] perf/imx_ddr: add stop counter support for i.MX8MP
Date: Wed, 12 Feb 2020 20:09:00 +0800
Message-Id: <20200212120900.6004-1-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: SG2PR06CA0183.apcprd06.prod.outlook.com (2603:1096:4:1::15)
 To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.71) by
 SG2PR06CA0183.apcprd06.prod.outlook.com (2603:1096:4:1::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23 via Frontend Transport; Wed, 12 Feb 2020 12:11:28 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4fd45836-a755-4c3c-3af5-08d7afb4b1b1
X-MS-TrafficTypeDiagnostic: DB7PR04MB4026:|DB7PR04MB4026:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB40265E834CD0F2403E2B742CE61B0@DB7PR04MB4026.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0311124FA9
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(39860400002)(376002)(346002)(136003)(189003)(199004)(8676002)(1076003)(2906002)(186003)(36756003)(66556008)(8936002)(6666004)(6486002)(66946007)(4326008)(66476007)(16526019)(52116002)(26005)(81166006)(5660300002)(81156014)(2616005)(316002)(6512007)(69590400006)(86362001)(478600001)(6506007)(956004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4026;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UF2mqi8ZpodRKMfOWx6ZI7D5ypeW88corTV92tC72xQEn8jpUeS/Vq+idCPGV8p+o+jQXEWD7+/XNYWrVZiohGW+IHT2rTg/LgFjwwV6CTSGqI8LfMngtc9dTx5T4zP3lLNt/wX5g1oIdLHihgunwz7pwrWpVXfxcLGhK7YEzyUz+S8CvxqErxN1tNIAoa+AvE0Ga2vE4ymRboyc16VgB84mo3tZl4G2txYD+IADyiwxSuB7Y4oy8UGT4239A2TfkeH7ErQ1h/zPMagN2yqUQfBqtNzT0Q/iQHBlRkf70TpisLrWwvJLoFWsJf2XUIEzkM0A4aX+04uZWw6qX90fERJ4pTI2GtL6sfqhwN2xKDQblWo0w4UQ5rM0MJ5WlYcwOtj7R11raRDL/mGHGZoKy93pKh+4ykfuLM6iALJ/AUdUJQf++BkG669AyTHJp0uzS6lxTbdkRSKsP0fQgC4MTfeQL8O7J9sQfNLVuvfE66yPaYFVp3o0TsCtGWLG+jQ/6/Tefhk56cLxUTpbyuVEdPHZKr2Fg7ELMLwSLeAkl/g=
X-MS-Exchange-AntiSpam-MessageData: FkhKncoWkJSTDcyE58gDTwqYyQYldRNWhbZonIFtWil1mQwuYisQRqUV5icAYdmF9zp/mK6W/db2o2H2MMsGcRaksrHaATAd7vUJTk3c2O63DItp0v35ESUn5ogK2NvcM7YssE93Uf3QQBSjTlD1ow==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fd45836-a755-4c3c-3af5-08d7afb4b1b1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2020 12:11:30.9089 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oB3ueQ1swwOc2cF5tXT1nMuuLIQ2/Em96lqFi6u0CUsD9b7nheEi1jXXYPaL3aVO5zPqnBJkUQMiQUPeFjIdgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_041136_713068_6570331E 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.86 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.86 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DDR perf driver now only supports free running counter, add stop counter
support which would be compabile to free running counter, since i.MX8MP is
not free running.

Add spinlock for counter value update and clear.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 69 ++++++++++++++++++++++++--------
 1 file changed, 52 insertions(+), 17 deletions(-)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 95dca2cb5265..0a029715ca6c 100644
--- a/drivers/perf/fsl_imx8_ddr_perf.c
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -14,6 +14,7 @@
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
 #include <linux/perf_event.h>
+#include <linux/spinlock.h>
 #include <linux/slab.h>
 
 #define COUNTER_CNTL		0x0
@@ -82,6 +83,7 @@ struct ddr_pmu {
 	const struct fsl_ddr_devtype_data *devtype_data;
 	int irq;
 	int id;
+	spinlock_t lock;
 };
 
 enum ddr_perf_filter_capabilities {
@@ -368,16 +370,20 @@ static void ddr_perf_event_update(struct perf_event *event)
 	struct hw_perf_event *hwc = &event->hw;
 	u64 delta, prev_raw_count, new_raw_count;
 	int counter = hwc->idx;
+	unsigned long flags;
 
-	do {
-		prev_raw_count = local64_read(&hwc->prev_count);
-		new_raw_count = ddr_perf_read_counter(pmu, counter);
-	} while (local64_cmpxchg(&hwc->prev_count, prev_raw_count,
-			new_raw_count) != prev_raw_count);
+	spin_lock_irqsave(&pmu->lock, flags);
+
+	prev_raw_count = local64_read(&hwc->prev_count);
+	new_raw_count = ddr_perf_read_counter(pmu, counter);
 
 	delta = (new_raw_count - prev_raw_count) & 0xFFFFFFFF;
 
 	local64_add(delta, &event->count);
+	local64_set(&hwc->prev_count, new_raw_count);
+
+	spin_unlock_irqrestore(&pmu->lock, flags);
+
 }
 
 static void ddr_perf_counter_enable(struct ddr_pmu *pmu, int config,
@@ -402,6 +408,15 @@ static void ddr_perf_counter_enable(struct ddr_pmu *pmu, int config,
 	}
 }
 
+static bool ddr_perf_counter_overflow(struct ddr_pmu *pmu, int counter)
+{
+	int val;
+
+	val = readl_relaxed(pmu->base + counter * 4 + COUNTER_CNTL);
+
+	return val & CNTL_OVER ? true : false;
+}
+
 static void ddr_perf_event_start(struct perf_event *event, int flags)
 {
 	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
@@ -532,9 +547,9 @@ static int ddr_perf_init(struct ddr_pmu *pmu, void __iomem *base,
 
 static irqreturn_t ddr_perf_irq_handler(int irq, void *p)
 {
-	int i;
+	int i, ret;
 	struct ddr_pmu *pmu = (struct ddr_pmu *) p;
-	struct perf_event *event, *cycle_event = NULL;
+	struct perf_event *event;
 
 	/* all counter will stop if cycle counter disabled */
 	ddr_perf_counter_enable(pmu,
@@ -544,12 +559,7 @@ static irqreturn_t ddr_perf_irq_handler(int irq, void *p)
 	/*
 	 * When the cycle counter overflows, all counters are stopped,
 	 * and an IRQ is raised. If any other counter overflows, it
-	 * continues counting, and no IRQ is raised.
-	 *
-	 * Cycles occur at least 4 times as often as other events, so we
-	 * can update all events on a cycle counter overflow and not
-	 * lose events.
-	 *
+	 * will stop and no IRQ is raised.
 	 */
 	for (i = 0; i < NUM_COUNTERS; i++) {
 
@@ -559,17 +569,41 @@ static irqreturn_t ddr_perf_irq_handler(int irq, void *p)
 		event = pmu->events[i];
 
 		ddr_perf_event_update(event);
+	}
+
+	spin_lock(&pmu->lock);
 
-		if (event->hw.idx == EVENT_CYCLES_COUNTER)
-			cycle_event = event;
+	for (i = 0; i < NUM_COUNTERS; i++) {
+		if (!pmu->events[i])
+			continue;
+
+		if (i == EVENT_CYCLES_COUNTER)
+			continue;
+
+		event = pmu->events[i];
+
+		/* check non-cycle counters overflow */
+		ret = ddr_perf_counter_overflow(pmu, event->hw.idx);
+		if (ret)
+			dev_warn(pmu->dev, "Counter%d (not cycle counter) overflow happened, data incorrect!\n", i);
+
+		/* clear non-cycle counters */
+		ddr_perf_counter_enable(pmu, event->attr.config, event->hw.idx, true);
+
+		/* update the prev_conter */
+		local64_set(&event->hw.prev_count, 0);
 	}
 
+	if (pmu->events[EVENT_CYCLES_ID])
+		local64_set(&pmu->events[EVENT_CYCLES_ID]->hw.prev_count, 0);
+
+	/* enable cycle counter to start all counters */
 	ddr_perf_counter_enable(pmu,
 			      EVENT_CYCLES_ID,
 			      EVENT_CYCLES_COUNTER,
 			      true);
-	if (cycle_event)
-		ddr_perf_event_update(cycle_event);
+
+	spin_unlock(&pmu->lock);
 
 	return IRQ_HANDLED;
 }
@@ -617,6 +651,7 @@ static int ddr_perf_probe(struct platform_device *pdev)
 	num = ddr_perf_init(pmu, base, &pdev->dev);
 
 	platform_set_drvdata(pdev, pmu);
+	spin_lock_init(&pmu->lock);
 
 	name = devm_kasprintf(&pdev->dev, GFP_KERNEL, DDR_PERF_DEV_NAME "%d",
 			      num);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
