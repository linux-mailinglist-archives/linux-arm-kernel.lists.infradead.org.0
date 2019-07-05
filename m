Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA6B60985
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:44:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CE0lminPXMa/wBA2LqL9Bfh9O2a3GwM6RJB/m/WUczI=; b=b5qI0QITvdx2uY
	uoz9ALFwHn1rpHtoTap1Kr12XhdPqDG/qYhtBDVX1yW81LYVkewZw+dradvAKaQRYmTsUJ3Aqf//O
	rig4tvdt5iskLHrtubDf9HmUxyIIeE4LRU8jhdZpgg5BhI4Fx4JiQ+6GHr9ffMeD1jkKxYwyWg1xL
	5aTlHQR9HzbfmL5MysoT1pHuViJ8Ro2grLQm5jfiEVt8IL4eIs0uwlHXvZLQwJE3tvfDHeyd4RZfg
	XOYswuoJgBfxn4WYD0n6Wf4EIsjnuQAi9vqI+2Gr1R2Jiu5L7Owj3igloocI8M1cU6cu9g8G0j+i4
	Uaortfs2lwvObVW2EVCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQNt-0005oY-Tt; Fri, 05 Jul 2019 15:44:25 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQN5-0005Dv-VN
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:43:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MqZZx+Ge4fy7O3dFBb/YPhkgSVbb+nuO5J26wkKavmY=; b=Dzf78e5Dba55cHh+2Bhkwanx7X
 coMP1th2IgKx7aSuoUTyv5lMAeljd0rATAgRaQf3GDe3CW1YElIbC3gcyyZ8mZmnIzOvqHR/nQPzi
 1aKIgmkCyUs2dQ8uqMiBtFOuqy63gLaCwhktLBfBRGws91Wm+kDpyYThNuMoman/ScnPPjO2Yg7iM
 c1YS74TnD9dvvtRfB6oRmI965yNXb0DeAG3z4nQEoPfDn2nFzmStghWjRsiAd8/oMy6/aaN/lIi4d
 mER1+LUYNbywqXkcVE8NdUFy8SbY4PndCH9zSAwYwK+oeLlUT3DSZ/FAEmrIBBXZMD04ZWcyJOd4x
 s9OFihPw==;
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjKIK-0000nF-Us
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 09:14:18 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6596Al3025365; Fri, 5 Jul 2019 02:13:05 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=MqZZx+Ge4fy7O3dFBb/YPhkgSVbb+nuO5J26wkKavmY=;
 b=DZ/AxJvKHKPcwGqfZ2gh/UJfPABZmdE6+5//BEEm1jWbwcilG2J0skk3qnXkM/fpwiJ8
 4JgnYXKSCb9h5CDYDNrgfY9usf6+3yWMCbVKaxKYaP1Gk9kjn0YIAGpsT47lnUMKnlsv
 CgwhOFjs1RG++KlTQdgt7hhS10ykY1lqitmg7UHQjMC1ftK1zh4R31ooj0A3PRkF0mVJ
 pHs12QszSsgPYcCPYlqpUiuh2+8exY8MGCaFDXKcLlwRS2qE85XZljsjnS8oVF1UDtEQ
 V0Arl9rRdVX4fiMoQzSh1K+RdekX6iMe3FDvwL0u17bxMu8ju1z5AZgXct+KpP6ZUaND 7w== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2thjyrb61a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 05 Jul 2019 02:13:04 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Fri, 5 Jul
 2019 02:13:02 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (104.47.32.50) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Fri, 5 Jul 2019 02:13:02 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MqZZx+Ge4fy7O3dFBb/YPhkgSVbb+nuO5J26wkKavmY=;
 b=a3HyxTC2CDway2R0nN0CG7Sjz79XC1fkJiH1tkQWmxsTLyrDXbGAQ3QVmRQWaY+h5gLdnn8IVb7qzwc9pxoNk76XqSDf0/9PqNhYn05Zv+nK0n+AXhqSP6vh0alb/Unp+xnMPRHB5N4/6ZWpj+BeUWhdctb11cDOdgunrL43inY=
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com (10.164.205.31) by
 MWHPR1801MB1982.namprd18.prod.outlook.com (10.164.205.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Fri, 5 Jul 2019 09:12:57 +0000
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::5a8:540b:6bb7:fa20]) by MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::5a8:540b:6bb7:fa20%7]) with mapi id 15.20.2052.010; Fri, 5 Jul 2019
 09:12:57 +0000
From: Ganapatrao Kulkarni <gkulkarni@marvell.com>
To: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v2 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
Thread-Topic: [PATCH v2 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
Thread-Index: AQHVMxHVv/rN6Otw0UOLbFRk8BYAYw==
Date: Fri, 5 Jul 2019 09:12:57 +0000
Message-ID: <1562317967-16329-3-git-send-email-gkulkarni@marvell.com>
References: <1562317967-16329-1-git-send-email-gkulkarni@marvell.com>
In-Reply-To: <1562317967-16329-1-git-send-email-gkulkarni@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR05CA0067.namprd05.prod.outlook.com
 (2603:10b6:a03:74::44) To MWHPR1801MB2030.namprd18.prod.outlook.com
 (2603:10b6:301:69::31)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ac658a02-8218-45e7-720c-08d70128f7f3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR1801MB1982; 
x-ms-traffictypediagnostic: MWHPR1801MB1982:
x-microsoft-antispam-prvs: <MWHPR1801MB1982E643942C35747DABA6B2B2F50@MWHPR1801MB1982.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 008960E8EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(39850400004)(396003)(346002)(136003)(189003)(199004)(14454004)(2616005)(446003)(11346002)(30864003)(6436002)(66066001)(2501003)(4720700003)(36756003)(4326008)(50226002)(53946003)(256004)(14444005)(478600001)(3846002)(6116002)(76176011)(52116002)(7736002)(99286004)(486006)(476003)(186003)(6512007)(305945005)(25786009)(26005)(386003)(6506007)(6486002)(102836004)(54906003)(110136005)(71200400001)(71190400001)(5660300002)(53936002)(8936002)(68736007)(316002)(81166006)(86362001)(2201001)(81156014)(73956011)(8676002)(64756008)(66946007)(66556008)(66446008)(2906002)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR1801MB1982;
 H:MWHPR1801MB2030.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Vq69PiWqTUkv4cXEzZ5PRisxy+Xl2ToVa27RkgF2fEZFY63ZDGyJwaCimeCOf3GOD0GwzWs7Ky0y7pVaiY5uExHRE6OKTdrO5+pptHj55IL4tU5uA07INFop6qKp7G9vWNUAnxuAFrMoeuVxuJDzT+ftA3MtEqjNY50RCP4RIcnxB1PAEGFuf7qJQCB7qo2/EmzcZ7A4L4+8fbPjcWRlLX/i2MOkwafJUGZhingpfKph/CIv8WNqUZhr0HUnHM1uxyyTjFEMwbVTbWxaTpgujDVjJmlMrSPIKqO3Q5DtEhAd32sZc1ivD79ez3FlvxFiVkEbKWMbaqZWL5hiay+3GOz7vNRbjWQrLN8CseuUbJX89PZ5N9MYL0RvsORaBRvOgFgKJaPsaNadBwxntmEiQEqn8X6SpnF78Wtq1scCVk4=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ac658a02-8218-45e7-720c-08d70128f7f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2019 09:12:57.1468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gkulkarni@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1801MB1982
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-05_03:, , signatures=0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "rrichter@marvell.coma" <rrichter@marvell.coma>,
 "corbet@lwn.net" <corbet@lwn.net>, Jan Glauber <jglauber@marvell.com>,
 "Will.Deacon@arm.com" <Will.Deacon@arm.com>,
 "gklkml16@gmail.com" <gklkml16@gmail.com>, Jayachandran
 Chandrasekharan Nair <jnair@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CCPI2 is a low-latency high-bandwidth serial interface for connecting
ThunderX2 processors. This patch adds support to capture CCPI2 perf events.

Signed-off-by: Ganapatrao Kulkarni <gkulkarni@marvell.com>
---
 drivers/perf/thunderx2_pmu.c | 248 ++++++++++++++++++++++++++++++-----
 1 file changed, 214 insertions(+), 34 deletions(-)

diff --git a/drivers/perf/thunderx2_pmu.c b/drivers/perf/thunderx2_pmu.c
index 43d76c85da56..af5bf35e0f24 100644
--- a/drivers/perf/thunderx2_pmu.c
+++ b/drivers/perf/thunderx2_pmu.c
@@ -17,22 +17,31 @@
  */
 
 #define TX2_PMU_MAX_COUNTERS		4
+
 #define TX2_PMU_DMC_CHANNELS		8
 #define TX2_PMU_L3_TILES		16
 
 #define TX2_PMU_HRTIMER_INTERVAL	(2 * NSEC_PER_SEC)
-#define GET_EVENTID(ev)			((ev->hw.config) & 0x1f)
-#define GET_COUNTERID(ev)		((ev->hw.idx) & 0x3)
+#define GET_EVENTID(ev, mask)		((ev->hw.config) & mask)
+#define GET_COUNTERID(ev, mask)		((ev->hw.idx) & mask)
  /* 1 byte per counter(4 counters).
   * Event id is encoded in bits [5:1] of a byte,
   */
 #define DMC_EVENT_CFG(idx, val)		((val) << (((idx) * 8) + 1))
 
+/* bits[3:0] to select counters, are indexed from 8 to 15. */
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
+
 /* L3C event IDs */
 #define L3_EVENT_READ_REQ		0xD
 #define L3_EVENT_WRITEBACK_REQ		0xE
@@ -51,15 +60,23 @@
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
 
+
 /*
- * pmu on each socket has 2 uncore devices(dmc and l3c),
- * each device has 4 counters.
+ * pmu on each socket has 3 uncore devices(dmc, l3ci and ccpi2),
+ * dmc and l3c has 4 counters and ccpi2 8.
  */
 struct tx2_uncore_pmu {
 	struct hlist_node hpnode;
@@ -69,12 +86,14 @@ struct tx2_uncore_pmu {
 	int node;
 	int cpu;
 	u32 max_counters;
+	u32 counters_mask;
 	u32 prorate_factor;
 	u32 max_events;
+	u32 events_mask;
 	u64 hrtimer_interval;
 	void __iomem *base;
 	DECLARE_BITMAP(active_counters, TX2_PMU_MAX_COUNTERS);
-	struct perf_event *events[TX2_PMU_MAX_COUNTERS];
+	struct perf_event **events;
 	struct device *dev;
 	struct hrtimer hrtimer;
 	const struct attribute_group **attr_groups;
@@ -92,7 +111,21 @@ static inline struct tx2_uncore_pmu *pmu_to_tx2_pmu(struct pmu *pmu)
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
@@ -104,6 +137,11 @@ static struct attribute *dmc_pmu_format_attrs[] = {
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
@@ -114,6 +152,11 @@ static const struct attribute_group dmc_pmu_format_attr_group = {
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
@@ -164,6 +207,19 @@ static struct attribute *dmc_pmu_events_attrs[] = {
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
@@ -174,6 +230,11 @@ static const struct attribute_group dmc_pmu_events_attr_group = {
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
@@ -213,11 +274,23 @@ static const struct attribute_group *dmc_pmu_attr_groups[] = {
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
 }
 
+static inline u32 reg_readq(unsigned long addr)
+{
+	return readq((void __iomem *)addr);
+}
+
 static inline void reg_writel(u32 val, unsigned long addr)
 {
 	writel(val, (void __iomem *)addr);
@@ -245,33 +318,58 @@ static void init_cntr_base_l3c(struct perf_event *event,
 		struct tx2_uncore_pmu *tx2_pmu)
 {
 	struct hw_perf_event *hwc = &event->hw;
+	u32 cmask;
+
+	tx2_pmu = pmu_to_tx2_pmu(event->pmu);
+	cmask = tx2_pmu->counters_mask;
 
 	/* counter ctrl/data reg offset at 8 */
 	hwc->config_base = (unsigned long)tx2_pmu->base
-		+ L3C_COUNTER_CTL + (8 * GET_COUNTERID(event));
+		+ L3C_COUNTER_CTL + (8 * GET_COUNTERID(event, cmask));
 	hwc->event_base =  (unsigned long)tx2_pmu->base
-		+ L3C_COUNTER_DATA + (8 * GET_COUNTERID(event));
+		+ L3C_COUNTER_DATA + (8 * GET_COUNTERID(event, cmask));
 }
 
 static void init_cntr_base_dmc(struct perf_event *event,
 		struct tx2_uncore_pmu *tx2_pmu)
 {
 	struct hw_perf_event *hwc = &event->hw;
+	u32 cmask;
+
+	tx2_pmu = pmu_to_tx2_pmu(event->pmu);
+	cmask = tx2_pmu->counters_mask;
 
 	hwc->config_base = (unsigned long)tx2_pmu->base
 		+ DMC_COUNTER_CTL;
 	/* counter data reg offset at 0xc */
 	hwc->event_base = (unsigned long)tx2_pmu->base
-		+ DMC_COUNTER_DATA + (0xc * GET_COUNTERID(event));
+		+ DMC_COUNTER_DATA + (0xc * GET_COUNTERID(event, cmask));
+}
+
+static void init_cntr_base_ccpi2(struct perf_event *event,
+		struct tx2_uncore_pmu *tx2_pmu)
+{
+	struct hw_perf_event *hwc = &event->hw;
+	u32 cmask;
+
+	cmask = tx2_pmu->counters_mask;
+
+	hwc->config_base = (unsigned long)tx2_pmu->base
+		+ CCPI2_COUNTER_CTL + (4 * GET_COUNTERID(event, cmask));
+	hwc->event_base =  (unsigned long)tx2_pmu->base;
 }
 
 static void uncore_start_event_l3c(struct perf_event *event, int flags)
 {
-	u32 val;
+	u32 val, emask;
 	struct hw_perf_event *hwc = &event->hw;
+	struct tx2_uncore_pmu *tx2_pmu;
+
+	tx2_pmu = pmu_to_tx2_pmu(event->pmu);
+	emask = tx2_pmu->events_mask;
 
 	/* event id encoded in bits [07:03] */
-	val = GET_EVENTID(event) << 3;
+	val = GET_EVENTID(event, emask) << 3;
 	reg_writel(val, hwc->config_base);
 	local64_set(&hwc->prev_count, 0);
 	reg_writel(0, hwc->event_base);
@@ -284,10 +382,17 @@ static inline void uncore_stop_event_l3c(struct perf_event *event)
 
 static void uncore_start_event_dmc(struct perf_event *event, int flags)
 {
-	u32 val;
+	u32 val, cmask, emask;
 	struct hw_perf_event *hwc = &event->hw;
-	int idx = GET_COUNTERID(event);
-	int event_id = GET_EVENTID(event);
+	struct tx2_uncore_pmu *tx2_pmu;
+	int idx, event_id;
+
+	tx2_pmu = pmu_to_tx2_pmu(event->pmu);
+	cmask = tx2_pmu->counters_mask;
+	emask = tx2_pmu->events_mask;
+
+	idx = GET_COUNTERID(event, cmask);
+	event_id = GET_EVENTID(event, emask);
 
 	/* enable and start counters.
 	 * 8 bits for each counter, bits[05:01] of a counter to set event type.
@@ -302,9 +407,14 @@ static void uncore_start_event_dmc(struct perf_event *event, int flags)
 
 static void uncore_stop_event_dmc(struct perf_event *event)
 {
-	u32 val;
+	u32 val, cmask;
 	struct hw_perf_event *hwc = &event->hw;
-	int idx = GET_COUNTERID(event);
+	struct tx2_uncore_pmu *tx2_pmu;
+	int idx;
+
+	tx2_pmu = pmu_to_tx2_pmu(event->pmu);
+	cmask = tx2_pmu->counters_mask;
+	idx = GET_COUNTERID(event, cmask);
 
 	/* clear event type(bits[05:01]) to stop counter */
 	val = reg_readl(hwc->config_base);
@@ -312,6 +422,31 @@ static void uncore_stop_event_dmc(struct perf_event *event)
 	reg_writel(val, hwc->config_base);
 }
 
+static void uncore_start_event_ccpi2(struct perf_event *event, int flags)
+{
+	u32 emask;
+	struct hw_perf_event *hwc = &event->hw;
+	struct tx2_uncore_pmu *tx2_pmu;
+
+	tx2_pmu = pmu_to_tx2_pmu(event->pmu);
+	emask = tx2_pmu->events_mask;
+
+	/* Bit [09:00] to set event id, set level and type to 1 */
+	reg_writel((3 << 10) |
+			GET_EVENTID(event, emask), hwc->config_base);
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
+}
+
 static void tx2_uncore_event_update(struct perf_event *event)
 {
 	s64 prev, delta, new = 0;
@@ -319,20 +454,30 @@ static void tx2_uncore_event_update(struct perf_event *event)
 	struct tx2_uncore_pmu *tx2_pmu;
 	enum tx2_uncore_type type;
 	u32 prorate_factor;
+	u32 cmask, emask;
 
 	tx2_pmu = pmu_to_tx2_pmu(event->pmu);
 	type = tx2_pmu->type;
+	cmask = tx2_pmu->counters_mask;
+	emask = tx2_pmu->events_mask;
 	prorate_factor = tx2_pmu->prorate_factor;
-
-	new = reg_readl(hwc->event_base);
-	prev = local64_xchg(&hwc->prev_count, new);
-
-	/* handles rollover of 32 bit counter */
-	delta = (u32)(((1UL << 32) - prev) + new);
+	if (type == PMU_TYPE_CCPI2) {
+		reg_writel(CCPI2_COUNTER_OFFSET +
+				GET_COUNTERID(event, cmask),
+				hwc->event_base + CCPI2_COUNTER_SEL);
+		new = reg_readq(hwc->event_base + CCPI2_COUNTER_DATA_L);
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
-			GET_EVENTID(event) == DMC_EVENT_DATA_TRANSFERS)
+			GET_EVENTID(event, emask) == DMC_EVENT_DATA_TRANSFERS)
 		delta = delta/4;
 
 	/* L3C and DMC has 16 and 8 interleave channels respectively.
@@ -351,6 +496,7 @@ static enum tx2_uncore_type get_tx2_pmu_type(struct acpi_device *adev)
 	} devices[] = {
 		{"CAV901D", PMU_TYPE_L3C},
 		{"CAV901F", PMU_TYPE_DMC},
+		{"CAV901E", PMU_TYPE_CCPI2},
 		{"", PMU_TYPE_INVALID}
 	};
 
@@ -380,7 +526,8 @@ static bool tx2_uncore_validate_event(struct pmu *pmu,
  * Make sure the group of events can be scheduled at once
  * on the PMU.
  */
-static bool tx2_uncore_validate_event_group(struct perf_event *event)
+static bool tx2_uncore_validate_event_group(struct perf_event *event,
+		int max_counters)
 {
 	struct perf_event *sibling, *leader = event->group_leader;
 	int counters = 0;
@@ -403,7 +550,7 @@ static bool tx2_uncore_validate_event_group(struct perf_event *event)
 	 * If the group requires more counters than the HW has,
 	 * it cannot ever be scheduled.
 	 */
-	return counters <= TX2_PMU_MAX_COUNTERS;
+	return counters <= max_counters;
 }
 
 
@@ -439,7 +586,7 @@ static int tx2_uncore_event_init(struct perf_event *event)
 	hwc->config = event->attr.config;
 
 	/* Validate the group */
-	if (!tx2_uncore_validate_event_group(event))
+	if (!tx2_uncore_validate_event_group(event, tx2_pmu->max_counters))
 		return -EINVAL;
 
 	return 0;
@@ -456,8 +603,9 @@ static void tx2_uncore_event_start(struct perf_event *event, int flags)
 	tx2_pmu->start_event(event, flags);
 	perf_event_update_userpage(event);
 
-	/* Start timer for first event */
-	if (bitmap_weight(tx2_pmu->active_counters,
+	/* Start timer for first non ccpi2 event */
+	if (tx2_pmu->type != PMU_TYPE_CCPI2 &&
+			bitmap_weight(tx2_pmu->active_counters,
 				tx2_pmu->max_counters) == 1) {
 		hrtimer_start(&tx2_pmu->hrtimer,
 			ns_to_ktime(tx2_pmu->hrtimer_interval),
@@ -495,7 +643,8 @@ static int tx2_uncore_event_add(struct perf_event *event, int flags)
 	if (hwc->idx < 0)
 		return -EAGAIN;
 
-	tx2_pmu->events[hwc->idx] = event;
+	if (tx2_pmu->events)
+		tx2_pmu->events[hwc->idx] = event;
 	/* set counter control and data registers base address */
 	tx2_pmu->init_cntr_base(event, tx2_pmu);
 
@@ -510,14 +659,17 @@ static void tx2_uncore_event_del(struct perf_event *event, int flags)
 {
 	struct tx2_uncore_pmu *tx2_pmu = pmu_to_tx2_pmu(event->pmu);
 	struct hw_perf_event *hwc = &event->hw;
+	u32 cmask;
 
+	cmask = tx2_pmu->counters_mask;
 	tx2_uncore_event_stop(event, PERF_EF_UPDATE);
 
 	/* clear the assigned counter */
-	free_counter(tx2_pmu, GET_COUNTERID(event));
+	free_counter(tx2_pmu, GET_COUNTERID(event, cmask));
 
 	perf_event_update_userpage(event);
-	tx2_pmu->events[hwc->idx] = NULL;
+	if (tx2_pmu->events)
+		tx2_pmu->events[hwc->idx] = NULL;
 	hwc->idx = -1;
 }
 
@@ -580,8 +732,12 @@ static int tx2_uncore_pmu_add_dev(struct tx2_uncore_pmu *tx2_pmu)
 			cpu_online_mask);
 
 	tx2_pmu->cpu = cpu;
-	hrtimer_init(&tx2_pmu->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
-	tx2_pmu->hrtimer.function = tx2_hrtimer_callback;
+	/* CCPI2 counters are 64 bit counters, no overflow  */
+	if (tx2_pmu->type != PMU_TYPE_CCPI2) {
+		hrtimer_init(&tx2_pmu->hrtimer,
+				CLOCK_MONOTONIC, HRTIMER_MODE_REL);
+		tx2_pmu->hrtimer.function = tx2_hrtimer_callback;
+	}
 
 	ret = tx2_uncore_pmu_register(tx2_pmu);
 	if (ret) {
@@ -654,8 +810,10 @@ static struct tx2_uncore_pmu *tx2_uncore_pmu_init_dev(struct device *dev,
 	switch (tx2_pmu->type) {
 	case PMU_TYPE_L3C:
 		tx2_pmu->max_counters = TX2_PMU_MAX_COUNTERS;
+		tx2_pmu->counters_mask = 0x3;
 		tx2_pmu->prorate_factor = TX2_PMU_L3_TILES;
 		tx2_pmu->max_events = L3_EVENT_MAX;
+		tx2_pmu->events_mask = 0x1f;
 		tx2_pmu->hrtimer_interval = TX2_PMU_HRTIMER_INTERVAL;
 		tx2_pmu->attr_groups = l3c_pmu_attr_groups;
 		tx2_pmu->name = devm_kasprintf(dev, GFP_KERNEL,
@@ -663,11 +821,15 @@ static struct tx2_uncore_pmu *tx2_uncore_pmu_init_dev(struct device *dev,
 		tx2_pmu->init_cntr_base = init_cntr_base_l3c;
 		tx2_pmu->start_event = uncore_start_event_l3c;
 		tx2_pmu->stop_event = uncore_stop_event_l3c;
+		tx2_pmu->events = devm_kzalloc(dev, tx2_pmu->max_counters *
+				sizeof(*tx2_pmu->events), GFP_KERNEL);
 		break;
 	case PMU_TYPE_DMC:
 		tx2_pmu->max_counters = TX2_PMU_MAX_COUNTERS;
+		tx2_pmu->counters_mask = 0x3;
 		tx2_pmu->prorate_factor = TX2_PMU_DMC_CHANNELS;
 		tx2_pmu->max_events = DMC_EVENT_MAX;
+		tx2_pmu->events_mask = 0x1f;
 		tx2_pmu->hrtimer_interval = TX2_PMU_HRTIMER_INTERVAL;
 		tx2_pmu->attr_groups = dmc_pmu_attr_groups;
 		tx2_pmu->name = devm_kasprintf(dev, GFP_KERNEL,
@@ -675,6 +837,23 @@ static struct tx2_uncore_pmu *tx2_uncore_pmu_init_dev(struct device *dev,
 		tx2_pmu->init_cntr_base = init_cntr_base_dmc;
 		tx2_pmu->start_event = uncore_start_event_dmc;
 		tx2_pmu->stop_event = uncore_stop_event_dmc;
+		tx2_pmu->events = devm_kzalloc(dev, tx2_pmu->max_counters *
+				sizeof(*tx2_pmu->events), GFP_KERNEL);
+		break;
+	case PMU_TYPE_CCPI2:
+		/* CCPI2 has 8 counters */
+		tx2_pmu->max_counters = 8;
+		tx2_pmu->counters_mask = 0x7;
+		tx2_pmu->prorate_factor = 1;
+		tx2_pmu->max_events = CCPI2_EVENT_MAX;
+		tx2_pmu->events_mask = 0x1ff;
+		tx2_pmu->attr_groups = ccpi2_pmu_attr_groups;
+		tx2_pmu->name = devm_kasprintf(dev, GFP_KERNEL,
+				"uncore_ccpi2_%d", tx2_pmu->node);
+		tx2_pmu->init_cntr_base = init_cntr_base_ccpi2;
+		tx2_pmu->start_event = uncore_start_event_ccpi2;
+		tx2_pmu->stop_event = uncore_stop_event_ccpi2;
+		tx2_pmu->events = NULL;
 		break;
 	case PMU_TYPE_INVALID:
 		devm_kfree(dev, tx2_pmu);
@@ -744,7 +923,8 @@ static int tx2_uncore_pmu_offline_cpu(unsigned int cpu,
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
