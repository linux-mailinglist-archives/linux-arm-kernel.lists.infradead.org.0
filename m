Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BDF1A395E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 19:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHER909ZvTRsPemKXtHg32T4IvxZnUUItH86UUPuz44=; b=n2fPFiAvRgN6PT
	x1xtWF5whJ/L8rUNk1HtJOwExVghXPh51NbN7AjBhmtZs77UUqtEJZLezIvHo0kj3T5RwX40RT++2
	CfwP4XB7k8Y/2Za+9+LGtEieofMaNEuuMLJ3lRuc3OoApsFk9kj70WI/n/qXxhuxMD3CKynJ3Oogo
	BO0wIydv3tl5FI6FBFNa88UTiKco3MtDJDnPXPM47uPIiiThY3YFeuufGxf6l2FIWDS1Udih4vr97
	pS2Ka/LJytLy6+048sJ4rw++kp4RX/RGDG4i9lLjOc9rr26TsNheftcQV6ItMbtODRWYfSv7NPAzE
	x+yBMq8L3opCt7Bo5rew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbNa-00071c-Ad; Thu, 09 Apr 2020 17:54:18 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbMF-0005t4-Fi
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 17:52:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id a81so622838wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 10:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8OX49v7ht2ccb3HbzZfG1Xl37EYQK4Qbq6nNBMHiCwo=;
 b=e8V799L6ZzqJcbqBdl+kuC57iM+6qJqlmTB2djmq/zWGC/r0DfpzlY51t4cV+unldq
 DDAhrnTKy2Z40H/1/c7vdBXFYyCmw8QFJ2Mk1o7mGYj+QX3HnRASeXW+xFrfQpH0ESd5
 gc+UNHB3aPG1iK9zVkvjZkwlcYuKZRDYPzYGKJeh59Hk4j01ByAoce0s4o5AwQxhRfA/
 VNjmhiK6p89iQzYmDl4vQkxw8N2F1bZkUY2ANJRWFShE0S9Obzji6M6cSLM1oRgWJmsO
 DJrundS5YqiIrb0A5jodn4Cz67QDvNlcnlbHY6FuxXwaMOg+F23Iku7alQAREkApmVNc
 4/Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8OX49v7ht2ccb3HbzZfG1Xl37EYQK4Qbq6nNBMHiCwo=;
 b=SPdAatkHmRZqcE0ZwuJcpPYv+z3ECKNkAGCAl9OfZGbnPfVcFaX7EbiQ0nC5Av+WEf
 utZZ3+lxtTi9LEn35yEMSubU3pBYba7RDezINav9MgFZVWUk6RvH+6407xhCqTz+ruIE
 wfrJedll9aeHGdGZxWvEAaTc+kIFRcRmCIDDf3tYPovJXWJwoqY+0tht7ggoS2SBSl0A
 vi2PBsIiT/s3xpkklKlpdd24O3/VLN1xCiIdaCzgvSZqfOCkI1c6eX795UCGyQeOaiKq
 Qs8Zel5Us3BL5XmG/uAUxAsnoDXaD30f7Es6XqJgdJLtZg2yJhiHnmlImglFdDaw9QFK
 Q+Sg==
X-Gm-Message-State: AGi0PuZRzvHBYxDg6HJkMB4bPUYVrz+tf+9s5wWr0lHTwbOK1UrW94xB
 wdm9vcofYthZz5d0Qbpn/ys=
X-Google-Smtp-Source: APiQypIXXShkNT1oobBv5zVyasU9wTZqyKLapzFP9j4TcanTO1e3NYqGGYhDpU38o4MLhPxwhgBSvA==
X-Received: by 2002:a1c:5f56:: with SMTP id t83mr940331wmb.61.1586454774160;
 Thu, 09 Apr 2020 10:52:54 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id a10sm41351533wrm.87.2020.04.09.10.52.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 10:52:53 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 05/14] clk: tegra: Add PLLP_UD and PLLMB_UD for Tegra210
Date: Thu,  9 Apr 2020 19:52:29 +0200
Message-Id: <20200409175238.3586487-6-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409175238.3586487-1-thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_105255_564887_3E7C3444 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Joseph Lo <josephl@nvidia.com>

Introduce the low jitter path of PLLP and PLLMB which can be used as EMC
clock source.

Signed-off-by: Joseph Lo <josephl@nvidia.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/clk/tegra/clk-tegra210.c         | 11 +++++++++++
 include/dt-bindings/clock/tegra210-car.h |  4 ++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/tegra/clk-tegra210.c b/drivers/clk/tegra/clk-tegra210.c
index defe3b7ebfa4..57d97e87d870 100644
--- a/drivers/clk/tegra/clk-tegra210.c
+++ b/drivers/clk/tegra/clk-tegra210.c
@@ -3153,6 +3153,17 @@ static void __init tegra210_pll_init(void __iomem *clk_base,
 	clk_register_clkdev(clk, "pll_m_ud", NULL);
 	clks[TEGRA210_CLK_PLL_M_UD] = clk;
 
+	/* PLLMB_UD */
+	clk = clk_register_fixed_factor(NULL, "pll_mb_ud", "pll_mb",
+					CLK_SET_RATE_PARENT, 1, 1);
+	clk_register_clkdev(clk, "pll_mb_ud", NULL);
+	clks[TEGRA210_CLK_PLL_MB_UD] = clk;
+
+	/* PLLP_UD */
+	clk = clk_register_fixed_factor(NULL, "pll_p_ud", "pll_p",
+					0, 1, 1);
+	clks[TEGRA210_CLK_PLL_P_UD] = clk;
+
 	/* PLLU_VCO */
 	if (!tegra210_init_pllu()) {
 		clk = clk_register_fixed_rate(NULL, "pll_u_vco", "pll_ref", 0,
diff --git a/include/dt-bindings/clock/tegra210-car.h b/include/dt-bindings/clock/tegra210-car.h
index 7a8f10b9a66d..5c93b01156d4 100644
--- a/include/dt-bindings/clock/tegra210-car.h
+++ b/include/dt-bindings/clock/tegra210-car.h
@@ -351,8 +351,8 @@
 #define TEGRA210_CLK_PLL_P_OUT_XUSB 317
 #define TEGRA210_CLK_XUSB_SSP_SRC 318
 #define TEGRA210_CLK_PLL_RE_OUT1 319
-/* 320 */
-/* 321 */
+#define TEGRA210_CLK_PLL_MB_UD 320
+#define TEGRA210_CLK_PLL_P_UD 321
 #define TEGRA210_CLK_ISP 322
 #define TEGRA210_CLK_PLL_A_OUT_ADSP 323
 #define TEGRA210_CLK_PLL_A_OUT0_OUT_ADSP 324
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
