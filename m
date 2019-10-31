Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9E6EB90E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 22:36:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KCK905fNQ+e+FbNeOVa1h+tq0n97ZtihLERo0Y0bIrw=; b=ayYllPhJAtqNa00VTl7dV2ZQB8
	agXe+KwcZNUES65wJHPCUrHBfVGoACIB0fvScIc63YEWNEhAI/cIwuffkpcqM5TmthnOvvjMBp/9/
	jAZa7dzPAQTbWlHIKSIRF4itkRQxygywGVf2r+14978KrXlR0N5DdIIjSzayGZzKr6chYjgJ5ceBc
	4g8MgKUBGSMlHvBg5DpBb/vZWyLYcLROREOtBqqKlY/6wnlPmDup6i85/+UG+RoAAcyCos5pOQ6Ui
	1RtjjTB0P+gchAPdKUZfzsqKmdz77NSdLc5DuFavjp3M1pt4cOLqgTm6USA2DF13BHR8IuROiZsVp
	WsZqddiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQI7H-00062F-Q4; Thu, 31 Oct 2019 21:36:27 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQI5V-0003fB-GA
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 21:34:39 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4763B1A0223;
 Thu, 31 Oct 2019 22:34:36 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3A9351A0214;
 Thu, 31 Oct 2019 22:34:36 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 9701820605;
 Thu, 31 Oct 2019 22:34:35 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: [PATCH v10 06/11] PM / QoS: Reorder pm_qos/freq_qos/dev_pm_qos structs
Date: Thu, 31 Oct 2019 23:34:23 +0200
Message-Id: <254e9ed653c7d9d866a860673629d02351c1afd8.1572556786.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572556786.git.leonard.crestez@nxp.com>
References: <cover.1572556786.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1572556786.git.leonard.crestez@nxp.com>
References: <cover.1572556786.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_143437_848955_86C2374C 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This allows dev_pm_qos to embed freq_qos structs, which is done in the
next patch. Separate commit to make it easier to review.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 include/linux/pm_qos.h | 74 ++++++++++++++++++++++--------------------
 1 file changed, 38 insertions(+), 36 deletions(-)

diff --git a/include/linux/pm_qos.h b/include/linux/pm_qos.h
index c35ff21e8a40..a8e1486e3200 100644
--- a/include/linux/pm_qos.h
+++ b/include/linux/pm_qos.h
@@ -47,25 +47,10 @@ struct pm_qos_request {
 struct pm_qos_flags_request {
 	struct list_head node;
 	s32 flags;	/* Do not change to 64 bit */
 };
 
-enum dev_pm_qos_req_type {
-	DEV_PM_QOS_RESUME_LATENCY = 1,
-	DEV_PM_QOS_LATENCY_TOLERANCE,
-	DEV_PM_QOS_FLAGS,
-};
-
-struct dev_pm_qos_request {
-	enum dev_pm_qos_req_type type;
-	union {
-		struct plist_node pnode;
-		struct pm_qos_flags_request flr;
-	} data;
-	struct device *dev;
-};
-
 enum pm_qos_type {
 	PM_QOS_UNITIALIZED,
 	PM_QOS_MAX,		/* return the largest value */
 	PM_QOS_MIN,		/* return the smallest value */
 	PM_QOS_SUM		/* return the sum */
@@ -88,10 +73,48 @@ struct pm_qos_constraints {
 struct pm_qos_flags {
 	struct list_head list;
 	s32 effective_flags;	/* Do not change to 64 bit */
 };
 
+
+#define FREQ_QOS_MIN_DEFAULT_VALUE	0
+#define FREQ_QOS_MAX_DEFAULT_VALUE	(-1)
+
+enum freq_qos_req_type {
+	FREQ_QOS_MIN = 1,
+	FREQ_QOS_MAX,
+};
+
+struct freq_constraints {
+	struct pm_qos_constraints min_freq;
+	struct blocking_notifier_head min_freq_notifiers;
+	struct pm_qos_constraints max_freq;
+	struct blocking_notifier_head max_freq_notifiers;
+};
+
+struct freq_qos_request {
+	enum freq_qos_req_type type;
+	struct plist_node pnode;
+	struct freq_constraints *qos;
+};
+
+
+enum dev_pm_qos_req_type {
+	DEV_PM_QOS_RESUME_LATENCY = 1,
+	DEV_PM_QOS_LATENCY_TOLERANCE,
+	DEV_PM_QOS_FLAGS,
+};
+
+struct dev_pm_qos_request {
+	enum dev_pm_qos_req_type type;
+	union {
+		struct plist_node pnode;
+		struct pm_qos_flags_request flr;
+	} data;
+	struct device *dev;
+};
+
 struct dev_pm_qos {
 	struct pm_qos_constraints resume_latency;
 	struct pm_qos_constraints latency_tolerance;
 	struct pm_qos_flags flags;
 	struct dev_pm_qos_request *resume_latency_req;
@@ -253,31 +276,10 @@ static inline s32 dev_pm_qos_raw_resume_latency(struct device *dev)
 {
 	return PM_QOS_RESUME_LATENCY_NO_CONSTRAINT;
 }
 #endif
 
-#define FREQ_QOS_MIN_DEFAULT_VALUE	0
-#define FREQ_QOS_MAX_DEFAULT_VALUE	(-1)
-
-enum freq_qos_req_type {
-	FREQ_QOS_MIN = 1,
-	FREQ_QOS_MAX,
-};
-
-struct freq_constraints {
-	struct pm_qos_constraints min_freq;
-	struct blocking_notifier_head min_freq_notifiers;
-	struct pm_qos_constraints max_freq;
-	struct blocking_notifier_head max_freq_notifiers;
-};
-
-struct freq_qos_request {
-	enum freq_qos_req_type type;
-	struct plist_node pnode;
-	struct freq_constraints *qos;
-};
-
 static inline int freq_qos_request_active(struct freq_qos_request *req)
 {
 	return !IS_ERR_OR_NULL(req->qos);
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
