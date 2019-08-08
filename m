Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C7C85AFE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 08:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AbUb4MJSOtJ+ApqoGpcb4RI8LN8M/9urMHDtk8zEP3c=; b=sgNGzkEKTwwRfh
	DpzDYX+OnfIYZXjChSWkl8/Zuqj9ESLLFLR+y1dWTbAV1R2i8SCFZRuzSRE9iFmrfdm+maz9WOxAt
	FSrq1RG6cjdxiV868G8MnKks0pooRS9dSxCaX8hDk4Ma5J3ybiEyQsE8EcYlqwKCToqiT4+joyrHS
	Kgn7Izjn8hKj75bU42dXgM1nZuybCkg92zx/e1GRQ9Teijmh/uenUT7NzyBpEz6aQMsEvJcK3OJ+W
	wCD6TG4ckp+VFEv3GuX0NPFO2mKkCfzU6xz3Lbvs2k16Aj1vodPloF95RljG9GM4XjJfsLyhmZ6F2
	LQAQ0bJcTtJAEYIhbLmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvcBU-000178-OH; Thu, 08 Aug 2019 06:46:01 +0000
Received: from mail-eopbgr70051.outbound.protection.outlook.com ([40.107.7.51]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvcB2-0000vm-9S
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 06:45:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ImrbHgdBsKnSkpA6P/R/NZ+EgKL5BdprvvSo/jb4FlbysxX3z0D2+5UkZwXcvSAbnNAFzrlP4+1YcoAFkjPEnZTs9MXhkTjNPKS6fQxd0w6Vuvhucxffg6482t0YW8pEEXa43OLpbHx/1htk0MM4i0YT/BVGnXNwKHoyufnlf28aIj0SAbB6KAPOn4tTWp2Q3npVpIx4U911Ks/ZHx0iNxnez//3Vf5yld7+JCdq/LTspZ0wN6vUj2zT+JY2PwgEXRBhpx5X/C1fGxwy9VzXGFdm/73E35RBXIgLKAl7jXZTaqN7sjs7+icC1cZP7tgJsFH8VSW7NE17sXPBjGmuNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mL6rkRX3JG9wAm9wSKasKWhL7urs6ldDyCz0l/1+nFg=;
 b=K67xSCwkZq3cCgBhi6wqLqQbpf3r1mLoUZioOs90gbdXdxwN+DNZb22XeTDCy/zpdN85fTyQ43dCYeLvYDA2rpvjZ/k805uA2ojX3oL3s/iks7Ar1qlbBRps8HukBBpgcb2aba/GsBUkigAZEa1TG+9Tn7HBMwfikp0mbBRlyNR5gqAnpvJ22WqECesiCJAIru1JJlFbNJFqDb4TmL3ge039U5/Ywnr4c4TYu/PbOykdwtHBnnpfAe+uua9rQZ0HS0U1r8Z723b7pBxuN6/WapdQP6TSmbCRJbpR8vy6SoyvhWgLtGNjwMkvf0G3d+E8Ph3ZTfvWzdpFXr/cmjlJLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mL6rkRX3JG9wAm9wSKasKWhL7urs6ldDyCz0l/1+nFg=;
 b=NCd4O6zMCfleVrk3pGN794ZWOy56lqzyzqW13VB63eDmjUUot8c2Idd8kXti5O08mDxieyT8b0+6sXToc77pIkzYbXP3j41EmHBzg2MZww8M7Xr36xfHxN9U94AqIhGWgvepw17yucodsUu2dYlSzWyyMq0H7t4InE7EaRzAHHM=
Received: from VI1PR04MB4622.eurprd04.prod.outlook.com (20.177.56.21) by
 VI1PR04MB5070.eurprd04.prod.outlook.com (20.177.50.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Thu, 8 Aug 2019 06:45:29 +0000
Received: from VI1PR04MB4622.eurprd04.prod.outlook.com
 ([fe80::f1df:2dd:501c:5986]) by VI1PR04MB4622.eurprd04.prod.outlook.com
 ([fe80::f1df:2dd:501c:5986%6]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 06:45:29 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "robin.murphy@arm.com" <robin.murphy@arm.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: [PATCH V5 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Topic: [PATCH V5 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Index: AQHVTbTeg7ujY8EUUkun7gWic0tLmw==
Date: Thu, 8 Aug 2019 06:45:29 +0000
Message-ID: <20190808064216.6950-2-qiangqing.zhang@nxp.com>
References: <20190808064216.6950-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20190808064216.6950-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR02CA0085.apcprd02.prod.outlook.com
 (2603:1096:4:90::25) To VI1PR04MB4622.eurprd04.prod.outlook.com
 (2603:10a6:803:70::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cbf27144-27fe-4ff1-a2ad-08d71bcc0095
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5070; 
x-ms-traffictypediagnostic: VI1PR04MB5070:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB50708038AD3D1AB4246F2645E6D70@VI1PR04MB5070.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(376002)(396003)(366004)(346002)(54534003)(189003)(199004)(64756008)(66446008)(66556008)(110136005)(2201001)(52116002)(76176011)(66946007)(8936002)(66476007)(54906003)(26005)(25786009)(81166006)(99286004)(81156014)(316002)(8676002)(186003)(3846002)(6116002)(6436002)(66066001)(36756003)(53936002)(50226002)(256004)(14444005)(2906002)(4326008)(14454004)(486006)(446003)(6486002)(386003)(476003)(6506007)(5660300002)(11346002)(2616005)(1076003)(86362001)(6512007)(71190400001)(71200400001)(478600001)(305945005)(102836004)(7736002)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5070;
 H:VI1PR04MB4622.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: glD5v/nX6sPE4Iht6i+uidLk1UfjfReVTh7IMRbmoTuDJXqP2aqiOgUbP9ZCXzNDVcH9pumACMh+yBwCOGCKJllJuYN6wjwyNDWPDMDuL2s0h4PHMqN5R4dMnAeO1TiAxk07lDB1QYYMemhlgxhefmZ0c2BZ3Vy7/jIk7x7PdDPGtUG4F3yAP5pgaEup1L44GPRSvuvhAvDR1gMTiHJlVjffyU6hGEFTv+ulsJbn99rv/Cedt5B53D6WKly3KcFTpyk06d7LGMy7iv/4qMbhizqOTDm58efeg4thEUL3TS6ortuCz7EpucicSFiuNR6Youurrs3M94eT/qsOZfzYm3c4urM+NVBtSjAvWOOekuc7Y8VaPge03s6qmiCfxSkk/0C/boAuydxJdehdkcev77/SxGMyudLCoQ0TiHYdvaw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbf27144-27fe-4ff1-a2ad-08d71bcc0095
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 06:45:29.5650 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FgCZZRJSoIRWB+LADQJ26dSldo+gO2n8slYNzHltSff22whuCOptqXVAX0Eu84Ow5snz+oIY6aK6Xamv4w+6FQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_234532_334569_8F656F53 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
perf stat -a -e imx8_ddr0/axi-id-read,axi_id=0xMMMMDDDD/,imx8_ddr0/axi-id-write,axi_id=0xMMMMDDDD/ cmd
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
V4 -> V5:
	* reject event group if AXI ID not consistent in event_init().

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 63 +++++++++++++++++++++++++++++++-
 1 file changed, 61 insertions(+), 2 deletions(-)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 63fe21600072..f25cf5cbe156 100644
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
 
@@ -189,6 +207,16 @@ static u32 ddr_perf_read_counter(struct ddr_pmu *pmu, int counter)
 	return readl_relaxed(pmu->base + COUNTER_READ + counter * 4);
 }
 
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
 static int ddr_perf_event_init(struct perf_event *event)
 {
 	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
@@ -215,6 +243,18 @@ static int ddr_perf_event_init(struct perf_event *event)
 			!is_software_event(event->group_leader))
 		return -EINVAL;
 
+	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
+		bool is_filtered = ddr_perf_is_filtered(event);
+		u32 filter_val = ddr_perf_filter_val(event);
+
+		for_each_sibling_event(sibling, event->group_leader) {
+			if (is_filtered && ddr_perf_is_filtered(sibling) &&
+			    ddr_perf_filter_val(sibling) != filter_val) {
+				return -EINVAL;
+			}
+		}
+	}
+
 	for_each_sibling_event(sibling, event->group_leader) {
 		if (sibling->pmu != event->pmu &&
 				!is_software_event(sibling))
@@ -288,6 +328,23 @@ static int ddr_perf_event_add(struct perf_event *event, int flags)
 	int counter;
 	int cfg = event->attr.config;
 
+	if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
+		int i;
+		bool is_filtered = ddr_perf_is_filtered(event);
+		u32 filter_val = ddr_perf_filter_val(event);
+
+		for (i = 1; i < NUM_COUNTERS; i++) {
+			if (is_filtered && pmu->events[i] &&
+			    ddr_perf_is_filtered(pmu->events[i]) &&
+			    ddr_perf_filter_val(pmu->events[i]) != filter_val) {
+				dev_dbg(pmu->dev, "Contradictory axi id filter value\n");
+				return -EINVAL;
+			}
+		}
+
+		writel(filter_val, pmu->base + COUNTER_DPCR1);
+	}
+
 	counter = ddr_perf_alloc_counter(pmu, cfg);
 	if (counter < 0) {
 		dev_dbg(pmu->dev, "There are not enough counters\n");
@@ -472,6 +529,8 @@ static int ddr_perf_probe(struct platform_device *pdev)
 	if (!name)
 		return -ENOMEM;
 
+	pmu->devtype_data = of_device_get_match_data(&pdev->dev);
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
