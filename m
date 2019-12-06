Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA39114CC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 08:41:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6SiV0ikVuUgy434w7ir3f/1jgQkfrw1rP7iOc2VwyOU=; b=EcGcZfAZAdHj/s
	R0OgJjk2F256/6xTXmg8+Cn3s/2i0Q91U3KtASNdlZXZbg4jQXkLe4XpyQdPAV/+2T1ydjDy7NiGI
	P2ebdxCTRKhc6gw5MuAFDLN5Qe0OswXyJcxTGMQ0jiwMRz6mrRgP0nHdYhlJC1vBpZ3YZyplJYU/v
	cZHdu0BnW0MxhD5tCGh5sqQ4gcPuDVnQ9SGk0dlCsRpUKvgDPAfmlPcVPVpaQrE2+7y4GzNMWSpIy
	8s+hp20o05Iflv1iwk7YEo+wgCpWdOo4fumL8nFkRMCf0+Np4amzvaVWvK7l20ZVq61VF3uDoixIe
	cFr6av0hTOzjTd7VahcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id8FR-00028Q-HM; Fri, 06 Dec 2019 07:41:57 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id8En-0001eX-IQ; Fri, 06 Dec 2019 07:41:19 +0000
Received: from droid15-sz.amlogic.com (10.28.8.25) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10; Fri, 6 Dec 2019
 15:41:36 +0800
From: Jian Hu <jian.hu@amlogic.com>
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
Subject: [PATCH v4 2/6] clk: meson: add support for A1 PLL clock ops
Date: Fri, 6 Dec 2019 15:40:48 +0800
Message-ID: <20191206074052.15557-3-jian.hu@amlogic.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191206074052.15557-1-jian.hu@amlogic.com>
References: <20191206074052.15557-1-jian.hu@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [10.28.8.25]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_234117_629572_9329110B 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 linux-arm-kernel@lists.infradead.org, Qiufang Dai <qiufang.dai@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 Chandle Zou <chandle.zou@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The A1 PLL design is different with previous SoCs. The PLL
internal analog modules Power-on sequence is different
with previous, and thus requires a strict register sequence to
enable the PLL.

Signed-off-by: Jian Hu <jian.hu@amlogic.com>
---
 drivers/clk/meson/clk-pll.c | 21 +++++++++++++++++++++
 drivers/clk/meson/clk-pll.h |  1 +
 drivers/clk/meson/parm.h    |  1 +
 3 files changed, 23 insertions(+)

diff --git a/drivers/clk/meson/clk-pll.c b/drivers/clk/meson/clk-pll.c
index ddb1e5634739..4aff31a51589 100644
--- a/drivers/clk/meson/clk-pll.c
+++ b/drivers/clk/meson/clk-pll.c
@@ -318,6 +318,23 @@ static int meson_clk_pll_enable(struct clk_hw *hw)
 	struct clk_regmap *clk = to_clk_regmap(hw);
 	struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);
 
+	/*
+	 * The A1 design is different with previous SoCs.The PLL
+	 * internal analog modules Power-on sequence is different with
+	 * previous, and thus requires a strict register sequence to
+	 * enable the PLL.
+	 */
+	if (MESON_PARM_APPLICABLE(&pll->current_en)) {
+		/* Enable the pll */
+		meson_parm_write(clk->map, &pll->en, 1);
+		udelay(10);
+		/* Enable the pll self-adaption module current */
+		meson_parm_write(clk->map, &pll->current_en, 1);
+		udelay(40);
+		meson_parm_write(clk->map, &pll->rst, 1);
+		meson_parm_write(clk->map, &pll->rst, 0);
+	}
+
 	/* do nothing if the PLL is already enabled */
 	if (clk_hw_is_enabled(hw))
 		return 0;
@@ -347,6 +364,10 @@ static void meson_clk_pll_disable(struct clk_hw *hw)
 
 	/* Disable the pll */
 	meson_parm_write(clk->map, &pll->en, 0);
+
+	/* Disable PLL internal self-adaption module current */
+	if (MESON_PARM_APPLICABLE(&pll->current_en))
+		meson_parm_write(clk->map, &pll->current_en, 0);
 }
 
 static int meson_clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
diff --git a/drivers/clk/meson/clk-pll.h b/drivers/clk/meson/clk-pll.h
index 367efd0f6410..30f039242a65 100644
--- a/drivers/clk/meson/clk-pll.h
+++ b/drivers/clk/meson/clk-pll.h
@@ -36,6 +36,7 @@ struct meson_clk_pll_data {
 	struct parm frac;
 	struct parm l;
 	struct parm rst;
+	struct parm current_en;
 	const struct reg_sequence *init_regs;
 	unsigned int init_count;
 	const struct pll_params_table *table;
diff --git a/drivers/clk/meson/parm.h b/drivers/clk/meson/parm.h
index 3c9ef1b505ce..c53fb26577e3 100644
--- a/drivers/clk/meson/parm.h
+++ b/drivers/clk/meson/parm.h
@@ -20,6 +20,7 @@
 	(((reg) & CLRPMASK(width, shift)) | ((val) << (shift)))
 
 #define MESON_PARM_APPLICABLE(p)		(!!((p)->width))
+#define MESON_PARM_CURRENT(p)			(!!((p)->width))
 
 struct parm {
 	u16	reg_off;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
