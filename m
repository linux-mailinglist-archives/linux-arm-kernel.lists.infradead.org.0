Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E06D49CE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sdY4z3h4WGvWA0C7RdZCUF6LJElkE0/AJ1Kl+7SZuek=; b=WqDZb9Por1tS5Z
	I6L2yvqozP+YuoM4/77TBmy/YlwA/NX1gKbexHO02cArQ55eeHri9nFQMGSsoa09IpKpn1uNUlclk
	tINCSnr1oTp7oD/Uo2OzFLU0xb4Qkdr4OCiZs62QKWKhL/YoyOCFOPysoTPH2YBLjSKvDUU9bK4nO
	kkTXROkZx7fU0wTkL+XROhpCcNkHN6HGr7+dqCPpWT6lTvcXYaYAsoIJNUSVmFbJsLjpEXSwvPPfV
	QMeU3fVlj4k0s72TFUZRDEN+kCPvAwHasq/G/lDuwSV1+7AQZvBjA+PCVxlop1Gmn9Pd7NBclbdgX
	7HMyG/yobJPsrB4z9mEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAFc-0007dy-3P; Tue, 18 Jun 2019 09:18:00 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAF8-0007Rw-NI
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:17:32 +0000
Received: by mail-lj1-x243.google.com with SMTP id i21so12351328ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 02:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v4HP1f9I8mZkiZqFopwmMMkehyPq4NgMHQsfAEytrfU=;
 b=hTpJIgPQ5zNz0esVepuf2/qfVqsVsbN759RHRHE1HHo1wVrtnn5aeaBEUGfBkeAvc4
 KrxbEEn3fgE3Tqu+QXO/KbE2eL+1RCPd6tjrmUGdVNPbZHXwwruPAgGf7LWBVcoTzdvw
 mzV0guv/lpW2E9O7PrjvutMEwHC377XWoVG1nJ4hE6NI/lC/7TYWJlBLYeD9/SNcOPAl
 C7yRn7499jKGHu1bZrYqJMakaDa8y9H49b0XpraI75jLGBAMuQKQEbyCKOea/iJZFgXE
 ca42qcUp0DHdJppt66qfbGtlP74lfXKCgvmiERZQAR2h+QSqySuT5+DT9X9Ynid5Sv1n
 gHtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v4HP1f9I8mZkiZqFopwmMMkehyPq4NgMHQsfAEytrfU=;
 b=FjbgWdR7up8DgpP1dqMLEPP2S4hQc+r7Ehd2xsLdRZEYe/N0w3JK6S3EjrJmO7NThv
 /OjRZtcwAq4hwqETXKvdg9Q+4tC8vB6vtQMNryKiquJiuIf0CkTmao6AOm3ymF3PdNfY
 4PfzTps3Uzr2dl399yxK51aQToJqwPRn9UzmqMSIrd+YQlQpkifcStmyEY9YgYrZRMR+
 liqRMG5BFBMrl25wMblOugvGdK+OVOjBUmBZHTZFgzHCyJnW1RjTveoSCzwCYyrbvPMn
 2X85m4Jzv3ESHvbI7ec968CSWSG2RPyZmTIDgTbrstZQdPxOjwxEbsSfPjMBm36Hs8Jo
 P2wQ==
X-Gm-Message-State: APjAAAWIRnM4rhjHb2tRuzK+MGB05Sbpf3GBMlLY3Q5gswGzievzdcXW
 jHpH8yBlpTZgDphm9OpOdWKQUQ==
X-Google-Smtp-Source: APXvYqxAASa78CQEcaYVuktNiLcq0JeUIgmTj/eYK07MJp3NuwmX5jGuv3kfXKJESAq5inOBYpqRQg==
X-Received: by 2002:a2e:3008:: with SMTP id w8mr26130958ljw.13.1560849448820; 
 Tue, 18 Jun 2019 02:17:28 -0700 (PDT)
Received: from localhost.localdomain ([212.45.67.2])
 by smtp.googlemail.com with ESMTPSA id b9sm2497444ljj.92.2019.06.18.02.17.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Jun 2019 02:17:28 -0700 (PDT)
From: Georgi Djakov <georgi.djakov@linaro.org>
To: linux-pm@vger.kernel.org
Subject: [PATCH v2 1/2] interconnect: Add support for path tags
Date: Tue, 18 Jun 2019 12:17:23 +0300
Message-Id: <20190618091724.28232-2-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190618091724.28232-1-georgi.djakov@linaro.org>
References: <20190618091724.28232-1-georgi.djakov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_021730_759769_003C11B0 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: seansw@qti.qualcomm.com, linux-kernel@vger.kernel.org,
 daidavid1@codeaurora.org, dianders@chromium.org, evgreen@chromium.org,
 bjorn.andersson@linaro.org, amit.kucheria@linaro.org,
 linux-arm-msm@vger.kernel.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Consumers may have use cases with different bandwidth requirements based
on the system or driver state. The consumer driver can append a specific
tag to the path and pass this information to the interconnect platform
driver to do the aggregation based on this state.

Introduce icc_set_tag() function that will allow the consumers to append
an optional tag to each path. The aggregation of these tagged paths is
platform specific.

Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
---
 drivers/interconnect/core.c           | 24 +++++++++++++++++++++++-
 drivers/interconnect/qcom/sdm845.c    |  2 +-
 include/linux/interconnect-provider.h |  4 ++--
 include/linux/interconnect.h          |  5 +++++
 4 files changed, 31 insertions(+), 4 deletions(-)

diff --git a/drivers/interconnect/core.c b/drivers/interconnect/core.c
index 871eb4bc4efc..251354bb7fdc 100644
--- a/drivers/interconnect/core.c
+++ b/drivers/interconnect/core.c
@@ -29,6 +29,7 @@ static struct dentry *icc_debugfs_dir;
  * @req_node: entry in list of requests for the particular @node
  * @node: the interconnect node to which this constraint applies
  * @dev: reference to the device that sets the constraints
+ * @tag: path tag (optional)
  * @avg_bw: an integer describing the average bandwidth in kBps
  * @peak_bw: an integer describing the peak bandwidth in kBps
  */
@@ -36,6 +37,7 @@ struct icc_req {
 	struct hlist_node req_node;
 	struct icc_node *node;
 	struct device *dev;
+	u32 tag;
 	u32 avg_bw;
 	u32 peak_bw;
 };
@@ -204,7 +206,7 @@ static int aggregate_requests(struct icc_node *node)
 	node->peak_bw = 0;
 
 	hlist_for_each_entry(r, &node->req_list, req_node)
-		p->aggregate(node, r->avg_bw, r->peak_bw,
+		p->aggregate(node, r->tag, r->avg_bw, r->peak_bw,
 			     &node->avg_bw, &node->peak_bw);
 
 	return 0;
@@ -385,6 +387,26 @@ struct icc_path *of_icc_get(struct device *dev, const char *name)
 }
 EXPORT_SYMBOL_GPL(of_icc_get);
 
+/**
+ * icc_set_tag() - set an optional tag on a path
+ * @path: the path we want to tag
+ * @tag: the tag value
+ *
+ * This function allows consumers to append a tag to the requests associated
+ * with a path, so that a different aggregation could be done based on this tag.
+ */
+void icc_set_tag(struct icc_path *path, u32 tag)
+{
+	int i;
+
+	if (!path)
+		return;
+
+	for (i = 0; i < path->num_nodes; i++)
+		path->reqs[i].tag = tag;
+}
+EXPORT_SYMBOL_GPL(icc_set_tag);
+
 /**
  * icc_set_bw() - set bandwidth constraints on an interconnect path
  * @path: reference to the path returned by icc_get()
diff --git a/drivers/interconnect/qcom/sdm845.c b/drivers/interconnect/qcom/sdm845.c
index 4915b78da673..fb526004c82e 100644
--- a/drivers/interconnect/qcom/sdm845.c
+++ b/drivers/interconnect/qcom/sdm845.c
@@ -626,7 +626,7 @@ static void bcm_aggregate(struct qcom_icc_bcm *bcm)
 	bcm->dirty = false;
 }
 
-static int qcom_icc_aggregate(struct icc_node *node, u32 avg_bw,
+static int qcom_icc_aggregate(struct icc_node *node, u32 tag, u32 avg_bw,
 			      u32 peak_bw, u32 *agg_avg, u32 *agg_peak)
 {
 	size_t i;
diff --git a/include/linux/interconnect-provider.h b/include/linux/interconnect-provider.h
index 63caccadc2db..4ee19fd41568 100644
--- a/include/linux/interconnect-provider.h
+++ b/include/linux/interconnect-provider.h
@@ -45,8 +45,8 @@ struct icc_provider {
 	struct list_head	provider_list;
 	struct list_head	nodes;
 	int (*set)(struct icc_node *src, struct icc_node *dst);
-	int (*aggregate)(struct icc_node *node, u32 avg_bw, u32 peak_bw,
-			 u32 *agg_avg, u32 *agg_peak);
+	int (*aggregate)(struct icc_node *node, u32 tag, u32 avg_bw,
+			 u32 peak_bw, u32 *agg_avg, u32 *agg_peak);
 	struct icc_node* (*xlate)(struct of_phandle_args *spec, void *data);
 	struct device		*dev;
 	int			users;
diff --git a/include/linux/interconnect.h b/include/linux/interconnect.h
index dc25864755ba..d70a914cba11 100644
--- a/include/linux/interconnect.h
+++ b/include/linux/interconnect.h
@@ -30,6 +30,7 @@ struct icc_path *icc_get(struct device *dev, const int src_id,
 struct icc_path *of_icc_get(struct device *dev, const char *name);
 void icc_put(struct icc_path *path);
 int icc_set_bw(struct icc_path *path, u32 avg_bw, u32 peak_bw);
+void icc_set_tag(struct icc_path *path, u32 tag);
 
 #else
 
@@ -54,6 +55,10 @@ static inline int icc_set_bw(struct icc_path *path, u32 avg_bw, u32 peak_bw)
 	return 0;
 }
 
+static inline void icc_set_tag(struct icc_path *path, u32 tag)
+{
+}
+
 #endif /* CONFIG_INTERCONNECT */
 
 #endif /* __LINUX_INTERCONNECT_H */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
