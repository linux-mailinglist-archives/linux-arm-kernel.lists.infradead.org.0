Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEF61C86A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0TaEiEJisJudj3yx0/Fi1JciraVfwusknN9JFc/QKE=; b=DM02voMel1YwRn
	gYancl5AVnnwnqCdQzEZZsNyWM4hjzuUqcgI/uBTs7cR6Q7gY4sgpEXCza76SR9RkAPMHvOsm3Kxd
	KvvvZFgZiQgP/WOAkFbMSlRgnVT3TwySaDxGWhpqY0uHdHa9/nl1U5GCj0Qb5M4mSM7TBOXdEQXkV
	r3MZ68m0v52abzFYO4mQTms54hIW2+Zwwsizzdqzwh5n2pezHB9yFMp82tOvjnqZtn0utGQZJsRnu
	v7sEjCTjPvVVe7P0P2fen3895jzYReqO0UvM2GdoUfe/MFtAnIEzT9/UTNha8Ny72IMHBN+CB1r59
	P91SN/7pjT+Do2A7gbdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdj8-0002jD-L0; Thu, 07 May 2020 10:26:02 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdiI-0001Bh-Jt
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:25:15 +0000
Received: by mail-pl1-x641.google.com with SMTP id m7so1900182plt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 03:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8cJsBp+EOXNRCmgk1ug3bfc2/ttTB2kMHJOkU+Y+o8w=;
 b=H7j39yb2k+XzcTJ6ncmva9Oe4ssQ47Z5wYyQS0/DnmAGms7PhCqbCH6niF7jW/W274
 tU4PHWbVunVxDfKxT2ms9w9sL8Nc0qzCujiLi2rYkgAlCOLOZSUxglIh3lsPvmWLbeeQ
 zKMgALmUvPZWJw1CuKp75LwMIA/DRKBK52Jxc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8cJsBp+EOXNRCmgk1ug3bfc2/ttTB2kMHJOkU+Y+o8w=;
 b=mS9dwKGr9jMj7Dm8hrjphK0tH+Th+cxoODXoQDSUJliJdPaO49Cs1kWxf5++R8Gd13
 7e8gYwJtvtYbzIbqODE+RtkCDpVfVQ7Vy0nqABRAJTL4zTAxD9zOG/nqxZgFQM94UUK7
 kQx6R08CRYMlw7TznLxDskbidCXJKVH9EasiF4ApzqJjnVpG6tu/do9lKC+iL4Hz0WaX
 Keo+o/revB4p3TRcMhc6K/g5KHeqjD4UaAdg+xm6zYufnXdcM5Je9YA7PLqW48RYdhp+
 I6TKgoC5+/pMmULpag3ZGK74QgkZX43e8KF/X5MZWpjocA/KrnOR7p+zuxNf2I8h1lCM
 T6kA==
X-Gm-Message-State: AGi0PuYdPfBzgzXXtIraP3gRZ5KLGwSeQHPbMg0l/zCMrncw4egC3BF9
 RMWMyezcblS/SCw7I3MmijQSQQ==
X-Google-Smtp-Source: APiQypKVroCJHaGCjBiL6U8KsbIvrlrx4Udr2zwOYfB1N8nXUOGsewudXLu4qjQ/SI19VwYVg9KMdQ==
X-Received: by 2002:a17:902:40a:: with SMTP id
 10mr12231101ple.183.1588847109077; 
 Thu, 07 May 2020 03:25:09 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id g14sm4458765pfh.49.2020.05.07.03.25.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 03:25:08 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 4/5] [media] mtk-mdp: convert mtk_mdp_dev.comp array to list
Date: Thu,  7 May 2020 20:23:48 +1000
Message-Id: <20200507202337.v3.4.I22b7dfc5e6977f5c149f82594832b5bd1d978af9@changeid>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
In-Reply-To: <20200507102345.81849-1-eizan@chromium.org>
References: <20200507102345.81849-1-eizan@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_032511_701129_974225A7 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 Matthias Brugger <matthias.bgg@gmail.com>,
 Enric Balletbo I Serra <enric.balletbo@collabora.com>,
 linux-mediatek@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The functions mtk_mdp_register/unregister_component have been created to
add / remove items from the list of components.

This will eventually enable us to specify a list of components in the
device tree instead of hardcoding them into this driver.

The list is modified by a single thread at driver probe time, and will
not be traversed by another thread until the call to pm_runtime_enable
at the end of probing.

Signed-off-by: Eizan Miyamoto <eizan@chromium.org>
Reviewed-by: Enric Balletbo I Serra <enric.balletbo@collabora.com>
---

Changes in v3: None
Changes in v2: None

 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c |  1 +
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.h |  2 +
 drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 46 +++++++++++++------
 drivers/media/platform/mtk-mdp/mtk_mdp_core.h | 10 +++-
 4 files changed, 43 insertions(+), 16 deletions(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
index c76cd61fb178..da2bdad7a8d1 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
@@ -103,6 +103,7 @@ int mtk_mdp_comp_init(struct device *dev, struct device_node *node,
 		return -EINVAL;
 	}
 
+	INIT_LIST_HEAD(&comp->node);
 	comp->dev_node = of_node_get(node);
 	comp->id = comp_id;
 	comp->type = mtk_mdp_matches[comp_id].type;
diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
index 3b83bd6e0d8b..1f745891c6c3 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
@@ -36,6 +36,7 @@ enum mtk_mdp_comp_id {
 
 /**
  * struct mtk_mdp_comp - the MDP's function component data
+ * @node:	list node to track sibing MDP components
  * @dev_node:	component device node
  * @clk:	clocks required for component
  * @larb_dev:	SMI device required for component
@@ -43,6 +44,7 @@ enum mtk_mdp_comp_id {
  * @id:		component ID
  */
 struct mtk_mdp_comp {
+	struct list_head	node;
 	struct device_node	*dev_node;
 	struct clk		*clk[2];
 	struct device		*larb_dev;
diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
index 17d155219ba2..40b9fda8b03b 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
@@ -55,19 +55,19 @@ MODULE_DEVICE_TABLE(of, mtk_mdp_of_ids);
 static void mtk_mdp_clock_on(struct mtk_mdp_dev *mdp)
 {
 	struct device *dev = &mdp->pdev->dev;
-	int i;
+	struct mtk_mdp_comp *comp_node;
 
-	for (i = 0; i < ARRAY_SIZE(mdp->comp); i++)
-		mtk_mdp_comp_clock_on(dev, mdp->comp[i]);
+	list_for_each_entry(comp_node, &mdp->comp_list, node)
+		mtk_mdp_comp_clock_on(dev, comp_node);
 }
 
 static void mtk_mdp_clock_off(struct mtk_mdp_dev *mdp)
 {
 	struct device *dev = &mdp->pdev->dev;
-	int i;
+	struct mtk_mdp_comp *comp_node;
 
-	for (i = 0; i < ARRAY_SIZE(mdp->comp); i++)
-		mtk_mdp_comp_clock_off(dev, mdp->comp[i]);
+	list_for_each_entry(comp_node, &mdp->comp_list, node)
+		mtk_mdp_comp_clock_off(dev, comp_node);
 }
 
 static void mtk_mdp_wdt_worker(struct work_struct *work)
@@ -91,12 +91,25 @@ static void mtk_mdp_reset_handler(void *priv)
 	queue_work(mdp->wdt_wq, &mdp->wdt_work);
 }
 
+void mtk_mdp_register_component(struct mtk_mdp_dev *mdp,
+				struct mtk_mdp_comp *comp)
+{
+	list_add(&mdp->comp_list, &comp->node);
+}
+
+void mtk_mdp_unregister_component(struct mtk_mdp_dev *mdp,
+				  struct mtk_mdp_comp *comp)
+{
+	list_del(&comp->node);
+}
+
 static int mtk_mdp_probe(struct platform_device *pdev)
 {
 	struct mtk_mdp_dev *mdp;
 	struct device *dev = &pdev->dev;
 	struct device_node *node, *parent;
-	int i, ret = 0;
+	struct mtk_mdp_comp *comp, *comp_temp;
+	int ret = 0;
 
 	mdp = devm_kzalloc(dev, sizeof(*mdp), GFP_KERNEL);
 	if (!mdp)
@@ -104,6 +117,7 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 
 	mdp->id = pdev->id;
 	mdp->pdev = pdev;
+	INIT_LIST_HEAD(&mdp->comp_list);
 	INIT_LIST_HEAD(&mdp->ctx_list);
 
 	mutex_init(&mdp->lock);
@@ -124,7 +138,6 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 		const struct of_device_id *of_id;
 		enum mtk_mdp_comp_type comp_type;
 		int comp_id;
-		struct mtk_mdp_comp *comp;
 
 		of_id = of_match_node(mtk_mdp_comp_dt_ids, node);
 		if (!of_id)
@@ -150,13 +163,14 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 			of_node_put(node);
 			goto err_comp;
 		}
-		mdp->comp[comp_id] = comp;
 
 		ret = mtk_mdp_comp_init(dev, node, comp, comp_id);
 		if (ret) {
 			of_node_put(node);
 			goto err_comp;
 		}
+
+		mtk_mdp_register_component(mdp, comp);
 	}
 
 	mdp->job_wq = create_singlethread_workqueue(MTK_MDP_MODULE_NAME);
@@ -220,8 +234,10 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 err_alloc_job_wq:
 
 err_comp:
-	for (i = 0; i < ARRAY_SIZE(mdp->comp); i++)
-		mtk_mdp_comp_deinit(dev, mdp->comp[i]);
+	list_for_each_entry_safe(comp, comp_temp, &mdp->comp_list, node) {
+		mtk_mdp_unregister_component(mdp, comp);
+		mtk_mdp_comp_deinit(dev, comp);
+	}
 
 	dev_dbg(dev, "err %d\n", ret);
 	return ret;
@@ -230,7 +246,7 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 static int mtk_mdp_remove(struct platform_device *pdev)
 {
 	struct mtk_mdp_dev *mdp = platform_get_drvdata(pdev);
-	int i;
+	struct mtk_mdp_comp *comp, *comp_temp;
 
 	pm_runtime_disable(&pdev->dev);
 	vb2_dma_contig_clear_max_seg_size(&pdev->dev);
@@ -243,8 +259,10 @@ static int mtk_mdp_remove(struct platform_device *pdev)
 	flush_workqueue(mdp->job_wq);
 	destroy_workqueue(mdp->job_wq);
 
-	for (i = 0; i < ARRAY_SIZE(mdp->comp); i++)
-		mtk_mdp_comp_deinit(&pdev->dev, mdp->comp[i]);
+	list_for_each_entry_safe(comp, comp_temp, &mdp->comp_list, node) {
+		mtk_mdp_unregister_component(mdp, comp);
+		mtk_mdp_comp_deinit(&pdev->dev, comp);
+	}
 
 	dev_dbg(&pdev->dev, "%s driver unloaded\n", pdev->name);
 	return 0;
diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.h b/drivers/media/platform/mtk-mdp/mtk_mdp_core.h
index bafcccd71f31..1de825386da7 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.h
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.h
@@ -138,7 +138,7 @@ struct mtk_mdp_variant {
  * @pdev:	pointer to the image processor platform device
  * @variant:	the IP variant information
  * @id:		image processor device index (0..MTK_MDP_MAX_DEVS)
- * @comp:	MDP function components
+ * @comp_list:	list of MDP function components
  * @m2m_dev:	v4l2 memory-to-memory device data
  * @ctx_list:	list of struct mtk_mdp_ctx
  * @vdev:	video device for image processor driver
@@ -156,7 +156,7 @@ struct mtk_mdp_dev {
 	struct platform_device		*pdev;
 	struct mtk_mdp_variant		*variant;
 	u16				id;
-	struct mtk_mdp_comp		*comp[MTK_MDP_COMP_ID_MAX];
+	struct list_head		comp_list;
 	struct v4l2_m2m_dev		*m2m_dev;
 	struct list_head		ctx_list;
 	struct video_device		*vdev;
@@ -223,6 +223,12 @@ struct mtk_mdp_ctx {
 
 extern int mtk_mdp_dbg_level;
 
+void mtk_mdp_register_component(struct mtk_mdp_dev *mdp,
+				struct mtk_mdp_comp *comp);
+
+void mtk_mdp_unregister_component(struct mtk_mdp_dev *mdp,
+				  struct mtk_mdp_comp *comp);
+
 #if defined(DEBUG)
 
 #define mtk_mdp_dbg(level, fmt, args...)				 \
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
