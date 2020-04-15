Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDA21A9586
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ohTmbY+/Xtc3lDSzB7f8H6oPkzgubuy8xPsEODoL0OA=; b=WuSdVnKb0lI/UhoIY+H5PLvRul
	t3CJcKFAJwXbBSudg1j5Q7+nhYQg+/jU3IoCaPHwjaQl0KziJe6AT8k7kSO2xC+wxIbnRi508ZH3k
	U+/k648sxQwbYHVkOwin9woaIrKbwuaBvwdZNmV7TkO3y7XRhM07Flx7WsnAcke3l5P/WkYjYWWbr
	/X0Z9HSs+LE6MsDDv5wgkp/3peLEGD1l2fF5WOwaM2tppAEh9gGzTf9bewEfSa6ymaK9q3qVpxHEZ
	GO5UtQPS/LuNaxvxIDywB7BVT/I31thzVD/IzKAh+U1H4St8XkbhdmHsUqGvNMpO249aiZDYd4tk6
	AhN0Cxhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOd2e-00008z-UP; Wed, 15 Apr 2020 08:05:05 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOd0p-0006Ml-6i
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:03:12 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 073522007C1;
 Wed, 15 Apr 2020 10:03:10 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id EE2DB2007BB;
 Wed, 15 Apr 2020 10:03:09 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 603DF202B0;
 Wed, 15 Apr 2020 10:03:09 +0200 (CEST)
From: Abel Vesa <abel.vesa@nxp.com>
To: Lee Jones <lee.jones@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Stephen Boyd <sboyd@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Anson Huang <anson.huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH v3 07/13] clk: imx: Add helpers for passing the device as
 argument
Date: Wed, 15 Apr 2020 11:02:47 +0300
Message-Id: <1586937773-5836-8-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_010311_374194_74A93CCC 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All the imx clocks that need to be registered by the audiomix need to
pass on the device so that the runtime PM support could work properly.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk.h | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index fcd9952a..b91b1b1 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -319,6 +319,13 @@ static inline struct clk_hw *imx_clk_hw_gate(const char *name, const char *paren
 				    shift, 0, &imx_ccm_lock);
 }
 
+static inline struct clk_hw *imx_dev_clk_hw_gate(struct device *dev, const char *name,
+						const char *parent, void __iomem *reg, u8 shift)
+{
+	return clk_hw_register_gate(dev, name, parent, CLK_SET_RATE_PARENT, reg,
+				    shift, 0, &imx_ccm_lock);
+}
+
 static inline struct clk_hw *imx_clk_hw_gate_dis(const char *name, const char *parent,
 		void __iomem *reg, u8 shift)
 {
@@ -431,6 +438,15 @@ static inline struct clk_hw *imx_clk_hw_mux(const char *name, void __iomem *reg,
 			width, 0, &imx_ccm_lock);
 }
 
+static inline struct clk_hw *imx_dev_clk_hw_mux(struct device *dev,
+			const char *name, void __iomem *reg, u8 shift,
+			u8 width, const char * const *parents, int num_parents)
+{
+	return clk_hw_register_mux(dev, name, parents, num_parents,
+			CLK_SET_RATE_NO_REPARENT | CLK_SET_PARENT_GATE,
+			reg, shift, width, 0, &imx_ccm_lock);
+}
+
 static inline struct clk *imx_clk_mux2(const char *name, void __iomem *reg,
 			u8 shift, u8 width, const char * const *parents,
 			int num_parents)
@@ -493,6 +509,19 @@ static inline struct clk_hw *imx_clk_hw_mux_flags(const char *name,
 				   reg, shift, width, 0, &imx_ccm_lock);
 }
 
+static inline struct clk_hw *imx_dev_clk_hw_mux_flags(struct device *dev,
+						  const char *name,
+						  void __iomem *reg, u8 shift,
+						  u8 width,
+						  const char * const *parents,
+						  int num_parents,
+						  unsigned long flags)
+{
+	return clk_hw_register_mux(dev, name, parents, num_parents,
+				   flags | CLK_SET_RATE_NO_REPARENT,
+				   reg, shift, width, 0, &imx_ccm_lock);
+}
+
 struct clk_hw *imx_clk_hw_cpu(const char *name, const char *parent_name,
 		struct clk *div, struct clk *mux, struct clk *pll,
 		struct clk *step);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
