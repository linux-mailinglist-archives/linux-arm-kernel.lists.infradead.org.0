Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A8D16C188
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 14:00:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bIGHFujdoUYQElNH+z7tL6OmAs1xWoJcU7LwdI0t/EI=; b=rnirvmBwdqXlnW
	BaVjzX+I6QNQjyAbE/hoKOKwiPqI0/zN8cOnLQUd1FCQ/mUKaWJQcJPxQuf3IQzxo4aIWkzCNpCNr
	wh4YBP3EPdK5YeRVeNHxoMHp/8j0K7clogb3YyRFiw1NbdrF7mKpIPiW8UOQir4cupd6nwIt+EFF6
	4iWq8hjd3an+Wf9fPLCVvxp9/mjYwuGLj5mso5G7LTRh/4A/vJwPC8O/Xq9nrysY9+eA7zWrLnqH2
	wIxcmRa/OR4GK9SqBY3yQUTA9utRg96V2lw1BaPM0qVyrZOBWs/70TrAaNeTZVzewwrVGf9qPteO7
	qVTQl57fNg+QQ/K4pncg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Zow-0008JV-Qc; Tue, 25 Feb 2020 13:00:18 +0000
Received: from mail-eopbgr130078.outbound.protection.outlook.com
 ([40.107.13.78] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ZoP-0008AS-8q
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 12:59:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ok0K3TyErFjgyMMV6JW1FIC9Zzgkyo0ffcyMAQMUG2G3cnArSya3D5H5WcPGi7ubfDnjGYvfCnpswQ8oPo9hEO/AT/xVtxPJYwOF4E1kG8Rkx/kzpLj9SMzwC6pBJ6Lggm/ht+2OlHl/STU9SGv0IYce2ufeVC841sP0UuDwslx/wafxC100XTIwwZ1k65xkYIKLMfU38w/WGej0B+S98ssOikUbMP9n0CqWd710JOaxz4y8jXSPe0VnY+P7uztjvuKIZMVWomeH0c4U0mFmqNN2ziic/zGUZY4eZtx3O9IGziCwdeinzSg1jQJh47YuZjHnrKtzLgXc1oh5NKDckw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uKqZAmkhGqHT8y9s2dTJuVDLWzMhJDhTNu1Q/4BUjsQ=;
 b=hG1el1F2lpElwvwOaXbg6eFpneNy0IFroBaLyiM+IMunruugM+FUs1xQ/jQj+1v86iYVxg6h6GGDtwdXgz7ucUd0CSAc1CEXh70t5qOAt+V2geYwCWvf3HLpYSxinsIYxaEV5RwUPbJ3ZW8dZNBhtvgDWB+asTeIYsxNln/iU4aHjXJwsefjnnBhE3sBIybL9HSQQ1JTGoeceo3ax3qKT1d8+3fzYPfBxdXdr6EMJO2rOL++VlqGnJHo+1YeHLpR9uJbyVUUZLHKccc7HLpTXfH2JJ+fEgYwUvvbxaANJZks4LOEm43uLXZemvtZRxytTDVl2pNK51bJiN4BlkO2TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uKqZAmkhGqHT8y9s2dTJuVDLWzMhJDhTNu1Q/4BUjsQ=;
 b=WLXSkjcCpo5Ddh6kkPPWvIuzyHsKDz6jdLPyqnZNqFmtKU5f0Vg1dAS2qSztyyXl95UHgsuCniOHtv6OnUhUf6uo7kLR+uTB8RkG0mEpMTyftVfpR17vF4bA/zTjlGfy2AaHsxpVzsLMBHFz/aAYUV3O5nfbnnSm8l+Nkh7hqqU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4010.eurprd04.prod.outlook.com (52.135.128.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.22; Tue, 25 Feb 2020 12:59:33 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca%7]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 12:59:33 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: will@kernel.org,
	mark.rutland@arm.com,
	robin.murphy@arm.com
Subject: [PATCH 1/2] perf/imx_ddr: Correct the CLEAR bit definition
Date: Tue, 25 Feb 2020 20:56:43 +0800
Message-Id: <20200225125644.18853-1-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: SG2PR06CA0186.apcprd06.prod.outlook.com (2603:1096:4:1::18)
 To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by
 SG2PR06CA0186.apcprd06.prod.outlook.com (2603:1096:4:1::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Tue, 25 Feb 2020 12:59:31 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 50e62a12-6354-47f0-7b93-08d7b9f28f0b
X-MS-TrafficTypeDiagnostic: DB7PR04MB4010:|DB7PR04MB4010:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB4010607050DBECAFA35491D6E6ED0@DB7PR04MB4010.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
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
X-Microsoft-Antispam-Message-Info: zx72QxmGI3ToUyid1pobF454tNHbmj7nGE10C1+U3tjsvj9oIuFAY5S4wefg71nowKfsn1bnlaigRNWBbkdvksjI56rsgUZUE35apjeTk9R3xySlXZ0wUqnSwSCsYSR5mrvKhNXIm9HeM05N7ZDsdK5f8LF9FgO9TeqTxxRMoDpHXQq/3/dzFyesj966ZmrB8B0ldeBeptWkMp+xesQstMMCe/uxvbq1lHQsHJ58bRZeLfN/KXafVNTbXOrfpjsWcOByLnx2sMa+vA8mzTQAwvBsAimaupgAXJaNNL7pscmmlagAPQLAGoO6BSthYO0dNwzHBm8/ZQI/bq4UXvBpEsqmEXvZLtNitKje47WvjmNJr7haQSE4Z5W6CM4U2TpUQ/MeT9pG7uaEUmm/i6g2BIjNe9Aa0AMrPqk7ZNB3KgBoPShWtfpq3tOKYiUo05Tj0ikwPFu0V2AXvFps4QVhL/b7ChDw+CA1T1jbq2pLFWuCVfBxZU+jahnX7jQToiHTQXRmqGxQ/kFvU1b7zXf6QPafktYZy6vYNYMUezuduFc=
X-MS-Exchange-AntiSpam-MessageData: H00tBEMa+Q4QxJ9woCgvwRD4EojqHmJvqGwXt8SyZDAV6aT3bzwMIk6TYzW1KHLlJI7edVnnzPRnyzMnyluzAC5PFOwXvQAlBe69k0qZp6vBSIYePfma8VNl9tYilQsN2JSrZABs2RvEGrrRyggmKg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50e62a12-6354-47f0-7b93-08d7b9f28f0b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2020 12:59:33.2331 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O2FaUq+vb6EXiys+Frj8D3KPeWpHwZw20v256IIcUKog7qHJStZu4R3t27H4fDoxE5x4+benzvxt64hHdEdHsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_045945_404892_C0BE53DE 
X-CRM114-Status: GOOD (  11.94  )
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

ddr_perf_event_stop will firstly call ddr_perf_counter_enable to disable
the counter, and then call ddr_perf_event_update to read the counter value.

When disable the counter, it will write 0 into COUNTER_CNTL[CLEAR] bit
which cause the counter value cleared. Counter value will always be 0
when update the counter.

The correct definition of CLEAR bit is that write 0 to clear the counter
value.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 95dca2cb5265..90884d14f95f 100644
--- a/drivers/perf/fsl_imx8_ddr_perf.c
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -388,9 +388,10 @@ static void ddr_perf_counter_enable(struct ddr_pmu *pmu, int config,
 
 	if (enable) {
 		/*
-		 * must disable first, then enable again
-		 * otherwise, cycle counter will not work
-		 * if previous state is enabled.
+		 * cycle counter is special which should firstly write 0 then
+		 * write 1 into CLEAR bit to clear it. Other counters only
+		 * need write 0 into CLEAR bit and it turns out to be 1 by
+		 * hardware. Below enable flow is harmless for all counters.
 		 */
 		writel(0, pmu->base + reg);
 		val = CNTL_EN | CNTL_CLEAR;
@@ -398,7 +399,8 @@ static void ddr_perf_counter_enable(struct ddr_pmu *pmu, int config,
 		writel(val, pmu->base + reg);
 	} else {
 		/* Disable counter */
-		writel(0, pmu->base + reg);
+		val = readl_relaxed(pmu->base + reg) & CNTL_EN_MASK;
+		writel(val, pmu->base + reg);
 	}
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
