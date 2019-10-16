Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E66E4D91D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8nUcZfLs2HgvPyZimgOHWs96LuWnWBuFElbIbOdYomQ=; b=nF1sahmM2oC9yw
	AmTyxm2SY3efxDp5njbY+pCat0R6wFu9qZ4v5Jvp1BakNcCpGex0MG2Y1B3EDvH2twiXIEkjqUK61
	xjJ71x5DvXFIz4TJ51dWD3tqKqZ/0/V5kC7tnkrT2Ho7WaGqYr/3Rv1/PvQP4AYTo/a7cMhSIijxt
	yzM36g7ocNb2Ldrqg9b3A6sixe690YHRmrbrgyxAtyg6KinUX8W2UlkgB1n2xTdjQENpAu5rdJMFD
	n+heBEt5TpnI3KfvEWXppb2YmSSllai7ESh+hQEaiJK7NSrn0/W1hVlnwChlaHC8vH8FzahKn7tcX
	lPsO8uZkPvK4jtQhrRbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKiuV-0004dy-SZ; Wed, 16 Oct 2019 13:00:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKitl-0004Ax-Af
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:59:31 +0000
Received: by mail-wr1-x444.google.com with SMTP id r3so27973234wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 05:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dR351hSk2KLsLkv+qBJUXfTUKT/j75dNRsV/i2s9Zfc=;
 b=eT/flQ5l0i11577h0NpYiNwpRb0OdvW49A9KFCcpztdDYdxIqpD0NlebB+UGUMHWpx
 5fBrQTJE4XWXoW+ivRG0+w83DDVFpobRdZgzbG3LRxZsm5ntetU1O6VIFIZjsVMyl5ly
 OlCAaEyl7MsQOgYVofq5kkWbLxaAAuxTIllwrreIyZZ7PWz/Kg8MBnTYK1AtXIfAa2mY
 47G/So4/jagQQCWDmOrsZVFe5QkikEz6AapR7pTGOiCruDQVPq1hyLPJYZgqHtq3vT6u
 rWrCCRzyWlujhekz86Izx+30cZuPH0ZiNOuE3Nml26twXbTOxkkCKNbLoA2IaJr5wnvJ
 kT6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dR351hSk2KLsLkv+qBJUXfTUKT/j75dNRsV/i2s9Zfc=;
 b=baW1lz7Vvu1m954tPaCa2ExPcaCuIVvEiMfjpuG0xZ6woY1q5ud/VtqnlAlw4eg2QC
 gKAJAOphrkyHEeDs/Ee9tR2EqndSpQgioMm5qRJmT5I3d3L/h3xKTMeXgNQpyv+vlhDX
 PgWUBb8Wv8vnQ/itNURNcEFdvbAMCnvSqRzZXgk60R4iLQvm15mwwIshyGR0f3cgqKom
 REsgHuqwaRxf5HqsfogP/UHAvdIV1APWPKFp1rca0zf/C32YLjkesZ6K+8iXQWAujS1E
 ew310PDN5sGC6yPNWvh3CBjcajVSDB+Kd4PIgSsnRXCLG+UTd01q4p7OYdv+gxsdzoSD
 6Ykg==
X-Gm-Message-State: APjAAAXRn8Fo7yYmdfrHXRNdrwDgOEKhTPDIYSSxSonhRZd4IhxSKM8x
 t5UpMB7w/30XeW2iAm4x5Rc=
X-Google-Smtp-Source: APXvYqx4QwSzyJemRDUAHXxLR65wDPnCmDTCaDOG3HSRImU7gA2kcMZcoPyD8Lx6xOqfuZ/HmtUWVw==
X-Received: by 2002:adf:910d:: with SMTP id j13mr2626813wrj.128.1571230766433; 
 Wed, 16 Oct 2019 05:59:26 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id w125sm4617515wmg.32.2019.10.16.05.59.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 05:59:25 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 2/5] clk: tegra: Move SOR0 implementation to Tegra124
Date: Wed, 16 Oct 2019 14:59:16 +0200
Message-Id: <20191016125919.1773898-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016125919.1773898-1-thierry.reding@gmail.com>
References: <20191016125919.1773898-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_055929_387754_9D032C0B 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

The SOR0 clock on Tegra210 is very different from the SOR0 clock found
on Tegra124. Move the Tegra124 implementation to the Tegra124 driver so
that a custom implementation can be provided on Tegra210 without
clashing with the existing clock.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/clk/tegra/clk-tegra-periph.c |  8 -----
 drivers/clk/tegra/clk-tegra124.c     | 49 ++++++++++++++++++++++++++++
 2 files changed, 49 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/tegra/clk-tegra-periph.c b/drivers/clk/tegra/clk-tegra-periph.c
index 1ed85f120a1b..0d07c0ba49b6 100644
--- a/drivers/clk/tegra/clk-tegra-periph.c
+++ b/drivers/clk/tegra/clk-tegra-periph.c
@@ -262,7 +262,6 @@
 static DEFINE_SPINLOCK(PLLP_OUTA_lock);
 static DEFINE_SPINLOCK(PLLP_OUTB_lock);
 static DEFINE_SPINLOCK(PLLP_OUTC_lock);
-static DEFINE_SPINLOCK(sor0_lock);
 
 #define MUX_I2S_SPDIF(_id)						\
 static const char *mux_pllaout0_##_id##_2x_pllp_clkm[] = { "pll_a_out0", \
@@ -587,11 +586,6 @@ static u32 mux_pllp_pllre_clkm_idx[] = {
 	[0] = 0, [1] = 2, [2] = 3,
 };
 
-static const char *mux_clkm_plldp_sor0lvds[] = {
-	"clk_m", "pll_dp", "sor0_lvds",
-};
-#define mux_clkm_plldp_sor0lvds_idx NULL
-
 static const char * const mux_dmic1[] = {
 	"pll_a_out0", "dmic1_sync_clk", "pll_p", "clk_m"
 };
@@ -731,14 +725,12 @@ static struct tegra_periph_init_data periph_clks[] = {
 	MUX8("hdmi_audio", mux_pllp3_pllc_clkm, CLK_SOURCE_HDMI_AUDIO, 176, TEGRA_PERIPH_NO_RESET, tegra_clk_hdmi_audio),
 	MUX8("clk72mhz", mux_pllp3_pllc_clkm, CLK_SOURCE_CLK72MHZ, 177, TEGRA_PERIPH_NO_RESET, tegra_clk_clk72Mhz),
 	MUX8("clk72mhz", mux_pllp_out3_pllp_pllc_clkm, CLK_SOURCE_CLK72MHZ, 177, TEGRA_PERIPH_NO_RESET, tegra_clk_clk72Mhz_8),
-	MUX8_NOGATE_LOCK("sor0_lvds", mux_pllp_pllm_plld_plla_pllc_plld2_clkm, CLK_SOURCE_SOR0, tegra_clk_sor0_lvds, &sor0_lock),
 	MUX_FLAGS("csite", mux_pllp_pllc_pllm_clkm, CLK_SOURCE_CSITE, 73, TEGRA_PERIPH_ON_APB, tegra_clk_csite, CLK_IGNORE_UNUSED),
 	MUX_FLAGS("csite", mux_pllp_pllre_clkm, CLK_SOURCE_CSITE, 73, TEGRA_PERIPH_ON_APB, tegra_clk_csite_8, CLK_IGNORE_UNUSED),
 	NODIV("disp1", mux_pllp_pllm_plld_plla_pllc_plld2_clkm, CLK_SOURCE_DISP1, 29, 7, 27, 0, tegra_clk_disp1, NULL),
 	NODIV("disp1", mux_pllp_plld_plld2_clkm, CLK_SOURCE_DISP1, 29, 7, 27, 0, tegra_clk_disp1_8, NULL),
 	NODIV("disp2", mux_pllp_pllm_plld_plla_pllc_plld2_clkm, CLK_SOURCE_DISP2, 29, 7, 26, 0, tegra_clk_disp2, NULL),
 	NODIV("disp2", mux_pllp_plld_plld2_clkm, CLK_SOURCE_DISP2, 29, 7, 26, 0, tegra_clk_disp2_8, NULL),
-	NODIV("sor0", mux_clkm_plldp_sor0lvds, CLK_SOURCE_SOR0, 14, 3, 182, 0, tegra_clk_sor0, &sor0_lock),
 	UART("uarta", mux_pllp_pllc_pllm_clkm, CLK_SOURCE_UARTA, 6, tegra_clk_uarta),
 	UART("uartb", mux_pllp_pllc_pllm_clkm, CLK_SOURCE_UARTB, 7, tegra_clk_uartb),
 	UART("uartc", mux_pllp_pllc_pllm_clkm, CLK_SOURCE_UARTC, 55, tegra_clk_uartc),
diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra124.c
index 0224fdc4766f..2e41141af7b5 100644
--- a/drivers/clk/tegra/clk-tegra124.c
+++ b/drivers/clk/tegra/clk-tegra124.c
@@ -27,6 +27,7 @@
 
 #define CLK_SOURCE_CSITE 0x1d4
 #define CLK_SOURCE_EMC 0x19c
+#define CLK_SOURCE_SOR0 0x414
 
 #define RST_DFLL_DVCO			0x2f4
 #define DVFS_DFLL_RESET_SHIFT		0
@@ -91,6 +92,22 @@
 /* Tegra CPU clock and reset control regs */
 #define CLK_RST_CONTROLLER_CPU_CMPLX_STATUS	0x470
 
+#define MASK(x) (BIT(x) - 1)
+
+#define MUX8_NOGATE_LOCK(_name, _parents, _offset, _clk_id, _lock)	\
+	TEGRA_INIT_DATA_TABLE(_name, NULL, NULL, _parents, _offset,	\
+			      29, MASK(3), 0, 0, 8, 1, TEGRA_DIVIDER_ROUND_UP,\
+			      0, TEGRA_PERIPH_NO_GATE, _clk_id,\
+			      _parents##_idx, 0, _lock)
+
+#define NODIV(_name, _parents, _offset, \
+			      _mux_shift, _mux_mask, _clk_num, \
+			      _gate_flags, _clk_id, _lock)		\
+	TEGRA_INIT_DATA_TABLE(_name, NULL, NULL, _parents, _offset,\
+			_mux_shift, _mux_mask, 0, 0, 0, 0, 0,\
+			_clk_num, (_gate_flags) | TEGRA_PERIPH_NO_DIV,\
+			_clk_id, _parents##_idx, 0, _lock)
+
 #ifdef CONFIG_PM_SLEEP
 static struct cpu_clk_suspend_context {
 	u32 clk_csite_src;
@@ -110,6 +127,7 @@ static DEFINE_SPINLOCK(pll_e_lock);
 static DEFINE_SPINLOCK(pll_re_lock);
 static DEFINE_SPINLOCK(pll_u_lock);
 static DEFINE_SPINLOCK(emc_lock);
+static DEFINE_SPINLOCK(sor0_lock);
 
 /* possible OSC frequencies in Hz */
 static unsigned long tegra124_input_freq[] = {
@@ -987,12 +1005,29 @@ static struct tegra_devclk devclks[] __initdata = {
 	{ .con_id = "hda2hdmi", .dt_id = TEGRA124_CLK_HDA2HDMI },
 };
 
+static const char *mux_pllp_pllm_plld_plla_pllc_plld2_clkm[] = {
+	"pll_p", "pll_m", "pll_d_out0", "pll_a_out0", "pll_c",
+	"pll_d2_out0", "clk_m"
+};
+#define mux_pllp_pllm_plld_plla_pllc_plld2_clkm_idx NULL
+
+static const char *mux_clkm_plldp_sor0lvds[] = {
+	"clk_m", "pll_dp", "sor0_lvds",
+};
+#define mux_clkm_plldp_sor0lvds_idx NULL
+
+static struct tegra_periph_init_data tegra124_periph[] = {
+	MUX8_NOGATE_LOCK("sor0_lvds", mux_pllp_pllm_plld_plla_pllc_plld2_clkm, CLK_SOURCE_SOR0, tegra_clk_sor0_lvds, &sor0_lock),
+	NODIV("sor0", mux_clkm_plldp_sor0lvds, CLK_SOURCE_SOR0, 14, 3, 182, 0, tegra_clk_sor0, &sor0_lock),
+};
+
 static struct clk **clks;
 
 static __init void tegra124_periph_clk_init(void __iomem *clk_base,
 					    void __iomem *pmc_base)
 {
 	struct clk *clk;
+	unsigned int i;
 
 	/* xusb_ss_div2 */
 	clk = clk_register_fixed_factor(NULL, "xusb_ss_div2", "xusb_ss_src", 0,
@@ -1033,6 +1068,20 @@ static __init void tegra124_periph_clk_init(void __iomem *clk_base,
 	clk_register_clkdev(clk, "cml1", NULL);
 	clks[TEGRA124_CLK_CML1] = clk;
 
+	for (i = 0; i < ARRAY_SIZE(tegra124_periph); i++) {
+		struct tegra_periph_init_data *init = &tegra124_periph[i];
+		struct clk **clkp;
+
+		clkp = tegra_lookup_dt_id(init->clk_id, tegra124_clks);
+		if (!clkp) {
+			pr_warn("clock %u not found\n", init->clk_id);
+			continue;
+		}
+
+		clk = tegra_clk_register_periph_data(clk_base, init);
+		*clkp = clk;
+	}
+
 	tegra_periph_clk_init(clk_base, pmc_base, tegra124_clks, &pll_p_params);
 }
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
