Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69975760B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 10:28:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NdOakbsZmHsgrInKes0TxnRb2aF1iDbDcSA3w4hWwEE=; b=MxrbLeIH/OPoqD
	rYSW6pIfT1km51ht9e1h10zJxMjxgliv8RFYDsr7cN61vul2158XD46hSpT2dUW/j9oQiYdb6JTKO
	+cYT3zluXyAClxZ4sLsM9iuwdwcYyUVmKdjzs47upZyADxTBS5d7A+QMUz6mDE5Jqy+9NYPmzp6w0
	2fsu5/UXQ+WrbhHbtWKqw0qBH1uSNFPfL1BwNGYRZicTBmVEw5qjuc3AO+Bkssm2IeArtIg2ffOCl
	0LoUCgd37V1ZvWQ79ygMHXhlOgtCgqpojOmvWgPm6QzCrMVlXxP3HZO0rHgIl5Xiqbza32m+GWOj1
	DOpnpD6GpXYH9h9zrLyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqvaa-00076G-J9; Fri, 26 Jul 2019 08:28:32 +0000
Received: from mail-eopbgr00085.outbound.protection.outlook.com ([40.107.0.85]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqvaN-00075a-Kt
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 08:28:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XQ1U+o7mVoPinoKm7k1cz9dXIimghIsagCIFokOWoaEB04Y81xJbdRMHkiwcMSeVdfv2VRfWWMVzLu78OKqved0ZVu7tcNw3gE+rcy9BsEtVEBekQq1u35gehr5+tMmm4Ltzyn4GQn2nejJC9OoHocfHA7Q0fiIcoN22BQA1tD4kXBbAaxt26jSxU/elojLJeoyFZ4Aqf01WTSXIT+C9wGmlkrOeDDJuhujYp2LSMWm2LSzlp7PoVCEA7ltHHzNoVGzKuDvppMA7Oc1GcF6sfHZ4kye+LAuQKdJ0tLikML1YzyHJ2wDf959OLTOEil/yVOi6sjEvmR9DIaxE7XtMnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fkO4YVlMkQAo5OC1LT3tPFWlyqo3ZLjY678WraPM248=;
 b=CXTXFwhq2J9JoWcjN651/ePhf56+YphjZUnCRdjpordxOi0ck0Kr2nPHeoDFLEU1Y4IUI2ELtCwE9+cS5NVQm+nkFDY8PgMmuHvaMSYqLFN2nH4oq5FGMfpMD02648ueKQUJyEn9CLOmXNf7ii3HC4wsPJ+x1YvpiW5ZQPzDuccCHYOQ7hWtF2hz7wxBQHDWjwM+50e3j5uuVAg6/qAbDvXevXH5mY0ci3hbsaDa6+PDYsodtdhgplZzlaqP2v4fufMgry81VFS1gmqkgRs+1osYATEg48ISDgUIBwYPgyl5MZSTb0SVzjd4hU1JMDRfTbKTGxf/gB/4GLUUeSJeYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fkO4YVlMkQAo5OC1LT3tPFWlyqo3ZLjY678WraPM248=;
 b=PRPflSOIPxR9nBbKE/gh/v3m/bfq6EwTIY7DHGEq63rYwZS6iRiLwSoLHguwmuzQNAe4HwNElSW50XJpgYdN80fTLw/YznjWgtncL5x+Ghxw/WURmUm8k9dZC7vZAz6+RnCgwmjMpMd265/2pZdGtqdk4diqiFeAJ8qH6m89uRE=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5434.eurprd04.prod.outlook.com (20.178.104.223) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Fri, 26 Jul 2019 08:28:13 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b%5]) with mapi id 15.20.2094.013; Fri, 26 Jul 2019
 08:28:13 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "robin.murphy@arm.com" <robin.murphy@arm.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li
 <frank.li@nxp.com>
Subject: [PATCH V3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Topic: [PATCH V3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Index: AQHVQ4wQm7AUaXWrZEGF9wv9CEkOQg==
Date: Fri, 26 Jul 2019 08:28:13 +0000
Message-ID: <20190726082553.1083-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR02CA0114.apcprd02.prod.outlook.com
 (2603:1096:4:92::30) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 37539f60-8bf2-41a5-2b72-08d711a3332b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB5434; 
x-ms-traffictypediagnostic: DB7PR04MB5434:
x-microsoft-antispam-prvs: <DB7PR04MB5434CAA3C0471D09EFEF5DCDE6C00@DB7PR04MB5434.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01106E96F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(366004)(376002)(346002)(189003)(199004)(54534003)(486006)(305945005)(110136005)(36756003)(1076003)(50226002)(8676002)(2201001)(26005)(316002)(5660300002)(54906003)(8936002)(71200400001)(2616005)(71190400001)(476003)(14444005)(256004)(6486002)(66946007)(81166006)(81156014)(66446008)(68736007)(64756008)(66556008)(66476007)(102836004)(6512007)(6436002)(6506007)(2501003)(386003)(53936002)(4326008)(25786009)(6116002)(66066001)(478600001)(3846002)(14454004)(186003)(86362001)(6636002)(7736002)(2906002)(52116002)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5434;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jJECfa1gRlDfLWwRPNAg/0WEyelOD7DBi2tPuOGemyKTL+a3evYHGt52IatHjAG1+KhdMTEYGiW7Yv05teTotxooHxjhrFee1gPJpQA94z4jtghsEfO6FYjmZ51Q2hqbvOfYht37M6zCdkb+PMm16TAbSlRv634DZDTv+8MQTvWgXnNvcx8jf6K+zEAJyoHNxuyLgu53zF6zMCvYEzLLeHUfZ4m0+Q99aAZ1o400KXvbKc54x0NQHL0IBAyPWTpowUqRC+K09fT3c4GkDMn/FUIPgNt7U5WsxNVlXTyyjIDEkAgYaI7lnq4MXoR0a2PVsGWUV/7+vCfwxgMOLIzKzIGbE2U3y2ZGWacoC8tzce7tDRLYu+/hExDAkTItwatjLngo2Phi8vj7WtvvXD0Qd3yQ/ysir0Z3+4HQnbCOcFg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37539f60-8bf2-41a5-2b72-08d711a3332b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2019 08:28:13.7050 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qiangqing.zhang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5434
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_012819_691173_683057ED 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 50 ++++++++++++++++++++++++++++++--
 1 file changed, 48 insertions(+), 2 deletions(-)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 63fe21600072..e7427aec8c3e 100644
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
 
@@ -288,6 +307,24 @@ static int ddr_perf_event_add(struct perf_event *event, int flags)
 	int counter;
 	int cfg = event->attr.config;
 
+	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
+		if (event->attr.config == 0x41)
+			pmu->axi_id_read = event->attr.config1;
+
+		if (event->attr.config == 0x42)
+			pmu->axi_id_write = event->attr.config1;
+
+		if (pmu->axi_id_read && pmu->axi_id_write &&
+		    (pmu->axi_id_read != pmu->axi_id_write)) {
+			dev_err(pmu->dev, "axi-id-read/write event must have the same value of axi_id\n");
+			return -EINVAL;
+		} else if (pmu->axi_id_read) {
+			writel(pmu->axi_id_read, pmu->base + COUNTER_DPCR1);
+		} else if (pmu->axi_id_write) {
+			writel(pmu->axi_id_write, pmu->base + COUNTER_DPCR1);
+		}
+	}
+
 	counter = ddr_perf_alloc_counter(pmu, cfg);
 	if (counter < 0) {
 		dev_dbg(pmu->dev, "There are not enough counters\n");
@@ -312,6 +349,11 @@ static void ddr_perf_event_stop(struct perf_event *event, int flags)
 	struct hw_perf_event *hwc = &event->hw;
 	int counter = hwc->idx;
 
+	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
+		pmu->axi_id_read = 0;
+		pmu->axi_id_write = 0;
+	}
+
 	ddr_perf_counter_enable(pmu, event->attr.config, counter, false);
 	ddr_perf_event_update(event);
 
@@ -445,6 +487,7 @@ static int ddr_perf_offline_cpu(unsigned int cpu, struct hlist_node *node)
 
 static int ddr_perf_probe(struct platform_device *pdev)
 {
+	const struct fsl_ddr_devtype_data *data;
 	struct ddr_pmu *pmu;
 	struct device_node *np;
 	void __iomem *base;
@@ -472,6 +515,9 @@ static int ddr_perf_probe(struct platform_device *pdev)
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
