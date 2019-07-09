Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E3A63025
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 07:47:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YE7XfKW10GMGUdyhLrLyDDANxuIVzC4ixO/4ddY9yp0=; b=T5mXuEeyCA3Mj+
	h0tbMfrj/HZbksw/n4huQXF2eNWlaRQvMoz8Awy91USVDBfDFi8Pa7uFlnzGJOkXISqVEpuvhNc4s
	bBdemh8uCLNomldviEqAV4voyVMARLPlwWlCKrVbgDN92rKljEcn6Vk5+bfqTKv65m7ITM7Plo5cH
	5UGfYesNKoaaJEemPm18f1F2DWZUGGtO9Xq/k50Pjo3+mlZi2mazq+ZB6Kvkm9sRhNE0qs4M0DVYd
	7YZXMXVQcC/XOmNV8YMYw9vrtHe4cGdVqjfuHh+sfOnKFdkai5u760Gfu3SADNhBYHf4mRpRePiJV
	8PVotcRF+AxGgA6kyFXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkixx-0003K4-UH; Tue, 09 Jul 2019 05:47:02 +0000
Received: from mail-eopbgr40056.outbound.protection.outlook.com ([40.107.4.56]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkixl-0003HI-Ks
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 05:46:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FS9RPeC/nJOL7yfFn15yNaQ7Sv3jvNl2LQtj7HutZqQ=;
 b=IVJV+991eAN18BzkD1EVy89IAG/VDv6MzXtfwzPR7YzypKNYLuFW4+TiIPR6PZ+DAj1G0k91CeZ0qVBeC/fWtWzaU74xe8uJFITUsFYcL4asaTYDjAxe7f6Vozm0+QVKfqzC6Jkq+oYAjRjXKZBP2OpDEpxlYKfxm0dNHdtwo6M=
Received: from AM6PR04MB4613.eurprd04.prod.outlook.com (20.177.38.22) by
 AM6PR04MB4503.eurprd04.prod.outlook.com (20.177.37.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Tue, 9 Jul 2019 05:46:45 +0000
Received: from AM6PR04MB4613.eurprd04.prod.outlook.com
 ([fe80::3505:667e:2d3:c78e]) by AM6PR04MB4613.eurprd04.prod.outlook.com
 ([fe80::3505:667e:2d3:c78e%3]) with mapi id 15.20.2073.008; Tue, 9 Jul 2019
 05:46:45 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>
Subject: [PATCH] perf: imx8_ddr_perf: calculate ddr bandwidth via virtual
 event read-bytes/write-bytes
Thread-Topic: [PATCH] perf: imx8_ddr_perf: calculate ddr bandwidth via virtual
 event read-bytes/write-bytes
Thread-Index: AQHVNhmxp3M1xbcYYkqaUv5u35ujeQ==
Date: Tue, 9 Jul 2019 05:46:44 +0000
Message-ID: <20190709054417.11734-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR06CA0158.apcprd06.prod.outlook.com
 (2603:1096:1:1e::12) To AM6PR04MB4613.eurprd04.prod.outlook.com
 (2603:10a6:20b:18::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4659dd12-64f0-4b2c-ca11-08d70430d36e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB4503; 
x-ms-traffictypediagnostic: AM6PR04MB4503:
x-microsoft-antispam-prvs: <AM6PR04MB45038F2BAB525436C467E773E6F10@AM6PR04MB4503.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(396003)(346002)(366004)(189003)(199004)(8676002)(81166006)(256004)(5660300002)(7736002)(8936002)(14444005)(6512007)(81156014)(305945005)(1076003)(478600001)(71190400001)(36756003)(110136005)(3846002)(54906003)(66066001)(316002)(53936002)(6636002)(52116002)(66446008)(64756008)(102836004)(68736007)(66476007)(66556008)(66946007)(486006)(386003)(99286004)(6506007)(73956011)(186003)(50226002)(4326008)(2616005)(26005)(6486002)(71200400001)(476003)(25786009)(6436002)(86362001)(14454004)(2906002)(2501003)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4503;
 H:AM6PR04MB4613.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wAl4PQNmBo1qwAX4BU+qUqxnQH/IFJ+s8TteGbtSdHa1ep8mQYoCicYwj6sbcTRO0Sof8POKyeLps18nZwAf2K0T5/9g4IF1COLtbXrr7rM8uDAJG/b+HH1R+Q7Z42bojpio4cLQFB1WgWK/Y4vZl2ZNYq3MwqKOlvtoWEOkHt1HBLazUFveUmz8xChik5uKdKbv8FpRQvDs8B/Cu7RYx9FJYPM0b1MH70z08JpGvLmHoPxcwEVKB83kCgc6a6fUnYixkxwVmOVKxL7dhV0seKGbdMaxzzJZzmkNKV/1nlgYT554mzRN0p6ViU4F+e7CYQNryDXpHRW5nato9SN91N9j0tLisD8VAVL9EUUZj660/EiksdVFR6F/914exy6qt2M/Znk05VLanfKeeNJT+iLYuKAvzgWQZnktg5lgNE8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4659dd12-64f0-4b2c-ca11-08d70430d36e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 05:46:45.0138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qiangqing.zhang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4503
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_224649_696219_CAD3A71D 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Joakim Zhang <qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We can calculate ddr bandwidth via virtual event read-bytes/write-bytes
based on ddr burst width, which actually share event
read-cycles/write-cycles. Burst width is 32 bit on i.MX8 board.

The ddr interface will generate 2 up edges and 2 down edges in an
internal clock cycle, so it can pass 4 beats of data. 4 bytes of each
beat if ddr burst width is 32 bit.

for example:
perf stat -a -e imx8_ddr0/read-bytes/,imx8_ddr0/write-bytes/ ls

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 96 ++++++++++++++++++++------------
 1 file changed, 61 insertions(+), 35 deletions(-)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 63fe21600072..e7dbaf4d2387 100644
--- a/drivers/perf/fsl_imx8_ddr_perf.c
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -88,46 +88,53 @@ ddr_pmu_event_show(struct device *dev, struct device_attribute *attr,
 	struct perf_pmu_events_attr *pmu_attr;
 
 	pmu_attr = container_of(attr, struct perf_pmu_events_attr, attr);
-	return sprintf(page, "event=0x%02llx\n", pmu_attr->id);
+	return sprintf(page, "%s", pmu_attr->event_str);
 }
 
-#define IMX8_DDR_PMU_EVENT_ATTR(_name, _id)				\
+#define IMX8_DDR_PMU_EVENT_ATTR(_name, _str)				\
 	(&((struct perf_pmu_events_attr[]) {				\
 		{ .attr = __ATTR(_name, 0444, ddr_pmu_event_show, NULL),\
-		  .id = _id, }						\
+		  .id = 0,						\
+		  .event_str = _str, }					\
 	})[0].attr.attr)
 
 static struct attribute *ddr_perf_events_attrs[] = {
-	IMX8_DDR_PMU_EVENT_ATTR(cycles, EVENT_CYCLES_ID),
-	IMX8_DDR_PMU_EVENT_ATTR(selfresh, 0x01),
-	IMX8_DDR_PMU_EVENT_ATTR(read-accesses, 0x04),
-	IMX8_DDR_PMU_EVENT_ATTR(write-accesses, 0x05),
-	IMX8_DDR_PMU_EVENT_ATTR(read-queue-depth, 0x08),
-	IMX8_DDR_PMU_EVENT_ATTR(write-queue-depth, 0x09),
-	IMX8_DDR_PMU_EVENT_ATTR(lp-read-credit-cnt, 0x10),
-	IMX8_DDR_PMU_EVENT_ATTR(hp-read-credit-cnt, 0x11),
-	IMX8_DDR_PMU_EVENT_ATTR(write-credit-cnt, 0x12),
-	IMX8_DDR_PMU_EVENT_ATTR(read-command, 0x20),
-	IMX8_DDR_PMU_EVENT_ATTR(write-command, 0x21),
-	IMX8_DDR_PMU_EVENT_ATTR(read-modify-write-command, 0x22),
-	IMX8_DDR_PMU_EVENT_ATTR(hp-read, 0x23),
-	IMX8_DDR_PMU_EVENT_ATTR(hp-req-nocredit, 0x24),
-	IMX8_DDR_PMU_EVENT_ATTR(hp-xact-credit, 0x25),
-	IMX8_DDR_PMU_EVENT_ATTR(lp-req-nocredit, 0x26),
-	IMX8_DDR_PMU_EVENT_ATTR(lp-xact-credit, 0x27),
-	IMX8_DDR_PMU_EVENT_ATTR(wr-xact-credit, 0x29),
-	IMX8_DDR_PMU_EVENT_ATTR(read-cycles, 0x2a),
-	IMX8_DDR_PMU_EVENT_ATTR(write-cycles, 0x2b),
-	IMX8_DDR_PMU_EVENT_ATTR(read-write-transition, 0x30),
-	IMX8_DDR_PMU_EVENT_ATTR(precharge, 0x31),
-	IMX8_DDR_PMU_EVENT_ATTR(activate, 0x32),
-	IMX8_DDR_PMU_EVENT_ATTR(load-mode, 0x33),
-	IMX8_DDR_PMU_EVENT_ATTR(perf-mwr, 0x34),
-	IMX8_DDR_PMU_EVENT_ATTR(read, 0x35),
-	IMX8_DDR_PMU_EVENT_ATTR(read-activate, 0x36),
-	IMX8_DDR_PMU_EVENT_ATTR(refresh, 0x37),
-	IMX8_DDR_PMU_EVENT_ATTR(write, 0x38),
-	IMX8_DDR_PMU_EVENT_ATTR(raw-hazard, 0x39),
+	IMX8_DDR_PMU_EVENT_ATTR(cycles, "event=0x00"),
+	IMX8_DDR_PMU_EVENT_ATTR(selfresh, "event=0x01"),
+	IMX8_DDR_PMU_EVENT_ATTR(read-accesses, "event=0x04"),
+	IMX8_DDR_PMU_EVENT_ATTR(write-accesses, "event=0x05"),
+	IMX8_DDR_PMU_EVENT_ATTR(read-queue-depth, "event=0x08"),
+	IMX8_DDR_PMU_EVENT_ATTR(write-queue-depth, "event=0x09"),
+	IMX8_DDR_PMU_EVENT_ATTR(lp-read-credit-cnt, "event=0x10"),
+	IMX8_DDR_PMU_EVENT_ATTR(hp-read-credit-cnt, "event=0x11"),
+	IMX8_DDR_PMU_EVENT_ATTR(write-credit-cnt, "event=0x12"),
+	IMX8_DDR_PMU_EVENT_ATTR(read-command, "event=0x20"),
+	IMX8_DDR_PMU_EVENT_ATTR(write-command, "event=0x21"),
+	IMX8_DDR_PMU_EVENT_ATTR(read-modify-write-command, "event=0x22"),
+	IMX8_DDR_PMU_EVENT_ATTR(hp-read, "event=0x23"),
+	IMX8_DDR_PMU_EVENT_ATTR(hp-req-nocredit, "event=0x24"),
+	IMX8_DDR_PMU_EVENT_ATTR(hp-xact-credit, "event=0x25"),
+	IMX8_DDR_PMU_EVENT_ATTR(lp-req-nocredit, "event=0x26"),
+	IMX8_DDR_PMU_EVENT_ATTR(lp-xact-credit, "event=0x27"),
+	IMX8_DDR_PMU_EVENT_ATTR(wr-xact-credit, "event=0x29"),
+	IMX8_DDR_PMU_EVENT_ATTR(read-cycles, "event=0x2a"),
+	IMX8_DDR_PMU_EVENT_ATTR(read-bytes, "event=0x12a"),
+	IMX8_DDR_PMU_EVENT_ATTR(read-bytes.unit, "MB"),
+	IMX8_DDR_PMU_EVENT_ATTR(read-bytes.scale, "0.000001"),
+	IMX8_DDR_PMU_EVENT_ATTR(write-cycles, "event=0x2b"),
+	IMX8_DDR_PMU_EVENT_ATTR(write-bytes, "event=0x12b"),
+	IMX8_DDR_PMU_EVENT_ATTR(write-bytes.unit, "MB"),
+	IMX8_DDR_PMU_EVENT_ATTR(write-bytes.scale, "0.000001"),
+	IMX8_DDR_PMU_EVENT_ATTR(read-write-transition, "event=0x30"),
+	IMX8_DDR_PMU_EVENT_ATTR(precharge, "event=0x31"),
+	IMX8_DDR_PMU_EVENT_ATTR(activate, "event=0x32"),
+	IMX8_DDR_PMU_EVENT_ATTR(load-mode, "event=0x33"),
+	IMX8_DDR_PMU_EVENT_ATTR(perf-mwr, "event=0x34"),
+	IMX8_DDR_PMU_EVENT_ATTR(read, "event=0x35"),
+	IMX8_DDR_PMU_EVENT_ATTR(read-activate, "event=0x36"),
+	IMX8_DDR_PMU_EVENT_ATTR(refresh, "event=0x37"),
+	IMX8_DDR_PMU_EVENT_ATTR(write, "event=0x38"),
+	IMX8_DDR_PMU_EVENT_ATTR(raw-hazard, "event=0x39"),
 	NULL,
 };
 
@@ -136,7 +143,7 @@ static struct attribute_group ddr_perf_events_attr_group = {
 	.attrs = ddr_perf_events_attrs,
 };
 
-PMU_FORMAT_ATTR(event, "config:0-7");
+PMU_FORMAT_ATTR(event, "config:0-8");
 
 static struct attribute *ddr_perf_format_attrs[] = {
 	&format_attr_event.attr,
@@ -243,6 +250,17 @@ static void ddr_perf_event_update(struct perf_event *event)
 
 	delta = (new_raw_count - prev_raw_count) & 0xFFFFFFFF;
 
+	/*
+	 * Calculate ddr read/write bandwidth via read-bytes/write-bytes events,
+	 * actually using read-cycles/write-cycles events.
+	 *
+	 * The ddr interface will generate 2 up edges and 2 down edges in an
+	 * internal clock cycle, so it can pass 4 beats of data, and 4 bytes of
+	 * each beat if ddr burst width is 32 bit.
+	 */
+	if (event->attr.config == 0x12a || event->attr.config == 0x12b)
+		delta = delta * 4 * 4;
+
 	local64_add(delta, &event->count);
 }
 
@@ -260,7 +278,15 @@ static void ddr_perf_counter_enable(struct ddr_pmu *pmu, int config,
 		 */
 		writel(0, pmu->base + reg);
 		val = CNTL_EN | CNTL_CLEAR;
-		val |= FIELD_PREP(CNTL_CSV_MASK, config);
+
+		/*
+		 * Virtual events(read-bytes/write-bytes) share real
+		 * events(read-cycles/write-cycles).
+		 */
+		if (config == 0x12a || config == 0x12b)
+			val |= FIELD_PREP(CNTL_CSV_MASK, (config - 0x100));
+		else
+			val |= FIELD_PREP(CNTL_CSV_MASK, config);
 		writel(val, pmu->base + reg);
 	} else {
 		/* Disable counter */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
