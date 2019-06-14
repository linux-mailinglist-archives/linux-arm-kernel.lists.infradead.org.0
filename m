Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E14E9465F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 19:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETOX+BxY8YSwDDjUVuRNgU6ALlz6uUYEK59JdlZI/oI=; b=h3KR3cepvLaIXi
	1lA8mSiJy1QrDe7diFMwA920RQK1VgUpftAcjyoe54LQiLHNY7PFutFvCK35alJ+eJY2Q9pJ6evG3
	2L/htGYiYAwTtZImA9imDaY7Il+2Gi6MLkycmw2acZvW9yJlmvzVcrLEevMX3xwhpDcVIWpNyl+gQ
	P12yZwYprNeXEhAI2b30LsnQwMCxQoG0SV5RmJBAZJSDqI5ElivQeQAwEfbOeYwKMLYdG4o0jmMJs
	yQONURlJKC1AJ0nGDqyaL34YWfFf3qGX6jqA6kRljcJ42+bG5MJ5vtWloopSTR8v4KRIiGoKAgUpc
	FL+Cb1UBEPsCVvlosS3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbqEh-0003bZ-41; Fri, 14 Jun 2019 17:43:35 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbqE7-0003Kx-J3
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 17:43:01 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5EHeqHI007899; Fri, 14 Jun 2019 10:42:54 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=9Bow4uF3ux7/5g/zy1S41ZIS+3uOYbG2zkUtUMByuMU=;
 b=rEY6WnRpSYNN9H1eLi42wpTfT6a38I8zk4CDwJ2aPfaB2Adqi/PpmPMfEFujyoeXL7C2
 H4GTT9rlVrVRAU57Yyqz9Rub0PoH/wyzZ4L4M37yvDdtnSPWwyMA7e09tQkN4xtyL6m8
 d6lckP0EeHwFavKJTzs0e2p2w6nAtcF854952w1N/oqUfQ9fz9eeePE4vn77Qh6WFHN2
 lipSztoYTbrEMO/gPKiV7ijfbnOnegkfIzANfNRu/yeg61fnGKu7x+1H2e6EqGPuihiI
 5mmup4Nsfw7enJR5DvrzjvBSySlRjWaJwbgz5hi/vkYX0NjzOhQ/RlW50VEzCym2IPo/ vQ== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0a-0016f401.pphosted.com with ESMTP id 2t41j63g2n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 14 Jun 2019 10:42:54 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Fri, 14 Jun
 2019 10:42:53 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.58) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Fri, 14 Jun 2019 10:42:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Bow4uF3ux7/5g/zy1S41ZIS+3uOYbG2zkUtUMByuMU=;
 b=YPxO4zmD1M2XNIdvba/LrYaaRBf+0blLdZCuhhyb7qSOIkK/rlCuXwBJcJKcriksBtui86Cj8WrDAKR9kfd5Zb+mB0HcwyXo6rUbbnhoPmiv3bD/vXc0VXTndDXCTcmblmRlnMXuOHpPSiNnVQAhR9AVa+55geF066Ngg/DCeYE=
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com (10.164.205.31) by
 MWHPR1801MB1936.namprd18.prod.outlook.com (10.164.204.167) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Fri, 14 Jun 2019 17:42:47 +0000
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::7c5a:e2f5:64e0:5b70]) by MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::7c5a:e2f5:64e0:5b70%7]) with mapi id 15.20.1987.013; Fri, 14 Jun 2019
 17:42:47 +0000
From: Ganapatrao Kulkarni <gkulkarni@marvell.com>
To: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2 UNCORE
 driver.
Thread-Topic: [PATCH 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
Thread-Index: AQHVItiTGPBTb6KSH0SsUcu0vn4B3A==
Date: Fri, 14 Jun 2019 17:42:46 +0000
Message-ID: <1560534144-13896-3-git-send-email-gkulkarni@marvell.com>
References: <1560534144-13896-1-git-send-email-gkulkarni@marvell.com>
In-Reply-To: <1560534144-13896-1-git-send-email-gkulkarni@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0058.namprd07.prod.outlook.com
 (2603:10b6:a03:60::35) To MWHPR1801MB2030.namprd18.prod.outlook.com
 (2603:10b6:301:69::31)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e477d7ee-9650-40db-a8e1-08d6f0efb62d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR1801MB1936; 
x-ms-traffictypediagnostic: MWHPR1801MB1936:
x-microsoft-antispam-prvs: <MWHPR1801MB193667DEB232C2BD1DDBC2D7B2EE0@MWHPR1801MB1936.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39850400004)(396003)(376002)(366004)(199004)(189003)(66946007)(6116002)(71200400001)(76176011)(2501003)(102836004)(3846002)(7416002)(4720700003)(52116002)(66066001)(99286004)(6512007)(14454004)(6506007)(446003)(71190400001)(4326008)(386003)(478600001)(6436002)(2906002)(54906003)(110136005)(68736007)(5660300002)(256004)(8936002)(2616005)(305945005)(2201001)(476003)(36756003)(7736002)(53936002)(11346002)(81166006)(66556008)(66476007)(30864003)(26005)(50226002)(25786009)(186003)(64756008)(66446008)(73956011)(486006)(81156014)(316002)(86362001)(8676002)(6486002)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR1801MB1936;
 H:MWHPR1801MB2030.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IFdR+DoMqiIlN6xY8mwhp1oIfHST009HQoBr4We70DTcDR0hCkgw4WiVz/NDOCLPlIqS4ymr6TjPGdyCO6y7viUdrIOKdGoDBTXe2EMtdcN/gSL4yvuH5zQIvuKYEduk489Qrh6dfxi72RSWmF1WyyfXxcezF1J7zvVG2+EwN1jJNCx8T+ei7WCcA9Sf8zzBOUmiB6CnfmTUfbJ/YT4DbRV5GNGWhFz7XmkYDQu3psnZV9R4W+fPg5lHbUiyrBdXrneFp34AqWSjpNPwN2WWzWT0tLEhvAalj1TusNMhxAKbDldKNkErTWzg9XavVL08m0pf8uYlGGV4E5NYRu0mISRhZAWWZ3nyf8YyIiFrTqEpHjWLT7H4izrXE3CaxffQHcUPRgpQo5Q5kPen90hwuOdMQ3+xbyuEl9EOVsk8s6A=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e477d7ee-9650-40db-a8e1-08d6f0efb62d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 17:42:46.7927 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gkulkarni@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1801MB1936
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-14_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_104259_743175_626743E4 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "Jan.Glauber@cavium.com" <Jan.Glauber@cavium.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "Will.Deacon@arm.com" <Will.Deacon@arm.com>,
 "gklkml16@gmail.com" <gklkml16@gmail.com>,
 "Robert.Richter@cavium.com" <Robert.Richter@cavium.com>,
 "jnair@caviumnetworks.com" <jnair@caviumnetworks.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CCPI2 is a low-latency high-bandwidth serial interface for connecting
ThunderX2 processors. This patch adds support to capture CCPI2 perf events.

Signed-off-by: Ganapatrao Kulkarni <gkulkarni@marvell.com>
---
 drivers/perf/thunderx2_pmu.c | 179 ++++++++++++++++++++++++++++++-----
 1 file changed, 157 insertions(+), 22 deletions(-)

diff --git a/drivers/perf/thunderx2_pmu.c b/drivers/perf/thunderx2_pmu.c
index 43d76c85da56..3791ac9b897d 100644
--- a/drivers/perf/thunderx2_pmu.c
+++ b/drivers/perf/thunderx2_pmu.c
@@ -16,7 +16,9 @@
  * they need to be sampled before overflow(i.e, at every 2 seconds).
  */
 
-#define TX2_PMU_MAX_COUNTERS		4
+#define TX2_PMU_DMC_L3C_MAX_COUNTERS	4
+#define TX2_PMU_CCPI2_MAX_COUNTERS	8
+
 #define TX2_PMU_DMC_CHANNELS		8
 #define TX2_PMU_L3_TILES		16
 
@@ -28,11 +30,22 @@
   */
 #define DMC_EVENT_CFG(idx, val)		((val) << (((idx) * 8) + 1))
 
+#define GET_EVENTID_CCPI2(ev)		((ev->hw.config) & 0x1ff)
+/* bits[3:0] to select counters, starts from 8, bit[3] set always. */
+#define GET_COUNTERID_CCPI2(ev)		((ev->hw.idx) & 0x7)
+#define CCPI2_COUNTER_OFFSET		8
+
 #define L3C_COUNTER_CTL			0xA8
 #define L3C_COUNTER_DATA		0xAC
 #define DMC_COUNTER_CTL			0x234
 #define DMC_COUNTER_DATA		0x240
 
+#define CCPI2_PERF_CTL			0x108
+#define CCPI2_COUNTER_CTL		0x10C
+#define CCPI2_COUNTER_SEL		0x12c
+#define CCPI2_COUNTER_DATA_L		0x130
+#define CCPI2_COUNTER_DATA_H		0x134
+
 /* L3C event IDs */
 #define L3_EVENT_READ_REQ		0xD
 #define L3_EVENT_WRITEBACK_REQ		0xE
@@ -51,9 +64,16 @@
 #define DMC_EVENT_READ_TXNS		0xF
 #define DMC_EVENT_MAX			0x10
 
+#define CCPI2_EVENT_REQ_PKT_SENT	0x3D
+#define CCPI2_EVENT_SNOOP_PKT_SENT	0x65
+#define CCPI2_EVENT_DATA_PKT_SENT	0x105
+#define CCPI2_EVENT_GIC_PKT_SENT	0x12D
+#define CCPI2_EVENT_MAX			0x200
+
 enum tx2_uncore_type {
 	PMU_TYPE_L3C,
 	PMU_TYPE_DMC,
+	PMU_TYPE_CCPI2,
 	PMU_TYPE_INVALID,
 };
 
@@ -73,8 +93,8 @@ struct tx2_uncore_pmu {
 	u32 max_events;
 	u64 hrtimer_interval;
 	void __iomem *base;
-	DECLARE_BITMAP(active_counters, TX2_PMU_MAX_COUNTERS);
-	struct perf_event *events[TX2_PMU_MAX_COUNTERS];
+	DECLARE_BITMAP(active_counters, TX2_PMU_CCPI2_MAX_COUNTERS);
+	struct perf_event *events[TX2_PMU_DMC_L3C_MAX_COUNTERS];
 	struct device *dev;
 	struct hrtimer hrtimer;
 	const struct attribute_group **attr_groups;
@@ -92,7 +112,21 @@ static inline struct tx2_uncore_pmu *pmu_to_tx2_pmu(struct pmu *pmu)
 	return container_of(pmu, struct tx2_uncore_pmu, pmu);
 }
 
-PMU_FORMAT_ATTR(event,	"config:0-4");
+#define TX2_PMU_FORMAT_ATTR(_var, _name, _format)			\
+static ssize_t								\
+__tx2_pmu_##_var##_show(struct device *dev,				\
+			       struct device_attribute *attr,		\
+			       char *page)				\
+{									\
+	BUILD_BUG_ON(sizeof(_format) >= PAGE_SIZE);			\
+	return sprintf(page, _format "\n");				\
+}									\
+									\
+static struct device_attribute format_attr_##_var =			\
+	__ATTR(_name, 0444, __tx2_pmu_##_var##_show, NULL)
+
+TX2_PMU_FORMAT_ATTR(event, event, "config:0-4");
+TX2_PMU_FORMAT_ATTR(event_ccpi2, event, "config:0-9");
 
 static struct attribute *l3c_pmu_format_attrs[] = {
 	&format_attr_event.attr,
@@ -104,6 +138,11 @@ static struct attribute *dmc_pmu_format_attrs[] = {
 	NULL,
 };
 
+static struct attribute *ccpi2_pmu_format_attrs[] = {
+	&format_attr_event_ccpi2.attr,
+	NULL,
+};
+
 static const struct attribute_group l3c_pmu_format_attr_group = {
 	.name = "format",
 	.attrs = l3c_pmu_format_attrs,
@@ -114,6 +153,11 @@ static const struct attribute_group dmc_pmu_format_attr_group = {
 	.attrs = dmc_pmu_format_attrs,
 };
 
+static const struct attribute_group ccpi2_pmu_format_attr_group = {
+	.name = "format",
+	.attrs = ccpi2_pmu_format_attrs,
+};
+
 /*
  * sysfs event attributes
  */
@@ -164,6 +208,19 @@ static struct attribute *dmc_pmu_events_attrs[] = {
 	NULL,
 };
 
+TX2_EVENT_ATTR(req_pktsent, CCPI2_EVENT_REQ_PKT_SENT);
+TX2_EVENT_ATTR(snoop_pktsent, CCPI2_EVENT_SNOOP_PKT_SENT);
+TX2_EVENT_ATTR(data_pktsent, CCPI2_EVENT_DATA_PKT_SENT);
+TX2_EVENT_ATTR(gic_pktsent, CCPI2_EVENT_GIC_PKT_SENT);
+
+static struct attribute *ccpi2_pmu_events_attrs[] = {
+	&tx2_pmu_event_attr_req_pktsent.attr.attr,
+	&tx2_pmu_event_attr_snoop_pktsent.attr.attr,
+	&tx2_pmu_event_attr_data_pktsent.attr.attr,
+	&tx2_pmu_event_attr_gic_pktsent.attr.attr,
+	NULL,
+};
+
 static const struct attribute_group l3c_pmu_events_attr_group = {
 	.name = "events",
 	.attrs = l3c_pmu_events_attrs,
@@ -174,6 +231,11 @@ static const struct attribute_group dmc_pmu_events_attr_group = {
 	.attrs = dmc_pmu_events_attrs,
 };
 
+static const struct attribute_group ccpi2_pmu_events_attr_group = {
+	.name = "events",
+	.attrs = ccpi2_pmu_events_attrs,
+};
+
 /*
  * sysfs cpumask attributes
  */
@@ -213,6 +275,13 @@ static const struct attribute_group *dmc_pmu_attr_groups[] = {
 	NULL
 };
 
+static const struct attribute_group *ccpi2_pmu_attr_groups[] = {
+	&ccpi2_pmu_format_attr_group,
+	&pmu_cpumask_attr_group,
+	&ccpi2_pmu_events_attr_group,
+	NULL
+};
+
 static inline u32 reg_readl(unsigned long addr)
 {
 	return readl((void __iomem *)addr);
@@ -265,6 +334,17 @@ static void init_cntr_base_dmc(struct perf_event *event,
 		+ DMC_COUNTER_DATA + (0xc * GET_COUNTERID(event));
 }
 
+static void init_cntr_base_ccpi2(struct perf_event *event,
+		struct tx2_uncore_pmu *tx2_pmu)
+{
+
+	struct hw_perf_event *hwc = &event->hw;
+
+	hwc->config_base = (unsigned long)tx2_pmu->base
+		+ CCPI2_COUNTER_CTL + (4 * GET_COUNTERID_CCPI2(event));
+	hwc->event_base =  (unsigned long)tx2_pmu->base;
+}
+
 static void uncore_start_event_l3c(struct perf_event *event, int flags)
 {
 	u32 val;
@@ -312,6 +392,29 @@ static void uncore_stop_event_dmc(struct perf_event *event)
 	reg_writel(val, hwc->config_base);
 }
 
+static void uncore_start_event_ccpi2(struct perf_event *event, int flags)
+{
+	u32 val;
+	struct hw_perf_event *hwc = &event->hw;
+
+	/* Bit [09:00] to set event id, set level and type to 1 */
+	val = reg_readl(hwc->config_base);
+	reg_writel((val & ~0xFFF) | (3 << 10) |
+			GET_EVENTID_CCPI2(event), hwc->config_base);
+	/* reset[4], enable[0] and start[1] counters */
+	reg_writel(0x13, hwc->event_base + CCPI2_PERF_CTL);
+	local64_set(&event->hw.prev_count, 0ULL);
+}
+
+static void uncore_stop_event_ccpi2(struct perf_event *event)
+{
+	struct hw_perf_event *hwc = &event->hw;
+
+	/* disable and stop counter */
+	reg_writel(0, hwc->event_base + CCPI2_PERF_CTL);
+	reg_writel(0, hwc->config_base);
+}
+
 static void tx2_uncore_event_update(struct perf_event *event)
 {
 	s64 prev, delta, new = 0;
@@ -323,12 +426,20 @@ static void tx2_uncore_event_update(struct perf_event *event)
 	tx2_pmu = pmu_to_tx2_pmu(event->pmu);
 	type = tx2_pmu->type;
 	prorate_factor = tx2_pmu->prorate_factor;
-
-	new = reg_readl(hwc->event_base);
-	prev = local64_xchg(&hwc->prev_count, new);
-
-	/* handles rollover of 32 bit counter */
-	delta = (u32)(((1UL << 32) - prev) + new);
+	if (type == PMU_TYPE_CCPI2) {
+		reg_writel(CCPI2_COUNTER_OFFSET + GET_COUNTERID_CCPI2(event),
+					hwc->event_base + CCPI2_COUNTER_SEL);
+		new = reg_readl(hwc->event_base + CCPI2_COUNTER_DATA_L);
+		new |= (u64)reg_readl(hwc->event_base +
+				CCPI2_COUNTER_DATA_H) << 32;
+		prev = local64_xchg(&hwc->prev_count, new);
+		delta = new - prev;
+	} else {
+		new = reg_readl(hwc->event_base);
+		prev = local64_xchg(&hwc->prev_count, new);
+		/* handles rollover of 32 bit counter */
+		delta = (u32)(((1UL << 32) - prev) + new);
+	}
 
 	/* DMC event data_transfers granularity is 16 Bytes, convert it to 64 */
 	if (type == PMU_TYPE_DMC &&
@@ -351,6 +462,7 @@ static enum tx2_uncore_type get_tx2_pmu_type(struct acpi_device *adev)
 	} devices[] = {
 		{"CAV901D", PMU_TYPE_L3C},
 		{"CAV901F", PMU_TYPE_DMC},
+		{"CAV901E", PMU_TYPE_CCPI2},
 		{"", PMU_TYPE_INVALID}
 	};
 
@@ -380,7 +492,8 @@ static bool tx2_uncore_validate_event(struct pmu *pmu,
  * Make sure the group of events can be scheduled at once
  * on the PMU.
  */
-static bool tx2_uncore_validate_event_group(struct perf_event *event)
+static bool tx2_uncore_validate_event_group(struct perf_event *event,
+		int max_counters)
 {
 	struct perf_event *sibling, *leader = event->group_leader;
 	int counters = 0;
@@ -403,7 +516,7 @@ static bool tx2_uncore_validate_event_group(struct perf_event *event)
 	 * If the group requires more counters than the HW has,
 	 * it cannot ever be scheduled.
 	 */
-	return counters <= TX2_PMU_MAX_COUNTERS;
+	return counters <= max_counters;
 }
 
 
@@ -439,7 +552,7 @@ static int tx2_uncore_event_init(struct perf_event *event)
 	hwc->config = event->attr.config;
 
 	/* Validate the group */
-	if (!tx2_uncore_validate_event_group(event))
+	if (!tx2_uncore_validate_event_group(event, tx2_pmu->max_counters))
 		return -EINVAL;
 
 	return 0;
@@ -457,7 +570,8 @@ static void tx2_uncore_event_start(struct perf_event *event, int flags)
 	perf_event_update_userpage(event);
 
 	/* Start timer for first event */
-	if (bitmap_weight(tx2_pmu->active_counters,
+	if (tx2_pmu->type != PMU_TYPE_CCPI2 &&
+			bitmap_weight(tx2_pmu->active_counters,
 				tx2_pmu->max_counters) == 1) {
 		hrtimer_start(&tx2_pmu->hrtimer,
 			ns_to_ktime(tx2_pmu->hrtimer_interval),
@@ -495,7 +609,8 @@ static int tx2_uncore_event_add(struct perf_event *event, int flags)
 	if (hwc->idx < 0)
 		return -EAGAIN;
 
-	tx2_pmu->events[hwc->idx] = event;
+	if (tx2_pmu->type != PMU_TYPE_CCPI2)
+		tx2_pmu->events[hwc->idx] = event;
 	/* set counter control and data registers base address */
 	tx2_pmu->init_cntr_base(event, tx2_pmu);
 
@@ -514,10 +629,14 @@ static void tx2_uncore_event_del(struct perf_event *event, int flags)
 	tx2_uncore_event_stop(event, PERF_EF_UPDATE);
 
 	/* clear the assigned counter */
-	free_counter(tx2_pmu, GET_COUNTERID(event));
+	if (tx2_pmu->type == PMU_TYPE_CCPI2)
+		free_counter(tx2_pmu, GET_COUNTERID_CCPI2(event));
+	else
+		free_counter(tx2_pmu, GET_COUNTERID(event));
 
 	perf_event_update_userpage(event);
-	tx2_pmu->events[hwc->idx] = NULL;
+	if (tx2_pmu->type != PMU_TYPE_CCPI2)
+		tx2_pmu->events[hwc->idx] = NULL;
 	hwc->idx = -1;
 }
 
@@ -580,8 +699,12 @@ static int tx2_uncore_pmu_add_dev(struct tx2_uncore_pmu *tx2_pmu)
 			cpu_online_mask);
 
 	tx2_pmu->cpu = cpu;
-	hrtimer_init(&tx2_pmu->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
-	tx2_pmu->hrtimer.function = tx2_hrtimer_callback;
+	/* CCPI2 counters are 64 bit counters. */
+	if (tx2_pmu->type != PMU_TYPE_CCPI2) {
+		hrtimer_init(&tx2_pmu->hrtimer,
+				CLOCK_MONOTONIC, HRTIMER_MODE_REL);
+		tx2_pmu->hrtimer.function = tx2_hrtimer_callback;
+	}
 
 	ret = tx2_uncore_pmu_register(tx2_pmu);
 	if (ret) {
@@ -653,7 +776,7 @@ static struct tx2_uncore_pmu *tx2_uncore_pmu_init_dev(struct device *dev,
 
 	switch (tx2_pmu->type) {
 	case PMU_TYPE_L3C:
-		tx2_pmu->max_counters = TX2_PMU_MAX_COUNTERS;
+		tx2_pmu->max_counters = TX2_PMU_DMC_L3C_MAX_COUNTERS;
 		tx2_pmu->prorate_factor = TX2_PMU_L3_TILES;
 		tx2_pmu->max_events = L3_EVENT_MAX;
 		tx2_pmu->hrtimer_interval = TX2_PMU_HRTIMER_INTERVAL;
@@ -665,7 +788,7 @@ static struct tx2_uncore_pmu *tx2_uncore_pmu_init_dev(struct device *dev,
 		tx2_pmu->stop_event = uncore_stop_event_l3c;
 		break;
 	case PMU_TYPE_DMC:
-		tx2_pmu->max_counters = TX2_PMU_MAX_COUNTERS;
+		tx2_pmu->max_counters = TX2_PMU_DMC_L3C_MAX_COUNTERS;
 		tx2_pmu->prorate_factor = TX2_PMU_DMC_CHANNELS;
 		tx2_pmu->max_events = DMC_EVENT_MAX;
 		tx2_pmu->hrtimer_interval = TX2_PMU_HRTIMER_INTERVAL;
@@ -676,6 +799,17 @@ static struct tx2_uncore_pmu *tx2_uncore_pmu_init_dev(struct device *dev,
 		tx2_pmu->start_event = uncore_start_event_dmc;
 		tx2_pmu->stop_event = uncore_stop_event_dmc;
 		break;
+	case PMU_TYPE_CCPI2:
+		tx2_pmu->max_counters = TX2_PMU_CCPI2_MAX_COUNTERS;
+		tx2_pmu->prorate_factor = 1;
+		tx2_pmu->max_events = CCPI2_EVENT_MAX;
+		tx2_pmu->attr_groups = ccpi2_pmu_attr_groups;
+		tx2_pmu->name = devm_kasprintf(dev, GFP_KERNEL,
+				"uncore_ccpi2_%d", tx2_pmu->node);
+		tx2_pmu->init_cntr_base = init_cntr_base_ccpi2;
+		tx2_pmu->start_event = uncore_start_event_ccpi2;
+		tx2_pmu->stop_event = uncore_stop_event_ccpi2;
+		break;
 	case PMU_TYPE_INVALID:
 		devm_kfree(dev, tx2_pmu);
 		return NULL;
@@ -744,7 +878,8 @@ static int tx2_uncore_pmu_offline_cpu(unsigned int cpu,
 	if (cpu != tx2_pmu->cpu)
 		return 0;
 
-	hrtimer_cancel(&tx2_pmu->hrtimer);
+	if (tx2_pmu->type != PMU_TYPE_CCPI2)
+		hrtimer_cancel(&tx2_pmu->hrtimer);
 	cpumask_copy(&cpu_online_mask_temp, cpu_online_mask);
 	cpumask_clear_cpu(cpu, &cpu_online_mask_temp);
 	new_cpu = cpumask_any_and(
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
