Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A22187991
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 14:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poIsHS2lUOFX8pOZcqlPUk7JFbzH0QtUMHdkNTtd9MI=; b=otKpF7CLGP0Qhb
	isAsWQ2jiyRyAJOfswpMboI1d3ztlT1k+dgnudxSAv/ga5U0+wrF9IbwgadsJzsaAXiPa8oWPmBVH
	efoiyDq9CT6wSexLxrcs9bQN3iXuY+i7IEgmeis3hB/TZRf3c5vPMjn1guYgsTE66r8mQ17h9VxBE
	z0HvhIK7v1cPXmDJRGC7WojdDbcHrJDQCcfhA/EHZHVAPoHsA1H1W3iMKRJTyJS7iYNvdXARQo8N7
	hQBipy6oNluNtnfwzq7LFZX44r1ca1EF+3Ei7s6lQgJtNR88vrKErJl0TCiSbatHQ4G2Mft3mBepo
	zFLs99/gzOQFGPU/LQIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw3mu-0000xd-TH; Fri, 09 Aug 2019 12:14:29 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw3m2-0000JV-Bd
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 12:13:36 +0000
Received: by mail-lf1-x144.google.com with SMTP id a30so6304541lfk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 05:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Nv77OQJ4wAginoyVflZ1aiIA0B/xXdKVZ4ai4MBEt/c=;
 b=LgxYjcaR5YDWLbczNxlYJ+ENOQue2F1rKRf6UcnXKkf4cMmIZq4pU4re9Rux9DbPaB
 fn76unZBnCbuKzUzw01bavZPktY7qjHLyTX6Pew0q54Pk8PZN92wx6OX/iyKu/DOl00L
 MXSRNGh0aImXRL6ZKcma19q5FCK+S+DB5pQDvTyEcy7smyrWq4jxWDywgTc1gP8yhhfu
 eXgCZ0LpWd0PxxmnMqS/llh76pspoRE8iXMlw9YD008bg6Y5NO3Dhm/ITfPfsdA9y20k
 /bE5lM9d2ZXU+dV0wEiU7hVppoqgf+RpkpgtFxP8MOudphIUY1apDkCi0OHaRqkrolRF
 tEvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Nv77OQJ4wAginoyVflZ1aiIA0B/xXdKVZ4ai4MBEt/c=;
 b=f3ziFnWSvaZo1Gir3ykNX8HxS+g3qsza1JZTkoClPveGW54MsmSuXLRdTv61xEGw+2
 O50061L1EvObtDOeaOg7/Myv94i5dwPzmho7UT98RHlNqL/vP5wvI98vFR4OER94HGTO
 M56jtIFfb+r7tprY++vIhPCbXuk0fd7g+3JUUnP6hUjmnwou1rBM9m8tAZz80GHtgqr6
 Lr/DXpfggVS/UY2ehzCTfk3ssru5/lKyaAm7IoiKWq3WJZgytO6j18QFcHuz3vYd9iyW
 gFEmu4+Szhz4dxR3vIScoocbcpi8yCFC6BhnmOAdClkMuKvmF6/0KSk0FpsRyTNriwYn
 ilEA==
X-Gm-Message-State: APjAAAXy91gBbIAtKJ61iAx0cSx2diiNFTheLAa4JKsGmvn6uvVCzWUr
 /KZ5YoBZ10qKFQkVTeuJRItqpg==
X-Google-Smtp-Source: APXvYqxFUkwTLM0yLzNMJVzI2IUjEvXWAw83CsS+OyA4NffQkZuiECZmFZqLY33hbjy/3anmrtYFNA==
X-Received: by 2002:a19:f819:: with SMTP id a25mr13239881lff.183.1565352812618; 
 Fri, 09 Aug 2019 05:13:32 -0700 (PDT)
Received: from localhost.localdomain ([37.157.136.206])
 by smtp.googlemail.com with ESMTPSA id f23sm1083425lfc.25.2019.08.09.05.13.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 09 Aug 2019 05:13:32 -0700 (PDT)
From: Georgi Djakov <georgi.djakov@linaro.org>
To: linux-pm@vger.kernel.org,
	evgreen@chromium.org
Subject: [PATCH v3 3/3] interconnect: qcom: Add tagging and wake/sleep support
 for sdm845
Date: Fri,  9 Aug 2019 15:13:25 +0300
Message-Id: <20190809121325.8138-4-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190809121325.8138-1-georgi.djakov@linaro.org>
References: <20190809121325.8138-1-georgi.djakov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_051334_407401_CEFB5103 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

From: David Dai <daidavid1@codeaurora.org>

Add support for wake and sleep commands by using a tag to indicate
whether or not the aggregate and set requests fall into execution
state specific bucket.

Signed-off-by: David Dai <daidavid1@codeaurora.org>
Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
---
 drivers/interconnect/qcom/sdm845.c | 134 ++++++++++++++++++++++-------
 1 file changed, 103 insertions(+), 31 deletions(-)

diff --git a/drivers/interconnect/qcom/sdm845.c b/drivers/interconnect/qcom/sdm845.c
index fb526004c82e..b2047d1c6d84 100644
--- a/drivers/interconnect/qcom/sdm845.c
+++ b/drivers/interconnect/qcom/sdm845.c
@@ -66,6 +66,17 @@ struct bcm_db {
 #define SDM845_MAX_BCM_PER_NODE	2
 #define SDM845_MAX_VCD		10
 
+#define QCOM_ICC_BUCKET_AMC		0
+#define QCOM_ICC_BUCKET_WAKE		1
+#define QCOM_ICC_BUCKET_SLEEP		2
+#define QCOM_ICC_NUM_BUCKETS		3
+#define QCOM_ICC_TAG_AMC		BIT(QCOM_ICC_BUCKET_AMC)
+#define QCOM_ICC_TAG_WAKE		BIT(QCOM_ICC_BUCKET_WAKE)
+#define QCOM_ICC_TAG_SLEEP		BIT(QCOM_ICC_BUCKET_SLEEP)
+#define QCOM_ICC_TAG_ACTIVE_ONLY	(QCOM_ICC_TAG_AMC | QCOM_ICC_TAG_WAKE)
+#define QCOM_ICC_TAG_ALWAYS		(QCOM_ICC_TAG_AMC | QCOM_ICC_TAG_WAKE |\
+					 QCOM_ICC_TAG_SLEEP)
+
 /**
  * struct qcom_icc_node - Qualcomm specific interconnect nodes
  * @name: the node name used in debugfs
@@ -86,8 +97,8 @@ struct qcom_icc_node {
 	u16 num_links;
 	u16 channels;
 	u16 buswidth;
-	u64 sum_avg;
-	u64 max_peak;
+	u64 sum_avg[QCOM_ICC_NUM_BUCKETS];
+	u64 max_peak[QCOM_ICC_NUM_BUCKETS];
 	struct qcom_icc_bcm *bcms[SDM845_MAX_BCM_PER_NODE];
 	size_t num_bcms;
 };
@@ -112,8 +123,8 @@ struct qcom_icc_bcm {
 	const char *name;
 	u32 type;
 	u32 addr;
-	u64 vote_x;
-	u64 vote_y;
+	u64 vote_x[QCOM_ICC_NUM_BUCKETS];
+	u64 vote_y[QCOM_ICC_NUM_BUCKETS];
 	bool dirty;
 	bool keepalive;
 	struct bcm_db aux_data;
@@ -555,7 +566,7 @@ inline void tcs_cmd_gen(struct tcs_cmd *cmd, u64 vote_x, u64 vote_y,
 		cmd->wait = true;
 }
 
-static void tcs_list_gen(struct list_head *bcm_list,
+static void tcs_list_gen(struct list_head *bcm_list, int bucket,
 			 struct tcs_cmd tcs_list[SDM845_MAX_VCD],
 			 int n[SDM845_MAX_VCD])
 {
@@ -573,8 +584,8 @@ static void tcs_list_gen(struct list_head *bcm_list,
 			commit = true;
 			cur_vcd_size = 0;
 		}
-		tcs_cmd_gen(&tcs_list[idx], bcm->vote_x, bcm->vote_y,
-			    bcm->addr, commit);
+		tcs_cmd_gen(&tcs_list[idx], bcm->vote_x[bucket],
+			    bcm->vote_y[bucket], bcm->addr, commit);
 		idx++;
 		n[batch]++;
 		/*
@@ -595,51 +606,76 @@ static void tcs_list_gen(struct list_head *bcm_list,
 
 static void bcm_aggregate(struct qcom_icc_bcm *bcm)
 {
-	size_t i;
-	u64 agg_avg = 0;
-	u64 agg_peak = 0;
+	size_t i, bucket;
+	u64 agg_avg[QCOM_ICC_NUM_BUCKETS] = {0};
+	u64 agg_peak[QCOM_ICC_NUM_BUCKETS] = {0};
 	u64 temp;
 
-	for (i = 0; i < bcm->num_nodes; i++) {
-		temp = bcm->nodes[i]->sum_avg * bcm->aux_data.width;
-		do_div(temp, bcm->nodes[i]->buswidth * bcm->nodes[i]->channels);
-		agg_avg = max(agg_avg, temp);
+	for (bucket = 0; bucket < QCOM_ICC_NUM_BUCKETS; bucket++) {
+		for (i = 0; i < bcm->num_nodes; i++) {
+			temp = bcm->nodes[i]->sum_avg[bucket] * bcm->aux_data.width;
+			do_div(temp, bcm->nodes[i]->buswidth * bcm->nodes[i]->channels);
+			agg_avg[bucket] = max(agg_avg[bucket], temp);
 
-		temp = bcm->nodes[i]->max_peak * bcm->aux_data.width;
-		do_div(temp, bcm->nodes[i]->buswidth);
-		agg_peak = max(agg_peak, temp);
-	}
+			temp = bcm->nodes[i]->max_peak[bucket] * bcm->aux_data.width;
+			do_div(temp, bcm->nodes[i]->buswidth);
+			agg_peak[bucket] = max(agg_peak[bucket], temp);
+		}
 
-	temp = agg_avg * 1000ULL;
-	do_div(temp, bcm->aux_data.unit);
-	bcm->vote_x = temp;
+		temp = agg_avg[bucket] * 1000ULL;
+		do_div(temp, bcm->aux_data.unit);
+		bcm->vote_x[bucket] = temp;
 
-	temp = agg_peak * 1000ULL;
-	do_div(temp, bcm->aux_data.unit);
-	bcm->vote_y = temp;
+		temp = agg_peak[bucket] * 1000ULL;
+		do_div(temp, bcm->aux_data.unit);
+		bcm->vote_y[bucket] = temp;
+	}
 
-	if (bcm->keepalive && bcm->vote_x == 0 && bcm->vote_y == 0) {
-		bcm->vote_x = 1;
-		bcm->vote_y = 1;
+	if (bcm->keepalive && bcm->vote_x[0] == 0 && bcm->vote_y[0] == 0) {
+		bcm->vote_x[QCOM_ICC_BUCKET_AMC] = 1;
+		bcm->vote_x[QCOM_ICC_BUCKET_WAKE] = 1;
+		bcm->vote_y[QCOM_ICC_BUCKET_AMC] = 1;
+		bcm->vote_y[QCOM_ICC_BUCKET_WAKE] = 1;
 	}
 
 	bcm->dirty = false;
 }
 
+static void qcom_icc_pre_aggregate(struct icc_node *node)
+{
+	size_t i;
+	struct qcom_icc_node *qn;
+
+	qn = node->data;
+
+	for (i = 0; i < QCOM_ICC_NUM_BUCKETS; i++) {
+		qn->sum_avg[i] = 0;
+		qn->max_peak[i] = 0;
+	}
+}
+
 static int qcom_icc_aggregate(struct icc_node *node, u32 tag, u32 avg_bw,
 			      u32 peak_bw, u32 *agg_avg, u32 *agg_peak)
 {
 	size_t i;
 	struct qcom_icc_node *qn;
+	unsigned long tag_word = (unsigned long)tag;
 
 	qn = node->data;
 
+	if (!tag)
+		tag_word = QCOM_ICC_TAG_ALWAYS;
+
+	for (i = 0; i < QCOM_ICC_NUM_BUCKETS; i++) {
+		if (test_bit(i, &tag_word)) {
+			qn->sum_avg[i] += avg_bw;
+			qn->max_peak[i] = max_t(u32, qn->max_peak[i], peak_bw);
+		}
+	}
+
 	*agg_avg += avg_bw;
 	*agg_peak = max_t(u32, *agg_peak, peak_bw);
 
-	qn->sum_avg = *agg_avg;
-	qn->max_peak = *agg_peak;
-
 	for (i = 0; i < qn->num_bcms; i++)
 		qn->bcms[i]->dirty = true;
 
@@ -675,7 +711,7 @@ static int qcom_icc_set(struct icc_node *src, struct icc_node *dst)
 	 * Construct the command list based on a pre ordered list of BCMs
 	 * based on VCD.
 	 */
-	tcs_list_gen(&commit_list, cmds, commit_idx);
+	tcs_list_gen(&commit_list, QCOM_ICC_BUCKET_AMC, cmds, commit_idx);
 
 	if (!commit_idx[0])
 		return ret;
@@ -693,6 +729,41 @@ static int qcom_icc_set(struct icc_node *src, struct icc_node *dst)
 		return ret;
 	}
 
+	INIT_LIST_HEAD(&commit_list);
+
+	for (i = 0; i < qp->num_bcms; i++) {
+		/*
+		 * Only generate WAKE and SLEEP commands if a resource's
+		 * requirements change as the execution environment transitions
+		 * between different power states.
+		 */
+		if (qp->bcms[i]->vote_x[QCOM_ICC_BUCKET_WAKE] !=
+		    qp->bcms[i]->vote_x[QCOM_ICC_BUCKET_SLEEP] ||
+		    qp->bcms[i]->vote_y[QCOM_ICC_BUCKET_WAKE] !=
+		    qp->bcms[i]->vote_y[QCOM_ICC_BUCKET_SLEEP]) {
+			list_add_tail(&qp->bcms[i]->list, &commit_list);
+		}
+	}
+
+	if (list_empty(&commit_list))
+		return ret;
+
+	tcs_list_gen(&commit_list, QCOM_ICC_BUCKET_WAKE, cmds, commit_idx);
+
+	ret = rpmh_write_batch(qp->dev, RPMH_WAKE_ONLY_STATE, cmds, commit_idx);
+	if (ret) {
+		pr_err("Error sending WAKE RPMH requests (%d)\n", ret);
+		return ret;
+	}
+
+	tcs_list_gen(&commit_list, QCOM_ICC_BUCKET_SLEEP, cmds, commit_idx);
+
+	ret = rpmh_write_batch(qp->dev, RPMH_SLEEP_STATE, cmds, commit_idx);
+	if (ret) {
+		pr_err("Error sending SLEEP RPMH requests (%d)\n", ret);
+		return ret;
+	}
+
 	return ret;
 }
 
@@ -738,6 +809,7 @@ static int qnoc_probe(struct platform_device *pdev)
 	provider = &qp->provider;
 	provider->dev = &pdev->dev;
 	provider->set = qcom_icc_set;
+	provider->pre_aggregate = qcom_icc_pre_aggregate;
 	provider->aggregate = qcom_icc_aggregate;
 	provider->xlate = of_icc_xlate_onecell;
 	INIT_LIST_HEAD(&provider->nodes);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
