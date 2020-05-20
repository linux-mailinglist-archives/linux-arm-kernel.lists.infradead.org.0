Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFA31DA8C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 05:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3IPMNwUm4wzvIlYLnyVrH1nDQsAJOU65zu4O/Hamsw=; b=A2h/4dzVlQzoaz
	Nf/iR5llE3ZbAk4Hd62Nv+9cMvlXtM0180ddXoRQXM12ddHGA7uuZJDUp1Ck41GKJ74rnIjfw78gb
	6r1CeMoPPkaUzV0J1y31FTXANROOGTcEgzk8TOEc+os8TbZbOEycGkuMhIwxWZu9+7i8mF0HxWwwc
	2ok6IMO2R9/Oxd+rP8yr+mfV8QHG2bp0lgNpVp6HjCrkk2qFmmcZLAM7M+x78+j3wUKQZ5BsQfA7n
	q/6WoVfv3GVV+KNeGdfrtDw2bybYpRf5x3Cl0hvRJywRtdRpEJ04sjfEm/zV4XROnJZCJFz785629
	2LNcO3TEM48Kp7Gr+Pyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbFn2-0007uO-Jf; Wed, 20 May 2020 03:53:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbFlw-0007BX-Jg; Wed, 20 May 2020 03:52:02 +0000
X-UUID: 5ca79c53d2434a8c884eae95ba9bc0e3-20200519
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=xO2G24+QhrSwPMxD505Pvj8C+ANfI7QNt1ZRDoiXOoM=; 
 b=olaQS4x9iXLxyK4aDnzlM8BbxF4Ur9gqBIhLrL9vLPcqs6X9qtVJXF2k8xF7cqpHlq+kE49hPjgms8R4I30tfz7cIllTKxcRepvUoTHLJYcR+Qwlt4vDygrrqZGTPfyvmD8X+kBvH0OZtl15qjGpMUANhi5/h5DFn0seBiF29vI=;
X-UUID: 5ca79c53d2434a8c884eae95ba9bc0e3-20200519
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 949190037; Tue, 19 May 2020 19:51:55 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 19 May 2020 20:43:27 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 20 May 2020 11:43:26 +0800
Received: from mtkslt209.mediatek.inc (10.21.15.96) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 20 May 2020 11:43:26 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>
Subject: [PATCH 02/12] OPP: Add function to look up required OPP's for a given
 OPP
Date: Wed, 20 May 2020 11:42:57 +0800
Message-ID: <20200520034307.20435-3-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 2.12.5
In-Reply-To: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
References: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_205200_657026_803CBA8A 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, Saravana
 Kannan <saravanak@google.com>, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Saravana Kannan <saravanak@google.com>

Add a function that allows looking up required OPPs given a source OPP
table, destination OPP table and the source OPP.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/opp/core.c     | 53 ++++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/pm_opp.h | 11 +++++++++++
 2 files changed, 64 insertions(+)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index 51403c1f2481..64666d3eaf5b 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -1923,6 +1923,59 @@ void dev_pm_opp_detach_genpd(struct opp_table *opp_table)
 EXPORT_SYMBOL_GPL(dev_pm_opp_detach_genpd);
 
 /**
+ * dev_pm_opp_xlate_required_opp() - Find required OPP for @src_table OPP.
+ * @src_table: OPP table which has @dst_table as one of its required OPP table.
+ * @dst_table: Required OPP table of the @src_table.
+ *
+ * This function returns the OPP (present in @dst_table) pointed out by the
+ * "required-opps" property of the OPP (present in @src_table).
+ *
+ * The callers are required to call dev_pm_opp_put() for the returned OPP after
+ * use.
+ *
+ * Return: destination table OPP on success, otherwise NULL on errors.
+ */
+struct dev_pm_opp *dev_pm_opp_xlate_required_opp(struct opp_table *src_table,
+						 struct opp_table *dst_table,
+						 struct dev_pm_opp *src_opp)
+{
+	struct dev_pm_opp *opp, *dest_opp = NULL;
+	int i;
+
+	if (!src_table || !dst_table || !src_opp)
+		return NULL;
+
+	for (i = 0; i < src_table->required_opp_count; i++) {
+		if (src_table->required_opp_tables[i]->np == dst_table->np)
+			break;
+	}
+
+	if (unlikely(i == src_table->required_opp_count)) {
+		pr_err("%s: Couldn't find matching OPP table (%p: %p)\n",
+		       __func__, src_table, dst_table);
+		return NULL;
+	}
+
+	mutex_lock(&src_table->lock);
+
+	list_for_each_entry(opp, &src_table->opp_list, node) {
+		if (opp == src_opp) {
+			dest_opp = opp->required_opps[i];
+			dev_pm_opp_get(dest_opp);
+			goto unlock;
+		}
+	}
+
+	pr_err("%s: Couldn't find matching OPP (%p: %p)\n", __func__, src_table,
+	       dst_table);
+
+unlock:
+	mutex_unlock(&src_table->lock);
+
+	return dest_opp;
+}
+
+/**
  * dev_pm_opp_xlate_performance_state() - Find required OPP's pstate for src_table.
  * @src_table: OPP table which has dst_table as one of its required OPP table.
  * @dst_table: Required OPP table of the src_table.
diff --git a/include/linux/pm_opp.h b/include/linux/pm_opp.h
index 747861816f4f..909cf7563d35 100644
--- a/include/linux/pm_opp.h
+++ b/include/linux/pm_opp.h
@@ -137,6 +137,9 @@ struct opp_table *dev_pm_opp_register_set_opp_helper(struct device *dev, int (*s
 void dev_pm_opp_unregister_set_opp_helper(struct opp_table *opp_table);
 struct opp_table *dev_pm_opp_attach_genpd(struct device *dev, const char **names, struct device ***virt_devs);
 void dev_pm_opp_detach_genpd(struct opp_table *opp_table);
+struct dev_pm_opp *dev_pm_opp_xlate_required_opp(struct opp_table *src_table,
+						 struct opp_table *dst_table,
+						 struct dev_pm_opp *src_opp);
 int dev_pm_opp_xlate_performance_state(struct opp_table *src_table, struct opp_table *dst_table, unsigned int pstate);
 int dev_pm_opp_set_rate(struct device *dev, unsigned long target_freq);
 int dev_pm_opp_set_sharing_cpus(struct device *cpu_dev, const struct cpumask *cpumask);
@@ -320,6 +323,14 @@ static inline struct opp_table *dev_pm_opp_attach_genpd(struct device *dev, cons
 
 static inline void dev_pm_opp_detach_genpd(struct opp_table *opp_table) {}
 
+static inline struct dev_pm_opp *dev_pm_opp_xlate_required_opp(
+						struct opp_table *src_table,
+						struct opp_table *dst_table,
+						struct dev_pm_opp *src_opp)
+{
+	return NULL;
+}
+
 static inline int dev_pm_opp_xlate_performance_state(struct opp_table *src_table, struct opp_table *dst_table, unsigned int pstate)
 {
 	return -ENOTSUPP;
-- 
2.12.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
