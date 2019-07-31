Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1487BE9A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 12:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+RdyWaFKCxRGwu5D7nWJSKTugQEY5zbiaLO6ccNPjU0=; b=XPy8gbx47TrY1M
	Prf5Jvi1jSfc8rf90Y7RebC4xztomtRJKUImUKDOmj0hJ1+B19kC5NxVfdjTUEhOaTgfAeDowjOkx
	WUCWhbLrx5gXmB7URpuEFgTVwAboqdZqTHsI6dy6RkRhsfYjYPjsngWFvA6B0KwcCQdKgokpgzYR/
	HQQOk9hpowkX+4lujSKBAzKrllv7U/6XD9yHxh87QwEg8o57n5cRLzmvnivGID6H0RPXUQI6L+zDC
	iuw8387WglOerOee91EJnLEEYnBkcyh5tQ+h8mEJXkGmZX8szRiU/8w9LTOgznCgctMnr0nkWFifC
	4gU5AKrcES/0np85ZcbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsm7i-0002a2-OD; Wed, 31 Jul 2019 10:46:22 +0000
Received: from mail-ve1eur01on061d.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::61d]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsm7b-0002ZO-PA
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 10:46:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nWy/VP5nm09pcbxj5LrbxUCC105zBINaOz/4jOP1XbuDbcDeGLf9d8ETUIdY2YqJI39+ho2ob0oL1QvV8sQr7dDv/n6xyQbCOBQerotfvEEc6jJQCOWDgz5COzk4/+A8aUk199TSLnRWQmPPpo62usGhds3bjUO7xibVMGYGAXgnt0vlfc0rzhc7ijsb955v7ClwwUoqM+QdMiZ3Pn4EFH7ew8OQz/B1RLIdMennbTNc6cuT6XBCQ7iqjd2M1u8uCJjLiTSTB5jU+PBEbtxS4xiZBcoQSfjBiRmV1VYVk0d1f9C0lJfjSeVSAsyLf0hiTdPTT01RoXxSvIPD5iYICg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CcvMCMLpA1VpeVEs4H88i220yygNk2Cm9pM5EcNaN40=;
 b=bou82d9pKIBIXOX3cE2ykS/+MPJ2hPQYNMrINsAQv32XHKaus0kHWcMBHv1EcSkhvvxrJ99O8aYoN/KKytCmZwnWXWJrf+IUlaYiroNCFT5ZUMLmtwajXOscgJ3c6jz8uBLu5xZx1d0lIu0oIGlwkPyed7iG4XvSoCrEVU7yZ2ocWQ8GP2z/GQGjT3s2Io+eChQN9h8Bp9JYDLU3zBInitDpcYFDDc8GHfj2nBYiLsiwZkZOkLEXDdhhDVu+Q/REIHg1PNa6cEeMKiOPEzcB+s3yZeH6MD9vWffHjrnFIlDJ1qSUY7qIV1WGQBkFa2E9QkctC6r4B/rT2FKjTGWA8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CcvMCMLpA1VpeVEs4H88i220yygNk2Cm9pM5EcNaN40=;
 b=Gy8300Wgwd2YQlgrCrcr4czNtBRUDnz7dx9LD/4zpiRoypT92Tq+9uJPdtn6HjRx9/bGUhc3uWDdQTRf7mV61GzahCnFHLge4R2ZPPrVNBGy9nyz+1+IF+XpqNF3P3pnRhKif6INcPtHVygBtkGr3Ts5DsvqL8sqcFIucufJWdc=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4778.eurprd04.prod.outlook.com (20.176.233.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.11; Wed, 31 Jul 2019 10:46:10 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b%5]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 10:46:10 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "robin.murphy@arm.com" <robin.murphy@arm.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li
 <frank.li@nxp.com>
Subject: [PATCH V4 1/2] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Topic: [PATCH V4 1/2] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Index: AQHVR40oByyn0YjPrkGeE3hz4834Ow==
Date: Wed, 31 Jul 2019 10:46:07 +0000
Message-ID: <20190731104351.3117-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR04CA0194.apcprd04.prod.outlook.com
 (2603:1096:4:14::32) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 793c889f-388c-4831-8680-08d715a44b49
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR04MB4778; 
x-ms-traffictypediagnostic: DB7PR04MB4778:
x-microsoft-antispam-prvs: <DB7PR04MB4778AB9ACBBE6897719AE61CE6DF0@DB7PR04MB4778.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(366004)(346002)(376002)(189003)(199004)(54534003)(7736002)(64756008)(478600001)(66476007)(36756003)(6636002)(316002)(66066001)(2501003)(3846002)(6116002)(110136005)(52116002)(54906003)(5660300002)(50226002)(6512007)(99286004)(6436002)(186003)(6486002)(81166006)(26005)(68736007)(2201001)(81156014)(102836004)(6506007)(8676002)(386003)(86362001)(8936002)(1076003)(25786009)(6666004)(71200400001)(486006)(53936002)(2906002)(14444005)(305945005)(71190400001)(2616005)(66946007)(66556008)(4326008)(66446008)(476003)(14454004)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4778;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: q75+J1DWQj1GKZ0t41fmWHBYTzQiCDUlhO/BQUKO2zXiblj9PGnYkPl9uN8o6Z9pCxPV/jiO79DO/Vu0LKXf7Kn3tO0XqIxHZsHim5v/4Sq4gy07js43adt9F+KZNfLtQVegYB1Q08NqEs5pOfWXVzc9CeNlVNHprsI4wOzXO0C17j1zYWqNyZbcNsV1uVPsdDjERwtWBYQDpzYxucZmH00qvXPsdVlENLAcsNJRcMNJs7uyMY3SZ089H3jRTlqBjCwBaIwzo2wY8Bq/ceMCzFZmfCCOsSPu9klJmrBdNDyafWoFJhmcth/NcZs/fBc9WZLp9fYwhZQDUtuifO+XCGsYEvn0sVIZLVU8okq701ho/KbFSg8+th9h72Cnt4BRe20GIQVmtxg/DKqTz7bMNccnjAKqlAhHVeR3YQjXXVo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 793c889f-388c-4831-8680-08d715a44b49
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 10:46:10.4259 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qiangqing.zhang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4778
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_034615_957744_BF034AA0 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:61d listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Joakim Zhang <qiangqing.zhang@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

AXI filtering is used by CSV modes 0x41 and 0x42 to count reads or
writes with an ARID or AXID matching filter setting. Granularity is at
subsystem level. Implementation does not allow filtring between masters
within a subsystem. Filter is defined with 2 configuration registers.

--AXI_ID defines AxID matching value
--AXI_MASKING defines which bits of AxID are meaningful for the matching

When non-masked bits are matching corresponding AXI_ID bits then counter
is incremented. This filter allows counting read or write access from a
subsystem or multiple subsystems.

Perf counter is incremented if AxID && AXI_MASKING == AXI_ID && AXI_MASKING

AXI_ID and AXI_MASKING are mapped on DPCR1 register in performance counter.

Read and write AXI ID filter should write same value to DPCR1 if want to
specify at the same time as this filter is shared between counters.

e.g.
perf stat -a -e imx8_ddr0/axi-id-read,axi_id=0xMMMMDDDD/,imx8_ddr0/
axi-id-write,axi_id=0xMMMMDDDD/cmd
MMMM: AXI_MASKING
DDDD: AXI_ID

ChangeLog:
V1 -> V2:
	* add error log if user specifies read/write AXI ID filter at
	the same time.
	* of_device_get_match_data() instead of of_match_device(), and
	remove the check of return value.
V2 -> V3:
	* move the AXI ID check to event_add().
	* add support for same value of axi_id.
V3 -> V4:
	* move the AXI ID check to event_init().

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 58 ++++++++++++++++++++++++++++++--
 1 file changed, 56 insertions(+), 2 deletions(-)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 63fe21600072..cb90caad6441 100644
--- a/drivers/perf/fsl_imx8_ddr_perf.c
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -42,9 +42,22 @@
 
 static DEFINE_IDA(ddr_ida);
 
+/* DDR Perf hardware feature */
+#define DDR_CAP_AXI_ID_FILTER		0x1	/* support AXI ID filter */
+
+struct fsl_ddr_devtype_data {
+	unsigned int quirks;	/* quirks needed for different DDR Perf core */
+};
+
+static const struct fsl_ddr_devtype_data imx8_devtype_data;
+
+static const struct fsl_ddr_devtype_data imx8m_devtype_data = {
+	.quirks = DDR_CAP_AXI_ID_FILTER,
+};
+
 static const struct of_device_id imx_ddr_pmu_dt_ids[] = {
-	{ .compatible = "fsl,imx8-ddr-pmu",},
-	{ .compatible = "fsl,imx8m-ddr-pmu",},
+	{ .compatible = "fsl,imx8-ddr-pmu", .data = &imx8_devtype_data},
+	{ .compatible = "fsl,imx8m-ddr-pmu", .data = &imx8m_devtype_data},
 	{ /* sentinel */ }
 };
 
@@ -57,6 +70,8 @@ struct ddr_pmu {
 	struct perf_event *events[NUM_COUNTERS];
 	int active_events;
 	enum cpuhp_state cpuhp_state;
+	const struct fsl_ddr_devtype_data *devtype_data;
+	unsigned int axi_id_read, axi_id_write;
 	int irq;
 	int id;
 };
@@ -128,6 +143,8 @@ static struct attribute *ddr_perf_events_attrs[] = {
 	IMX8_DDR_PMU_EVENT_ATTR(refresh, 0x37),
 	IMX8_DDR_PMU_EVENT_ATTR(write, 0x38),
 	IMX8_DDR_PMU_EVENT_ATTR(raw-hazard, 0x39),
+	IMX8_DDR_PMU_EVENT_ATTR(axi-id-read, 0x41),
+	IMX8_DDR_PMU_EVENT_ATTR(axi-id-write, 0x42),
 	NULL,
 };
 
@@ -137,9 +154,11 @@ static struct attribute_group ddr_perf_events_attr_group = {
 };
 
 PMU_FORMAT_ATTR(event, "config:0-7");
+PMU_FORMAT_ATTR(axi_id, "config1:0-31");
 
 static struct attribute *ddr_perf_format_attrs[] = {
 	&format_attr_event.attr,
+	&format_attr_axi_id.attr,
 	NULL,
 };
 
@@ -195,6 +214,18 @@ static int ddr_perf_event_init(struct perf_event *event)
 	struct hw_perf_event *hwc = &event->hw;
 	struct perf_event *sibling;
 
+	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
+		if (event->attr.config == 0x41)
+			pmu->axi_id_read = event->attr.config1;
+
+		if (event->attr.config == 0x42)
+			pmu->axi_id_write = event->attr.config1;
+
+		if (pmu->axi_id_read && pmu->axi_id_write &&
+		    (pmu->axi_id_read != pmu->axi_id_write))
+			return -EINVAL;
+	}
+
 	if (event->attr.type != event->pmu->type)
 		return -ENOENT;
 
@@ -274,6 +305,15 @@ static void ddr_perf_event_start(struct perf_event *event, int flags)
 	struct hw_perf_event *hwc = &event->hw;
 	int counter = hwc->idx;
 
+	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
+		if (event->attr.config == 0x41 ||
+		    event->attr.config == 0x42) {
+			int val = event->attr.config1;
+
+			writel(val, pmu->base + COUNTER_DPCR1);
+		}
+	}
+
 	local64_set(&hwc->prev_count, 0);
 
 	ddr_perf_counter_enable(pmu, event->attr.config, counter, true);
@@ -324,6 +364,11 @@ static void ddr_perf_event_del(struct perf_event *event, int flags)
 	struct hw_perf_event *hwc = &event->hw;
 	int counter = hwc->idx;
 
+	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
+		pmu->axi_id_read = 0;
+		pmu->axi_id_write = 0;
+	}
+
 	ddr_perf_event_stop(event, PERF_EF_UPDATE);
 
 	ddr_perf_free_counter(pmu, counter);
@@ -445,6 +490,7 @@ static int ddr_perf_offline_cpu(unsigned int cpu, struct hlist_node *node)
 
 static int ddr_perf_probe(struct platform_device *pdev)
 {
+	const struct fsl_ddr_devtype_data *data;
 	struct ddr_pmu *pmu;
 	struct device_node *np;
 	void __iomem *base;
@@ -472,6 +518,14 @@ static int ddr_perf_probe(struct platform_device *pdev)
 	if (!name)
 		return -ENOMEM;
 
+	data = of_device_get_match_data(&pdev->dev);
+	pmu->devtype_data = data;
+
+	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
+		pmu->axi_id_read = 0;
+		pmu->axi_id_write = 0;
+	}
+
 	pmu->cpu = raw_smp_processor_id();
 	ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
 				      DDR_CPUHP_CB_NAME,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
