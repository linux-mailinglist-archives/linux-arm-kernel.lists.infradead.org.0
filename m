Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F32D6E20B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 09:57:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4FFTdUZcsoGdWbVVMBx/149+eCXpOTFs4FjqfkArEjc=; b=lSYUCesKcD0zSd
	jKtfQJAGxe37bBypXZQdzt4Ekpfyn9P5Mzd0idRzFTYuuVubVWUgNsgX16gqbgKcW/NP8w6lk0syj
	xNTvaP99YXMBI9aLxDMw48ftyVEHRNJUNXc1qfGuDp+1/K1rqimNv7uuOib3WoDlZjWix+Z301QWL
	boNxuHzR8BLKkb9ZIVdkfIOyCIczQyW6bWm10ljgRRMeYeQT88MupZtzOHaS17AP39lzB9doOO1C3
	DVpYuNipaFqNJfqbnPAJlGzmATE9oEswcp4jQBnDgjPvOq55Ey3ueJdQvE3VafvoHF81k8bmmMI4K
	5PXpcofA3EEaJXdglcNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoNlV-0005Rh-Ag; Fri, 19 Jul 2019 07:57:17 +0000
Received: from mail-eopbgr140047.outbound.protection.outlook.com
 ([40.107.14.47] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoNl9-00058H-1S
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 07:56:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cvWXK3ZPOYU09UmhCrR70Q1m2b1IfAYHSVywi2wXrN7dBNa1E3I38JBahu9O3RxACbOPRkwzW3HG0+Oag2KNN352XDqJvtAce2xgowjjr/9in1zXdvZKJerj8cDeLrHqw3q6KHbGLXqzbktQ+g/0ApBGbt3xmCbhBiknyhO3woEgue0FonuQpkZLy8W1IqNroSx6W+VHo0rIfFuITIuI609EH9LKeK2L11CbjwUIlHym8RkZLtv5QNmXPABh35Isfv8VO8lLy4pqNfCJ/7Iii/6BiMgHyjXozD3YouDgtP/58Y//POADa05Ia82ORDnYq/AuHMC6uw/6whrDaE3+dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WTpLhVpwgf8hAsWBBoXKS1o+vANfueKFgYHbYjyVC74=;
 b=YI/TSjsZc4BVdcm+XJbT89FPXIeAqRj/r+iG/xa2g06lr0MbHupvmLzO+oTviPZUYsoVS4puQi53GTLPuZ7GrSOUguCN6f1OPRlF61jnYiRJYitG7t2FFYHGzMaV15y7tR+wnALNZnU+cfoNViwheZUcNfV9QYwdU27zwMFVXovv1IZNHV92tGQWcLnnfbRv+ZUg35aYQheJliu2ILMQvxcVGfUQMbwHVD7SANe7Ci8gTiD0Pw/CYi4Otrpd5C+3bmsp9qO2XuTJxOpnonKOGmfTyzeY8fbwbYooUNDUsoQzmkrXsH4lfoKKlxYlFsA7Vkg1EB4dStbYXM5IG8XEBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WTpLhVpwgf8hAsWBBoXKS1o+vANfueKFgYHbYjyVC74=;
 b=gzTMPVzYRhgy2unxSUrpotvm/oWTDc3HrG0MR8gYBEEkKCIOPIS+T880rWI4V3lw/hSLadH/eEtnYR23ym6YkwIa0t7JVj5XPTko/BG1AJH6yYfxsb2WOmtoy/Ti/DWEvsWS+QP6jqd7RKGiCqZWlrgKnHP8PSLWbtfST3pgCHI=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4058.eurprd04.prod.outlook.com (52.134.109.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.10; Fri, 19 Jul 2019 07:56:49 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::6553:8d04:295c:774b%5]) with mapi id 15.20.2094.011; Fri, 19 Jul 2019
 07:56:49 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>
Subject: [PATCH] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Topic: [PATCH] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Index: AQHVPgeES6AYZMH+7kCt15qSmASJMQ==
Date: Fri, 19 Jul 2019 07:56:49 +0000
Message-ID: <20190719075421.11093-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR04CA0181.apcprd04.prod.outlook.com
 (2603:1096:4:14::19) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a220961e-1936-4631-d5fd-08d70c1ea71d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4058; 
x-ms-traffictypediagnostic: DB7PR04MB4058:
x-microsoft-antispam-prvs: <DB7PR04MB4058BDBB69B70BE4B87D610EE6CB0@DB7PR04MB4058.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01039C93E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(366004)(136003)(376002)(39860400002)(199004)(189003)(86362001)(478600001)(6436002)(6512007)(7736002)(186003)(99286004)(52116002)(26005)(14444005)(486006)(256004)(2906002)(305945005)(25786009)(50226002)(66946007)(66066001)(2501003)(386003)(476003)(4326008)(66556008)(64756008)(66446008)(2616005)(66476007)(81156014)(54906003)(68736007)(6506007)(81166006)(8676002)(316002)(36756003)(8936002)(102836004)(6636002)(6486002)(6116002)(71190400001)(14454004)(1076003)(53936002)(71200400001)(3846002)(110136005)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4058;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uN2Tyil86WBj1T3LnveBPU0VrmpO5mHM2MafXeSAS4sLfhNqVB8E/V4dzT88K6ojwHl3/3BvtMc99Qilt43J63Ke3LqdsRIsv5nMMHgBpkG9jxRHz04MjO1wipW2iO917WFKvlhyp4z5HZGKqOSFy7JCA+Y5FpRTrVXDRADKAo1Xt9xAL1qqDJmIoXUT6iJntnfYuoQXdiOnMI3zb5+x5JTHlkfjoom967V36xg8dZtS+LzjDfKMzHDfPxLbQ2tdBoBrEHfCSU4PZgtqAzN+jgnBepPvwyUm/Np5SaG19o0Rj4DqjGapSiBT3Xx+PlTpWh2DadOyji+twSH9wziHiaiECmzAsawC+QexhTGnoarma0J7oLd68F19k835zugyNaJ+97WkskvFJgNMyP5zxZ4aRFBrDIpd1El7uy9sxnA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a220961e-1936-4631-d5fd-08d70c1ea71d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2019 07:56:49.1095 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qiangqing.zhang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_005655_094822_72C6B255 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
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

e.g.
perf stat -a -e imx8_ddr0/axi-id-read,axi_id=0xMMMMDDDD/ cmd
MMMM: AXI_MASKING
DDDD: AXI_ID

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 38 ++++++++++++++++++++++++++++++--
 1 file changed, 36 insertions(+), 2 deletions(-)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 63fe21600072..cd05f12ed5c4 100644
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
 
@@ -57,6 +70,7 @@ struct ddr_pmu {
 	struct perf_event *events[NUM_COUNTERS];
 	int active_events;
 	enum cpuhp_state cpuhp_state;
+	const struct fsl_ddr_devtype_data *devtype_data;
 	int irq;
 	int id;
 };
@@ -128,6 +142,8 @@ static struct attribute *ddr_perf_events_attrs[] = {
 	IMX8_DDR_PMU_EVENT_ATTR(refresh, 0x37),
 	IMX8_DDR_PMU_EVENT_ATTR(write, 0x38),
 	IMX8_DDR_PMU_EVENT_ATTR(raw-hazard, 0x39),
+	IMX8_DDR_PMU_EVENT_ATTR(axi-id-read, 0x41),
+	IMX8_DDR_PMU_EVENT_ATTR(axi-id-write, 0x42),
 	NULL,
 };
 
@@ -137,9 +153,11 @@ static struct attribute_group ddr_perf_events_attr_group = {
 };
 
 PMU_FORMAT_ATTR(event, "config:0-7");
+PMU_FORMAT_ATTR(axi_id, "config1:0-31");
 
 static struct attribute *ddr_perf_format_attrs[] = {
 	&format_attr_event.attr,
+	&format_attr_axi_id.attr,
 	NULL,
 };
 
@@ -274,6 +292,15 @@ static void ddr_perf_event_start(struct perf_event *event, int flags)
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
@@ -445,6 +472,7 @@ static int ddr_perf_offline_cpu(unsigned int cpu, struct hlist_node *node)
 
 static int ddr_perf_probe(struct platform_device *pdev)
 {
+	const struct of_device_id *of_id;
 	struct ddr_pmu *pmu;
 	struct device_node *np;
 	void __iomem *base;
@@ -472,6 +500,12 @@ static int ddr_perf_probe(struct platform_device *pdev)
 	if (!name)
 		return -ENOMEM;
 
+	of_id = of_match_device(imx_ddr_pmu_dt_ids, &pdev->dev);
+	if (of_id)
+		pmu->devtype_data = of_id->data;
+	else
+		return -ENODEV;
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
