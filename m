Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD44C11A6FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:27:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QwBNOwEIO4EY3r9z4UN2/Dw1b9aJWV+id82yjOFiJ90=; b=XMASRMeNwA2gN2d5vLuCt4ItUW
	k1chpzOnIFHhXPSG62MrdwYR8fGc8MSwuJmInS4z2k4rZODiXDjN5UwXwOtZZcpf/JPMy8DTIm7mP
	ts8kIlg6yjU43b0Yq9DuEeeDZ8ddUm/asKgY0PfRZ/FzZBju0uhw2zHShh1AyHhAPgzBU30B7vAzI
	44tTdLnnR7Vknz1PtbGwgY/CrgYCEab02HsTQdyTru3Iuhb+85RhhTMj01WbzF+0fTPKJXjQ9I5ck
	1cGQztlVENL4wDhEf5Y5hKS3YulFugoZOSC9aSXUr4IP1FMUJp+wdKoajYM1xQ9hbvNZ+l14Kh+O/
	58xfeUkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyGq-0007n6-DL; Wed, 11 Dec 2019 09:27:00 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyFz-0007Dv-2L
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:26:09 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CA4A220098F;
 Wed, 11 Dec 2019 10:26:03 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BD87F20026A;
 Wed, 11 Dec 2019 10:26:03 +0100 (CET)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 46FF620568;
 Wed, 11 Dec 2019 10:26:03 +0100 (CET)
From: Abel Vesa <abel.vesa@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [RESEND v2 03/11] clk: imx: Replace all the clk based helpers with
 macros
Date: Wed, 11 Dec 2019 11:25:42 +0200
Message-Id: <1576056350-20715-4-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576056350-20715-1-git-send-email-abel.vesa@nxp.com>
References: <1576056350-20715-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_012607_381444_831D4035 
X-CRM114-Status: UNSURE (   9.25  )
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

Replacing with macros all the clk based API helpers we reduce the code
duplication. The end goal is to get rid of all these macros when there
will be no more users of the clk based API, that is, when all the i.MX
clock provider drivers will be switched completely to the clk_hw based
API.

This is another step in moving away from the non clk_hw based API usage
throughout the i.MX clock drivers. The reason for doing that is to
have a clear split between the clock provider and the clock consumer API.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk.h | 39 ++++++++++++---------------------------
 1 file changed, 12 insertions(+), 27 deletions(-)

diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 4770a03..62b7c14 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -71,12 +71,24 @@ extern struct imx_pll14xx_clk imx_1443x_dram_pll;
 #define imx_clk_gate_exclusive(name, parent, reg, shift, exclusive_mask) \
 	to_clk(imx_clk_hw_gate_exclusive(name, parent, reg, shift, exclusive_mask))
 
+#define imx_clk_fixed(name, rate) \
+	to_clk(imx_clk_hw_fixed(name, rate))
+
 #define imx_clk_fixed_factor(name, parent, mult, div) \
 	to_clk(imx_clk_hw_fixed_factor(name, parent, mult, div))
 
+#define imx_clk_divider(name, parent, reg, shift, width) \
+	to_clk(imx_clk_hw_divider(name, parent, reg, shift, width))
+
 #define imx_clk_divider2(name, parent, reg, shift, width) \
 	to_clk(imx_clk_hw_divider2(name, parent, reg, shift, width))
 
+#define imx_clk_divider_flags(name, parent, reg, shift, width, flags) \
+	to_clk(imx_clk_hw_divider_flags(name, parent, reg, shift, width, flags))
+
+#define imx_clk_gate(name, parent, reg, shift) \
+	to_clk(imx_clk_hw_gate(name, parent, reg, shift))
+
 #define imx_clk_gate_dis(name, parent, reg, shift) \
 	to_clk(imx_clk_hw_gate_dis(name, parent, reg, shift))
 
@@ -206,11 +218,6 @@ static inline struct clk *to_clk(struct clk_hw *hw)
 	return hw->clk;
 }
 
-static inline struct clk *imx_clk_fixed(const char *name, int rate)
-{
-	return clk_register_fixed_rate(NULL, name, NULL, 0, rate);
-}
-
 static inline struct clk_hw *imx_clk_hw_fixed(const char *name, int rate)
 {
 	return clk_hw_register_fixed_rate(NULL, name, NULL, 0, rate);
@@ -232,13 +239,6 @@ static inline struct clk_hw *imx_clk_hw_fixed_factor(const char *name,
 			CLK_SET_RATE_PARENT, mult, div);
 }
 
-static inline struct clk *imx_clk_divider(const char *name, const char *parent,
-		void __iomem *reg, u8 shift, u8 width)
-{
-	return clk_register_divider(NULL, name, parent, CLK_SET_RATE_PARENT,
-			reg, shift, width, 0, &imx_ccm_lock);
-}
-
 static inline struct clk_hw *imx_clk_hw_divider(const char *name,
 						const char *parent,
 						void __iomem *reg, u8 shift,
@@ -248,14 +248,6 @@ static inline struct clk_hw *imx_clk_hw_divider(const char *name,
 				       reg, shift, width, 0, &imx_ccm_lock);
 }
 
-static inline struct clk *imx_clk_divider_flags(const char *name,
-		const char *parent, void __iomem *reg, u8 shift, u8 width,
-		unsigned long flags)
-{
-	return clk_register_divider(NULL, name, parent, flags,
-			reg, shift, width, 0, &imx_ccm_lock);
-}
-
 static inline struct clk_hw *imx_clk_hw_divider_flags(const char *name,
 						   const char *parent,
 						   void __iomem *reg, u8 shift,
@@ -282,13 +274,6 @@ static inline struct clk *imx_clk_divider2_flags(const char *name,
 			reg, shift, width, 0, &imx_ccm_lock);
 }
 
-static inline struct clk *imx_clk_gate(const char *name, const char *parent,
-		void __iomem *reg, u8 shift)
-{
-	return clk_register_gate(NULL, name, parent, CLK_SET_RATE_PARENT, reg,
-			shift, 0, &imx_ccm_lock);
-}
-
 static inline struct clk_hw *imx_clk_hw_gate_flags(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, unsigned long flags)
 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
