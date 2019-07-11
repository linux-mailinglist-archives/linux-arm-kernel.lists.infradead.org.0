Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C42AC65A27
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hAlqDqjnpFLUUWcAL+v0VJx75EgqH4voRvYrFAlUFvw=; b=dsv
	5dQtrNtf7n/DReo4URqLweGXF3DV6ajjkawgdFMqiRc5zxPsuTNZRZf+3ZtiRqYzaYZteLGjbAltO
	u1B0NlFbsXdGoJqeZswwO3cH2Xnz//U5L2t+EqVtpAxH58x3nMJ6m/C6hJau2lbAwB3IXZCUz+QNr
	+3uFDP3npVmwuSfqtOdzyFcea3+Eu97MX845Yz5AIvwA82P2KtrSAIaAXUmbQJ6c4XJhKTgbeWtR5
	rM+VFVhuh88tfax6IqVHjAXRIfG3ZlDUY84i0UQdE9AqaO0PryA+fCM0BmA4jOgcqmYn6hKlkMp1T
	HlNHflAgdc9/RdK5a6ObjLt/tJvVwTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlakB-0000gU-O6; Thu, 11 Jul 2019 15:12:23 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlajz-0000g9-AD
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 15:12:13 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 237121A09EA;
 Thu, 11 Jul 2019 17:12:09 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 167A21A00DD;
 Thu, 11 Jul 2019 17:12:09 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 8B39D205E4;
 Thu, 11 Jul 2019 17:12:08 +0200 (CEST)
From: Abel Vesa <abel.vesa@nxp.com>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] clk: imx: Remove unused clk based API
Date: Thu, 11 Jul 2019 18:11:50 +0300
Message-Id: <1562857910-29501-1-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_081211_636629_D32DD712 
X-CRM114-Status: UNSURE (   6.22  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the i.MX6 and i.MX7 clock drivers have been switched to clk_hw based,
we can remove the clk based API that is not used by any i.MX clock driver.

The following APIs are going away now:
- imx_clk_busy_divider
- imx_clk_busy_mux
- imx_clk_fixup_divider
- imx_clk_fixup_mux
- imx_clk_mux_ldb
- imx_clk_gate_dis_flags
- imx_clk_gate_flags

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk.h | 24 ------------------------
 1 file changed, 24 deletions(-)

diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index d94d9cb..592eca1 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -50,12 +50,6 @@ struct imx_pll14xx_clk {
 	int flags;
 };
 
-#define imx_clk_busy_divider(name, parent_name, reg, shift, width, busy_reg, busy_shift) \
-	imx_clk_hw_busy_divider(name, parent_name, reg, shift, width, busy_reg, busy_shift)->clk
-
-#define imx_clk_busy_mux(name, reg, shift, width, busy_reg, busy_shift, parent_names, num_parents) \
-	imx_clk_hw_busy_mux(name, reg, shift, width, busy_reg, busy_shift, parent_names, num_parents)->clk
-
 #define imx_clk_cpu(name, parent_name, div, mux, pll, step) \
 	imx_clk_hw_cpu(name, parent_name, div, mux, pll, step)->clk
 
@@ -73,15 +67,6 @@ struct imx_pll14xx_clk {
 #define imx_clk_gate_exclusive(name, parent, reg, shift, exclusive_mask) \
 	imx_clk_hw_gate_exclusive(name, parent, reg, shift, exclusive_mask)->clk
 
-#define imx_clk_fixup_divider(name, parent, reg, shift, width, fixup) \
-	imx_clk_hw_fixup_divider(name, parent, reg, shift, width, fixup)->clk
-
-#define imx_clk_fixup_mux(name, reg, shift, width, parents, num_parents, fixup) \
-	imx_clk_hw_fixup_mux(name, reg, shift, width, parents, num_parents, fixup)->clk
-
-#define imx_clk_mux_ldb(name, reg, shift, width, parents, num_parents) \
-	imx_clk_hw_mux_ldb(name, reg, shift, width, parents, num_parents)->clk
-
 #define imx_clk_fixed_factor(name, parent, mult, div) \
 	imx_clk_hw_fixed_factor(name, parent, mult, div)->clk
 
@@ -91,21 +76,12 @@ struct imx_pll14xx_clk {
 #define imx_clk_gate_dis(name, parent, reg, shift) \
 	imx_clk_hw_gate_dis(name, parent, reg, shift)->clk
 
-#define imx_clk_gate_dis_flags(name, parent, reg, shift, flags) \
-	imx_clk_hw_gate_dis_flags(name, parent, reg, shift, flags)->clk
-
-#define imx_clk_gate_flags(name, parent, reg, shift, flags) \
-	imx_clk_hw_gate_flags(name, parent, reg, shift, flags)->clk
-
 #define imx_clk_gate2(name, parent, reg, shift) \
 	imx_clk_hw_gate2(name, parent, reg, shift)->clk
 
 #define imx_clk_gate2_flags(name, parent, reg, shift, flags) \
 	imx_clk_hw_gate2_flags(name, parent, reg, shift, flags)->clk
 
-#define imx_clk_gate2_shared(name, parent, reg, shift, share_count) \
-	imx_clk_hw_gate2_shared(name, parent, reg, shift, share_count)->clk
-
 #define imx_clk_gate2_shared2(name, parent, reg, shift, share_count) \
 	imx_clk_hw_gate2_shared2(name, parent, reg, shift, share_count)->clk
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
