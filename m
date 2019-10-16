Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 508F2D91D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:00:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V320Iau743P/xgz0PV5bo/rTPdZYUfRtLQWfNBwKdR8=; b=kMpqOOexiITVEO
	rqDmGXCLSM8qKq+W8sVbDVtRhTVXmVAieMqO9JoWAjaHrC3G2TXOvvAN539jnpdvIeQGNnzxOfJfT
	nIld5Us8MZaapy4UpXmyU+uveSlIKK5rEdmx06A7x2LlgwauViNwIwoBXS+14xiVou6XiATE73nHl
	ysVcQr7GbB0ArOj5czDZRAd734uiRIatXDm9XNQkDwDL6uwxhd22WJVllPz2onIhuRSvL/jKIZfPW
	yHqLCS9NmjZs+mc900a4fqXF1GtgEo/Vy/1057kvt8ziU0A6DscRQsoD5vD5LF5nVhABAoQFLjKDl
	3DRM8ckUtQsw1I+yeRAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKiun-0004ux-Dt; Wed, 16 Oct 2019 13:00:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKitm-0004Bx-NI
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:59:32 +0000
Received: by mail-wr1-x443.google.com with SMTP id b9so27983730wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 05:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7oEiKY7MdVnoBelVYyBtyHkCbOpa9g+wnsDvm4D8PDQ=;
 b=jRnSeQZqOpLB2dU1pS/qwVK5+CAAfLSHsQiovIbt3PGDFe+yNcI3WJbRML8RUv0ZnT
 Sg0Dkup1bZbpkyW0Z11eTabzqfDdu/w33pWdSbpkxXBR3MbNXv/nWUn1RYwfvIfcS74K
 iYuYk9CZsYiguh8h6p4ZZ3k7HyBSli5M+T/VE6eQEYSJdJDqxfeZanF8gplPkE8KUkcr
 n4Fwsjbb3g5X+Rn+YRMoJxr5D5jRTNtPFoudDU4bC+C42ITP90lR79d05nguW/ews2d5
 6LZnZKL/ShesIes1jwnjemfgXzhhi9Eq26oiM/PKHYuuo2HNfLqtmXX6LiYpQihKiuZ8
 lghA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7oEiKY7MdVnoBelVYyBtyHkCbOpa9g+wnsDvm4D8PDQ=;
 b=JBgt2ZBOYzlic/X21ANmwlxKw0Wbd+Xf1M9NkaDlgI1lJvv56BK0OYItDwDELpjwsh
 hMAbqxU7ONZJDTBwvfNwd4LKhkgcP3YMPUj2agDnf3sqECvLwAVD25k9n9P6q64sxELY
 LDbalChQdts7QnRTLKs1BzXVUXYha3F+Un8MBgkfFiW6cAUm2wngeGwfAm7gpImrazhM
 gOHpy8rH1p5N3KNGQpb2mmxdE35FNR+pOx2g1/YTVHlWV9wgr67OxFHNY0GVILoKX61M
 ypudTdS47AX+NBMwZL51cJZTtatDfUXwaoWviS7g7R72JIicGoMaoN/4xqd+n0UCMFjM
 yYqw==
X-Gm-Message-State: APjAAAX8kmT9PVyh9ROyx4t5E2XyO1c8RNFOoJRRGtj/bHR6M2+wJ8XV
 Jc001ZTkkROK3Wetm1RGUOw=
X-Google-Smtp-Source: APXvYqwM7Z+V9qby+MdTWKEqUyNL6zK/Cjh7bYNPUtiWI453RabKfLBX7oQJb1BCM3R44d9XAWZprg==
X-Received: by 2002:adf:cd8e:: with SMTP id q14mr2506690wrj.86.1571230768586; 
 Wed, 16 Oct 2019 05:59:28 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id u1sm384105wrp.56.2019.10.16.05.59.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 05:59:27 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 3/5] clk: tegra: Rename sor0_lvds to sor0_out
Date: Wed, 16 Oct 2019 14:59:17 +0200
Message-Id: <20191016125919.1773898-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016125919.1773898-1-thierry.reding@gmail.com>
References: <20191016125919.1773898-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_055930_864566_F1E66274 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

This makes Tegra124 and Tegra210 consistent with subsequent Tegra
generations.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/clk/tegra/clk-id.h                      |  2 +-
 drivers/clk/tegra/clk-tegra124.c                | 12 ++++++------
 drivers/clk/tegra/clk-tegra210.c                |  2 +-
 include/dt-bindings/clock/tegra124-car-common.h |  2 +-
 include/dt-bindings/clock/tegra210-car.h        |  2 +-
 5 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/tegra/clk-id.h b/drivers/clk/tegra/clk-id.h
index ae02885c9475..c4faebd32760 100644
--- a/drivers/clk/tegra/clk-id.h
+++ b/drivers/clk/tegra/clk-id.h
@@ -236,7 +236,7 @@ enum clk_id {
 	tegra_clk_soc_therm,
 	tegra_clk_soc_therm_8,
 	tegra_clk_sor0,
-	tegra_clk_sor0_lvds,
+	tegra_clk_sor0_out,
 	tegra_clk_sor1,
 	tegra_clk_sor1_out,
 	tegra_clk_spdif,
diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra124.c
index 2e41141af7b5..7d231529c3a5 100644
--- a/drivers/clk/tegra/clk-tegra124.c
+++ b/drivers/clk/tegra/clk-tegra124.c
@@ -847,7 +847,7 @@ static struct tegra_clk tegra124_clks[tegra_clk_max] __initdata = {
 	[tegra_clk_adx1] = { .dt_id = TEGRA124_CLK_ADX1, .present = true },
 	[tegra_clk_dpaux] = { .dt_id = TEGRA124_CLK_DPAUX, .present = true },
 	[tegra_clk_sor0] = { .dt_id = TEGRA124_CLK_SOR0, .present = true },
-	[tegra_clk_sor0_lvds] = { .dt_id = TEGRA124_CLK_SOR0_LVDS, .present = true },
+	[tegra_clk_sor0_out] = { .dt_id = TEGRA124_CLK_SOR0_OUT, .present = true },
 	[tegra_clk_gpu] = { .dt_id = TEGRA124_CLK_GPU, .present = true },
 	[tegra_clk_amx1] = { .dt_id = TEGRA124_CLK_AMX1, .present = true },
 	[tegra_clk_uartb] = { .dt_id = TEGRA124_CLK_UARTB, .present = true },
@@ -1011,14 +1011,14 @@ static const char *mux_pllp_pllm_plld_plla_pllc_plld2_clkm[] = {
 };
 #define mux_pllp_pllm_plld_plla_pllc_plld2_clkm_idx NULL
 
-static const char *mux_clkm_plldp_sor0lvds[] = {
-	"clk_m", "pll_dp", "sor0_lvds",
+static const char *mux_clkm_plldp_sor0out[] = {
+	"clk_m", "pll_dp", "sor0_out",
 };
-#define mux_clkm_plldp_sor0lvds_idx NULL
+#define mux_clkm_plldp_sor0out_idx NULL
 
 static struct tegra_periph_init_data tegra124_periph[] = {
-	MUX8_NOGATE_LOCK("sor0_lvds", mux_pllp_pllm_plld_plla_pllc_plld2_clkm, CLK_SOURCE_SOR0, tegra_clk_sor0_lvds, &sor0_lock),
-	NODIV("sor0", mux_clkm_plldp_sor0lvds, CLK_SOURCE_SOR0, 14, 3, 182, 0, tegra_clk_sor0, &sor0_lock),
+	MUX8_NOGATE_LOCK("sor0_out", mux_pllp_pllm_plld_plla_pllc_plld2_clkm, CLK_SOURCE_SOR0, tegra_clk_sor0_out, &sor0_lock),
+	NODIV("sor0", mux_clkm_plldp_sor0out, CLK_SOURCE_SOR0, 14, 3, 182, 0, tegra_clk_sor0, &sor0_lock),
 };
 
 static struct clk **clks;
diff --git a/drivers/clk/tegra/clk-tegra210.c b/drivers/clk/tegra/clk-tegra210.c
index 019287df6c12..0f0f14781b43 100644
--- a/drivers/clk/tegra/clk-tegra210.c
+++ b/drivers/clk/tegra/clk-tegra210.c
@@ -2351,7 +2351,7 @@ static struct tegra_clk tegra210_clks[tegra_clk_max] __initdata = {
 	[tegra_clk_dpaux] = { .dt_id = TEGRA210_CLK_DPAUX, .present = true },
 	[tegra_clk_dpaux1] = { .dt_id = TEGRA210_CLK_DPAUX1, .present = true },
 	[tegra_clk_sor0] = { .dt_id = TEGRA210_CLK_SOR0, .present = true },
-	[tegra_clk_sor0_lvds] = { .dt_id = TEGRA210_CLK_SOR0_LVDS, .present = true },
+	[tegra_clk_sor0_out] = { .dt_id = TEGRA210_CLK_SOR0_OUT, .present = true },
 	[tegra_clk_sor1] = { .dt_id = TEGRA210_CLK_SOR1, .present = true },
 	[tegra_clk_sor1_out] = { .dt_id = TEGRA210_CLK_SOR1_OUT, .present = true },
 	[tegra_clk_gpu] = { .dt_id = TEGRA210_CLK_GPU, .present = true },
diff --git a/include/dt-bindings/clock/tegra124-car-common.h b/include/dt-bindings/clock/tegra124-car-common.h
index 4331f1df6ebe..210ef790d0ae 100644
--- a/include/dt-bindings/clock/tegra124-car-common.h
+++ b/include/dt-bindings/clock/tegra124-car-common.h
@@ -337,7 +337,7 @@
 #define TEGRA124_CLK_CLK_OUT_3_MUX 308
 /* 309 */
 /* 310 */
-#define TEGRA124_CLK_SOR0_LVDS 311
+#define TEGRA124_CLK_SOR0_OUT 311
 #define TEGRA124_CLK_XUSB_SS_DIV2 312
 
 #define TEGRA124_CLK_PLL_M_UD 313
diff --git a/include/dt-bindings/clock/tegra210-car.h b/include/dt-bindings/clock/tegra210-car.h
index b43b9e84e62e..70308a568c6c 100644
--- a/include/dt-bindings/clock/tegra210-car.h
+++ b/include/dt-bindings/clock/tegra210-car.h
@@ -390,7 +390,7 @@
 #define TEGRA210_CLK_CLK_OUT_3_MUX 358
 #define TEGRA210_CLK_DSIA_MUX 359
 #define TEGRA210_CLK_DSIB_MUX 360
-#define TEGRA210_CLK_SOR0_LVDS 361
+#define TEGRA210_CLK_SOR0_OUT 361
 #define TEGRA210_CLK_XUSB_SS_DIV2 362
 
 #define TEGRA210_CLK_PLL_M_UD 363
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
