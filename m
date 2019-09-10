Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E583EADADD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 16:12:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7mKnU+wd3/R6iYlM3m6bAOAoDmfjnwhSk7LN81KRC5c=; b=CSiHIU2jLTTrKi8V/oAZU61Ox2
	KhRu6pPfO8MXwbkCWT8ZHizR8J+7uBvLLo33tX1y4kho9Ul2vO+AjnpO2BRAA3TO7Cdloaptx0MhP
	xnzDOsjvTiHD/kOWQ2Y816BFE1c/UeUFXqPUBcMbF9rJeSASkWJiIZunCFgaQSBakZyfX2MiB0+RG
	HawIbaIoD8GKOA/lfK6k5B9wiqUI1ixs9pAZ93Urrz2MSolKS+YxzAn16u13wy+zO3CSQ2wBJBA4y
	k2sCcIwzBC8yxd+r9k80Kz+fhuPU+i33wYxy9gYlvyxbkFYXie8cKRUuuuuwGzOQ+wq2NwQkGUOqt
	0Gr4Oc/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7KOt-0007J5-2J; Mon, 09 Sep 2019 14:12:15 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7KOB-0006qv-Kw
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 14:11:34 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 73DCD1A0EAB;
 Mon,  9 Sep 2019 16:11:30 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0F48C1A0774;
 Mon,  9 Sep 2019 16:11:26 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9A980402F7;
 Mon,  9 Sep 2019 22:11:20 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH V5 05/11] clk: imx: scu: allow scu clk to take device pointer
Date: Mon,  9 Sep 2019 22:10:02 -0400
Message-Id: <1568081408-26800-6-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568081408-26800-1-git-send-email-aisheng.dong@nxp.com>
References: <1568081408-26800-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_071131_965095_51B7DD32 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, sboyd@kernel.org,
 mturquette@baylibre.com, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Used to support runtime pm.

Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Michael Turquette <mturquette@baylibre.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v4->v5:
 * no changes
v3->v4:
 * add the missing dev poninter when call __imx_clk_scu in probe
v3: new patch
---
 drivers/clk/imx/clk-scu.c | 9 +++++----
 drivers/clk/imx/clk-scu.h | 9 +++++----
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
index 85afe30..5b6ed89 100644
--- a/drivers/clk/imx/clk-scu.c
+++ b/drivers/clk/imx/clk-scu.c
@@ -384,8 +384,9 @@ static const struct clk_ops clk_scu_cpu_ops = {
 	.unprepare = clk_scu_unprepare,
 };
 
-struct clk_hw *__imx_clk_scu(const char *name, const char * const *parents,
-			     int num_parents, u32 rsrc_id, u8 clk_type)
+struct clk_hw *__imx_clk_scu(struct device *dev, const char *name,
+			     const char * const *parents, int num_parents,
+			     u32 rsrc_id, u8 clk_type)
 {
 	struct clk_init_data init;
 	struct clk_scu *clk;
@@ -419,7 +420,7 @@ struct clk_hw *__imx_clk_scu(const char *name, const char * const *parents,
 	clk->hw.init = &init;
 
 	hw = &clk->hw;
-	ret = clk_hw_register(NULL, hw);
+	ret = clk_hw_register(dev, hw);
 	if (ret) {
 		kfree(clk);
 		hw = ERR_PTR(ret);
@@ -450,7 +451,7 @@ static int imx_clk_scu_probe(struct platform_device *pdev)
 	struct imx_scu_clk_node *clk = dev_get_platdata(dev);
 	struct clk_hw *hw;
 
-	hw = __imx_clk_scu(clk->name, clk->parents, clk->num_parents,
+	hw = __imx_clk_scu(NULL, clk->name, clk->parents, clk->num_parents,
 			   clk->rsrc, clk->clk_type);
 	if (IS_ERR(hw))
 		return PTR_ERR(hw);
diff --git a/drivers/clk/imx/clk-scu.h b/drivers/clk/imx/clk-scu.h
index 819dc32..a2c6b42 100644
--- a/drivers/clk/imx/clk-scu.h
+++ b/drivers/clk/imx/clk-scu.h
@@ -20,8 +20,9 @@ struct clk_hw *imx_clk_scu_alloc_dev(const char *name,
 				     const char * const *parents,
 				     int num_parents, u32 rsrc_id, u8 clk_type);
 
-struct clk_hw *__imx_clk_scu(const char *name, const char * const *parents,
-			     int num_parents, u32 rsrc_id, u8 clk_type);
+struct clk_hw *__imx_clk_scu(struct device *dev, const char *name,
+			     const char * const *parents, int num_parents,
+			     u32 rsrc_id, u8 clk_type);
 
 static inline struct clk_hw *imx_clk_scu(const char *name, u32 rsrc_id,
 					 u8 clk_type)
@@ -29,7 +30,7 @@ static inline struct clk_hw *imx_clk_scu(const char *name, u32 rsrc_id,
 	if (clock_cells == 2)
 		return imx_clk_scu_alloc_dev(name, NULL, 0, rsrc_id, clk_type);
 	else
-		return __imx_clk_scu(name, NULL, 0, rsrc_id, clk_type);
+		return __imx_clk_scu(NULL, name, NULL, 0, rsrc_id, clk_type);
 }
 
 static inline struct clk_hw *imx_clk_scu2(const char *name, const char * const *parents,
@@ -38,7 +39,7 @@ static inline struct clk_hw *imx_clk_scu2(const char *name, const char * const *
 	if (clock_cells == 2)
 		return imx_clk_scu_alloc_dev(name, parents, num_parents, rsrc_id, clk_type);
 	else
-		return __imx_clk_scu(name, parents, num_parents, rsrc_id, clk_type);
+		return __imx_clk_scu(NULL, name, parents, num_parents, rsrc_id, clk_type);
 }
 
 struct clk_hw *imx_clk_lpcg_scu(const char *name, const char *parent_name,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
