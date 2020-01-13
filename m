Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC1B139D8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 00:42:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=I15WIajFubooxSy4J6HhsLLsXU/PY1veyG5K2bkmAY8=; b=TBP
	hwBQf80Rxp4qbznu3ocN0wWf0H/qjX3Y5ixTGZa/GgPNAgj3BFLcbLXrew3lL2RgFrN0rD1PmX9l7
	Yt5mGWX/byQbNsB33zsQYzQZ5wlxbsLDJRmksiOFiswVwLRjZaAtMxONVZHs+jwIJ/t5q97GwF2bd
	r8wBrKMrV0oM6bQb2Ve45kJt3YvToV8HyMCNCI9w2rahHFUEPO/3MXl5Tv7qBOhWQo8KOO6XKfeAw
	wgTo26pdnXIGcJFNGHlAMtn6hroBVPyoqn2ZD+0HfTuuCiDXxt6bg3KyLI7g0u8qm67MZoBBbSy9G
	AAGgtZIlhoffHviduZ1Xo+WLE8hU6Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir9M4-0004r7-2h; Mon, 13 Jan 2020 23:42:44 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir9Lt-0004qp-34
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 23:42:34 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4F86C20017E;
 Tue, 14 Jan 2020 00:42:31 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3D0FB200055;
 Tue, 14 Jan 2020 00:42:31 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 9CBD220563;
 Tue, 14 Jan 2020 00:42:30 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH] clk: imx: Fix imx8m_clk_hw_composite_core flags
Date: Tue, 14 Jan 2020 01:42:26 +0200
Message-Id: <7d118c8ad52e87a7cadb438097fcdfbeeb822dd7.1578958643.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_154233_273249_F6DCDBD5 
X-CRM114-Status: UNSURE (   8.12  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Marco Felsch <m.felsch@pengutronix.de>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Just like other imx8m composites the "core" slice needs the
CLK_SET_RATE_NO_REPARENT and CLK_OPS_PARENT_ENABLE flags. It is not
clear why they were omitted.

In particular without the CLK_OPS_PARENT_ENABLE flag the system can hang
when attempting to disable a clock whose parent is disabled. This
current happens for arm_m4_div on imx8mm-evk, breaking boot.

Fixes: 5fcdb45497a0 ("clk: imx: composite-8m: add imx8m_clk_hw_composite_core")

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

---
Since this is a very recent breakage (just next-20200113) the fix should
probably be squashed.

 drivers/clk/imx/clk.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index cd2a60c10a71..17a66a4290fb 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -487,11 +487,11 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 					    unsigned long flags);
 
 #define imx8m_clk_hw_composite_core(name, parent_names, reg)	\
 	imx8m_clk_hw_composite_flags(name, parent_names, \
 			ARRAY_SIZE(parent_names), reg, \
-			IMX_COMPOSITE_CORE, 0)
+			IMX_COMPOSITE_CORE, CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE)
 
 #define imx8m_clk_composite_flags(name, parent_names, num_parents, reg, \
 				  flags) \
 	to_clk(imx8m_clk_hw_composite_flags(name, parent_names, \
 				num_parents, reg, 0, flags))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
