Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B477611A6FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:27:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gPuHrcLpxyRah9GLoafVdJ8Zk+dFAu8ORnfQg6DTCJY=; b=Un8xIM4vewhkRkktWrlZfxChCz
	G9jv/OFlUXwO0pWWIiZhBpXvyxvFq2Z+Wul/z129zEZuS/GMXkvZ1qIVzbeRnIF90RoDlcuTeoGTj
	MeeWuTx0cRLPku+Rn/G7kt934roNDEY7O3CCqacaWotg587TebAy4dImnZgnFVSRYOenq4ieaMKBb
	3gWM5XQsBoCNRylbwocQC15+bhRQgdCbflrzg1N0Qj/efTxgIwyjXpchdAnR5rBUTCDipn8qkgncj
	ulf9C7SPWIzB54JkVoKwvuUZFxO+6pUQet2Wark1mqTPDNAA6OFBDUbYhUmVwaCyZsROhk2Pn6J94
	271BFcCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyH1-00081b-Qh; Wed, 11 Dec 2019 09:27:11 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyFz-0007EB-7Q
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:26:09 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0C05C2015A6;
 Wed, 11 Dec 2019 10:26:06 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F08992015A2;
 Wed, 11 Dec 2019 10:26:05 +0100 (CET)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 7968120568;
 Wed, 11 Dec 2019 10:26:05 +0100 (CET)
From: Abel Vesa <abel.vesa@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [RESEND v2 07/11] clk: imx: Rename sccg and frac pll register to
 suggest clk_hw
Date: Wed, 11 Dec 2019 11:25:46 +0200
Message-Id: <1576056350-20715-8-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576056350-20715-1-git-send-email-abel.vesa@nxp.com>
References: <1576056350-20715-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_012607_541455_F63B6783 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Abel Vesa <abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Renaming the imx_clk_frac_pll and imx_clk_sccg_pll register functions to
imx_clk_hw_frac_pll, respectively imx_clk_hw_sccg_pll to be more obvious
that they are clk_hw based.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-frac-pll.c |  7 ++++---
 drivers/clk/imx/clk-sscg-pll.c |  4 ++--
 drivers/clk/imx/clk.h          | 12 ++++++++++--
 3 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/imx/clk-frac-pll.c b/drivers/clk/imx/clk-frac-pll.c
index fece503..101e0a3 100644
--- a/drivers/clk/imx/clk-frac-pll.c
+++ b/drivers/clk/imx/clk-frac-pll.c
@@ -201,8 +201,9 @@ static const struct clk_ops clk_frac_pll_ops = {
 	.set_rate	= clk_pll_set_rate,
 };
 
-struct clk *imx_clk_frac_pll(const char *name, const char *parent_name,
-			     void __iomem *base)
+struct clk_hw *imx_clk_hw_frac_pll(const char *name,
+				   const char *parent_name,
+				   void __iomem *base)
 {
 	struct clk_init_data init;
 	struct clk_frac_pll *pll;
@@ -230,5 +231,5 @@ struct clk *imx_clk_frac_pll(const char *name, const char *parent_name,
 		return ERR_PTR(ret);
 	}
 
-	return hw->clk;
+	return hw;
 }
diff --git a/drivers/clk/imx/clk-sscg-pll.c b/drivers/clk/imx/clk-sscg-pll.c
index 0669e17..acd1b90 100644
--- a/drivers/clk/imx/clk-sscg-pll.c
+++ b/drivers/clk/imx/clk-sscg-pll.c
@@ -506,7 +506,7 @@ static const struct clk_ops clk_sscg_pll_ops = {
 	.determine_rate	= clk_sscg_pll_determine_rate,
 };
 
-struct clk *imx_clk_sscg_pll(const char *name,
+struct clk_hw *imx_clk_hw_sscg_pll(const char *name,
 				const char * const *parent_names,
 				u8 num_parents,
 				u8 parent, u8 bypass1, u8 bypass2,
@@ -545,5 +545,5 @@ struct clk *imx_clk_sscg_pll(const char *name,
 		return ERR_PTR(ret);
 	}
 
-	return hw->clk;
+	return hw;
 }
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 8ffdaca..23c73a2 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -116,6 +116,14 @@ extern struct imx_pll14xx_clk imx_1443x_dram_pll;
 #define imx_clk_pllv2(name, parent, base) \
 	to_clk(imx_clk_hw_pllv2(name, parent, base))
 
+#define imx_clk_frac_pll(name, parent_name, base) \
+	to_clk(imx_clk_hw_frac_pll(name, parent_name, base))
+
+#define imx_clk_sscg_pll(name, parent_names, num_parents, parent,\
+				bypass1, bypass2, base, flags) \
+	to_clk(imx_clk_hw_sscg_pll(name, parent_names, num_parents, parent,\
+				bypass1, bypass2, base, flags))
+
 struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
 
@@ -125,10 +133,10 @@ struct clk_hw *imx_clk_hw_pllv1(enum imx_pllv1_type type, const char *name,
 struct clk_hw *imx_clk_hw_pllv2(const char *name, const char *parent,
 		void __iomem *base);
 
-struct clk *imx_clk_frac_pll(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_frac_pll(const char *name, const char *parent_name,
 			     void __iomem *base);
 
-struct clk *imx_clk_sscg_pll(const char *name,
+struct clk_hw *imx_clk_hw_sscg_pll(const char *name,
 				const char * const *parent_names,
 				u8 num_parents,
 				u8 parent, u8 bypass1, u8 bypass2,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
