Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EE895D70
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:33:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HQPlER7BV4joW72qKIqN9vsUTITeJP+1xfEODnYckmU=; b=NJsUQ4o3bK5uz7zM/AFbw7t+tQ
	LLMkbm5Pg9+WyA5jrLmk9KTt07qI7S6p6R+m1d+x7lOjWtrhiybX7WAGWyhNtosbk8+9t2I7JCafN
	ri0zqQ8G2CTEtPRAW1QlBDZmtkGYvur3u/4tpwvN0OM6QyJOuqG0An/RDJDF00S160f31EPAbIFGQ
	xrHZBe0zw0O95SW+le+5mbzrHlkEHWbQ5i2JlYcT2ptiQnC23V5A7FFh7Tzw+4GStg+r12COj67rB
	uhOb1vLcC+2Y0+0RnkJjblERr50V0UmCUVs4cXgXK/dN2GMIrsUPowFqQAYp3IR/wT8ptWUuj0vm/
	Or4wWXbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02OZ-0003En-LV; Tue, 20 Aug 2019 11:33:47 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02N0-000287-MR
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:32:12 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7E75E20006A;
 Tue, 20 Aug 2019 13:32:09 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0013C20029A;
 Tue, 20 Aug 2019 13:32:04 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7FD414031C;
 Tue, 20 Aug 2019 19:31:55 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH V4 05/11] clk: imx: scu: allow scu clk to take device pointer
Date: Tue, 20 Aug 2019 07:13:19 -0400
Message-Id: <1566299605-15641-6-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_043211_061131_B969ECC0 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
v3->v4:
 * add the missing dev poninter when call __imx_clk_scu in probe
v3: new patch
---
 drivers/clk/imx/clk-scu.c | 9 +++++----
 drivers/clk/imx/clk-scu.h | 9 +++++----
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
index 5f935b1..9005584 100644
--- a/drivers/clk/imx/clk-scu.c
+++ b/drivers/clk/imx/clk-scu.c
@@ -382,8 +382,9 @@ static const struct clk_ops clk_scu_cpu_ops = {
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
@@ -417,7 +418,7 @@ struct clk_hw *__imx_clk_scu(const char *name, const char * const *parents,
 	clk->hw.init = &init;
 
 	hw = &clk->hw;
-	ret = clk_hw_register(NULL, hw);
+	ret = clk_hw_register(dev, hw);
 	if (ret) {
 		kfree(clk);
 		hw = ERR_PTR(ret);
@@ -448,7 +449,7 @@ static int imx_clk_scu_probe(struct platform_device *pdev)
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
