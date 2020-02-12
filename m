Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2D215A891
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 13:03:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJDY2hvB62DcCJbrywQgUNNSFUPbtWdyA288S2h5O5I=; b=SuXS6xz2XEb46h
	c7aJd+QffQjhAzrspyCfuiG1I9Oc29FdOF2aiWNRtwWormZ9gmHdM2BBnh353ZjHaCTRWF9mR83KI
	yqbFpiLUyrjvB29wY9XuwKg9OCjVk6f5aYh/bxWkRa9bRp95705N5EkTll01jF8s18PKqI0SEq1hH
	GXuCXOLi8YKvWUNMh3P0sWzRBtSFhH7ao58Qd+ZNOe9MCB2u0EzBiz9DYJ5lGIa9ysevRQiHZ8GdB
	7Bo9n77BVMmfkxzLJTMMjYiSE/fGJf9NlaXe6Z9jStZTtgC17Pr3MF+CqDSJWe84HpFZxOdR21QEG
	/OrTfGD4De1Eh4J8bz5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qjm-0000NY-BI; Wed, 12 Feb 2020 12:03:26 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qjH-0008Up-Jv
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 12:02:57 +0000
Received: by mail-pj1-x1044.google.com with SMTP id gv17so812358pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 04:02:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+lhmtQt1MVJK9xZ3yWPAuyRhB8dwTQ3KGnqmxzt5Q64=;
 b=Njhl2GcVJc85MuxAsuYnc/S2wze/BWKiMAvdqffntHs1o6/InzecM9NGs5pCU9Rhcu
 1DD11eCLN7L3R4KppLqpxlRSVoJ2h9C1dhYEnO4IQJMpQUCUQyhLNpyzPmOWV6uFEBtH
 KuV320ccttcx1BmuFJAchRLFgwH3MPagNR2QD2fE7b2kWYUOq6SJb6JEnpiEkJL7idDJ
 2ml2WoZE0x3rIyGX/iV8GVFe5g8nBHfszUvjMhrbSczzBDE4NLbnDLNMpSNhC9TtC3y6
 hKWQRG4uvr6GUl9Y5+x8/sOGESLZp8RLziKUcZEuRXclRPYY7mYnRAj9dFFLb6GiYIMg
 CqSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+lhmtQt1MVJK9xZ3yWPAuyRhB8dwTQ3KGnqmxzt5Q64=;
 b=b73gnPIO1OOLTdvY8bRItYztEYQN9FTWVLNnFGUi/7otLaWVuHLPTw74PClPcyIZZ3
 B3NNO9+O7s7RVbLaBYT5RbYu7lFaCqjzJe9HPpfkdK/IZA5XvtMsKQkKkESn2OKniecU
 35wlm5AqqUFSyWAdHcA72OQkNIrcYSAjI0f+TlHTP5hhgv3cMAvdZaVwL4PI3PSIwiao
 jDa5cq74Pw0sSYdRGznq3sidzj2y1OvS4ZqPiYz6otO/uWd1Ata8G+AnNO6cirRi3kyn
 9oKFrPe3HTe7P0v36uSBzOGbSMma8f8q0CjJHt5g6xFtlbQi0Z2PTN90hBpY7MhkYmFX
 QDzQ==
X-Gm-Message-State: APjAAAXwO8avyHAUdP4VjVfg+R0bAPxp5pgTesOMLXzf/xHjXD1i6+xA
 17asHXZ4fZWAXEBEiReliX8=
X-Google-Smtp-Source: APXvYqz3C0yH5yZi/l7Q3ooh8TD32j/hTW5czgjHDD02KEGHyP31uaTXQZ7QFwE6beVDPezR+R95WQ==
X-Received: by 2002:a17:902:8a91:: with SMTP id
 p17mr7548772plo.75.1581508974861; 
 Wed, 12 Feb 2020 04:02:54 -0800 (PST)
Received: from localhost.localdomain ([45.114.62.33])
 by smtp.gmail.com with ESMTPSA id b24sm682448pfo.84.2020.02.12.04.02.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 04:02:53 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCHv1 2/2] clk: samsung: exynos542x: Move FSYS2 subsystem clocks
 to its sub-CMU
Date: Wed, 12 Feb 2020 12:02:37 +0000
Message-Id: <20200212120237.1332-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200212120237.1332-1-linux.amoon@gmail.com>
References: <20200212120237.1332-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_040255_722828_1F927773 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stephen Boyd <sboyd@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move FSYS2 clk setting to sub-CMU block to support power domain on/off
sequences for mmc driver.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Note: This patch might be missing some more setting
as suspend/resume feature is broken.
I could not resolve this issue at my end, any input or
suggetion to improve this code.
---
 drivers/clk/samsung/clk-exynos5420.c | 24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index c9e5a1fb6653..3597e8d62445 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -1035,9 +1035,6 @@ static const struct samsung_gate_clock exynos5x_gate_clks[] __initconst = {
 	GATE(CLK_PDMA1, "pdma1", "aclk200_fsys", GATE_BUS_FSYS0, 2, 0, 0),
 	GATE(CLK_UFS, "ufs", "aclk200_fsys2", GATE_BUS_FSYS0, 3, 0, 0),
 	GATE(CLK_RTIC, "rtic", "aclk200_fsys", GATE_IP_FSYS, 9, 0, 0),
-	GATE(CLK_MMC0, "mmc0", "aclk200_fsys2", GATE_IP_FSYS, 12, 0, 0),
-	GATE(CLK_MMC1, "mmc1", "aclk200_fsys2", GATE_IP_FSYS, 13, 0, 0),
-	GATE(CLK_MMC2, "mmc2", "aclk200_fsys2", GATE_IP_FSYS, 14, 0, 0),
 	GATE(CLK_SROMC, "sromc", "aclk200_fsys2",
 			GATE_IP_FSYS, 17, CLK_IGNORE_UNUSED, 0),
 	GATE(CLK_USBH20, "usbh20", "aclk200_fsys", GATE_IP_FSYS, 18, 0, 0),
@@ -1258,6 +1255,17 @@ static struct exynos5_subcmu_reg_dump exynos5x_gsc_suspend_regs[] = {
 	{ DIV2_RATIO0, 0, 0x30 },	/* DIV dout_gscl_blk_300 */
 };
 
+static const struct samsung_gate_clock exynos5x_fsys2_gate_clks[] __initconst = {
+	GATE(CLK_MMC0, "mmc0", "aclk200_fsys2", GATE_IP_FSYS, 12, 0, 0),
+	GATE(CLK_MMC1, "mmc1", "aclk200_fsys2", GATE_IP_FSYS, 13, 0, 0),
+	GATE(CLK_MMC2, "mmc2", "aclk200_fsys2", GATE_IP_FSYS, 14, 0, 0),
+};
+
+static struct exynos5_subcmu_reg_dump exynos5x_fsys2_suspend_regs[] = {
+	{ GATE_IP_FSYS, 0xff, 0xff },   /* FSYS gates */
+	{ SRC_TOP3, 0, BIT(12) },       /* MUX_ACLK_200_FSYS2_SEL */
+};
+
 static const struct samsung_gate_clock exynos5x_g3d_gate_clks[] __initconst = {
 	GATE(CLK_G3D, "g3d", "mout_user_aclk_g3d", GATE_IP_G3D, 9,
 	     CLK_SET_RATE_PARENT, 0),
@@ -1376,12 +1384,21 @@ static const struct exynos5_subcmu_info exynos5800_mau_subcmu = {
 	.pd_name	= "MAU",
 };
 
+static const struct exynos5_subcmu_info exynos5x_fsys2_subcmu = {
+	.gate_clks	= exynos5x_fsys2_gate_clks,
+	.nr_gate_clks	= ARRAY_SIZE(exynos5x_fsys2_gate_clks),
+	.suspend_regs	= exynos5x_fsys2_suspend_regs,
+	.nr_suspend_regs = ARRAY_SIZE(exynos5x_fsys2_suspend_regs),
+	.pd_name	= "FSYS2",
+};
+
 static const struct exynos5_subcmu_info *exynos5x_subcmus[] = {
 	&exynos5x_disp_subcmu,
 	&exynos5x_gsc_subcmu,
 	&exynos5x_g3d_subcmu,
 	&exynos5x_mfc_subcmu,
 	&exynos5x_mscl_subcmu,
+	&exynos5x_fsys2_subcmu,
 };
 
 static const struct exynos5_subcmu_info *exynos5800_subcmus[] = {
@@ -1391,6 +1408,7 @@ static const struct exynos5_subcmu_info *exynos5800_subcmus[] = {
 	&exynos5x_mfc_subcmu,
 	&exynos5x_mscl_subcmu,
 	&exynos5800_mau_subcmu,
+	&exynos5x_fsys2_subcmu,
 };
 
 static const struct samsung_pll_rate_table exynos5420_pll2550x_24mhz_tbl[] __initconst = {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
