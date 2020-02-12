Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F2815A443
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 10:08:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=p2l6+2PlXLTHvMave25T441v4MTPki6CdYXWwcudI/M=; b=mVb
	w5qCZCa/KWt97W47w+sl42Rz5GEPe+7e7JsIb96JM/xZcORw3Xwd5AcLt5Buxv3FaQ5c5wLHebTWP
	kon4W7+Q66V3oW1phASH+nMObcGn9/PGq8ZYD09Ma93i9TVPefI59H/LSWF1srijhb1/jh6DfDas+
	EQ2Um2FcBUMLVbGxcLPq0qGGfGJGaJM23zPI4YqF/6Tb/Z7DlDYaVbotnEnbhkXmpYvWjBzyHjXgZ
	7lFV7siHBHb35eMMgKqSX+LaKtIG1kUtJQwjw4onBy0ibLwD5nIL/qSkay5TbfLoUbJ2bpny0Pe6q
	H7KF4VNUpohtowGtcKD6SvehGo7aoJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1o0o-0001A8-6a; Wed, 12 Feb 2020 09:08:50 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1o0g-00019p-OV
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 09:08:44 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 690011A3CE4;
 Wed, 12 Feb 2020 10:08:40 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 696F91A09E5;
 Wed, 12 Feb 2020 10:08:31 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id AC410402A9;
 Wed, 12 Feb 2020 17:08:20 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 abel.vesa@nxp.com, peng.fan@nxp.com, broonie@kernel.org,
 tglx@linutronix.de, allison@lohutok.net, gregkh@linuxfoundation.org,
 rfontana@redhat.com, info@metux.net, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] clk: imx: drop redundant initialization
Date: Wed, 12 Feb 2020 17:03:00 +0800
Message-Id: <1581498180-2652-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_010842_938123_C6E8D6C3 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No need to initialize flags as 0, remove the initialization.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clk/imx/clk-composite-8m.c | 2 +-
 drivers/clk/imx/clk-fixup-div.c    | 2 +-
 drivers/clk/imx/clk-fixup-mux.c    | 2 +-
 drivers/clk/imx/clk-gate2.c        | 6 +++---
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index 20f7c91..a35407b 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -91,7 +91,7 @@ static int imx8m_clk_composite_divider_set_rate(struct clk_hw *hw,
 					unsigned long parent_rate)
 {
 	struct clk_divider *divider = to_clk_divider(hw);
-	unsigned long flags = 0;
+	unsigned long flags;
 	int prediv_value;
 	int div_value;
 	int ret;
diff --git a/drivers/clk/imx/clk-fixup-div.c b/drivers/clk/imx/clk-fixup-div.c
index 4b17b91..100ca82 100644
--- a/drivers/clk/imx/clk-fixup-div.c
+++ b/drivers/clk/imx/clk-fixup-div.c
@@ -55,7 +55,7 @@ static int clk_fixup_div_set_rate(struct clk_hw *hw, unsigned long rate,
 	struct clk_fixup_div *fixup_div = to_clk_fixup_div(hw);
 	struct clk_divider *div = to_clk_divider(hw);
 	unsigned int divider, value;
-	unsigned long flags = 0;
+	unsigned long flags;
 	u32 val;
 
 	divider = parent_rate / rate;
diff --git a/drivers/clk/imx/clk-fixup-mux.c b/drivers/clk/imx/clk-fixup-mux.c
index b569d91..58a6763 100644
--- a/drivers/clk/imx/clk-fixup-mux.c
+++ b/drivers/clk/imx/clk-fixup-mux.c
@@ -42,7 +42,7 @@ static int clk_fixup_mux_set_parent(struct clk_hw *hw, u8 index)
 {
 	struct clk_fixup_mux *fixup_mux = to_clk_fixup_mux(hw);
 	struct clk_mux *mux = to_clk_mux(hw);
-	unsigned long flags = 0;
+	unsigned long flags;
 	u32 val;
 
 	spin_lock_irqsave(mux->lock, flags);
diff --git a/drivers/clk/imx/clk-gate2.c b/drivers/clk/imx/clk-gate2.c
index 7d44ce8..72a7698 100644
--- a/drivers/clk/imx/clk-gate2.c
+++ b/drivers/clk/imx/clk-gate2.c
@@ -40,7 +40,7 @@ static int clk_gate2_enable(struct clk_hw *hw)
 {
 	struct clk_gate2 *gate = to_clk_gate2(hw);
 	u32 reg;
-	unsigned long flags = 0;
+	unsigned long flags;
 
 	spin_lock_irqsave(gate->lock, flags);
 
@@ -62,7 +62,7 @@ static void clk_gate2_disable(struct clk_hw *hw)
 {
 	struct clk_gate2 *gate = to_clk_gate2(hw);
 	u32 reg;
-	unsigned long flags = 0;
+	unsigned long flags;
 
 	spin_lock_irqsave(gate->lock, flags);
 
@@ -101,7 +101,7 @@ static int clk_gate2_is_enabled(struct clk_hw *hw)
 static void clk_gate2_disable_unused(struct clk_hw *hw)
 {
 	struct clk_gate2 *gate = to_clk_gate2(hw);
-	unsigned long flags = 0;
+	unsigned long flags;
 	u32 reg;
 
 	spin_lock_irqsave(gate->lock, flags);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
