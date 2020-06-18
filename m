Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0A91FDC7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:20:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TWt+k+34vktGoAlnb22LGJLNEqrYmoaLJrX20zNZm3c=; b=Xay9LyxGUek/wR
	N6kxqx0GgyXOmTbN0vCAR/yNjo2IQQx0e4p8uzEC++2V6SeCycy8PTIxAcklyCUQnHzhu8nF/QRxb
	4p/MUnnv8hgdUCmtxGFm6E8xSxEziORaHmOhixW11+enbiOzhfTwSXF0Ivo8YBAOHGT4rC1CDVL9x
	x4o+HV32ePKyWtV656iO50vssP2CpOS7Wx1VVCxc9aQnRCcivWJE6Y0Y10UoTAaO8PaI5C5Iv7G7l
	yBjzEJg3E0QK5IYJyoBA8xrtuH+HVlICvTqXhW2BwFrG/aLl7Kr/Wx1T9DtYxVoAZiZArw23vcuXc
	hVU0pwwFNOVg4neFBpKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljDj-0001TM-Dr; Thu, 18 Jun 2020 01:19:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj5T-0001CK-5Q; Thu, 18 Jun 2020 01:11:29 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06D0321D7B;
 Thu, 18 Jun 2020 01:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442685;
 bh=ugz/FRCBTs2WMkvKZaWcLiNIAiqR8i+sTXBhORd1pbQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bDJfJdRZfM1lgezqVWMsRWAQlQW+Fnn+fQT60acegepX6IM3LyzzkWarjnnGsSSDR
 4YXYYvzmbW52zAnZanlyv/GN2udR44JdE32yKE5s1w7ynmygcidIh/VPBjKG3oJkBJ
 pFDigaTdSox+XnKPW1UgovpeV4bneXzw2RxeFdnI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 152/388] clk: meson: meson8b: Fix the polarity of
 the RESET_N lines
Date: Wed, 17 Jun 2020 21:04:09 -0400
Message-Id: <20200618010805.600873-152-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181127_461289_0EFAEBD1 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

[ Upstream commit 0d3051c790ed2ef6bd91b92b07220313f06b95b3 ]

CLKC_RESET_VID_DIVIDER_CNTL_RESET_N_POST and
CLKC_RESET_VID_DIVIDER_CNTL_RESET_N_PRE are active low. This means:
- asserting them requires setting the register value to 0
- de-asserting them requires setting the register value to 1

Set the register value accordingly for these two reset lines by setting
the inverted the register value compared to all other reset lines.

Fixes: 189621726bc2f6 ("clk: meson: meson8b: register the built-in reset controller")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
Link: https://lore.kernel.org/r/20200417184127.1319871-3-martin.blumenstingl@googlemail.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/meson/meson8b.c | 79 ++++++++++++++++++++++++++-----------
 1 file changed, 56 insertions(+), 23 deletions(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index ac4a883acd2a..ecd78cdca8ce 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -3506,54 +3506,87 @@ static struct clk_regmap *const meson8b_clk_regmaps[] = {
 static const struct meson8b_clk_reset_line {
 	u32 reg;
 	u8 bit_idx;
+	bool active_low;
 } meson8b_clk_reset_bits[] = {
 	[CLKC_RESET_L2_CACHE_SOFT_RESET] = {
-		.reg = HHI_SYS_CPU_CLK_CNTL0, .bit_idx = 30
+		.reg = HHI_SYS_CPU_CLK_CNTL0,
+		.bit_idx = 30,
+		.active_low = false,
 	},
 	[CLKC_RESET_AXI_64_TO_128_BRIDGE_A5_SOFT_RESET] = {
-		.reg = HHI_SYS_CPU_CLK_CNTL0, .bit_idx = 29
+		.reg = HHI_SYS_CPU_CLK_CNTL0,
+		.bit_idx = 29,
+		.active_low = false,
 	},
 	[CLKC_RESET_SCU_SOFT_RESET] = {
-		.reg = HHI_SYS_CPU_CLK_CNTL0, .bit_idx = 28
+		.reg = HHI_SYS_CPU_CLK_CNTL0,
+		.bit_idx = 28,
+		.active_low = false,
 	},
 	[CLKC_RESET_CPU3_SOFT_RESET] = {
-		.reg = HHI_SYS_CPU_CLK_CNTL0, .bit_idx = 27
+		.reg = HHI_SYS_CPU_CLK_CNTL0,
+		.bit_idx = 27,
+		.active_low = false,
 	},
 	[CLKC_RESET_CPU2_SOFT_RESET] = {
-		.reg = HHI_SYS_CPU_CLK_CNTL0, .bit_idx = 26
+		.reg = HHI_SYS_CPU_CLK_CNTL0,
+		.bit_idx = 26,
+		.active_low = false,
 	},
 	[CLKC_RESET_CPU1_SOFT_RESET] = {
-		.reg = HHI_SYS_CPU_CLK_CNTL0, .bit_idx = 25
+		.reg = HHI_SYS_CPU_CLK_CNTL0,
+		.bit_idx = 25,
+		.active_low = false,
 	},
 	[CLKC_RESET_CPU0_SOFT_RESET] = {
-		.reg = HHI_SYS_CPU_CLK_CNTL0, .bit_idx = 24
+		.reg = HHI_SYS_CPU_CLK_CNTL0,
+		.bit_idx = 24,
+		.active_low = false,
 	},
 	[CLKC_RESET_A5_GLOBAL_RESET] = {
-		.reg = HHI_SYS_CPU_CLK_CNTL0, .bit_idx = 18
+		.reg = HHI_SYS_CPU_CLK_CNTL0,
+		.bit_idx = 18,
+		.active_low = false,
 	},
 	[CLKC_RESET_A5_AXI_SOFT_RESET] = {
-		.reg = HHI_SYS_CPU_CLK_CNTL0, .bit_idx = 17
+		.reg = HHI_SYS_CPU_CLK_CNTL0,
+		.bit_idx = 17,
+		.active_low = false,
 	},
 	[CLKC_RESET_A5_ABP_SOFT_RESET] = {
-		.reg = HHI_SYS_CPU_CLK_CNTL0, .bit_idx = 16
+		.reg = HHI_SYS_CPU_CLK_CNTL0,
+		.bit_idx = 16,
+		.active_low = false,
 	},
 	[CLKC_RESET_AXI_64_TO_128_BRIDGE_MMC_SOFT_RESET] = {
-		.reg = HHI_SYS_CPU_CLK_CNTL1, .bit_idx = 30
+		.reg = HHI_SYS_CPU_CLK_CNTL1,
+		.bit_idx = 30,
+		.active_low = false,
 	},
 	[CLKC_RESET_VID_CLK_CNTL_SOFT_RESET] = {
-		.reg = HHI_VID_CLK_CNTL, .bit_idx = 15
+		.reg = HHI_VID_CLK_CNTL,
+		.bit_idx = 15,
+		.active_low = false,
 	},
 	[CLKC_RESET_VID_DIVIDER_CNTL_SOFT_RESET_POST] = {
-		.reg = HHI_VID_DIVIDER_CNTL, .bit_idx = 7
+		.reg = HHI_VID_DIVIDER_CNTL,
+		.bit_idx = 7,
+		.active_low = false,
 	},
 	[CLKC_RESET_VID_DIVIDER_CNTL_SOFT_RESET_PRE] = {
-		.reg = HHI_VID_DIVIDER_CNTL, .bit_idx = 3
+		.reg = HHI_VID_DIVIDER_CNTL,
+		.bit_idx = 3,
+		.active_low = false,
 	},
 	[CLKC_RESET_VID_DIVIDER_CNTL_RESET_N_POST] = {
-		.reg = HHI_VID_DIVIDER_CNTL, .bit_idx = 1
+		.reg = HHI_VID_DIVIDER_CNTL,
+		.bit_idx = 1,
+		.active_low = true,
 	},
 	[CLKC_RESET_VID_DIVIDER_CNTL_RESET_N_PRE] = {
-		.reg = HHI_VID_DIVIDER_CNTL, .bit_idx = 0
+		.reg = HHI_VID_DIVIDER_CNTL,
+		.bit_idx = 0,
+		.active_low = true,
 	},
 };
 
@@ -3562,22 +3595,22 @@ static int meson8b_clk_reset_update(struct reset_controller_dev *rcdev,
 {
 	struct meson8b_clk_reset *meson8b_clk_reset =
 		container_of(rcdev, struct meson8b_clk_reset, reset);
-	unsigned long flags;
 	const struct meson8b_clk_reset_line *reset;
+	unsigned int value = 0;
+	unsigned long flags;
 
 	if (id >= ARRAY_SIZE(meson8b_clk_reset_bits))
 		return -EINVAL;
 
 	reset = &meson8b_clk_reset_bits[id];
 
+	if (assert != reset->active_low)
+		value = BIT(reset->bit_idx);
+
 	spin_lock_irqsave(&meson_clk_lock, flags);
 
-	if (assert)
-		regmap_update_bits(meson8b_clk_reset->regmap, reset->reg,
-				   BIT(reset->bit_idx), BIT(reset->bit_idx));
-	else
-		regmap_update_bits(meson8b_clk_reset->regmap, reset->reg,
-				   BIT(reset->bit_idx), 0);
+	regmap_update_bits(meson8b_clk_reset->regmap, reset->reg,
+			   BIT(reset->bit_idx), value);
 
 	spin_unlock_irqrestore(&meson_clk_lock, flags);
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
