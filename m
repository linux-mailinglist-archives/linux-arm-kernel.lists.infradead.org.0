Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF0B8BC28
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 16:54:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rP7E0McNDOxDsXUNox1jDnlTONpGAJbAvLCTumh7ohM=; b=uNen3UwCeMQ6/m
	4p5B2eEiawSIQA/UBcMeSZDwywfKJCe3LpMS/K5puz3Rx7MF7PHP+MZPiBaplhV5FttcytDG1okAd
	fCR1hci6P0D5CtHsBjyKOJTOCXdJZVNuXNCiyJ3L23bOyM9XONvbkhKtKc8tQP2TscFBBqBFRagwA
	1RAJUItsF58UwSHMu1yg5QrMRC8msu4yWmyeuy4r0AnWHuVnky6zq44tDZvLxrfxoRPNKaVu7eMe/
	bw8DRUlFXp7ohaOWo17qqd2Lw01ad4PQqU/LGfx+HW/kgGP4ZzWA6TuBF3Pi5KjFFAr3Zh4A3KuBf
	rtquQUQb2db4t5WjkJ7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYBq-0003Jf-3E; Tue, 13 Aug 2019 14:54:22 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYBJ-00035K-JC
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 14:53:51 +0000
Received: by mail-lj1-x242.google.com with SMTP id r9so101829078ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 07:53:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y81htq0qWga2/VQdP2NnxV1AFdEaOoqWk/i4jXZklUs=;
 b=jXTzuTFEFDiZV2QAxMYNPLSt8fvMT7nuiiwiLWUveK8qo34SZTRX5ronDf5drNmVmJ
 gaXgeh5svX208l/ojeW4DHZRfOnpDUJP1xeLrPJNGVi0XsodrlGdlpMewGmxys+NH9lb
 m+UKtBufS5TsYHmNXgCphkAaqT2xJZbPqHyir9w1hvcOfhjXuR7/oY2lmasooVPK8BRi
 G2PWJ2dh5/ZPn1sdDKyr8Fq/XgHwNPm1cBsXvZar7nL6L5DIZtmBliz0vaDq4mUuhEPV
 X11mXrV5pHK2YlvZM56V6yRbLPl+K/YMF/OGWEbi86OPdZ3zT26y8dC0TATmPVEzrkyE
 0E9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y81htq0qWga2/VQdP2NnxV1AFdEaOoqWk/i4jXZklUs=;
 b=HE70XNYeqmLbcue3U43UP+RU5+ONNEggeGQS8I4OdDe+DqkWWnxiC2kGpLRvdvrlDK
 sDBHoiADxj0B4bZsmISmOkT+/n6E8xy30c9mFpzjbJlcyivoVq8wjzBEvYHKpw8ddy4P
 n7FfMnX2sh7PZSb8v9ha25dtDzbEkIGH1HuF8Ppd09M3ZlzLQiSDzkfFAKnJDtMNFxsm
 OPuJ0vId1Ix/sdk/Qg+PsZ7+rHkGxOVIYse04WFEi5tqWBGCbyCoPBgMSQzy3Rm0a5Y+
 /Bn2AOxYAwpd8KNafMhI/39l1G4cWMVVeShoBlLyvAMHVaSD5IkqiOq9F4q6f2MdR752
 fD5A==
X-Gm-Message-State: APjAAAVqCch0xDAoYyi3IAA+ePkMX51PcWJV08dRb9kXALctlg2P1yp1
 EoioyxJF4W4XGKDQXUDuaym9Mw==
X-Google-Smtp-Source: APXvYqxrn54bNkxbTxOvMSXY4AaWq7/wup5YqNr3G36g5D7q0jr2XqfZzPL4m5lhoijit1CZcVqHvg==
X-Received: by 2002:a05:651c:29b:: with SMTP id
 b27mr13462823ljo.74.1565708027750; 
 Tue, 13 Aug 2019 07:53:47 -0700 (PDT)
Received: from localhost.localdomain ([212.45.67.2])
 by smtp.googlemail.com with ESMTPSA id r68sm19628100lff.52.2019.08.13.07.53.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 13 Aug 2019 07:53:47 -0700 (PDT)
From: Georgi Djakov <georgi.djakov@linaro.org>
To: linux-pm@vger.kernel.org,
	evgreen@chromium.org
Subject: [PATCH v4 1/3] interconnect: Add support for path tags
Date: Tue, 13 Aug 2019 17:53:39 +0300
Message-Id: <20190813145341.28530-2-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190813145341.28530-1-georgi.djakov@linaro.org>
References: <20190813145341.28530-1-georgi.djakov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_075349_631743_D698662C 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
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
Cc: seansw@qti.qualcomm.com, linux-kernel@vger.kernel.org,
 daidavid1@codeaurora.org, dianders@chromium.org, amit.kucheria@linaro.org,
 bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
 georgi.djakov@linaro.org, linux-arm-kernel@lists.infradead.org
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

Reviewed-by: Evan Green <evgreen@chromium.org>
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
