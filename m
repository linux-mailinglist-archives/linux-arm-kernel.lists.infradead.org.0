Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E931E1DA8CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 05:53:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uf+fHxQKhIHIdlUeJ3+aya0ANXBYMxzcgkM4faciJyc=; b=rK6awJEGwDfEyv
	Ql3OBD6iUDJf5lNKuuagcl1lROPintqSruz6oxJGbAtwQlKUBxQ8KutFJTwsXlc4xaz+ZMWlCxywm
	u1c2PhyhxyL5HwE/1He7ljq63MkVVo4umuHAskzuygwZfpQmkZTH6QozFpjBbJ6B6biQ8QmkgzxOy
	O/A821nzkyrqCjzUi2xgehj4PSq11hJIEgj1mp/JQsvn8JUpB8TbFa4gcQAgo6Quum55+8SWscS1t
	8k5JOPkeGcq+KTU43CLInzOfdzETFqmjjrdblhF+os/PH6e0SaMF7elgC2RAlU3sIcWm46ollumH0
	VqocWAn4vD/V4qu93g6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbFnX-0008SL-IU; Wed, 20 May 2020 03:53:39 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbFly-0007BX-2S; Wed, 20 May 2020 03:52:04 +0000
X-UUID: ce24cbcc5e5f4529a48350e29f3c4b88-20200519
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=o6bNZc0aV123Qw7g2rK3gNDrmFYscBBX28gG6OyIf+8=; 
 b=JgPfnhEzl21/VD4aGU+qUyvQzrkSN3a1CkIcXHcq3LHhEDoeKDfdImZmlzwDWY71OJMlPAFmYpcr22h2VOPQ2T86EAyoaUsG87JcSJgV46AzvaouD/5EWy7vyiOKiKvqUx593ybw76T4tKEFcEs10Nfhx/iLAiqE+UvcE/0KfBo=;
X-UUID: ce24cbcc5e5f4529a48350e29f3c4b88-20200519
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1916232292; Tue, 19 May 2020 19:51:55 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 19 May 2020 20:43:28 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 20 May 2020 11:43:27 +0800
Received: from mtkslt209.mediatek.inc (10.21.15.96) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 20 May 2020 11:43:27 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>
Subject: [PATCH 03/12] OPP: Improve required-opps linking
Date: Wed, 20 May 2020 11:42:58 +0800
Message-ID: <20200520034307.20435-4-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 2.12.5
In-Reply-To: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
References: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_205202_154250_F268A06F 
X-CRM114-Status: GOOD (  18.02  )
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

Currently, the linking of required-opps fails silently if the
destination OPP table hasn't been added before the source OPP table is
added. This puts an unnecessary requirement that the destination table
be added before the source table is added.

In reality, the destination table is needed only when we try to
translate from source OPP to destination OPP. So, instead of
completely failing, retry linking the tables when the translation is
attempted.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/opp/core.c |  30 +++++++++++-----
 drivers/opp/of.c   | 101 ++++++++++++++++++++++++++++-------------------------
 drivers/opp/opp.h  |   5 +++
 3 files changed, 80 insertions(+), 56 deletions(-)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index 64666d3eaf5b..284b01223831 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -754,6 +754,9 @@ static int _set_required_opps(struct device *dev,
 	if (!required_opp_tables)
 		return 0;
 
+	if (!_of_lazy_link_required_tables(opp_table))
+		return -EPROBE_DEFER;
+
 	/* Single genpd case */
 	if (!genpd_virt_devs && required_opp_tables[0]->is_genpd) {
 		pstate = likely(opp) ? opp->required_opps[0]->pstate : 0;
@@ -774,11 +777,16 @@ static int _set_required_opps(struct device *dev,
 	mutex_lock(&opp_table->genpd_virt_dev_lock);
 
 	for (i = 0; i < opp_table->required_opp_count; i++) {
-		pstate = likely(opp) ? opp->required_opps[i]->pstate : 0;
-
 		if (!genpd_virt_devs[i])
 			continue;
 
+		if (!opp->required_opps[i]) {
+			ret = -ENODEV;
+			break;
+		}
+
+		pstate = likely(opp) ? opp->required_opps[i]->pstate : 0;
+
 		ret = dev_pm_genpd_set_performance_state(genpd_virt_devs[i], pstate);
 		if (ret) {
 			dev_err(dev, "Failed to set performance rate of %s: %d (%d)\n",
@@ -1945,8 +1953,11 @@ struct dev_pm_opp *dev_pm_opp_xlate_required_opp(struct opp_table *src_table,
 	if (!src_table || !dst_table || !src_opp)
 		return NULL;
 
+	_of_lazy_link_required_tables(src_table);
+
 	for (i = 0; i < src_table->required_opp_count; i++) {
-		if (src_table->required_opp_tables[i]->np == dst_table->np)
+		if (src_table->required_opp_tables[i]
+		    && src_table->required_opp_tables[i]->np == dst_table->np)
 			break;
 	}
 
@@ -2009,6 +2020,8 @@ int dev_pm_opp_xlate_performance_state(struct opp_table *src_table,
 	if (!src_table->required_opp_count)
 		return pstate;
 
+	_of_lazy_link_required_tables(src_table);
+
 	for (i = 0; i < src_table->required_opp_count; i++) {
 		if (src_table->required_opp_tables[i]->np == dst_table->np)
 			break;
@@ -2024,15 +2037,16 @@ int dev_pm_opp_xlate_performance_state(struct opp_table *src_table,
 
 	list_for_each_entry(opp, &src_table->opp_list, node) {
 		if (opp->pstate == pstate) {
-			dest_pstate = opp->required_opps[i]->pstate;
-			goto unlock;
+			if (opp->required_opps[i])
+				dest_pstate = opp->required_opps[i]->pstate;
+			break;
 		}
 	}
 
-	pr_err("%s: Couldn't find matching OPP (%p: %p)\n", __func__, src_table,
-	       dst_table);
+	if (dest_pstate < 0)
+		pr_err("%s: Couldn't find matching OPP (%p: %p)\n", __func__,
+		       src_table, dst_table);
 
-unlock:
 	mutex_unlock(&src_table->lock);
 
 	return dest_pstate;
diff --git a/drivers/opp/of.c b/drivers/opp/of.c
index 6d33de668a7b..c6b1c317e4f7 100644
--- a/drivers/opp/of.c
+++ b/drivers/opp/of.c
@@ -143,7 +143,7 @@ static void _opp_table_free_required_tables(struct opp_table *opp_table)
 
 	for (i = 0; i < opp_table->required_opp_count; i++) {
 		if (IS_ERR_OR_NULL(required_opp_tables[i]))
-			break;
+			continue;
 
 		dev_pm_opp_put_opp_table(required_opp_tables[i]);
 	}
@@ -163,8 +163,8 @@ static void _opp_table_alloc_required_tables(struct opp_table *opp_table,
 					     struct device_node *opp_np)
 {
 	struct opp_table **required_opp_tables;
-	struct device_node *required_np, *np;
-	int count, i;
+	struct device_node *np;
+	int count;
 
 	/* Traversing the first OPP node is all we need */
 	np = of_get_next_available_child(opp_np, NULL);
@@ -174,35 +174,65 @@ static void _opp_table_alloc_required_tables(struct opp_table *opp_table,
 	}
 
 	count = of_count_phandle_with_args(np, "required-opps", NULL);
+	of_node_put(np);
 	if (!count)
-		goto put_np;
+		return;
 
 	required_opp_tables = kcalloc(count, sizeof(*required_opp_tables),
 				      GFP_KERNEL);
 	if (!required_opp_tables)
-		goto put_np;
+		return;
 
 	opp_table->required_opp_tables = required_opp_tables;
 	opp_table->required_opp_count = count;
+}
+
+/*
+ * Try to link all required tables and return true if all of them have been
+ * linked. Otherwise, return false.
+ */
+bool _of_lazy_link_required_tables(struct opp_table *src)
+{
+	struct dev_pm_opp *src_opp, *tmp_opp;
+	struct opp_table *req_table;
+	struct device_node *req_np;
+	int i, num_linked = 0;
 
-	for (i = 0; i < count; i++) {
-		required_np = of_parse_required_opp(np, i);
-		if (!required_np)
-			goto free_required_tables;
+	mutex_lock(&src->lock);
 
-		required_opp_tables[i] = _find_table_of_opp_np(required_np);
-		of_node_put(required_np);
+	if (list_empty(&src->opp_list))
+		goto out;
 
-		if (IS_ERR(required_opp_tables[i]))
-			goto free_required_tables;
-	}
+	src_opp = list_first_entry(&src->opp_list, struct dev_pm_opp, node);
 
-	goto put_np;
+	for (i = 0; i < src->required_opp_count; i++) {
+		if (src->required_opp_tables[i]) {
+			num_linked++;
+			continue;
+		}
 
-free_required_tables:
-	_opp_table_free_required_tables(opp_table);
-put_np:
-	of_node_put(np);
+		req_np = of_parse_required_opp(src_opp->np, i);
+		if (!req_np)
+			continue;
+
+		req_table = _find_table_of_opp_np(req_np);
+		of_node_put(req_np);
+		if (!req_table)
+			continue;
+
+		src->required_opp_tables[i] = req_table;
+		list_for_each_entry(tmp_opp, &src->opp_list, node) {
+			req_np = of_parse_required_opp(tmp_opp->np, i);
+			tmp_opp->required_opps[i] = _find_opp_of_np(req_table,
+								    req_np);
+			of_node_put(req_np);
+		}
+		num_linked++;
+	}
+
+out:
+	mutex_unlock(&src->lock);
+	return num_linked == src->required_opp_count;
 }
 
 void _of_init_opp_table(struct opp_table *opp_table, struct device *dev,
@@ -265,7 +295,7 @@ void _of_opp_free_required_opps(struct opp_table *opp_table,
 
 	for (i = 0; i < opp_table->required_opp_count; i++) {
 		if (!required_opps[i])
-			break;
+			continue;
 
 		/* Put the reference back */
 		dev_pm_opp_put(required_opps[i]);
@@ -280,9 +310,7 @@ static int _of_opp_alloc_required_opps(struct opp_table *opp_table,
 				       struct dev_pm_opp *opp)
 {
 	struct dev_pm_opp **required_opps;
-	struct opp_table *required_table;
-	struct device_node *np;
-	int i, ret, count = opp_table->required_opp_count;
+	int count = opp_table->required_opp_count;
 
 	if (!count)
 		return 0;
@@ -293,32 +321,7 @@ static int _of_opp_alloc_required_opps(struct opp_table *opp_table,
 
 	opp->required_opps = required_opps;
 
-	for (i = 0; i < count; i++) {
-		required_table = opp_table->required_opp_tables[i];
-
-		np = of_parse_required_opp(opp->np, i);
-		if (unlikely(!np)) {
-			ret = -ENODEV;
-			goto free_required_opps;
-		}
-
-		required_opps[i] = _find_opp_of_np(required_table, np);
-		of_node_put(np);
-
-		if (!required_opps[i]) {
-			pr_err("%s: Unable to find required OPP node: %pOF (%d)\n",
-			       __func__, opp->np, i);
-			ret = -ENODEV;
-			goto free_required_opps;
-		}
-	}
-
 	return 0;
-
-free_required_opps:
-	_of_opp_free_required_opps(opp_table, opp);
-
-	return ret;
 }
 
 static bool _opp_is_supported(struct device *dev, struct opp_table *opp_table,
@@ -691,6 +694,8 @@ static int _of_add_opp_table_v2(struct device *dev, struct opp_table *opp_table)
 	if (pstate_count)
 		opp_table->genpd_performance_state = true;
 
+	_of_lazy_link_required_tables(opp_table);
+
 	return 0;
 
 remove_static_opp:
diff --git a/drivers/opp/opp.h b/drivers/opp/opp.h
index d14e27102730..6a679e7f3639 100644
--- a/drivers/opp/opp.h
+++ b/drivers/opp/opp.h
@@ -221,12 +221,17 @@ void _put_opp_list_kref(struct opp_table *opp_table);
 void _of_init_opp_table(struct opp_table *opp_table, struct device *dev, int index);
 void _of_clear_opp_table(struct opp_table *opp_table);
 struct opp_table *_managed_opp(struct device *dev, int index);
+bool _of_lazy_link_required_tables(struct opp_table *src);
 void _of_opp_free_required_opps(struct opp_table *opp_table,
 				struct dev_pm_opp *opp);
 #else
 static inline void _of_init_opp_table(struct opp_table *opp_table, struct device *dev, int index) {}
 static inline void _of_clear_opp_table(struct opp_table *opp_table) {}
 static inline struct opp_table *_managed_opp(struct device *dev, int index) { return NULL; }
+bool _of_lazy_link_required_tables(struct opp_table *src)
+{
+	return true;
+}
 static inline void _of_opp_free_required_opps(struct opp_table *opp_table,
 					      struct dev_pm_opp *opp) {}
 #endif
-- 
2.12.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
