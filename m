Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCFF132298
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 10:36:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ySxpi5UKTKodrPK5bCLULdCCMHb/Jt+ykZ9pkIGmU84=; b=XCSqgYd3pFQohBQsbKRm5BfeEA
	veQbRukni4v64yLMPrqKrAAtQVDeb6N6iu61a/IPwFNBqeCvud78LfxcDL3DvKZc+IfDj3ejlqtLs
	EPJkhbqShHgpJpWN1ZSL+eA1Lpf7fTT3p0cDA6wrBN9a8n4Mqfkp5SgytYK4amRDlItDd09GgAFTA
	KwIJjQYduErTFyqZJg9J0SHftYqazFhEGKAyvTE68cxfdrVUdiCfAPoEhz6HZdqtS8UIB4o00VBo3
	FY6WmJH2fd+PkaStjXEmDkVVIK1YpsvjeVTnSLPaaH0k/6rd9No7t24Z8p0JWbssH4pGg+gma6Vma
	PHnY2ZPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iolHL-0004fi-Em; Tue, 07 Jan 2020 09:35:59 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolGF-0002nn-S0
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 09:34:57 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9632B200DAC;
 Tue,  7 Jan 2020 10:34:50 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 31E1F200303;
 Tue,  7 Jan 2020 10:34:34 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9AE87402C7;
 Tue,  7 Jan 2020 16:56:57 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, catalin.marinas@arm.com,
 will@kernel.org, bjorn.andersson@linaro.org, olof@lixom.net,
 maxime@cerno.tech, leonard.crestez@nxp.com, dinguyen@kernel.org,
 marcin.juszkiewicz@linaro.org, ping.bai@nxp.com, abel.vesa@nxp.com,
 nsekhar@ti.com, t-kristo@ti.com, peng.fan@nxp.com, yuehaibing@huawei.com,
 aisheng.dong@nxp.com, sfr@canb.auug.org.au, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 2/5] clk: imx: Add support for i.MX8M hw based clk provider
Date: Tue,  7 Jan 2020 16:53:14 +0800
Message-Id: <1578387197-5750-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578387197-5750-1-git-send-email-Anson.Huang@nxp.com>
References: <1578387197-5750-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_013452_200692_21E5039B 
X-CRM114-Status: GOOD (  11.56  )
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add hw based provider support for i.MX8M composite clk, pll14xx
clk and other gate/mux clk APIs, so that new added i.MX8M SoCs
can use hw based clk provider.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
New patch.
---
 drivers/clk/imx/clk-composite-8m.c |  4 ++--
 drivers/clk/imx/clk-pll14xx.c      | 18 +++++++++-------
 drivers/clk/imx/clk.h              | 42 +++++++++++++++++++++++++++++++++-----
 3 files changed, 50 insertions(+), 14 deletions(-)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index d3486ee..20f7c91 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -123,7 +123,7 @@ static const struct clk_ops imx8m_clk_composite_divider_ops = {
 	.set_rate = imx8m_clk_composite_divider_set_rate,
 };
 
-struct clk *imx8m_clk_composite_flags(const char *name,
+struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 					const char * const *parent_names,
 					int num_parents, void __iomem *reg,
 					unsigned long flags)
@@ -171,7 +171,7 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 	if (IS_ERR(hw))
 		goto fail;
 
-	return hw->clk;
+	return hw;
 
 fail:
 	kfree(gate);
diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index e238427..db12fb6 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -376,14 +376,15 @@ static const struct clk_ops clk_pll1443x_ops = {
 	.set_rate	= clk_pll1443x_set_rate,
 };
 
-struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
 			    void __iomem *base,
 			    const struct imx_pll14xx_clk *pll_clk)
 {
 	struct clk_pll14xx *pll;
-	struct clk *clk;
+	struct clk_hw *hw;
 	struct clk_init_data init;
 	u32 val;
+	int ret;
 
 	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
 	if (!pll)
@@ -415,16 +416,19 @@ struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 	pll->rate_table = pll_clk->rate_table;
 	pll->rate_count = pll_clk->rate_count;
 
+	hw = &pll->hw;
+
 	val = readl_relaxed(pll->base + GNRL_CTL);
 	val &= ~BYPASS_MASK;
 	writel_relaxed(val, pll->base + GNRL_CTL);
 
-	clk = clk_register(NULL, &pll->hw);
-	if (IS_ERR(clk)) {
-		pr_err("%s: failed to register pll %s %lu\n",
-			__func__, name, PTR_ERR(clk));
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
+		pr_err("%s: failed to register pll %s %d\n",
+			__func__, name, ret);
 		kfree(pll);
+		return ERR_PTR(ret);
 	}
 
-	return clk;
+	return hw;
 }
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index afc7947..90f9ab8 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -123,8 +123,13 @@ extern struct imx_pll14xx_clk imx_1443x_dram_pll;
 				bypass1, bypass2, base, flags) \
 	to_clk(imx_clk_hw_sscg_pll(name, parent_names, num_parents, parent,\
 				bypass1, bypass2, base, flags))
+#define imx_clk_pll14xx(name, parent_name, base, pll_clk) \
+	to_clk(imx_clk_hw_pll14xx(name, parent_name, base, pll_clk))
 
-struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
+#define imx8m_clk_composite_flags(name, parent_names, num_parents, reg, flags) \
+	to_clk(imx8m_clk_hw_composite_flags(name, parent_names, num_parents, reg, flags))
+
+struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
 		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
 
 struct clk_hw *imx_clk_hw_pllv1(enum imx_pllv1_type type, const char *name,
@@ -388,6 +393,14 @@ static inline struct clk *imx_clk_gate4_flags(const char *name,
 			reg, shift, 0x3, 0, &imx_ccm_lock, NULL);
 }
 
+static inline struct clk_hw *imx_clk_hw_gate4_flags(const char *name, const char *parent,
+		void __iomem *reg, u8 shift, unsigned long flags)
+{
+	return clk_hw_register_gate2(NULL, name, parent,
+			flags | CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE,
+			reg, shift, 0x3, 0, &imx_ccm_lock, NULL);
+}
+
 static inline struct clk_hw *imx_clk_hw_mux(const char *name, void __iomem *reg,
 			u8 shift, u8 width, const char * const *parents,
 			int num_parents)
@@ -437,6 +450,15 @@ static inline struct clk *imx_clk_mux2_flags(const char *name,
 			reg, shift, width, 0, &imx_ccm_lock);
 }
 
+static inline struct clk_hw *imx_clk_hw_mux2_flags(const char *name, void __iomem *reg,
+				u8 shift, u8 width, const char * const *parents,
+				int num_parents, unsigned long flags)
+{
+	return clk_hw_register_mux(NULL, name, parents, num_parents,
+			flags | CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE,
+			reg, shift, width, 0, &imx_ccm_lock);
+}
+
 static inline struct clk_hw *imx_clk_hw_mux_flags(const char *name,
 						  void __iomem *reg, u8 shift,
 						  u8 width,
@@ -453,10 +475,9 @@ struct clk_hw *imx_clk_hw_cpu(const char *name, const char *parent_name,
 		struct clk *div, struct clk *mux, struct clk *pll,
 		struct clk *step);
 
-struct clk *imx8m_clk_composite_flags(const char *name,
-					const char * const *parent_names,
-					int num_parents, void __iomem *reg,
-					unsigned long flags);
+struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
+		const char * const *parent_names, int num_parents,
+		void __iomem *reg, unsigned long flags);
 
 #define __imx8m_clk_composite(name, parent_names, reg, flags) \
 	imx8m_clk_composite_flags(name, parent_names, \
@@ -469,6 +490,17 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 #define imx8m_clk_composite_critical(name, parent_names, reg) \
 	__imx8m_clk_composite(name, parent_names, reg, CLK_IS_CRITICAL)
 
+#define __imx8m_clk_hw_composite(name, parent_names, reg, flags) \
+	imx8m_clk_hw_composite_flags(name, parent_names, \
+		ARRAY_SIZE(parent_names), reg, \
+		flags | CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE)
+
+#define imx8m_clk_hw_composite(name, parent_names, reg) \
+	__imx8m_clk_hw_composite(name, parent_names, reg, 0)
+
+#define imx8m_clk_hw_composite_critical(name, parent_names, reg) \
+	__imx8m_clk_hw_composite(name, parent_names, reg, CLK_IS_CRITICAL)
+
 struct clk_hw *imx_clk_hw_divider_gate(const char *name, const char *parent_name,
 		unsigned long flags, void __iomem *reg, u8 shift, u8 width,
 		u8 clk_divider_flags, const struct clk_div_table *table,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
