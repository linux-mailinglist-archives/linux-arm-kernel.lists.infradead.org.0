Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8C1E81D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 08:07:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgeKw9gjOg2OTPwzhl5vAwgOmMZIaEANHhkX9K+mapQ=; b=IV4vlXhExVmcZs
	VLLQJuStB2UlsLcmWU5mGPQR4OEpqP7ZqEO5GeTOpwA70gftrDyOvmOab2+gasLxpX0+4rSMth/Au
	A1B1Z4DoXyvXk/Pl0Aw9Zau0XWq048rKk2AvvIxOjk3gkbCzM910EhZA6D3AxIrkxCHqQkCM5DCdS
	rvS07u3jIirpVHZ7MMzjeTXByLbH5PzNS1GRe0zsAJDI3aD5JD8y9xPBDNYiJ4NDd7u3bGeDnhB3T
	40q9oEqmu3ZGpfPvCnpo9UcpvytszBHMAWii0i219XwYd3gKQI56Zd32OhveNlYK667Zrv5APoppP
	cYioACByoVAEIU/cooBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPLat-0005ap-32; Tue, 29 Oct 2019 07:07:07 +0000
Received: from mail-eopbgr80051.outbound.protection.outlook.com ([40.107.8.51]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPLaB-0005Eg-RZ
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 07:06:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nJJpdBIXgUn++AKIbw+4LT71WexH+2iOHWKibjeFHW4sq5m9v/zRgtmebBWvhzIij1fRzaHKQtdqNGPQOOYcMEukVefzTt+4VRCJVmoKsl8zgjWYefKFcbmkBrjOcfce7GE9YK4svygHoF/BRSLZ00yPs+Sdgjfca3SavPjtZA26nDgM/ljB+/g5Dz21BnTfijvZo3QZ1Pe//ODIhUuMBAhlL/DkaiKBHnjdeEpW8LSoJuIbqjVvZjTQcv2FQTRy5fIC41JjLJgfr71JtegTBGkExGyjMiOV0bU4VpRkDtWDXNRiVzOGIfIkY/KqUB0rqfS/FwEruzdWyL4BV7nJIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wLhHsFivKKY66Q/bqWlP06H1nF2ncKIkIemq2Texi4Q=;
 b=YtQvJZKJQmaLgPP50/BtGwmak6W/tSycbnI8jYAMkC0vciWA1Lc8xqSp836XSCWWhugyM5T6k3tokm3p0fN4S+2rmQWcgaY1px4k/8xgAlM60JCec4XFsMWF4OiHNPVjZOkdLhGIxI0wWKXOo0q0t489L/Q2wNCAzauwTwX6Oycj5+BNJYeHGyYX+5lFifI2FISVSFyIYLcB/l/Onrz0rrjOikMNYf9lBkTEFA6PVgtT/JvdS331bMJGSr3wrD8Y5laNgf+9Uu//wUYQJpzfqnZ//unN5qs+BK0FUYJrMajXDfyKCfJ78AVgCVfHMsrZ717enZSTbl9UwMGAjF+opQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wLhHsFivKKY66Q/bqWlP06H1nF2ncKIkIemq2Texi4Q=;
 b=D4e8LUo0qfikGff9Gy12PdW+jX5bZC8P1t8QkRVtwwpZGeOySDsGBI0sLoLLm6G31VAgRdWRYoJwgY+WjIYl5WFXhfdcjanqYaZybnOhw3DdDSCVZ3HVBZ/0nSTrmOCIE2FvbLdYKtOkH0rulxyZmSuFxsQbKUb+DmvxpyzrQ2g=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4457.eurprd04.prod.outlook.com (52.135.141.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Tue, 29 Oct 2019 07:06:19 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679%3]) with mapi id 15.20.2367.031; Tue, 29 Oct 2019
 07:06:19 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH V2 3/4] perf/imx_ddr: Add enhanced AXI ID filter support
Thread-Topic: [PATCH V2 3/4] perf/imx_ddr: Add enhanced AXI ID filter support
Thread-Index: AQHVjidcsAPUWCct1E+N9V1DGkPyXA==
Date: Tue, 29 Oct 2019 07:06:19 +0000
Message-ID: <20191029070314.16719-3-qiangqing.zhang@nxp.com>
References: <20191029070314.16719-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20191029070314.16719-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR03CA0120.apcprd03.prod.outlook.com
 (2603:1096:4:91::24) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0ef61c8d-ab20-4b19-b49f-08d75c3e7f4a
x-ms-traffictypediagnostic: DB7PR04MB4457:|DB7PR04MB4457:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4457E5578148A127C3E08594E6610@DB7PR04MB4457.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:873;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(366004)(376002)(39860400002)(346002)(54534003)(189003)(199004)(6486002)(99286004)(1076003)(66946007)(66556008)(50226002)(64756008)(52116002)(76176011)(316002)(66476007)(66446008)(2501003)(66066001)(54906003)(81156014)(110136005)(6512007)(6436002)(81166006)(4326008)(8676002)(8936002)(71190400001)(71200400001)(476003)(7736002)(305945005)(2616005)(14454004)(256004)(102836004)(11346002)(446003)(86362001)(26005)(36756003)(25786009)(6116002)(5660300002)(186003)(3846002)(2906002)(478600001)(6506007)(386003)(486006)(2201001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4457;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qvfNniHQu/FTuS121qYxbzpdfhd5YxeyLtazqPwX7Xq64Ugt0FmH4Kfq4SeFOyTW6RxDybw025486UW//KZIVeZAXGCEW1oS5S3E4U9Irgr1kJgjSszuiIcM1qoU/QCOagUAYL8LRyq+4Wm7VJbBSoTeyJt1sXIwba6nHUF/41p5qhvzsYEEmve7ICF8/IzI0Qzaariusg2eQSNwbpj7eQdJLYTVNFIB9FZ84QrQ6LaRDj3JVa8Iu/gxMMxwnQdL0Y2NtiHaHePRuPi4hDyHr55irGoogqyC24mvXkztITokhev30lG/Tjz+bcmwJ8JWFuPYzQKXZGotEFcg6zmqpwzXtAIDNQCSFNZ1aAb9YMDfjEVx1v+9a4sr5g8n3zFfJCvUDEvKGwC7ZwDCN7r9B2rxhCyvluJtUecJDHJkuBCEkkES1eAWf1U1MYkPT2Uj
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ef61c8d-ab20-4b19-b49f-08d75c3e7f4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 07:06:19.1553 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YDQYLUoYSjMXnnWZnmSE3BLlDZtblxEFnDjOG6Xo/NeoZuFvwegZteOGEoKBPUzkvUO6AZ49OLw8gTh4Gr3IWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4457
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_000624_014821_45CF5663 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Frank Li <frank.li@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Joakim Zhang <qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With DDR_CAP_AXI_ID_FILTER quirk, indicating HW supports AXI ID filter
which only can get bursts from DDR transaction, i.e. DDR read/write
requests.

This patch add DDR_CAP_AXI_ID_ENHANCED_FILTER quirk, indicating HW
supports AXI ID filter which can get bursts and bytes from DDR
transaction at the same time. We hope PMU always return bytes in the
driver due to it is more meaningful for users.

DDR_CAP_AXI_ID_ENHANCED_FILTER is based on DDR_CAP_AXI_ID_FILTER and
extend it a bit. So need select both above two qiurks together when
HW supports enhanced AXI ID filter.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
Changelog:
V1->V2:
	* use ddr_perf_is_filtered() helper to simply the code.
	* improve the commit message.
---
 drivers/perf/fsl_imx8_ddr_perf.c | 55 ++++++++++++++++++++------------
 1 file changed, 34 insertions(+), 21 deletions(-)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index ce7345745b42..17c817d89222 100644
--- a/drivers/perf/fsl_imx8_ddr_perf.c
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -45,7 +45,8 @@
 static DEFINE_IDA(ddr_ida);
 
 /* DDR Perf hardware feature */
-#define DDR_CAP_AXI_ID_FILTER          0x1     /* support AXI ID filter */
+#define DDR_CAP_AXI_ID_FILTER			BIT(1)     /* support AXI ID filter */
+#define DDR_CAP_AXI_ID_FILTER_ENHANCED		BIT(2)     /* support enhanced AXI ID filter */
 
 struct fsl_ddr_devtype_data {
 	unsigned int quirks;    /* quirks needed for different DDR Perf core */
@@ -178,6 +179,26 @@ static const struct attribute_group *attr_groups[] = {
 	NULL,
 };
 
+static bool ddr_perf_is_filtered(struct perf_event *event)
+{
+	return event->attr.config == 0x41 || event->attr.config == 0x42;
+}
+
+static u32 ddr_perf_filter_val(struct perf_event *event)
+{
+	return event->attr.config1;
+}
+
+static bool ddr_perf_filters_compatible(struct perf_event *a,
+					struct perf_event *b)
+{
+	if (!ddr_perf_is_filtered(a))
+		return true;
+	if (!ddr_perf_is_filtered(b))
+		return true;
+	return ddr_perf_filter_val(a) == ddr_perf_filter_val(b);
+}
+
 static u32 ddr_perf_alloc_counter(struct ddr_pmu *pmu, int event)
 {
 	int i;
@@ -209,27 +230,19 @@ static void ddr_perf_free_counter(struct ddr_pmu *pmu, int counter)
 
 static u32 ddr_perf_read_counter(struct ddr_pmu *pmu, int counter)
 {
-	return readl_relaxed(pmu->base + COUNTER_READ + counter * 4);
-}
+	struct perf_event *event = pmu->events[counter];
 
-static bool ddr_perf_is_filtered(struct perf_event *event)
-{
-	return event->attr.config == 0x41 || event->attr.config == 0x42;
-}
-
-static u32 ddr_perf_filter_val(struct perf_event *event)
-{
-	return event->attr.config1;
-}
-
-static bool ddr_perf_filters_compatible(struct perf_event *a,
-					struct perf_event *b)
-{
-	if (!ddr_perf_is_filtered(a))
-		return true;
-	if (!ddr_perf_is_filtered(b))
-		return true;
-	return ddr_perf_filter_val(a) == ddr_perf_filter_val(b);
+	/*
+	 * return bytes instead of bursts from ddr transaction for
+	 * axid-read and axid-write event if PMU core supports enhanced
+	 * filter.
+	 */
+	if ((pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) &&
+	    (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER_ENHANCED) &&
+	    ddr_perf_is_filtered(event)) {
+		return readl_relaxed(pmu->base + COUNTER_DPCR1 + counter * 4);
+	} else
+		return readl_relaxed(pmu->base + COUNTER_READ + counter * 4);
 }
 
 static int ddr_perf_event_init(struct perf_event *event)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
