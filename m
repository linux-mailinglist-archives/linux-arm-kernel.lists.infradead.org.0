Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0296D6ABA1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 17:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LtDFT8oa23BtzO/Xq/W5yknWxfdiTatJynnA5aFpRFo=; b=X/ZodhMeoTwfeDZ5eVbS9IQMNl
	GowEj5t01Uy1Qqreta21ty5wD1KMYqOkVpEbTTcoOUbYCvnkCG2F3/p1YfFIMTmzjXk6RfOjLecIT
	rkTL6hyBGMoMq1hPhK55Nx+k3cQE9rPGwQim+XPVeEeuLF3MLLKf+fKsBc/pM0Wu1rPa3ggXAdX16
	ujk5usDtc83iJxxX2NHrnAyRBqehE2KMcqeGFBkg2nAB0dlmQkbLFAb+w3hI6XqEWEhlr7BPM2Ax4
	a/qrUJ7P2rOZS1wkHWMZECsq46AUoGRY1XDJDoZF0ceDGiL7BPjpeHwWFndUdl4NvNpzpJDWRYvaH
	C8i53KfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPJt-00064X-2n; Tue, 16 Jul 2019 15:24:45 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPIR-00055x-H0
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 15:23:18 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5A16D20001C;
 Tue, 16 Jul 2019 17:23:14 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 815E6200055;
 Tue, 16 Jul 2019 17:23:09 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 47FA8402EE;
 Tue, 16 Jul 2019 23:23:03 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH v3 05/11] clk: imx: scu: allow scu clk to take device pointer
Date: Tue, 16 Jul 2019 23:00:59 +0800
Message-Id: <1563289265-10977-6-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
References: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_082315_868465_FDFB7CAB 
X-CRM114-Status: UNSURE (   7.43  )
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
v3: new patch
---
 drivers/clk/imx/clk-scu.c | 7 ++++---
 drivers/clk/imx/clk-scu.h | 9 +++++----
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
index 5f935b1..30d6ff7 100644
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
