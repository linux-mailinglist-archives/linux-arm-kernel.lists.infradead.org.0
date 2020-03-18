Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 697FD1893D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 02:46:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SXwFjtIWflvHCsRy/ZtWmR1g2SkQTAKmNdV+86y4eVg=; b=L0N
	cjudw6DfmSFupfWX9XrfLIBKcnDiZ5NYtGB59ogB/PGDqhZKt+VzM2neYprkRrP6Ajhec+nOADxYG
	mfZwVAtNTsRy7pWhowhWS0SSRfWj8/53PCG1p50CUni8/llSQ7evNaFxHDsOzdZ4DUDr3HeTBtsSm
	1aggYV62MfQAFCzV4mWdeDqYhcXg1JN4hTd1Gv0+QkNU5LK9cRT19WLthFiommnBk5tgSJfS5uIVl
	dCmhAFd7zRYEDMQFED0GKs5aR9jeo9ev2EX0J4+eQ9x5LADZ/10jHEe7qeyCVTDN9qOwhdy9+p/76
	vO+HYOM+yJWwJc+QvCiDi3qCyZDYdAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jENmz-0001iQ-Qm; Wed, 18 Mar 2020 01:46:33 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jENms-0001hY-Pk
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 01:46:28 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 290C620038E;
 Wed, 18 Mar 2020 02:46:19 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 872B8200A1E;
 Wed, 18 Mar 2020 02:46:12 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B590D40302;
 Wed, 18 Mar 2020 09:46:04 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 abel.vesa@nxp.com, t-kristo@ti.com, jonas.gorski@gmail.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] clk: imx: clk-sscg-pll: Remove unnecessary blank lines
Date: Wed, 18 Mar 2020 09:39:25 +0800
Message-Id: <1584495566-15110-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_184626_977942_600DB6C1 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove many unnecessary blank lines for cleanup.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clk/imx/clk-sscg-pll.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/clk/imx/clk-sscg-pll.c b/drivers/clk/imx/clk-sscg-pll.c
index d4a2be1..773d8a5 100644
--- a/drivers/clk/imx/clk-sscg-pll.c
+++ b/drivers/clk/imx/clk-sscg-pll.c
@@ -72,7 +72,6 @@ struct clk_sscg_pll_setup {
 	int divr2, divf2;
 	int divq;
 	int bypass;
-
 	uint64_t vco1;
 	uint64_t vco2;
 	uint64_t fout;
@@ -86,11 +85,8 @@ struct clk_sscg_pll_setup {
 struct clk_sscg_pll {
 	struct clk_hw	hw;
 	const struct clk_ops  ops;
-
 	void __iomem *base;
-
 	struct clk_sscg_pll_setup setup;
-
 	u8 parent;
 	u8 bypass1;
 	u8 bypass2;
@@ -194,7 +190,6 @@ static int clk_sscg_pll2_find_setup(struct clk_sscg_pll_setup *setup,
 					struct clk_sscg_pll_setup *temp_setup,
 					uint64_t ref)
 {
-
 	int ret;
 
 	if (ref < PLL_STAGE1_MIN_FREQ || ref > PLL_STAGE1_MAX_FREQ)
@@ -253,7 +248,6 @@ static int clk_sscg_pll1_find_setup(struct clk_sscg_pll_setup *setup,
 					struct clk_sscg_pll_setup *temp_setup,
 					uint64_t ref)
 {
-
 	int ret;
 
 	if (ref < PLL_REF_MIN_FREQ || ref > PLL_REF_MAX_FREQ)
@@ -280,7 +274,6 @@ static int clk_sscg_pll_find_setup(struct clk_sscg_pll_setup *setup,
 	temp_setup.fout_request = rate;
 
 	switch (try_bypass) {
-
 	case PLL_BYPASS2:
 		if (prate == rate) {
 			setup->bypass = PLL_BYPASS2;
@@ -288,11 +281,9 @@ static int clk_sscg_pll_find_setup(struct clk_sscg_pll_setup *setup,
 			ret = 0;
 		}
 		break;
-
 	case PLL_BYPASS1:
 		ret = clk_sscg_pll2_find_setup(setup, &temp_setup, prate);
 		break;
-
 	case PLL_BYPASS_NONE:
 		ret = clk_sscg_pll1_find_setup(setup, &temp_setup, prate);
 		break;
@@ -301,7 +292,6 @@ static int clk_sscg_pll_find_setup(struct clk_sscg_pll_setup *setup,
 	return ret;
 }
 
-
 static int clk_sscg_pll_is_prepared(struct clk_hw *hw)
 {
 	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
