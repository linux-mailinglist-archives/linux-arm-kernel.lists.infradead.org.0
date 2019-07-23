Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D850D714DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 11:18:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=erRkwPC/7qC29qqD0DMRQSGlLoTbf3fk7qmqFj0KMyQ=; b=pK+84l5+ctddg4
	XYQsgQcYUad+2oWpnnsbP90aSOSelvZnqwzyxo2ZazBlK91VQxB7jfnhnhcCvUH0CA/yBbIqrocBU
	BZqLT+JoS89fekGqceNcxVryzimtyZkRCDwgXm2woWu3Fy2UZPHDxnH2tLiy2twboKwRYXsX3u6lo
	ryOC5zuYmShZnwv6duV25fLvKhL20H0vae1YuT0fE15Uj0hG4zGCdrF7Jg4yWoumlksdCrr8ApmYp
	rRaJZ4aF5/ZGf8elFO+DxSr9fHOkEmqmGaQ+6FnVlcTEMSdO7XdPRm6vv5sF8TczD5nOmuv8stlp4
	NAhTrrbcbugWka2oSZog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqvo-0005Hr-0e; Tue, 23 Jul 2019 09:18:00 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpquY-0004j9-Tt
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 09:16:45 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x6N9AGuS024947; Tue, 23 Jul 2019 02:16:36 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=IyYoDp8PJorKY5ATQUgi0Q7+a8rOPjH+JgaXi7rKZM0=;
 b=Yb8A3L+HEDUe4f5wiNqbijwtjvX3oz4XamQA0fKZU766OXXrz6EVz2WALLIU04NP2NfZ
 0JFRp6j3jdCwlELoDBdWepl6qJ2MMOBYU7QAdkNGwhktxZDOclz3+RHbf84TOAWqqP9R
 I6HkfX3stoyUMGW8zoxDucNxFPSB/cT3D8miFJIY+0U5WSk2uZiFoeXjQRI4BUbmnhzI
 EnQhuHPb3GO0JYwU854Jj/zxuLhQETigZ6PpkScAr63DUwbV8pT/M9RFwJdTx1981poL
 XuzrmJ+v8IKtDnDt4S//9GnJN1GfLvQmiOp4cWopqT7cWla3rNE8MsBKUSaI7I+ecKwA gw== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0b-0016f401.pphosted.com with ESMTP id 2tv2fja66r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 23 Jul 2019 02:16:36 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 23 Jul
 2019 02:16:31 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (104.47.49.51) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 23 Jul 2019 02:16:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PPBJn0eNYQPgKkwliYKlzEjz/r++KC4U6/buChnd7kBxwjhTxsJseQQ7nirifwx2aR8rbhT7p1s9rTpYl44AKh+SnIKFp1BA3ZS+fhnZNdkRIWxNdzYUsAMIrUjR9jSA6l+KaW4pr+eJr0juxIUiT1MD7ifxsA/euLtxsrhgoRHcatgcK8k+u0Tt8EVXViHaKc7RpjQWp/U+RfytZNP71BtGHxqvXCSggBQpx83cBGVOkIePQltIgEVm2jQk4CVQ0XVMhV9m81gKDdlbZ/6++iq29l4i68Aj8ad6cE0T6uWkSm3LZmS8GcztBvjGF661UhPfKx7pWu4rnrwnS10czQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IyYoDp8PJorKY5ATQUgi0Q7+a8rOPjH+JgaXi7rKZM0=;
 b=JcvQRcxHK36d57W6bjEpYJU1IMONh7gOkr1CTO75amwoL06pFFOKMVNCei+YyaskGlMHTbzfHS/8CIrCMwO2/YjdSS1wrX4vDg2YK65D8QjK3LgMIISO8UZ8J7eAJU1aJPhkcLik+OSzKKuJ+4vvxTqX2eP5/R2GHI87SHZK11iXGs8A5Ng8mA+mkMu4Yj6TlwUxpyqaCpcj9ttI2ISoV9qNST0xqof9waRHAsGMDZ7fXpjU54r+QxWBR6yQiYeuc4rtq/LyWz8WBeD3p0RXK6Ocf4pF9aeEUxfxM8P7G8c28iZEcKPsXPN4TUu65epmv3Ztlaskg9lQrWPmTjZZdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=marvell.com;dmarc=pass action=none
 header.from=marvell.com;dkim=pass header.d=marvell.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IyYoDp8PJorKY5ATQUgi0Q7+a8rOPjH+JgaXi7rKZM0=;
 b=SpKkxkNktbfeNUUjrXSGqWhsAYrZP324q24+io8YqCxKs3SSO0tFHrHN4OaEQv7TkEzeBu8/vSeyrZqh39FTLuuhZoOstW8iA9cKjmrrzJJzY8SEN+5mhtdV/+ptw7vnq9CVO1IDwRFfseXNNG5uITf4/Pwn4gZ++wA8ZW9T0HI=
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com (10.164.205.31) by
 MWHPR1801MB1824.namprd18.prod.outlook.com (10.164.206.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.14; Tue, 23 Jul 2019 09:16:29 +0000
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::5a8:540b:6bb7:fa20]) by MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::5a8:540b:6bb7:fa20%7]) with mapi id 15.20.2094.013; Tue, 23 Jul 2019
 09:16:29 +0000
From: Ganapatrao Kulkarni <gkulkarni@marvell.com>
To: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v3 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
Thread-Topic: [PATCH v3 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
Thread-Index: AQHVQTdPKc6F7PLX3EWO3u56ApUtlQ==
Date: Tue, 23 Jul 2019 09:16:28 +0000
Message-ID: <1563873380-2003-3-git-send-email-gkulkarni@marvell.com>
References: <1563873380-2003-1-git-send-email-gkulkarni@marvell.com>
In-Reply-To: <1563873380-2003-1-git-send-email-gkulkarni@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR06CA0023.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::36) To MWHPR1801MB2030.namprd18.prod.outlook.com
 (2603:10b6:301:69::31)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a825ff9b-e2e6-4369-7039-08d70f4e71d1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR1801MB1824; 
x-ms-traffictypediagnostic: MWHPR1801MB1824:
x-microsoft-antispam-prvs: <MWHPR1801MB1824DFAC76A6F0BCE394B654B2C70@MWHPR1801MB1824.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(199004)(189003)(2616005)(36756003)(6436002)(8676002)(11346002)(446003)(476003)(6486002)(6506007)(5660300002)(68736007)(102836004)(2906002)(7736002)(6116002)(2501003)(66946007)(3846002)(66476007)(66556008)(8936002)(305945005)(64756008)(76176011)(66446008)(186003)(26005)(386003)(52116002)(81166006)(81156014)(50226002)(71200400001)(71190400001)(256004)(2201001)(99286004)(14444005)(486006)(478600001)(54906003)(110136005)(316002)(14454004)(4720700003)(66066001)(53936002)(86362001)(25786009)(30864003)(53946003)(6512007)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR1801MB1824;
 H:MWHPR1801MB2030.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LAuWUMebOpMWZXqmjFrVYzHpaFvr0/JFG9gi+4HcKPL1Qw8f+tjmDjebcIvKgvF0cYr0Au5e7U/QTRsB1Vek2nhRYmOodZNxKd7nr++OU9We/R5OH6WsJaoQXJqrTcGHKNRalM2D7cX80VeNVfUZRi12zZMJHu8AD/hU868gbZMOSry+fIl39A8rFqX9QpR14SoLwfIjtMsmw3YdOr7+dtCero94LGr9qX40JhCRnLDuag0W/1ckUFzVN4oW3qwZDKQv08uwdAurL/Mp5r2CmnKadUiUAECVyIDQYG/k5EpLw4saDL0mSj+fmRWlkUZyQ6NG+JMrd6nDjbOp/Axk40yPf3YIzRC8Jhj3SS97dxGzYqDfGAYorPsQzqcStl1IykGumAQZwFkAY++5j9M2YwY7wWCg3fr5gJvf92aiZaI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a825ff9b-e2e6-4369-7039-08d70f4e71d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 09:16:28.9672 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gkulkarni@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1801MB1824
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-07-23_04:2019-07-23,2019-07-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_021643_112280_362E7BED 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "corbet@lwn.net" <corbet@lwn.net>, Jan Glauber <jglauber@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "gklkml16@gmail.com" <gklkml16@gmail.com>,
 Robert Richter <rrichter@marvell.com>, "will@kernel.org" <will@kernel.org>
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
index 43d76c85da56..a4e1273eafa3 100644
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
