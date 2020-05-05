Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C78811C4CE4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 06:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CaHI8h1xu1EfdycKl/4DriOKXI8/180QTFjXe7mG0+4=; b=lSzgWSjL67fFwz
	EqaZVXnUSmtb+m8yF/YTz3GOHb7QHqouGVIxvVPI7FAIOCkD8baOS43ddvTIxEYpzcJA9sf0nelnk
	oR0F2h8F1fdoPbVrUNfScbltv8AflXiIvKS4kf9EpaQtZ4CFLgH9GWF9voyF6K0KyE7MJfKJ4Hi7r
	LkiuXZ3cNRKUV//KXj6eeP729twKyikPx27dscHiArPkqX386IM4sj9Qli6Gpdm2cXPsDDoxQV6FB
	xsUB7Y8YdUYpu9nB2MmWW5ASDy7AWuUZXc52M8ZZduegBqtUrsqJWXQgW+zyEVFA9IR+zl1zB+vUt
	/atSQNZd1vUyUzHX53IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVonC-0004Ty-FG; Tue, 05 May 2020 04:02:50 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVomB-0003mK-RS
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 04:01:49 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a7so440316pju.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 21:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bpjBtLncAz/kkdJRFvfwLGKHTuYx2q9S+ZoV2LMI0sk=;
 b=VbujnOEQMZDOvKD6JgULstaRPp5TbWOJsPdLxFzzgVi40j4j8tuBRSRFvpvzoBkYSf
 lO0M+ZVsf9myuBszhMt2QSGHGtU8kRpUIR3mj4IohA7wnTGIa+SgSww71z3yb4RyOP7h
 GcXDBs1AcsM+5xTCfeK0etclI1e+Xtsxuhr5M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bpjBtLncAz/kkdJRFvfwLGKHTuYx2q9S+ZoV2LMI0sk=;
 b=qBqA7rs4SKwbHBKAluFMFl8+fzDDJVEq+ZJQLEK2YbojoLvGfWrKYGZk7/XLYCl/K8
 HI1lm10joFHdmGgWaDE9A5EczC2YQQiJ8+IHYfHQSS1a/WUHdDbCH2xCmu+zSaqlLFhE
 amAey2SCoUPQi6DKnK7njJNq3n4kFlg3EaOaQBpXxYKTm9yBqd91fPu6hWq1biwyQ96N
 k06tG8Yg/9BmBIedQHVW+bhBEvuFDeCcgpgahIkSPA++T+THC9wrWfPYT2loDm0FV69D
 P+ayFGUOX5O/hcKG1aShpj1JFYfgSwAN7ssFaaqzWtQEDn01FkI7QB5hjMjF3BqXcOGY
 aucQ==
X-Gm-Message-State: AGi0PuZlQ+sa3S8Du1CEa3hc+hli+T0/bQxPsvsrfWks529NWZ4JnH5k
 U27lDSswAs0YJSqV9j0QrCnhFA==
X-Google-Smtp-Source: APiQypIIT08h1AWzqb1iRTGb9ruvQSlZZOU8/i1YaxP5EHPA9oPU9ul/hj4nqNSO5G0FMS7NhYGjDA==
X-Received: by 2002:a17:90a:25cb:: with SMTP id
 k69mr514820pje.93.1588651307182; 
 Mon, 04 May 2020 21:01:47 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id x132sm588010pfc.57.2020.05.04.21.01.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 21:01:46 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
X-Google-Original-From: Eizan Miyamoto <eizan@google.com>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 5/5] [media] mtk-mdp: Remove mtk_mdp_comp.id and supporting
 functionality
Date: Tue,  5 May 2020 14:00:48 +1000
Message-Id: <20200505125042.v1.5.I1c85bddc262913b8572d892dd6bf9bc03fbe0ec7@changeid>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
In-Reply-To: <20200505040048.132493-1-eizan@google.com>
References: <20200505040048.132493-1-eizan@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_210147_894398_DC4B6941 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>, Eizan Miyamoto <eizan@google.com>,
 eizan@chromium.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since components are registered in a list, the numeric component id that
specified a location in an array is not necessary.

Signed-off-by: eizan@chromium.org
Signed-off-by: Eizan Miyamoto <eizan@google.com>
---

 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 60 +++----------------
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.h | 19 +-----
 drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 10 +---
 3 files changed, 11 insertions(+), 78 deletions(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
index d4afed1363d5..362fff924aef 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
@@ -14,46 +14,6 @@
 #include "mtk_mdp_comp.h"
 
 
-static const char * const mtk_mdp_comp_stem[MTK_MDP_COMP_TYPE_MAX] = {
-	"mdp_rdma",
-	"mdp_rsz",
-	"mdp_wdma",
-	"mdp_wrot",
-};
-
-struct mtk_mdp_comp_match {
-	enum mtk_mdp_comp_type type;
-	int alias_id;
-};
-
-static const struct mtk_mdp_comp_match mtk_mdp_matches[MTK_MDP_COMP_ID_MAX] = {
-	{ MTK_MDP_RDMA,	0 },
-	{ MTK_MDP_RDMA,	1 },
-	{ MTK_MDP_RSZ,	0 },
-	{ MTK_MDP_RSZ,	1 },
-	{ MTK_MDP_RSZ,	2 },
-	{ MTK_MDP_WDMA,	0 },
-	{ MTK_MDP_WROT,	0 },
-	{ MTK_MDP_WROT,	1 },
-};
-
-int mtk_mdp_comp_get_id(struct device *dev, struct device_node *node,
-			enum mtk_mdp_comp_type comp_type)
-{
-	int id = of_alias_get_id(node, mtk_mdp_comp_stem[comp_type]);
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(mtk_mdp_matches); i++) {
-		if (comp_type == mtk_mdp_matches[i].type &&
-		    id == mtk_mdp_matches[i].alias_id)
-			return i;
-	}
-
-	dev_err(dev, "Failed to get id. type: %d, id: %d\n", comp_type, id);
-
-	return -EINVAL;
-}
-
 void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp)
 {
 	int i, err;
@@ -62,8 +22,8 @@ void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp)
 		err = mtk_smi_larb_get(comp->larb_dev);
 		if (err)
 			dev_err(dev,
-				"failed to get larb, err %d. type:%d id:%d\n",
-				err, comp->type, comp->id);
+				"failed to get larb, err %d. type:%d\n",
+				err, comp->type);
 	}
 
 	for (i = 0; i < ARRAY_SIZE(comp->clk); i++) {
@@ -72,8 +32,8 @@ void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp)
 		err = clk_prepare_enable(comp->clk[i]);
 		if (err)
 			dev_err(dev,
-			"failed to enable clock, err %d. type:%d id:%d i:%d\n",
-				err, comp->type, comp->id, i);
+			"failed to enable clock, err %d. type:%d i:%d\n",
+				err, comp->type, i);
 	}
 }
 
@@ -92,21 +52,15 @@ void mtk_mdp_comp_clock_off(struct device *dev, struct mtk_mdp_comp *comp)
 }
 
 int mtk_mdp_comp_init(struct device *dev, struct device_node *node,
-		      struct mtk_mdp_comp *comp, enum mtk_mdp_comp_id comp_id)
+		      struct mtk_mdp_comp *comp,
+		      enum mtk_mdp_comp_type comp_type)
 {
 	struct device_node *larb_node;
 	struct platform_device *larb_pdev;
 	int i;
 
-	if (comp_id < 0 || comp_id >= MTK_MDP_COMP_ID_MAX) {
-		dev_err(dev, "Invalid comp_id %d\n", comp_id);
-		return -EINVAL;
-	}
-
-	INIT_LIST_HEAD(&comp->node);
 	comp->dev_node = of_node_get(node);
-	comp->id = comp_id;
-	comp->type = mtk_mdp_matches[comp_id].type;
+	comp->type = comp_type;
 
 	for (i = 0; i < ARRAY_SIZE(comp->clk); i++) {
 		comp->clk[i] = of_clk_get(node, i);
diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
index 1f745891c6c3..1bf0242cce46 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
@@ -22,18 +22,6 @@ enum mtk_mdp_comp_type {
 	MTK_MDP_COMP_TYPE_MAX,
 };
 
-enum mtk_mdp_comp_id {
-	MTK_MDP_COMP_RDMA0,
-	MTK_MDP_COMP_RDMA1,
-	MTK_MDP_COMP_RSZ0,
-	MTK_MDP_COMP_RSZ1,
-	MTK_MDP_COMP_RSZ2,
-	MTK_MDP_COMP_WDMA,
-	MTK_MDP_COMP_WROT0,
-	MTK_MDP_COMP_WROT1,
-	MTK_MDP_COMP_ID_MAX,
-};
-
 /**
  * struct mtk_mdp_comp - the MDP's function component data
  * @node:	list node to track sibing MDP components
@@ -41,7 +29,6 @@ enum mtk_mdp_comp_id {
  * @clk:	clocks required for component
  * @larb_dev:	SMI device required for component
  * @type:	component type
- * @id:		component ID
  */
 struct mtk_mdp_comp {
 	struct list_head	node;
@@ -49,14 +36,12 @@ struct mtk_mdp_comp {
 	struct clk		*clk[2];
 	struct device		*larb_dev;
 	enum mtk_mdp_comp_type	type;
-	enum mtk_mdp_comp_id	id;
 };
 
 int mtk_mdp_comp_init(struct device *dev, struct device_node *node,
-		      struct mtk_mdp_comp *comp, enum mtk_mdp_comp_id comp_id);
+		      struct mtk_mdp_comp *comp,
+		      enum mtk_mdp_comp_type comp_type);
 void mtk_mdp_comp_deinit(struct device *dev, struct mtk_mdp_comp *comp);
-int mtk_mdp_comp_get_id(struct device *dev, struct device_node *node,
-			enum mtk_mdp_comp_type comp_type);
 void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp);
 void mtk_mdp_comp_clock_off(struct device *dev, struct mtk_mdp_comp *comp);
 
diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
index e6e702d9cb69..b1227c99569a 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
@@ -137,7 +137,6 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 	for_each_child_of_node(parent, node) {
 		const struct of_device_id *of_id;
 		enum mtk_mdp_comp_type comp_type;
-		int comp_id;
 
 		of_id = of_match_node(mtk_mdp_comp_dt_ids, node);
 		if (!of_id)
@@ -150,12 +149,7 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 		}
 
 		comp_type = (enum mtk_mdp_comp_type)of_id->data;
-		comp_id = mtk_mdp_comp_get_id(dev, node, comp_type);
-		if (comp_id < 0) {
-			dev_warn(dev, "Skipping unknown component %pOF\n",
-				 node);
-			continue;
-		}
+
 
 		comp = devm_kzalloc(dev, sizeof(*comp), GFP_KERNEL);
 		if (!comp) {
@@ -164,7 +158,7 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 			goto err_comp;
 		}
 
-		ret = mtk_mdp_comp_init(dev, node, comp, comp_id);
+		ret = mtk_mdp_comp_init(dev, node, comp, comp_type);
 		if (ret) {
 			of_node_put(node);
 			goto err_comp;
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
