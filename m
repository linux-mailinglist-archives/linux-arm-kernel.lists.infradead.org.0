Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BF174807
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 09:22:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6Ml/hqLMJAolWNFL7h0d/CQMRVeDwkomcuG8rDJzrhs=; b=Kv8FvPlsbpoW0m
	wsfQmqjKqpOasccRKvtxnmaeK2gImwHEv88vYVA9CB6QAgvuyN4t7SVZ6SScM8hMOX0Mg3bUVerCc
	AVsHB5xN8aTdQFLiummWBy/sGUHSWpt6me2DET2wYDVGSddxke7/H/QizqEmUOVKnQwscs1cQJJL0
	DwrLHzO5I1xymoecpex2rBExs/H1bnqP+dh5Mb7etWVgvUdD1o7HYnb+ORJCmdEc77gV8H2x+ZKOI
	/NnawF104gml9a4QSgRqiLRm3xrgFWpfzBTpv+0s+xrO9/Y1AzIV6UQ1+CLW6+l+vL9QYhTh2slSu
	HZFOmoKJSUcWjTzPh7Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqY5E-0000oe-3Q; Thu, 25 Jul 2019 07:22:36 +0000
Received: from mail-eopbgr150082.outbound.protection.outlook.com
 ([40.107.15.82] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqY4z-0000nl-5e
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 07:22:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P72rrT1du78MVTpKHxS7NyqLstruBiBAKGpCDdD4S/PCZJ5tVBbrwhzLFrA1pXWVQasmS2zVbmZURB0YZApGvWO6nJJaf8BQOW7gG/Rz+131xfoBZEmbg6NK3LmUWogwybLq32TjB3+HyVKsRjGezGyiwXndll9wcbA+VKD3UDl90J5PgH6aU+Xw69FMk68PrL0FVGVZtzxWsSQKjYn2X5EAIxaoY8CcjpLYZFtsWz7ADqVPIgpDuyHfonKLhxZ53IWJWnUPN1q2VaMOPPnOumsXizHRJDdsUtyQ7GirGurxQKecF91jne+eifplX18/KIjgZEwcPz2NU/9rlTnYKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fAg9iCKq1L07GG7ddg+mo3AzkSj0Ce7tUAeZpO+USXY=;
 b=hanb+7tFHiJl7sqMlxeuvuReRfuK1BQ/02wE4QUb4z7xr0NaPdXGwlK75j2hL53vP4o7yLuRNLYawiZsDqu1j5kiZyTFMxYdMCK1kjzGqmdfQgglBCJ4tJKk6ME4MHZQV00YgWE1LIngNxfTxSuRhMgUqCUNzjTDOFzfBbiEFqnSj6e1CGczw68ZI9UYlND0J5qRKtnwA7dypQfHX9JOWSk0pzJTSByrbDzYglhXwqFYaSwuMnbtFVPe6zusCjzel7ZBtoAZcPQu9wgngoiWgW1FwBjZcBH3ERyKAtlcjKEvmKBPcOfjy10AcXmwgS1ZME8NQ9C5iopHf43dWazMIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fAg9iCKq1L07GG7ddg+mo3AzkSj0Ce7tUAeZpO+USXY=;
 b=PoV7GO1D14dwZX8RPKghlFTC57TwHiTNpY8+sQyBQpHpWBUHXejTxNtyTi4Rd5QFPCNGzMvv4GnRoih1aCYQZKZ/CCFXinahk7WuENGudxYsPJw5WFQ4TEcgy0AnQWDvXEY2tBJMrd9XaJaIwOFuMFhia4hMz3hrc42r3/s0RjM=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4106.eurprd04.prod.outlook.com (52.134.108.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Thu, 25 Jul 2019 07:22:16 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b%5]) with mapi id 15.20.2094.013; Thu, 25 Jul 2019
 07:22:16 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "robin.murphy@arm.com" <robin.murphy@arm.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li
 <frank.li@nxp.com>
Subject: [PATCH V2] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Topic: [PATCH V2] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Index: AQHVQrmwg8LLFjQP3USIMmib/ZNviA==
Date: Thu, 25 Jul 2019 07:22:16 +0000
Message-ID: <20190725071955.19117-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR0601CA0011.apcprd06.prod.outlook.com (2603:1096:3::21)
 To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 898a7fc6-34fe-48fe-9d7b-08d710d0d266
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4106; 
x-ms-traffictypediagnostic: DB7PR04MB4106:
x-microsoft-antispam-prvs: <DB7PR04MB4106C737E97487DA7E67AB57E6C10@DB7PR04MB4106.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(366004)(396003)(376002)(54534003)(199004)(189003)(6486002)(14454004)(2501003)(99286004)(86362001)(64756008)(52116002)(25786009)(66946007)(71200400001)(66446008)(66556008)(71190400001)(36756003)(26005)(50226002)(53936002)(66476007)(4326008)(102836004)(6506007)(386003)(6636002)(6436002)(8676002)(81156014)(478600001)(1076003)(6116002)(316002)(256004)(110136005)(186003)(14444005)(2201001)(486006)(305945005)(3846002)(2616005)(7736002)(68736007)(476003)(2906002)(6512007)(8936002)(66066001)(5660300002)(81166006)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4106;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2I3mCnSWxiiLk1V+u24moC/F2hi9c2GWcOqzVb3JBGAy3FgB/LoiJELF/ltFNyZVGAGvLY7V6rTokJOALl4SKglDVGuRQtzcf2RWc5LpYUYwj1mVg04lyKmk5qbVhoOHp0M/ER7VJxeCKSolkJhJ8bc8qdiuAsv3PiTlPmlirahrvSf6fhvW0I/lnn1ILiLzc3Y3dQm3o0ywkM96J+2fwX63XlbOCDKv5Uy52nkOs7Pcrpg5BpmtU9ARFC7BBkaU9S0U5IyZ1tLwGLKWXt5Vr3jUI0T0Bg62nr2idlYOf0LH+UQUQnC8qGMTk+mn1s+K4hLULeM0p3l8/e98STd+Fm/kSaqDVjNNCWqwoy93jkdcBbCdPUYmz8PRD1lKXF4w7t3ZSP1AQ3z2aj+utxdrsLO9HmjE1hW0rlF/I+yx8Pg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 898a7fc6-34fe-48fe-9d7b-08d710d0d266
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 07:22:16.7225 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qiangqing.zhang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_002221_222639_9B36A7F6 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "kernel@pengutronix.de" <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Joakim Zhang <qiangqing.zhang@nxp.com>
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

Read and write AXI ID filter can't be specified at the same time as this
filter is shared between counters.

e.g.
perf stat -a -e imx8_ddr0/axi-id-read,axi_id=0xMMMMDDDD/ cmd
MMMM: AXI_MASKING
DDDD: AXI_ID

ChangeLog:
V1 -> V2:
	* add error log if user specifies read/write AXI ID filter at
	the same time.
	* of_device_get_match_data() instead of of_match_device(), and
	remove the check of return value.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 48 ++++++++++++++++++++++++++++++--
 1 file changed, 46 insertions(+), 2 deletions(-)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 63fe21600072..da851da74cbd 100644
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
+	bool axi_id_read, axi_id_write;
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
 
@@ -274,6 +293,22 @@ static void ddr_perf_event_start(struct perf_event *event, int flags)
 	struct hw_perf_event *hwc = &event->hw;
 	int counter = hwc->idx;
 
+	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
+		if (event->attr.config == 0x41)
+			pmu->axi_id_read = true;
+
+		if (event->attr.config == 0x42)
+			pmu->axi_id_write = true;
+
+		if (pmu->axi_id_read && pmu->axi_id_write) {
+			dev_err(pmu->dev, "axi-id-read/write event can't be specified at the same time\n");
+		} else {
+			int val = event->attr.config1;
+
+			writel(val, pmu->base + COUNTER_DPCR1);
+		}
+	}
+
 	local64_set(&hwc->prev_count, 0);
 
 	ddr_perf_counter_enable(pmu, event->attr.config, counter, true);
@@ -316,6 +351,11 @@ static void ddr_perf_event_stop(struct perf_event *event, int flags)
 	ddr_perf_event_update(event);
 
 	hwc->state |= PERF_HES_STOPPED;
+
+	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
+		pmu->axi_id_read = false;
+		pmu->axi_id_write = false;
+	}
 }
 
 static void ddr_perf_event_del(struct perf_event *event, int flags)
@@ -445,6 +485,7 @@ static int ddr_perf_offline_cpu(unsigned int cpu, struct hlist_node *node)
 
 static int ddr_perf_probe(struct platform_device *pdev)
 {
+	const struct fsl_ddr_devtype_data *data;
 	struct ddr_pmu *pmu;
 	struct device_node *np;
 	void __iomem *base;
@@ -472,6 +513,9 @@ static int ddr_perf_probe(struct platform_device *pdev)
 	if (!name)
 		return -ENOMEM;
 
+	data = of_device_get_match_data(&pdev->dev);
+	pmu->devtype_data = data;
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
