Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA837D91DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Aacul+/MxUSSv7JG/ka6FSl/H2iovPF/yEz9a0zgpg=; b=cQRPWPd3qd1HPx
	LjmlLH1qRTzL6CBv/s7ltHTheNcPamBpFr+ra45VZcyGCMe1qzFVLv/EVuRQHnP+vg9n6ruVfEGsp
	J0PLkdpOxszbqYbTkxMqHUdB2mSnkcTDI/7jy1RnXwgIZ1APPiDHhf8ZiKkqq/U43C6vHPw6hiD+2
	n0eF4P2AAKG5jtVNl4zZgUDhjift2LxYv7JssB/k83QAb3hMEoP4PlE3idF1oagYGcpqtCGDAkoEX
	xdCXJfCd5xPAXjkBnSv6Kf81SiMWZJBRtaDhbecFXDo1FOmvWUzSze2n4UK6QwXQvkKNVaa6r9OpY
	KQpl0rKPfBDV73BmUjXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKivM-0006c7-71; Wed, 16 Oct 2019 13:01:08 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKitq-0004Fq-Pf
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:59:36 +0000
Received: by mail-wr1-x442.google.com with SMTP id o28so5324534wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 05:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GiGVlT3amUluWFhV5mgXhFbiuGIjTDqdR+S/p6Vc5yg=;
 b=ukiaQEu0d3ygaSoUACTY+wIVVPm7IBS2wB00kP8lhkJhk74+b7bJ2BTiZIrZC9ELBA
 RNhweyb1lXHZt4nOjRkv5PvjPjy8r9sz1PNMGmNTpDOzWU4WAcd0ISSxkLuekjfqrMKh
 P5nGV45Zu9wfwqe8EzP9dt30310E/4CwwI+uFnZiKsn02rJY0jqRii4uiEu5pDJncEdp
 840yGTWt3WOhYT7zdsRLPR6dgJ5UA8XoszW5SII4I1vERdCMvgmtnVHXLF84hSZl6N7q
 jGIkP03QXUErKj1/F+2ZWInIAAT1UFTFTSb2sStlvdr5Q/kbnDFQYkyAxjL40co+mfjD
 CDmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GiGVlT3amUluWFhV5mgXhFbiuGIjTDqdR+S/p6Vc5yg=;
 b=fx0fe6YwRIhZ68nCGsI+8d0PI87Rw8rnW5T0XJGEx0rhMvBR0AFZlIj+LEnlNqhWZn
 OyKgHpyqXThSYvU47sk7b6JvKHSKNZjR37J0iFa08NClrfdLU9vf1JfAuuOFM5VfQ2Xl
 PXD/mcNZ9wuE+i90TghMD3DNk/fDXiD9qV/2G+MZhUeKSGqJhhpE9h3v6M5/OsKjnSTG
 7gAZ5/CGJJiiGnwUplwY2YDv7eyhNf+TdsK8u8qh5yi0BIU0p1cUHoWAocPPCS+iWexM
 GzQbOltkYzXF0t8cI1a/2SzXunHZP68k+oeY0ncSFHtIZ4/bCvyNdV6kqGjeCAabygxU
 yAeg==
X-Gm-Message-State: APjAAAWhQbSbwBEKRnFWlsp6AgiXbd+hUfXGdX5frIju4iLpJ10plIhh
 rI56CpnoBuyqzQ+DdTgpQoU=
X-Google-Smtp-Source: APXvYqzM+KaAZ4Yd5YYXEfe30CDtx86KuAifJcpbaDqwpZCg//FMrO8vwAc6EuUx2CVl0KeshIuJgQ==
X-Received: by 2002:a5d:52c4:: with SMTP id r4mr2499708wrv.168.1571230772563; 
 Wed, 16 Oct 2019 05:59:32 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id z1sm7210859wrn.57.2019.10.16.05.59.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 05:59:31 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 5/5] clk: tegra: Reimplement SOR clocks on Tegra210
Date: Wed, 16 Oct 2019 14:59:19 +0200
Message-Id: <20191016125919.1773898-6-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016125919.1773898-1-thierry.reding@gmail.com>
References: <20191016125919.1773898-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_055934_880335_D4584126 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, Peter De Schrijver <pdeschrijver@nvidia.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

In order to allow the display driver to deal uniformly with all SOR
generations, implement the SOR clocks in a way that is compatible with
Tegra186 and later.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/clk/tegra/clk-tegra210.c         | 71 ++++++++++++++++++------
 include/dt-bindings/clock/tegra210-car.h |  4 +-
 2 files changed, 57 insertions(+), 18 deletions(-)

diff --git a/drivers/clk/tegra/clk-tegra210.c b/drivers/clk/tegra/clk-tegra210.c
index 0f0f14781b43..d55f3da4287a 100644
--- a/drivers/clk/tegra/clk-tegra210.c
+++ b/drivers/clk/tegra/clk-tegra210.c
@@ -33,6 +33,7 @@
 #define CLK_SOURCE_CSITE 0x1d4
 #define CLK_SOURCE_EMC 0x19c
 #define CLK_SOURCE_SOR1 0x410
+#define CLK_SOURCE_SOR0 0x414
 #define CLK_SOURCE_LA 0x1f8
 #define CLK_SOURCE_SDMMC2 0x154
 #define CLK_SOURCE_SDMMC4 0x164
@@ -298,6 +299,7 @@ static DEFINE_SPINLOCK(pll_d_lock);
 static DEFINE_SPINLOCK(pll_e_lock);
 static DEFINE_SPINLOCK(pll_re_lock);
 static DEFINE_SPINLOCK(pll_u_lock);
+static DEFINE_SPINLOCK(sor0_lock);
 static DEFINE_SPINLOCK(sor1_lock);
 static DEFINE_SPINLOCK(emc_lock);
 static DEFINE_MUTEX(lvl2_ovr_lock);
@@ -2551,7 +2553,6 @@ static struct tegra_devclk devclks[] __initdata = {
 	{ .con_id = "pll_c4_out2", .dt_id = TEGRA210_CLK_PLL_C4_OUT2 },
 	{ .con_id = "pll_c4_out3", .dt_id = TEGRA210_CLK_PLL_C4_OUT3 },
 	{ .con_id = "dpaux", .dt_id = TEGRA210_CLK_DPAUX },
-	{ .con_id = "sor0", .dt_id = TEGRA210_CLK_SOR0 },
 };
 
 static struct tegra_audio_clk_info tegra210_audio_plls[] = {
@@ -2915,6 +2916,39 @@ static int tegra210_init_pllu(void)
 	return 0;
 }
 
+/*
+ * The SOR hardware blocks are driven by two clocks: a module clock that is
+ * used to access registers and a pixel clock that is sourced from the same
+ * pixel clock that also drives the head attached to the SOR. The module
+ * clock is typically called sorX (with X being the SOR instance) and the
+ * pixel clock is called sorX_out. The source for the SOR pixel clock is
+ * referred to as the "parent" clock.
+ *
+ * On Tegra186 and newer, clocks are provided by the BPMP. Unfortunately the
+ * BPMP implementation for the SOR clocks doesn't exactly match the above in
+ * some aspects. For example, the SOR module is really clocked by the pad or
+ * sor_safe clocks, but BPMP models the sorX clock as being sourced by the
+ * pixel clocks. Conversely the sorX_out clock is sourced by the sor_safe or
+ * pad clocks on BPMP.
+ *
+ * In order to allow the display driver to deal with all SoC generations in
+ * a unified way, implement the BPMP semantics in this driver.
+ */
+
+static const char * const sor0_parents[] = {
+	"pll_d_out0",
+};
+
+static const char * const sor0_out_parents[] = {
+	"sor_safe", "sor0_pad_clkout",
+};
+
+static const char * const sor1_parents[] = {
+	"pll_p", "pll_d_out0", "pll_d2_out0", "clk_m",
+};
+
+static u32 sor1_parents_idx[] = { 0, 2, 5, 6 };
+
 static const char * const sor1_out_parents[] = {
 	/*
 	 * Bit 0 of the mux selects sor1_pad_clkout, irrespective of bit 1, so
@@ -2923,20 +2957,31 @@ static const char * const sor1_out_parents[] = {
 	 * these bits to 0b11. While not an invalid setting, code should
 	 * always set the bits to 0b01 to select sor1_pad_clkout.
 	 */
-	"sor_safe", "sor1_pad_clkout", "sor1", "sor1_pad_clkout",
-};
-
-static const char * const sor1_parents[] = {
-	"pll_p", "pll_d_out0", "pll_d2_out0", "clk_m",
+	"sor_safe", "sor1_pad_clkout", "sor1_out", "sor1_pad_clkout",
 };
 
-static u32 sor1_parents_idx[] = { 0, 2, 5, 6 };
-
 static struct tegra_periph_init_data tegra210_periph[] = {
+	/*
+	 * On Tegra210, the sor0 clock doesn't have a mux it bitfield 31:29,
+	 * but it is hardwired to the pll_d_out0 clock.
+	 */
+	TEGRA_INIT_DATA_TABLE("sor0", NULL, NULL, sor0_parents,
+			      CLK_SOURCE_SOR0, 29, 0x0, 0, 0, 0, 0,
+			      0, 182, 0, tegra_clk_sor0, NULL, 0,
+			      &sor0_lock),
+	TEGRA_INIT_DATA_TABLE("sor0_out", NULL, NULL, sor0_out_parents,
+			      CLK_SOURCE_SOR0, 14, 0x1, 0, 0, 0, 0,
+			      0, 0, TEGRA_PERIPH_NO_GATE, tegra_clk_sor0_out,
+			      NULL, 0, &sor0_lock),
 	TEGRA_INIT_DATA_TABLE("sor1", NULL, NULL, sor1_parents,
 			      CLK_SOURCE_SOR1, 29, 0x7, 0, 0, 8, 1,
-			      TEGRA_DIVIDER_ROUND_UP, 183, 0, tegra_clk_sor1,
-			      sor1_parents_idx, 0, &sor1_lock),
+			      TEGRA_DIVIDER_ROUND_UP, 183, 0,
+			      tegra_clk_sor1, sor1_parents_idx, 0,
+			      &sor1_lock),
+	TEGRA_INIT_DATA_TABLE("sor1_out", NULL, NULL, sor1_out_parents,
+			      CLK_SOURCE_SOR1, 14, 0x3, 0, 0, 0, 0,
+			      0, 0, TEGRA_PERIPH_NO_GATE,
+			      tegra_clk_sor1_out, NULL, 0, &sor1_lock),
 };
 
 static const char * const la_parents[] = {
@@ -2969,12 +3014,6 @@ static __init void tegra210_periph_clk_init(void __iomem *clk_base,
 					      1, 17, 207);
 	clks[TEGRA210_CLK_DPAUX1] = clk;
 
-	clk = clk_register_mux_table(NULL, "sor1_out", sor1_out_parents,
-				     ARRAY_SIZE(sor1_out_parents), 0,
-				     clk_base + CLK_SOURCE_SOR1, 14, 0x3,
-				     0, NULL, &sor1_lock);
-	clks[TEGRA210_CLK_SOR1_OUT] = clk;
-
 	/* pll_d_dsi_out */
 	clk = clk_register_gate(NULL, "pll_d_dsi_out", "pll_d_out0", 0,
 				clk_base + PLLD_MISC0, 21, 0, &pll_d_lock);
diff --git a/include/dt-bindings/clock/tegra210-car.h b/include/dt-bindings/clock/tegra210-car.h
index 70308a568c6c..be9e649c1e90 100644
--- a/include/dt-bindings/clock/tegra210-car.h
+++ b/include/dt-bindings/clock/tegra210-car.h
@@ -308,7 +308,7 @@
 #define TEGRA210_CLK_CLK_OUT_2 278
 #define TEGRA210_CLK_CLK_OUT_3 279
 #define TEGRA210_CLK_BLINK 280
-/* 281 */
+#define TEGRA210_CLK_SOR0_OUT 281
 #define TEGRA210_CLK_SOR1_OUT 282
 /* 283 */
 #define TEGRA210_CLK_XUSB_HOST_SRC 284
@@ -390,7 +390,7 @@
 #define TEGRA210_CLK_CLK_OUT_3_MUX 358
 #define TEGRA210_CLK_DSIA_MUX 359
 #define TEGRA210_CLK_DSIB_MUX 360
-#define TEGRA210_CLK_SOR0_OUT 361
+/* 361 */
 #define TEGRA210_CLK_XUSB_SS_DIV2 362
 
 #define TEGRA210_CLK_PLL_M_UD 363
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
