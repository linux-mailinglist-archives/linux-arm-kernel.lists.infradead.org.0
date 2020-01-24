Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E27D1490F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 23:33:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qkSsegVJ1UUQ3sgMPMY4yEAkFWAW1ya4+jKy2fzSa4=; b=PHOtHxIe8xs00x
	/x805tVEZK1pSmfmEq4sx0ifDZJPB+J2+whWMG2UhUi2nV44go7eikUi1C+FcxOtZ1O7zN9K/n62v
	cXzRYR+394CF4xzBXh2ZNTgiXjSbcCYTENEjVzuJItN3ocWEBLSPjjBFPNGsd4v0DqsbEIOOuIe9/
	J/yVuvge+QBknXhTQ7QT7c18kEj7FJQ4NuKohRk8Xcy9t+7FS/d2dwmNnVvYizLKio+XbV38pk9PU
	9L45DACWaEEgbUHfSlBP7b5aGaV4WP7XpR69yhR6ucAF8AvSgnV6tD8y/MsicWPU7aTPQkn2w5FFd
	gBrXmf09x2ZncFiFumww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv7Vv-0002q8-To; Fri, 24 Jan 2020 22:33:19 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv7VK-0002aJ-1S
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 22:32:43 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579905161; h=References: In-Reply-To: Message-Id: Date:
 Subject: To: From: Sender;
 bh=u2C5jbTrsg1mNOJpP61Huvv7+OYDmwegWsSyA1V0kdI=;
 b=B/y0GQY3CWGAHZcFcQoJ5ICOxymTJlcxEV3I1p1QoFxDQH5/iX3NOQNdCS+JRt0WtLhDiZjU
 UYn5DWEcoNhFGqrzjX7eRBlbK3Cc1T3i8mN/46u9CrBRzTN+nuFyx0rk2BPGTL3udQgDrS98
 KBw9R0YWzugT0R5Ys+rjZ8q9GDA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2b7086.7f883c954c00-smtp-out-n02;
 Fri, 24 Jan 2020 22:32:38 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C333DC447A6; Fri, 24 Jan 2020 22:32:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from vgutta-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: vgutta)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2CD70C4479F;
 Fri, 24 Jan 2020 22:32:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2CD70C4479F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=vnkgutta@codeaurora.org
From: Venkata Narendra Kumar Gutta <vnkgutta@codeaurora.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, mturquette@baylibre.com,
 sboyd@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 vinod.koul@linaro.org, psodagud@codeaurora.org, tsoni@codeaurora.org,
 jshriram@codeaurora.org, tdas@codeaurora.org, vnkgutta@codeaurora.org,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/7] clk: qcom: clk-alpha-pll: Add support for controlling
 Lucid PLLs
Date: Fri, 24 Jan 2020 14:32:24 -0800
Message-Id: <1579905147-12142-5-git-send-email-vnkgutta@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1579905147-12142-1-git-send-email-vnkgutta@codeaurora.org>
References: <1579905147-12142-1-git-send-email-vnkgutta@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_143242_144752_75B2A241 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Taniya Das <tdas@codeaurora.org>

Add programming sequence support for managing the Lucid PLLs.

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Taniya Das <tdas@codeaurora.org>
Signed-off-by: Venkata Narendra Kumar Gutta <vnkgutta@codeaurora.org>
---
 drivers/clk/qcom/clk-alpha-pll.c | 190 +++++++++++++++++++++++++++++++++++++++
 drivers/clk/qcom/clk-alpha-pll.h |  12 +++
 2 files changed, 202 insertions(+)

diff --git a/drivers/clk/qcom/clk-alpha-pll.c b/drivers/clk/qcom/clk-alpha-pll.c
index 1b073b2..4258ab0 100644
--- a/drivers/clk/qcom/clk-alpha-pll.c
+++ b/drivers/clk/qcom/clk-alpha-pll.c
@@ -52,6 +52,7 @@
 #define PLL_CONFIG_CTL_U1(p)	((p)->offset + (p)->regs[PLL_OFF_CONFIG_CTL_U1])
 #define PLL_TEST_CTL(p)		((p)->offset + (p)->regs[PLL_OFF_TEST_CTL])
 #define PLL_TEST_CTL_U(p)	((p)->offset + (p)->regs[PLL_OFF_TEST_CTL_U])
+#define PLL_TEST_CTL_U1(p)     ((p)->offset + (p)->regs[PLL_OFF_TEST_CTL_U1])
 #define PLL_STATUS(p)		((p)->offset + (p)->regs[PLL_OFF_STATUS])
 #define PLL_OPMODE(p)		((p)->offset + (p)->regs[PLL_OFF_OPMODE])
 #define PLL_FRAC(p)		((p)->offset + (p)->regs[PLL_OFF_FRAC])
@@ -116,6 +117,22 @@
 		[PLL_OFF_ALPHA_VAL] = 0x40,
 		[PLL_OFF_CAL_VAL] = 0x44,
 	},
+	[CLK_ALPHA_PLL_TYPE_LUCID] =  {
+		[PLL_OFF_L_VAL] = 0x04,
+		[PLL_OFF_CAL_L_VAL] = 0x08,
+		[PLL_OFF_USER_CTL] = 0x0c,
+		[PLL_OFF_USER_CTL_U] = 0x10,
+		[PLL_OFF_USER_CTL_U1] = 0x14,
+		[PLL_OFF_CONFIG_CTL] = 0x18,
+		[PLL_OFF_CONFIG_CTL_U] = 0x1c,
+		[PLL_OFF_CONFIG_CTL_U1] = 0x20,
+		[PLL_OFF_TEST_CTL] = 0x24,
+		[PLL_OFF_TEST_CTL_U] = 0x28,
+		[PLL_OFF_TEST_CTL_U1] = 0x2c,
+		[PLL_OFF_STATUS] = 0x30,
+		[PLL_OFF_OPMODE] = 0x38,
+		[PLL_OFF_ALPHA_VAL] = 0x40,
+	},
 };
 EXPORT_SYMBOL_GPL(clk_alpha_pll_regs);
 
@@ -139,6 +156,10 @@
 #define PLL_OUT_MASK		0x7
 #define PLL_RATE_MARGIN		500
 
+/* LUCID PLL specific settings and offsets */
+#define LUCID_PLL_CAL_VAL	0x44
+#define LUCID_PCAL_DONE		BIT(26)
+
 #define pll_alpha_width(p)					\
 		((PLL_ALPHA_VAL_U(p) - PLL_ALPHA_VAL(p) == 4) ?	\
 				 ALPHA_REG_BITWIDTH : ALPHA_REG_16BIT_WIDTH)
@@ -1367,3 +1388,172 @@ static int clk_alpha_pll_postdiv_fabia_set_rate(struct clk_hw *hw,
 	.set_rate = clk_alpha_pll_postdiv_fabia_set_rate,
 };
 EXPORT_SYMBOL_GPL(clk_alpha_pll_postdiv_fabia_ops);
+
+void clk_lucid_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
+			     const struct alpha_pll_config *config)
+{
+	if (config->l)
+		regmap_write(regmap, PLL_L_VAL(pll), config->l);
+
+	regmap_write(regmap, PLL_CAL_L_VAL(pll), LUCID_PLL_CAL_VAL);
+
+	if (config->alpha)
+		regmap_write(regmap, PLL_ALPHA_VAL(pll), config->alpha);
+
+	if (config->config_ctl_val)
+		regmap_write(regmap, PLL_CONFIG_CTL(pll),
+			     config->config_ctl_val);
+
+	if (config->config_ctl_hi_val)
+		regmap_write(regmap, PLL_CONFIG_CTL_U(pll),
+			     config->config_ctl_hi_val);
+
+	if (config->config_ctl_hi1_val)
+		regmap_write(regmap, PLL_CONFIG_CTL_U1(pll),
+			     config->config_ctl_hi1_val);
+
+	if (config->user_ctl_val)
+		regmap_write(regmap, PLL_USER_CTL(pll),
+			     config->user_ctl_val);
+
+	if (config->user_ctl_hi_val)
+		regmap_write(regmap, PLL_USER_CTL_U(pll),
+			     config->user_ctl_hi_val);
+
+	if (config->user_ctl_hi1_val)
+		regmap_write(regmap, PLL_USER_CTL_U1(pll),
+			     config->user_ctl_hi1_val);
+
+	if (config->test_ctl_val)
+		regmap_write(regmap, PLL_TEST_CTL(pll),
+			     config->test_ctl_val);
+
+	if (config->test_ctl_hi_val)
+		regmap_write(regmap, PLL_TEST_CTL_U(pll),
+			     config->test_ctl_hi_val);
+
+	if (config->test_ctl_hi1_val)
+		regmap_write(regmap, PLL_TEST_CTL_U1(pll),
+			     config->test_ctl_hi1_val);
+
+	regmap_update_bits(regmap, PLL_MODE(pll), PLL_UPDATE_BYPASS,
+			   PLL_UPDATE_BYPASS);
+
+	/* Disable PLL output */
+	regmap_update_bits(regmap, PLL_MODE(pll),  PLL_OUTCTRL, 0);
+
+	/* Set operation mode to OFF */
+	regmap_write(regmap, PLL_OPMODE(pll), PLL_STANDBY);
+
+	/* PLL should be in OFF mode before continuing */
+	wmb();
+
+	/* Place the PLL in STANDBY mode */
+	regmap_update_bits(regmap, PLL_MODE(pll), PLL_RESET_N, PLL_RESET_N);
+}
+EXPORT_SYMBOL_GPL(clk_lucid_pll_configure);
+
+/*
+ * The Lucid PLL requires a power-on self-calibration which happens when the
+ * PLL comes out of reset. Calibrate in case it is not completed.
+ */
+static int alpha_pll_lucid_prepare(struct clk_hw *hw)
+{
+	struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
+	u32 regval;
+	int ret;
+
+	/* Return early if calibration is not needed. */
+	regmap_read(pll->clkr.regmap, PLL_STATUS(pll), &regval);
+	if (regval & LUCID_PCAL_DONE)
+		return 0;
+
+	ret = clk_trion_pll_enable(hw);
+	if (ret)
+		return ret;
+
+	clk_trion_pll_disable(hw);
+
+	return 0;
+}
+
+static int alpha_pll_lucid_set_rate(struct clk_hw *hw, unsigned long rate,
+				    unsigned long prate)
+{
+	struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
+	unsigned long rrate;
+	u32 regval, l, alpha_width = pll_alpha_width(pll);
+	u64 a;
+	int ret;
+
+	rrate = alpha_pll_round_rate(rate, prate, &l, &a, alpha_width);
+
+	/*
+	 * Due to a limited number of bits for fractional rate programming, the
+	 * rounded up rate could be marginally higher than the requested rate.
+	 */
+	if (rrate > (rate + PLL_RATE_MARGIN) || rrate < rate) {
+		pr_err("Call set rate on the PLL with rounded rates!\n");
+		return -EINVAL;
+	}
+
+	regmap_write(pll->clkr.regmap, PLL_L_VAL(pll), l);
+	regmap_write(pll->clkr.regmap, PLL_ALPHA_VAL(pll), a);
+
+	/* Latch the PLL input */
+	ret = regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll),
+				 PLL_UPDATE, PLL_UPDATE);
+	if (ret)
+		return ret;
+
+	/* Wait for 2 reference cycles before checking the ACK bit. */
+	udelay(1);
+	regmap_read(pll->clkr.regmap, PLL_MODE(pll), &regval);
+	if (!(regval & ALPHA_PLL_ACK_LATCH)) {
+		WARN(1, "PLL latch failed. Output may be unstable!\n");
+		return -EINVAL;
+	}
+
+	/* Return the latch input to 0 */
+	ret = regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll),
+				 PLL_UPDATE, 0);
+	if (ret)
+		return ret;
+
+	if (clk_hw_is_enabled(hw)) {
+		ret = wait_for_pll_enable_lock(pll);
+		if (ret)
+			return ret;
+	}
+
+	/* Wait for PLL output to stabilize */
+	udelay(100);
+	return 0;
+}
+
+const struct clk_ops clk_alpha_pll_lucid_ops = {
+	.prepare = alpha_pll_lucid_prepare,
+	.enable = clk_trion_pll_enable,
+	.disable = clk_trion_pll_disable,
+	.is_enabled = clk_trion_pll_is_enabled,
+	.recalc_rate = clk_trion_pll_recalc_rate,
+	.round_rate = clk_alpha_pll_round_rate,
+	.set_rate = alpha_pll_lucid_set_rate,
+};
+EXPORT_SYMBOL_GPL(clk_alpha_pll_lucid_ops);
+
+const struct clk_ops clk_alpha_pll_fixed_lucid_ops = {
+	.enable = clk_trion_pll_enable,
+	.disable = clk_trion_pll_disable,
+	.is_enabled = clk_trion_pll_is_enabled,
+	.recalc_rate = clk_trion_pll_recalc_rate,
+	.round_rate = clk_alpha_pll_round_rate,
+};
+EXPORT_SYMBOL_GPL(clk_alpha_pll_fixed_lucid_ops);
+
+const struct clk_ops clk_alpha_pll_postdiv_lucid_ops = {
+	.recalc_rate = clk_alpha_pll_postdiv_fabia_recalc_rate,
+	.round_rate = clk_alpha_pll_postdiv_fabia_round_rate,
+	.set_rate = clk_alpha_pll_postdiv_fabia_set_rate,
+};
+EXPORT_SYMBOL_GPL(clk_alpha_pll_postdiv_lucid_ops);
diff --git a/drivers/clk/qcom/clk-alpha-pll.h b/drivers/clk/qcom/clk-alpha-pll.h
index fbc1f67..704674a 100644
--- a/drivers/clk/qcom/clk-alpha-pll.h
+++ b/drivers/clk/qcom/clk-alpha-pll.h
@@ -14,6 +14,7 @@ enum {
 	CLK_ALPHA_PLL_TYPE_BRAMMO,
 	CLK_ALPHA_PLL_TYPE_FABIA,
 	CLK_ALPHA_PLL_TYPE_TRION,
+	CLK_ALPHA_PLL_TYPE_LUCID,
 	CLK_ALPHA_PLL_TYPE_MAX,
 };
 
@@ -30,6 +31,7 @@ enum {
 	PLL_OFF_CONFIG_CTL_U1,
 	PLL_OFF_TEST_CTL,
 	PLL_OFF_TEST_CTL_U,
+	PLL_OFF_TEST_CTL_U1,
 	PLL_OFF_STATUS,
 	PLL_OFF_OPMODE,
 	PLL_OFF_FRAC,
@@ -94,10 +96,13 @@ struct alpha_pll_config {
 	u32 alpha_hi;
 	u32 config_ctl_val;
 	u32 config_ctl_hi_val;
+	u32 config_ctl_hi1_val;
 	u32 user_ctl_val;
 	u32 user_ctl_hi_val;
+	u32 user_ctl_hi1_val;
 	u32 test_ctl_val;
 	u32 test_ctl_hi_val;
+	u32 test_ctl_hi1_val;
 	u32 main_output_mask;
 	u32 aux_output_mask;
 	u32 aux2_output_mask;
@@ -123,10 +128,17 @@ struct alpha_pll_config {
 extern const struct clk_ops clk_alpha_pll_fixed_fabia_ops;
 extern const struct clk_ops clk_alpha_pll_postdiv_fabia_ops;
 
+extern const struct clk_ops clk_alpha_pll_lucid_ops;
+extern const struct clk_ops clk_alpha_pll_fixed_lucid_ops;
+extern const struct clk_ops clk_alpha_pll_postdiv_lucid_ops;
+
 void clk_alpha_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
 			     const struct alpha_pll_config *config);
 void clk_fabia_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
 				const struct alpha_pll_config *config);
+void clk_lucid_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
+			     const struct alpha_pll_config *config);
+
 extern const struct clk_ops clk_trion_fixed_pll_ops;
 extern const struct clk_ops clk_trion_pll_postdiv_ops;
 
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
