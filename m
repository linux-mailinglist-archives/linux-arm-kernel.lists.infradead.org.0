Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CA5EBF43
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:36:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nu7SkMt0g4NZwbCpPYux21nToSYQuv5WXRatYQVTRtc=; b=phPeLbtJXgrhr8
	fxP/LMxV0C3uex48uFBFYBt8fEdRkhAikb4v4EM18wMF3qYCyiDpwQ8+07wNkb8KeU9qEkY6b7H4S
	BQNT6suSFC3USi76AsyD0qSrT/RmIrIZMyOAGnQg63C0Kx4A2df7f3N0NVhi09Svckej3iyq4pWFq
	6y592Bl/NG2mHM9mNa/Ikl4Hkc177wnkDzkq5qwJlMjPnprbLyaEXcz1HmPtdG/88qQprswErTOPq
	l40ospDSkm5h1jz5VPDEqDz7koc5KmJ9RMgQ+Tx2tvbHz4L4JueRuIUH5RB6F9aFgQGBke2TQrEsH
	BBxjhHThzV3GYrZH2jAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSQJ-0005Ww-RA; Fri, 01 Nov 2019 08:36:47 +0000
Received: from mail-eopbgr150051.outbound.protection.outlook.com
 ([40.107.15.51] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSPs-0005BG-Pc
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 08:36:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jv/36Dq4sC9eTat8LQtmvWXqyOH8GkXQEUMTw7x7MRPyUhCG3etRFG5pjabmkMIPq05VY45UdgDzes3vCq4OMnuw5Swq4kwVdF+5pt7xbTJOnds9llgjV6pBA/wgWINUkPpR403MCt4gDQ3K/0IMZEydGGX6wH71BUEslEZhQcKPmX9kgASSrtds69FxL0CbtK8+1GGuBf6DqOkFbhYNaP1meH2TGKn2U+5nZF9RIifSns13Wb2BwA1kHfxyLFI1g26sUAgMAak/GzgP2KuTHsYAt82ltjflqrLQ+PzgOkldvijmCTPh818peeNEGZn6Sx9UthUgFGWhpeXft/YOOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SKxWzn0a3BBvMq+CafuIXl8+bWFjmlHs+kq5mgTtoNE=;
 b=Y/UaEUMHamL1GCv/JXmQAxn0DO5UZy6sFTEBUaGZRRNlArYuo2z6xSeNBg/RcMf7+K0JltDE6Mh6g/0He0OrAoWo5E10XbHSD+Gsvfn2tAvfNRLr6ALfoPQ3JDl9jJyOaf8F4exq+EbodiPWYAm1pdTEF+qAvEaiAGvql0BVm8HU7FmukTQCyNQXBvHtD+hrxxyZ8Rb98JHCNSNd6dTEp53Q5pfg2cbCLQWH4S8fIAWkVXxRb6VyOAT2KGRGy/u2MWmnXvgw6Ev0YW5Oivsq+HRDqkXqGHrs+/ofXRBFXyInd8oJWt3dUOmbqL+ULm1a/ty551IsuyjK/dEhImcR/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SKxWzn0a3BBvMq+CafuIXl8+bWFjmlHs+kq5mgTtoNE=;
 b=TWzEREHu/8WbbjEpjh0Sj8DRVTUMq094yVX/wL2dIXCDf7CiOPXT3aHAGzibbjw5f6yjg+3i/VanuiI2yoldNQnAz6oWM153dAmbUpaxnGpHVqg6cnBkwAKqkNTv7UGkXQDuJeYWiyxw6gzHebsFrBz6NxEHEfzKQ7rLqZJCv/Q=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5948.eurprd04.prod.outlook.com (20.178.106.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Fri, 1 Nov 2019 08:36:17 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679%3]) with mapi id 15.20.2367.031; Fri, 1 Nov 2019
 08:36:17 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH V3 3/4] perf/imx_ddr: Add enhanced AXI ID filter support
Thread-Topic: [PATCH V3 3/4] perf/imx_ddr: Add enhanced AXI ID filter support
Thread-Index: AQHVkI9tmOl/phINXEWndRHoKw3IpQ==
Date: Fri, 1 Nov 2019 08:36:16 +0000
Message-ID: <20191101083317.29510-3-qiangqing.zhang@nxp.com>
References: <20191101083317.29510-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20191101083317.29510-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18)
 To DB7PR04MB4618.eurprd04.prod.outlook.com (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e792dd91-2a88-4315-0202-08d75ea68fdb
x-ms-traffictypediagnostic: DB7PR04MB5948:|DB7PR04MB5948:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB59481C190A8B82A1F8FD3859E6620@DB7PR04MB5948.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:773;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(396003)(39860400002)(346002)(189003)(199004)(54534003)(478600001)(2201001)(66946007)(26005)(11346002)(4326008)(3846002)(25786009)(186003)(5660300002)(486006)(2616005)(476003)(7736002)(54906003)(110136005)(86362001)(2906002)(256004)(6512007)(71190400001)(2501003)(8676002)(66446008)(52116002)(81166006)(66556008)(8936002)(316002)(446003)(36756003)(6436002)(305945005)(50226002)(66476007)(64756008)(6486002)(14454004)(1076003)(76176011)(102836004)(99286004)(386003)(66066001)(71200400001)(6506007)(6116002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5948;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JTeGgu5aUXZQmivs/eJDrqXvQmjvEvUQGE+ql7AhORw2dZ+JW0dJzY/JT72/eYJpI55+FfA9Fbj707Ni124i09cY081c4tDdZae9T19H1XXSGhY/2+ccRPek4ENGwI4xISWfIMY9s5dlESrO2TifvQHktbL6oh2bmQgUg3WD2eacgQ3Qov/1N8HSY0zaRho08V/rdHGH5K7uBPUcnYmIoeTwXSyxMIbddcHYTPT4t9k1ybRL+Qg1cfvZm+Y/8M/9jD30aL15tnvFminv9qVExadw3qKs6Tm0jD4Lm1TBaYgQ0cMfIe1xSSQVXkwlWVs32g0p8nyudVta44ZShrozSX8Uvp12PCEzGmiv1keEeJzqhaxMWHPaCyVslQcUUbT6ZokRV+ZtRdihwjAdfK9sDpI6Qczv32a667MzUp5rrHPudX72+9t5ZNMs/u7+mmXu
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e792dd91-2a88-4315-0202-08d75ea68fdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 08:36:17.1608 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7JSWhXKa4pB0B8C0JuOBboE7bZGMG1nVNifnP4HdvOoOfAevF8xxFe3qHApA/SaXJq436TJKuBIzTq+in1hocg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5948
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_013620_860038_4B073371 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
Changelog:
V1->V2:
	* use ddr_perf_is_filtered() helper to simply the code.
	* improve the commit message.
V2->V3:
	* change definition of DDR_CAP_AXI_ID_FILTER_ENHANCED quirk.
	* add ddr_perf_is_enhanced_filtered() helper.
---
 drivers/perf/fsl_imx8_ddr_perf.c | 63 +++++++++++++++++++++-----------
 1 file changed, 42 insertions(+), 21 deletions(-)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index ce7345745b42..2a3966d059e7 100644
--- a/drivers/perf/fsl_imx8_ddr_perf.c
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -45,7 +45,8 @@
 static DEFINE_IDA(ddr_ida);
 
 /* DDR Perf hardware feature */
-#define DDR_CAP_AXI_ID_FILTER          0x1     /* support AXI ID filter */
+#define DDR_CAP_AXI_ID_FILTER			0x1     /* support AXI ID filter */
+#define DDR_CAP_AXI_ID_FILTER_ENHANCED		0x3     /* support enhanced AXI ID filter */
 
 struct fsl_ddr_devtype_data {
 	unsigned int quirks;    /* quirks needed for different DDR Perf core */
@@ -178,6 +179,36 @@ static const struct attribute_group *attr_groups[] = {
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
+static bool ddr_perf_is_enhanced_filtered(struct perf_event *event)
+{
+	unsigned int filt;
+	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
+
+	filt = pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER_ENHANCED;
+	return (filt == DDR_CAP_AXI_ID_FILTER_ENHANCED) &&
+		ddr_perf_is_filtered(event);
+}
+
 static u32 ddr_perf_alloc_counter(struct ddr_pmu *pmu, int event)
 {
 	int i;
@@ -209,27 +240,17 @@ static void ddr_perf_free_counter(struct ddr_pmu *pmu, int counter)
 
 static u32 ddr_perf_read_counter(struct ddr_pmu *pmu, int counter)
 {
-	return readl_relaxed(pmu->base + COUNTER_READ + counter * 4);
-}
-
-static bool ddr_perf_is_filtered(struct perf_event *event)
-{
-	return event->attr.config == 0x41 || event->attr.config == 0x42;
-}
+	struct perf_event *event = pmu->events[counter];
+	void __iomem *base = pmu->base;
 
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
+	base += ddr_perf_is_enhanced_filtered(event) ? COUNTER_DPCR1 :
+						       COUNTER_READ;
+	return readl_relaxed(base + counter * 4);
 }
 
 static int ddr_perf_event_init(struct perf_event *event)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
