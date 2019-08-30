Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4FDA3742
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:55:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KeD3995VGFN5OzoPS0rJt84h+6W8vhigsGTv1Wf8TqU=; b=Uk4ngMfez+sA6HLPV/lbxjyZ9S
	oSBl+vUx5jiQR4FZPzevXd9hTus5P60jXHNJdEDY6c+QSZQHPdA+sJU+UB/v0pnTsFVvI9Ay4Y1Ev
	7Ic38mwY4R4q+5ah4vL6dJbzQkghvXJwYpNuqxTDvDBC26FBqmN9hsWf2ED7k5amCwq+iqIWDPmsl
	+2gsb1ffIzqWPe/UCZg6tDYM1X7OuaDfyocFsjMIrf5/S72ouelTtpa5hOPAGv7I/omJe3NxGDHvB
	VhFXnEo7wYeDkFnEcpJU8/mhHJcfv9qGHT2sKVp9yLHPD13v5sSJRE0RUbb3aKHnUQMoKVOZMC6hm
	eiw88gTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3gRP-0006ES-JJ; Fri, 30 Aug 2019 12:55:47 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3gQg-0004kj-2A
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:55:04 +0000
Received: by mail-pg1-x542.google.com with SMTP id n9so3538094pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 05:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=we1FXLiV4syICP8/mRkgAt89fpdNdjqEl1NGQ44P9Iw=;
 b=uJ6BsylDWt2AZ8JTSC0Xcbmg1mVoEYOdu8qMzrkqgfsRNoGaTqnRdoxOdhCrc3yt5N
 4CIcyY3ftK8QTS4uZP/Urf9IldikRhkvr0G9ljGD/NIWROUmc4QqdbSyYau8BbHajs4s
 +9cwiItyFfLAS2tge70aptwuHIE3BI3zlKTxK84dCuGMjJL8ful7niFVYmyOqQJOfG6c
 5oLTcMoIGazqDfGjwSYTXuxG0f78TQhrEn+sl9JbnhW1aoZ5uvDlZhnVzV+pQ38fVre/
 +BPNocXI/s61aEGMPvgUdxi4JmigVNJL5omT+srhtA2eJ/lnIpGbFKTY4ONVAdVTD5OT
 qSDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=we1FXLiV4syICP8/mRkgAt89fpdNdjqEl1NGQ44P9Iw=;
 b=oXXmcJ/zU6QWPgsBWfRzHbvO43itKkTwFtMVLqBjmSiucQX40wjtx7h7ySJdix/vwx
 D86Lu9MGFBERaqVHXta1aNL4KN/w3S6q8mG+q8DU92kpoXg84N2EBlAnWKxDl6vP1QCy
 foVnGbyLtNXTZM0cXO/p/OKunj/nhY2aQnwC16mshf6+RDBeplvt8flr6Eu5eFeSwcDj
 XLlp7bshQZ7RArEWspyhSBc6RFuWmmYY+wpqst10rSxrnkhbYTgG38ISTr92BQRL7rtw
 mJ5zyJH+rHXdsVeCMlSW0g6LvQGfq5uZybMwFP68fihaohWu+5UsTdVjIhEIQ+liM0Vh
 2FRQ==
X-Gm-Message-State: APjAAAWTyz+1Ru5xE9nK4rMo6Q5u4t+oo2fdFtt7aBRNcLvl6nhpbG8n
 nbfQzcEiJp1EMkWNoIZS8go=
X-Google-Smtp-Source: APXvYqxAPAQj2NyBspzulql2iZ1E7K4WJCtibdpdyltuUZw8q3eHTJzUbCk6WSZNkZ7bjzt2BOKZXw==
X-Received: by 2002:a63:4562:: with SMTP id u34mr12686080pgk.288.1567169701325; 
 Fri, 30 Aug 2019 05:55:01 -0700 (PDT)
Received: from localhost.localdomain.com ([115.113.156.3])
 by smtp.gmail.com with ESMTPSA id e189sm5871043pgc.15.2019.08.30.05.54.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 05:55:00 -0700 (PDT)
From: ganapat <gklkml16@gmail.com>
X-Google-Original-From: ganapat <ganapat@localhost.localdomain>
To: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
Date: Fri, 30 Aug 2019 18:24:36 +0530
Message-Id: <20190830125436.16959-3-ganapat@localhost.localdomain>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190830125436.16959-1-ganapat@localhost.localdomain>
References: <20190830125436.16959-1-ganapat@localhost.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_055502_204774_902E7940 
X-CRM114-Status: GOOD (  20.93  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gklkml16[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gklkml16[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, gkulkarni@marvell.com, corbet@lwn.net,
 jglauber@marvell.com, jnair@marvell.com, rrichter@marvell.com, will@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ganapatrao Kulkarni <gkulkarni@marvell.com>

CCPI2 is a low-latency high-bandwidth serial interface for inter socket
connectivity of ThunderX2 processors.

CCPI2 PMU supports up to 8 counters per socket. Counters are
independently programmable to different events and can be started and
stopped individually. The CCPI2 counters are 64-bit and do not overflow
in normal operation.

Signed-off-by: Ganapatrao Kulkarni <gkulkarni@marvell.com>
---
 drivers/perf/thunderx2_pmu.c | 267 ++++++++++++++++++++++++++++++-----
 1 file changed, 234 insertions(+), 33 deletions(-)

diff --git a/drivers/perf/thunderx2_pmu.c b/drivers/perf/thunderx2_pmu.c
index 43d76c85da56..67c6a7140130 100644
--- a/drivers/perf/thunderx2_pmu.c
+++ b/drivers/perf/thunderx2_pmu.c
@@ -16,23 +16,36 @@
  * they need to be sampled before overflow(i.e, at every 2 seconds).
  */
 
-#define TX2_PMU_MAX_COUNTERS		4
+#define TX2_PMU_DMC_L3C_MAX_COUNTERS	4
+#define TX2_PMU_CCPI2_MAX_COUNTERS	8
+#define TX2_PMU_MAX_COUNTERS		TX2_PMU_CCPI2_MAX_COUNTERS
+
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
+#define CCPI2_COUNTER_DATA_H		0x134
+
 /* L3C event IDs */
 #define L3_EVENT_READ_REQ		0xD
 #define L3_EVENT_WRITEBACK_REQ		0xE
@@ -51,15 +64,28 @@
 #define DMC_EVENT_READ_TXNS		0xF
 #define DMC_EVENT_MAX			0x10
 
+#define CCPI2_EVENT_REQ_PKT_SENT	0x3D
+#define CCPI2_EVENT_SNOOP_PKT_SENT	0x65
+#define CCPI2_EVENT_DATA_PKT_SENT	0x105
+#define CCPI2_EVENT_GIC_PKT_SENT	0x12D
+#define CCPI2_EVENT_MAX			0x200
+
+#define CCPI2_PERF_CTL_ENABLE		BIT(0)
+#define CCPI2_PERF_CTL_START		BIT(1)
+#define CCPI2_PERF_CTL_RESET		BIT(4)
+#define CCPI2_EVENT_LEVEL_RISING_EDGE	BIT(10)
+#define CCPI2_EVENT_TYPE_EDGE_SENSITIVE	BIT(11)
+
 enum tx2_uncore_type {
 	PMU_TYPE_L3C,
 	PMU_TYPE_DMC,
+	PMU_TYPE_CCPI2,
 	PMU_TYPE_INVALID,
 };
 
 /*
- * pmu on each socket has 2 uncore devices(dmc and l3c),
- * each device has 4 counters.
+ * Each socket has 3 uncore devices associated with a PMU. The DMC and
+ * L3C have 4 32-bit counters and the CCPI2 has 8 64-bit counters.
  */
 struct tx2_uncore_pmu {
 	struct hlist_node hpnode;
@@ -69,8 +95,10 @@ struct tx2_uncore_pmu {
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
@@ -79,6 +107,7 @@ struct tx2_uncore_pmu {
 	struct hrtimer hrtimer;
 	const struct attribute_group **attr_groups;
 	enum tx2_uncore_type type;
+	enum hrtimer_restart (*hrtimer_callback)(struct hrtimer *cb);
 	void (*init_cntr_base)(struct perf_event *event,
 			struct tx2_uncore_pmu *tx2_pmu);
 	void (*stop_event)(struct perf_event *event);
@@ -92,7 +121,21 @@ static inline struct tx2_uncore_pmu *pmu_to_tx2_pmu(struct pmu *pmu)
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
@@ -104,6 +147,11 @@ static struct attribute *dmc_pmu_format_attrs[] = {
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
@@ -114,6 +162,11 @@ static const struct attribute_group dmc_pmu_format_attr_group = {
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
@@ -164,6 +217,19 @@ static struct attribute *dmc_pmu_events_attrs[] = {
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
@@ -174,6 +240,11 @@ static const struct attribute_group dmc_pmu_events_attr_group = {
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
@@ -213,6 +284,13 @@ static const struct attribute_group *dmc_pmu_attr_groups[] = {
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
@@ -245,33 +323,58 @@ static void init_cntr_base_l3c(struct perf_event *event,
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
@@ -284,10 +387,17 @@ static inline void uncore_stop_event_l3c(struct perf_event *event)
 
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
@@ -302,9 +412,14 @@ static void uncore_start_event_dmc(struct perf_event *event, int flags)
 
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
@@ -312,27 +427,72 @@ static void uncore_stop_event_dmc(struct perf_event *event)
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
+	/* Bit [09:00] to set event id.
+	 * Bits [10], set level to rising edge.
+	 * Bits [11], set type to edge sensitive.
+	 */
+	reg_writel((CCPI2_EVENT_TYPE_EDGE_SENSITIVE |
+			CCPI2_EVENT_LEVEL_RISING_EDGE |
+			GET_EVENTID(event, emask)), hwc->config_base);
+
+	/* reset[4], enable[0] and start[1] counters */
+	reg_writel(CCPI2_PERF_CTL_RESET |
+			CCPI2_PERF_CTL_START |
+			CCPI2_PERF_CTL_ENABLE,
+			hwc->event_base + CCPI2_PERF_CTL);
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
-	s64 prev, delta, new = 0;
+	u64 prev, delta, new = 0;
 	struct hw_perf_event *hwc = &event->hw;
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
+		new = reg_readl(hwc->event_base + CCPI2_COUNTER_DATA_H);
+		new = (new << 32) +
+			reg_readl(hwc->event_base + CCPI2_COUNTER_DATA_L);
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
@@ -351,6 +511,7 @@ static enum tx2_uncore_type get_tx2_pmu_type(struct acpi_device *adev)
 	} devices[] = {
 		{"CAV901D", PMU_TYPE_L3C},
 		{"CAV901F", PMU_TYPE_DMC},
+		{"CAV901E", PMU_TYPE_CCPI2},
 		{"", PMU_TYPE_INVALID}
 	};
 
@@ -380,7 +541,8 @@ static bool tx2_uncore_validate_event(struct pmu *pmu,
  * Make sure the group of events can be scheduled at once
  * on the PMU.
  */
-static bool tx2_uncore_validate_event_group(struct perf_event *event)
+static bool tx2_uncore_validate_event_group(struct perf_event *event,
+		int max_counters)
 {
 	struct perf_event *sibling, *leader = event->group_leader;
 	int counters = 0;
@@ -403,7 +565,7 @@ static bool tx2_uncore_validate_event_group(struct perf_event *event)
 	 * If the group requires more counters than the HW has,
 	 * it cannot ever be scheduled.
 	 */
-	return counters <= TX2_PMU_MAX_COUNTERS;
+	return counters <= max_counters;
 }
 
 
@@ -439,7 +601,7 @@ static int tx2_uncore_event_init(struct perf_event *event)
 	hwc->config = event->attr.config;
 
 	/* Validate the group */
-	if (!tx2_uncore_validate_event_group(event))
+	if (!tx2_uncore_validate_event_group(event, tx2_pmu->max_counters))
 		return -EINVAL;
 
 	return 0;
@@ -456,6 +618,10 @@ static void tx2_uncore_event_start(struct perf_event *event, int flags)
 	tx2_pmu->start_event(event, flags);
 	perf_event_update_userpage(event);
 
+	/* No hrtimer needed for CCPI2, 64-bit counters */
+	if (!tx2_pmu->hrtimer_callback)
+		return;
+
 	/* Start timer for first event */
 	if (bitmap_weight(tx2_pmu->active_counters,
 				tx2_pmu->max_counters) == 1) {
@@ -510,15 +676,23 @@ static void tx2_uncore_event_del(struct perf_event *event, int flags)
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
 	tx2_pmu->events[hwc->idx] = NULL;
 	hwc->idx = -1;
+
+	if (!tx2_pmu->hrtimer_callback)
+		return;
+
+	if (bitmap_empty(tx2_pmu->active_counters, tx2_pmu->max_counters))
+		hrtimer_cancel(&tx2_pmu->hrtimer);
 }
 
 static void tx2_uncore_event_read(struct perf_event *event)
@@ -580,8 +754,12 @@ static int tx2_uncore_pmu_add_dev(struct tx2_uncore_pmu *tx2_pmu)
 			cpu_online_mask);
 
 	tx2_pmu->cpu = cpu;
-	hrtimer_init(&tx2_pmu->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
-	tx2_pmu->hrtimer.function = tx2_hrtimer_callback;
+
+	if (tx2_pmu->hrtimer_callback) {
+		hrtimer_init(&tx2_pmu->hrtimer,
+				CLOCK_MONOTONIC, HRTIMER_MODE_REL);
+		tx2_pmu->hrtimer.function = tx2_pmu->hrtimer_callback;
+	}
 
 	ret = tx2_uncore_pmu_register(tx2_pmu);
 	if (ret) {
@@ -653,10 +831,13 @@ static struct tx2_uncore_pmu *tx2_uncore_pmu_init_dev(struct device *dev,
 
 	switch (tx2_pmu->type) {
 	case PMU_TYPE_L3C:
-		tx2_pmu->max_counters = TX2_PMU_MAX_COUNTERS;
+		tx2_pmu->max_counters = TX2_PMU_DMC_L3C_MAX_COUNTERS;
+		tx2_pmu->counters_mask = 0x3;
 		tx2_pmu->prorate_factor = TX2_PMU_L3_TILES;
 		tx2_pmu->max_events = L3_EVENT_MAX;
+		tx2_pmu->events_mask = 0x1f;
 		tx2_pmu->hrtimer_interval = TX2_PMU_HRTIMER_INTERVAL;
+		tx2_pmu->hrtimer_callback = tx2_hrtimer_callback;
 		tx2_pmu->attr_groups = l3c_pmu_attr_groups;
 		tx2_pmu->name = devm_kasprintf(dev, GFP_KERNEL,
 				"uncore_l3c_%d", tx2_pmu->node);
@@ -665,10 +846,13 @@ static struct tx2_uncore_pmu *tx2_uncore_pmu_init_dev(struct device *dev,
 		tx2_pmu->stop_event = uncore_stop_event_l3c;
 		break;
 	case PMU_TYPE_DMC:
-		tx2_pmu->max_counters = TX2_PMU_MAX_COUNTERS;
+		tx2_pmu->max_counters = TX2_PMU_DMC_L3C_MAX_COUNTERS;
+		tx2_pmu->counters_mask = 0x3;
 		tx2_pmu->prorate_factor = TX2_PMU_DMC_CHANNELS;
 		tx2_pmu->max_events = DMC_EVENT_MAX;
+		tx2_pmu->events_mask = 0x1f;
 		tx2_pmu->hrtimer_interval = TX2_PMU_HRTIMER_INTERVAL;
+		tx2_pmu->hrtimer_callback = tx2_hrtimer_callback;
 		tx2_pmu->attr_groups = dmc_pmu_attr_groups;
 		tx2_pmu->name = devm_kasprintf(dev, GFP_KERNEL,
 				"uncore_dmc_%d", tx2_pmu->node);
@@ -676,6 +860,21 @@ static struct tx2_uncore_pmu *tx2_uncore_pmu_init_dev(struct device *dev,
 		tx2_pmu->start_event = uncore_start_event_dmc;
 		tx2_pmu->stop_event = uncore_stop_event_dmc;
 		break;
+	case PMU_TYPE_CCPI2:
+		/* CCPI2 has 8 counters */
+		tx2_pmu->max_counters = TX2_PMU_CCPI2_MAX_COUNTERS;
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
+		tx2_pmu->hrtimer_callback = NULL;
+		break;
 	case PMU_TYPE_INVALID:
 		devm_kfree(dev, tx2_pmu);
 		return NULL;
@@ -744,7 +943,9 @@ static int tx2_uncore_pmu_offline_cpu(unsigned int cpu,
 	if (cpu != tx2_pmu->cpu)
 		return 0;
 
-	hrtimer_cancel(&tx2_pmu->hrtimer);
+	if (tx2_pmu->hrtimer_callback)
+		hrtimer_cancel(&tx2_pmu->hrtimer);
+
 	cpumask_copy(&cpu_online_mask_temp, cpu_online_mask);
 	cpumask_clear_cpu(cpu, &cpu_online_mask_temp);
 	new_cpu = cpumask_any_and(
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
