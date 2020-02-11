Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6144515888C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 04:09:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8XURsJK/kFIzjrIHeFO1MTmdFdPMPcTIC6L5iUGbMjY=; b=lADuoBoEEt1PuH4IZl/BP5Vn5N
	WnGf7mX92x1tSgRA/Hi2feReA/wX6VBURnr50/fML2AfZhqeE+85+7kap/YI/9Mzq4lQ+iSqGBQDN
	4qIT3O4Rx60lnpa2cmoDFEEiOi9P6UP/E2BxVcKo7F1cqDCBLvDDJaZ/NS+nJxvFp4MIInbK20qoa
	iv7FgjTnxNbEzYGncz0ETsuGG+a0xPHnLrEldr5N0zzm3qiBpghixJutIBQrFUKkEf5xnayIhOrPt
	iQXYFrfmsD2/zTZbiqvxxn3mP+iUZ+sku95knn9aEaNe+uVlDQLf0J6A5ZBK5un5wGaJ0AoOisVrY
	hE79i8Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1LvE-0004Nq-LG; Tue, 11 Feb 2020 03:09:12 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Luv-0004Cd-R9
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 03:08:55 +0000
Received: by mail-qv1-xf42.google.com with SMTP id n8so4298321qvg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 19:08:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wgGKUnlzEJ2a8qSB0a2zn1fdYwV5ER4chdWO8Q08nVo=;
 b=PSR5Znb7L+upKokNQwWbVpknxT3Muaf31/mEXb+pBcRSQ6PHXgARO708mWit9QHUr0
 ibmiPgIRciGUkP7kgjuB4u3d062JEQ4R0WMOryHxUmzaWrd9GpFCT9AxdYiyleWPlkG7
 HWVFF6zhh3NJ+deD+r2JbV2xEl3RckLT7CBp7HMwEkZwDBbJZGI+WY22IHAVbQaGVjCN
 fF+svijn84gQ2Fa6mbkxdCD5YvzW43XRRvREH3sEmztj+VlzyTPoS90+dmO4A9XqCX/5
 MRvgCpSg7RsSDKfrjFq8PfQ5p3l2QMXlFDg0+qHYnvt+IyBo3zEmcuMlusTPBYM3oekU
 kolg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wgGKUnlzEJ2a8qSB0a2zn1fdYwV5ER4chdWO8Q08nVo=;
 b=E7/SxBRwVGVmY6i9d8C6u40cF5We9zcmi5GBLp2YZScYM8pGk2oo4d2b3Y/jP52rzA
 R7DwJgfQjWogNyYoQ1OKX6rt3vuCKQCE5rRlmD8fYdL3cSfnesAgErh6evZG2a9J4PNT
 pK917Fug/vHg6DQq7AwQLFTDAzJ6NQJOatReDUpsRvnJokj/fQwb4VhAuVnqIEoLCRwG
 34T5mNf1sAm2j8t/m57vSEO0+HtyGQeeyRIIxg4vnQVji1fnj7kNUUdWFhrP5eMmtpwn
 F4IYysRaMLKlMIk4g8VObFfp96Egj1VLc4W6Aid3bk8fUopYrpvxw4ABzdoD6HPyB5pu
 JQ0w==
X-Gm-Message-State: APjAAAUYiSE8lEVs65RzglhtyQja/RiJ7PYRnnR2Qw5R2s7R1l9S15lH
 jJHCmEm0JREsCClkpvLB5I4=
X-Google-Smtp-Source: APXvYqyU9BnAd2BjDUkGBCIDNLhVOK8D8+Rp69IBo3DmZk4YQW+LtfWdj69yMYVM//AurEd+uNrq3Q==
X-Received: by 2002:ad4:5429:: with SMTP id g9mr1100800qvt.134.1581390527001; 
 Mon, 10 Feb 2020 19:08:47 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:482:5bb::1])
 by smtp.gmail.com with ESMTPSA id x41sm1345893qtj.52.2020.02.10.19.08.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 19:08:46 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 2/2] clk: imx8mm: Add CLKO2 support
Date: Tue, 11 Feb 2020 00:08:13 -0300
Message-Id: <20200211030813.13992-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211030813.13992-1-festevam@gmail.com>
References: <20200211030813.13992-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_190853_898125_D006BDED 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sboyd@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add CLKO2 support, which is useful for debugging purposes.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 drivers/clk/imx/clk-imx8mm.c             | 3 +++
 include/dt-bindings/clock/imx8mm-clock.h | 4 +++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 770cf2ae58aa..2ea91ba5e63e 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -285,6 +285,8 @@ static const char *imx8mm_dram_core_sels[] = {"dram_pll_out", "dram_alt_root", }
 
 static const char *imx8mm_clko1_sels[] = {"osc_24m", "sys_pll1_800m", "dummy", "sys_pll1_200m",
 					  "audio_pll2_out","sys_pll2_500m", "vpu_pll", "sys_pll1_80m", };
+static const char *imx8mm_clko2_sels[] = {"osc_24m", "sys_pll2_200m", "sys_pll1_400m", "sys_pll2_166m",
+					  "sys_pll3_out", "audio_pll1_out", "video_pll1_out", "osc_32k", };
 
 static struct clk_hw_onecell_data *clk_hw_data;
 static struct clk_hw **hws;
@@ -504,6 +506,7 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MM_CLK_WDOG] = imx8m_clk_hw_composite("wdog", imx8mm_wdog_sels, base + 0xb900);
 	hws[IMX8MM_CLK_WRCLK] = imx8m_clk_hw_composite("wrclk", imx8mm_wrclk_sels, base + 0xb980);
 	hws[IMX8MM_CLK_CLKO1] = imx8m_clk_hw_composite("clko1", imx8mm_clko1_sels, base + 0xba00);
+	hws[IMX8MM_CLK_CLKO2] = imx8m_clk_hw_composite("clko2", imx8mm_clko2_sels, base + 0xba80);
 	hws[IMX8MM_CLK_DSI_CORE] = imx8m_clk_hw_composite("dsi_core", imx8mm_dsi_core_sels, base + 0xbb00);
 	hws[IMX8MM_CLK_DSI_PHY_REF] = imx8m_clk_hw_composite("dsi_phy_ref", imx8mm_dsi_phy_sels, base + 0xbb80);
 	hws[IMX8MM_CLK_DSI_DBI] = imx8m_clk_hw_composite("dsi_dbi", imx8mm_dsi_dbi_sels, base + 0xbc00);
diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
index edeece2289f0..37f523cec390 100644
--- a/include/dt-bindings/clock/imx8mm-clock.h
+++ b/include/dt-bindings/clock/imx8mm-clock.h
@@ -265,6 +265,8 @@
 #define IMX8MM_SYS_PLL2_333M_CG			244
 #define IMX8MM_SYS_PLL2_500M_CG			245
 
-#define IMX8MM_CLK_END				246
+#define IMX8MM_CLK_CLKO2			246
+
+#define IMX8MM_CLK_END				247
 
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
