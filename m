Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DD016C18A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 14:00:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+epDeoIBY4oXMTHukk3+ORu6ptFxhN+WFq+bkNtj9I=; b=TFqyoMn7aV+C3L
	RCzeck4wGAQG0aA8VG/iWcBW6hgAdd2ry+qjQ9mvk166z63Mm8DSdo6uY6eeTGdRQFYo+1PH1Uhzt
	CUbVwW/wlsRJMJJM8janHd3+LHd63229zWDTyPZIFJHUd3CiBD30uKpipk44M9Ecpv3mKbDZQyp6H
	0IxHrYlAUW+hGAovmQxf+Rt7J1Okmu5L2i3MyIdI4S8zp0TMpnduKHSjZMx6f0WCCAtSlgo0MtagW
	eUbLXN4AKuugjtRokYCuJ7qEUb7m8JY5hgwcm2dbJgjbTOHVdto3o69YtwhLsu9xX14AEe2biyvog
	bGQP31x4xMFFSfxhCXWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ZpI-0001Pv-5x; Tue, 25 Feb 2020 13:00:40 +0000
Received: from mail-eopbgr130078.outbound.protection.outlook.com
 ([40.107.13.78] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ZoS-0008AS-Oi
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 12:59:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kqpREe71zGfxgnEPeHEcPY3CoHT+4TYAHWp4MWHZa4xX9PCSl13/1xYQhDisTUiu0+oPapEAUjAgnvwB9EvvzYLFQUjJB5+Qubd6GaTIqBgcCgTFT8BFusnjyTf3foP0qc3DeMArwRZPwlC5UhzpcpK+IbCa3V8YwAII+lqhDvdAcFKlulIi37gSEwev1NFMJvclijroMEsywIV3h0RVaI6nE/3dkXWssyS3tLz70yvvAMly76ZJkKC/UAuZfYnot6bUJMKwfbqO7FyrBSxqni1s8dCIhBRMGMcFCrmI+aFOdgywMsKr11SzExgobYdPXeDHvwgNynOwkmSc6A6Pxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hqtao0FqBus8DUXRhz8Y1FZPb4dB7p7OK5pUdLUhats=;
 b=dp/oGlB0BpT7OLHo+4z+yNonXlQlfipne5taipPHC8NJ7kqsKm3L2ANvOPQH3+H9bMJ+FWTM7xmc1hy7iRoEDnLUh7D3Z9B4z3yHxV1+A2F5NFTeL1oXdwDPiZ+QkQjCDSLrv3kA+ITKOOPVGvzx5uLJVdSAQZ+7CtRhRG6EMxsBca1BFxPfcblCRyKI6LjdxPCRlR934v/QnWaFzGmQcMkOH1s5Ss5daolLojwiQsLDt1NEp9jIA3oDUBwiaobPHISMoPyAMBcIP7rLHccioH24LjqofffDI76mGamtkgsnkPAxr/WplfnJhiLKYYxw7B7ybqoZECBFEY9FePOtQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hqtao0FqBus8DUXRhz8Y1FZPb4dB7p7OK5pUdLUhats=;
 b=f/dzVfTb9a34+3x/f9qubNy31QN/4dNI3Mz++MmJwdPxImHOS6lZz9jF/pdbpsGVycM0Tlo1yw7gl4rAvNgMWvxD9icq1ZElcIdVs9G7Gsio/S4elCZyKNmpRlq/XEWzZZaNlJBTejsTHAsdW8yhMXLkf51XVTXipUsZrz2zklA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4010.eurprd04.prod.outlook.com (52.135.128.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.22; Tue, 25 Feb 2020 12:59:35 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca%7]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 12:59:35 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: will@kernel.org,
	mark.rutland@arm.com,
	robin.murphy@arm.com
Subject: [PATCH 2/2] perf/imx_ddr: Add stop counter support for i.MX8MP
Date: Tue, 25 Feb 2020 20:56:44 +0800
Message-Id: <20200225125644.18853-2-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200225125644.18853-1-qiangqing.zhang@nxp.com>
References: <20200225125644.18853-1-qiangqing.zhang@nxp.com>
X-ClientProxiedBy: SG2PR06CA0186.apcprd06.prod.outlook.com (2603:1096:4:1::18)
 To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by
 SG2PR06CA0186.apcprd06.prod.outlook.com (2603:1096:4:1::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Tue, 25 Feb 2020 12:59:33 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9b0a49e4-ca69-4e9d-3938-08d7b9f29073
X-MS-TrafficTypeDiagnostic: DB7PR04MB4010:|DB7PR04MB4010:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB4010E40E735E47742D5F0AA1E6ED0@DB7PR04MB4010.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0324C2C0E2
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(346002)(366004)(376002)(189003)(199004)(6512007)(6506007)(5660300002)(66946007)(316002)(478600001)(86362001)(4326008)(2906002)(81166006)(6486002)(8936002)(69590400006)(956004)(81156014)(2616005)(66556008)(6666004)(16526019)(36756003)(26005)(8676002)(186003)(66476007)(1076003)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4010;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q/ulAJ3Fdr6f+GbC4bSBoXFliQooJDT2xVYvfFI8TZ5VknNujyi/be9xd53CukZaTvLTR7pp7eiDkLbv/Y3ge0h1VFjfJjeVJUvxx+qj2vpTutpN+f5S6zH6mW7dDA2/ETrSYawG9oDveAbFbR1r6JHsfyZpzKwDbTRo7KkuC834eJQB3UHCK37S6IL8lhQhpHLdrR8Dia/xABW8eiV9gDdwWI7pQgL62xnxt0lJhTWiTcfqhjuTjPebAe6pJqxINDLWQcr0ouLje+aIjADfrD0anlhYqbTbZF2VjlF7eYiyyTQY3J7nazZsa6t/RWZeLrrF8h1i/Z8Wc7k2uZZPftN5A5qBWlY1DTHjCyN7bhBumffn3JE173zUzEFmjTgoAQwgNK/U4SEBhwAis+w9dut2qYAXSMMX63I7Fktu095riwadkel0J+ltN02S0uKsl6Q4iBTOS9dlv4skgE3+eqs9eS02SSeoWFM2svCcPxX60NtZDRwHsmZ3jQ3XiHxVf+PWhdyJV6RRXVp3B1id+GDd2boygWt5bpxiXewtiWU=
X-MS-Exchange-AntiSpam-MessageData: iy9Lzrkiw0kj0jS9mRxFPtkWDhJ698RG7JNsf865LY/oPIXLi07TfnSRcQBdXggrIHwb16Wlhrbe4G4kAX2DwAFkmz0c53a8RHkKgB8TAr8iSy2WDC5eeDnM8HBAvWlK0f6/saAhWI6sbPDvIdh1yw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b0a49e4-ca69-4e9d-3938-08d7b9f29073
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2020 12:59:35.4977 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YYMsKO+3revKbgOfs8yQjz/Nq22dQu6I+c8H5LEz0fZ8lrIDkAvl77j4704Uuy97egDolcySAdQrvXCWVkIOpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_045948_800685_1BA5342D 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

DDR perf driver now only supports free-running event counters
(counter1/2/3), which means that event counters will continue counting
even they are overflow.

However, the situation is changed on i.MX8MP, event counters are not
free-running any more. Event counters would stop counting if they are
overflow. So we need clear event counters when cycle counter overflow.

The patch adds stop counter support which would be compatible to
free-running counter.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 37 ++++++++++++++++++++++++++------
 1 file changed, 31 insertions(+), 6 deletions(-)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 90884d14f95f..5713f0631f79 100644
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
@@ -368,16 +370,19 @@ static void ddr_perf_event_update(struct perf_event *event)
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
 }
 
 static void ddr_perf_counter_enable(struct ddr_pmu *pmu, int config,
@@ -546,7 +551,7 @@ static irqreturn_t ddr_perf_irq_handler(int irq, void *p)
 	/*
 	 * When the cycle counter overflows, all counters are stopped,
 	 * and an IRQ is raised. If any other counter overflows, it
-	 * continues counting, and no IRQ is raised.
+	 * stop counting, and no IRQ is raised.
 	 *
 	 * Cycles occur at least 4 times as often as other events, so we
 	 * can update all events on a cycle counter overflow and not
@@ -566,6 +571,25 @@ static irqreturn_t ddr_perf_irq_handler(int irq, void *p)
 			cycle_event = event;
 	}
 
+	spin_lock(&pmu->lock);
+
+	for (i = 0; i < NUM_COUNTERS; i++) {
+		if (!pmu->events[i])
+			continue;
+
+		event = pmu->events[i];
+
+		if (event->hw.idx == EVENT_CYCLES_COUNTER)
+			continue;
+
+		/* clear non-cycle counters */
+		ddr_perf_counter_enable(pmu, event->attr.config, event->hw.idx, true);
+
+		local64_set(&event->hw.prev_count, 0);
+	}
+
+	spin_unlock(&pmu->lock);
+
 	ddr_perf_counter_enable(pmu,
 			      EVENT_CYCLES_ID,
 			      EVENT_CYCLES_COUNTER,
@@ -619,6 +643,7 @@ static int ddr_perf_probe(struct platform_device *pdev)
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
