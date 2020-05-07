Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 267A71C86AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:26:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wcQ0m/jcUcGwozRC1I03UI+mGqejKXazOPo8cs1V4UM=; b=POo9cIRHmEb06D
	BT+RmZ+g1iRcus8G8jAtrsGdPcsKy4a+jz9TbM7BA/DiVj4nc/tauIk2OS+3t3cXrryTxABTIvHVC
	M0EeiHm++0X8UOVmqnw2CXcqdmxsfEwklvivLVDV5Xxy1mtRYxveIH6mB4LRzt237BTR0saLeaAaR
	l+hRMbCHeiHwJ+3nQx2TbDyhNdbs37zOHh38mD1J7FT2Gm5EApAIL8nl97veppWr0X062H7F679/B
	fF+ITfzo+Hv1SxHLoDmCeibCfZ2mDkul8e7iCgU3hvcyVaZV0DR7NfSMOK4ca5R3h1W890hBb/Di5
	ORZFBFXVnAK4ebsJvCvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdje-0003HD-1j; Thu, 07 May 2020 10:26:34 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdiY-0002Ub-Jx
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:25:28 +0000
Received: by mail-pf1-x441.google.com with SMTP id x15so2817458pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 03:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m1M6EdnOTsv5mYtPnihqd4eZRs9V55SUnoYnhKRTw60=;
 b=HwjlF1N670a6UIxoX4jc+7S21D3dNMoGa25afnNqJh6KjJGj+57eSKRmfw2/EMUzvf
 cPy/MmPNeNicYqplputtipeNWtBNJlddEQclmvyl/DJg9t3PK0GJv7ZuM8fbWt+l0Kao
 y0PuJrbYPFPRqDaJ+nlA3QoNGve6jD7+SVXsU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m1M6EdnOTsv5mYtPnihqd4eZRs9V55SUnoYnhKRTw60=;
 b=hCCBAW0ciu3pEs0OFJ2Odv1pxVfkFpe+NlNrFoRJ4tkCb192B5JVE2/dsObLF6OIEo
 nf9ylhopx3h6cevES/yarfW3knDfxC1ltlyXxgP4eM53sXfYTjlW/b7eSeX5kK0LEFnb
 IhriG6vBiW+CV/ghCDABqEHA2n3UaVViMVPA7xsdPGnnLSwjSHd7V/txBfSMo2FQWHQY
 WrFEgPaqh7zDNooPU6Z7bKMYJxX6sGbwTunuN5jClrt7HpbFpMiJw64h8g6rFZqF5w76
 VrxVnNB3m7+8f94SOqXUK9G51qX3epCz85cHYpzCo40PJ6yIQ5VLubode4dvqUVv55Mu
 zE5g==
X-Gm-Message-State: AGi0PubynZvGUlke8YpwDQbJBBXMi0HhEZMM/kwQeOjfgcXR84tIbSZg
 lDObjjLauMla4i4bJtGeIjwg+A==
X-Google-Smtp-Source: APiQypIFdxY72dNnDd+L8I5eCKKhglDYkZTVnaPRNiYzoyqLwW0BwDrjFVs7rHZGjweW5a4tNMMIPw==
X-Received: by 2002:a62:4ec8:: with SMTP id c191mr13321613pfb.30.1588847125369; 
 Thu, 07 May 2020 03:25:25 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id m6sm7058940pjo.5.2020.05.07.03.25.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 03:25:24 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 5/5] [media] mtk-mdp: Remove mtk_mdp_comp.id and supporting
 functionality
Date: Thu,  7 May 2020 20:23:50 +1000
Message-Id: <20200507202337.v3.5.I1c85bddc262913b8572d892dd6bf9bc03fbe0ec7@changeid>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
In-Reply-To: <20200507102345.81849-1-eizan@chromium.org>
References: <20200507102345.81849-1-eizan@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_032526_803247_B7588852 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Houlong Wei <houlong.wei@mediatek.com>, Eizan Miyamoto <eizan@chromium.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since components are registered in a list, the numeric component id that
specified a location in an array is not necessary.

Signed-off-by: Eizan Miyamoto <eizan@chromium.org>
---

Changes in v3:
- Removed extra Signed-off-by: tag from commit messages.
- Removed extra line break in mtk_mdp_core.c
- Update cover letter with dependent commit

Changes in v2:
- rebase onto linux-next/master to pick up
  757570f11fa4b0ce5472a6583de6f06e996a8527

 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 60 +++----------------
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.h | 19 +-----
 drivers/media/platform/mtk-mdp/mtk_mdp_core.c |  9 +--
 3 files changed, 10 insertions(+), 78 deletions(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
index da2bdad7a8d1..362fff924aef 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
@@ -14,46 +14,6 @@
 #include "mtk_mdp_comp.h"
 
 
-static const char * const mtk_mdp_comp_stem[MTK_MDP_COMP_TYPE_MAX] = {
-	"mdp-rdma",
-	"mdp-rsz",
-	"mdp-wdma",
-	"mdp-wrot",
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
index 40b9fda8b03b..f96c8b3bf861 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
@@ -137,7 +137,6 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 	for_each_child_of_node(parent, node) {
 		const struct of_device_id *of_id;
 		enum mtk_mdp_comp_type comp_type;
-		int comp_id;
 
 		of_id = of_match_node(mtk_mdp_comp_dt_ids, node);
 		if (!of_id)
@@ -150,12 +149,6 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 		}
 
 		comp_type = (enum mtk_mdp_comp_type)of_id->data;
-		comp_id = mtk_mdp_comp_get_id(dev, node, comp_type);
-		if (comp_id < 0) {
-			dev_warn(dev, "Skipping unknown component %pOF\n",
-				 node);
-			continue;
-		}
 
 		comp = devm_kzalloc(dev, sizeof(*comp), GFP_KERNEL);
 		if (!comp) {
@@ -164,7 +157,7 @@ static int mtk_mdp_probe(struct platform_device *pdev)
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
