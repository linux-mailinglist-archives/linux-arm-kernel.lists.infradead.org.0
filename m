Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBDC1801A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 16:21:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4P3yJbQoWUlm6Ls8crj4zlUKhwJoa3ThtwS8N1nP3zg=; b=XN+ASs7w1dCN/Z
	qNQa5wPYfu0R/JVjcv7QAvnZMrAwXhrDu8esuni/J5d5EdV0GpTJwRB3p1XFLDyISIRvSxgTZf1Hd
	ZHiA0ZTadotxPpm3b6P6j8ChjF9bhVCNwZhgyU9d1pDYqvBiCSpzMsdt/gsyvgg1tTmmrQoEwKBok
	0IRJMWJEo08U14HMv/ACz2xGpyKxlmYhzquBxbEZXr9d6eIGXAZGoiBx4INl+SUQtFcsbsxzDEtFf
	ZLzULPUd+7bSSyfIqPctz8V5dl8wWa+TJPa9fesnTfYuGVBGAeh+8AQH0W0AZ84JIA4uusnwOZxE4
	wncWn844bigqHh1MQWxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBggq-0002ZZ-NG; Tue, 10 Mar 2020 15:21:04 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBgg4-0001dZ-L5
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 15:20:18 +0000
Received: by mail-wm1-x341.google.com with SMTP id n8so1844782wmc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 08:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kOW4sWg6Q7VGPDYbJbyB7HbqHDmbBp1ycDkxRC8YVxA=;
 b=bhReD04xb47VJuOb863x1yRYJpYpSJLzDmqHmONtE6BqjWWb1xza3YQXQzUVanb+1v
 VOLgMp4HmmsQUxcv7PS4j3j0OmfQ7BA20kY4jXEDTtSOI5rDkDFFz7hlgBCGAp4na+gg
 vmph4Iq71vvISazrB8QEYdHb9f2wMNpCH/LgL6YAvu8UIvoRIlGZZML/sZT3MWSYawd3
 /febHCnezEAF0RxtgPNBgkHEqvR8p84IecwAgC9RTNDtsrgbXqnC8LUX5e9eiRYqmlyg
 m/6c5LDGrO97bzB8SFtZk7jdMgGTwLmmbrvkWygBqRRR+haujBWSRajhaZqfcKDY6NkJ
 tYcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kOW4sWg6Q7VGPDYbJbyB7HbqHDmbBp1ycDkxRC8YVxA=;
 b=PGIN2WcJDGxhkk6XTHhyVWx9jjhza1ue683xb9D6yR51BoWBHcjBrDAn1V0AF3QO5X
 m4/A0tlAotW2drNJKGa/72Bdr00dLUKjl8c5TKcVw3qW/INjVmiGBvUgjGg3QN4xrbfJ
 nvV4/Z1iDduzwwMHD3sYphmKxmxA9LKU6WljcWdAlQSP52kLW+SdGh9AX20JGSGQOLx6
 8u/ADNYO7DqYMxzN9hD0D8BmTETcfCoh514ijQvJ4BYnZ4R4hCWfR18jYXnqK/RIK4cB
 Y0bbN+QPlqJFFM3Gw0PyNlbKKHJNN3H7oaaLSP2Ki5ILLXT/ynlb3fT/PsU31lrf22oV
 cAgg==
X-Gm-Message-State: ANhLgQ0hZAC7HU6JVOUJSdvLC8Kc0R6fP2tHus31QpWGnXH4ah0aIUu/
 Ip4t4mYkBz5OThrKtfL8cNY=
X-Google-Smtp-Source: ADFU+vu468Cq8+15bTySdCPrW5DR0zf2iX5vUsNk41jQPts1j/zhomX5PEvvoDppHlQBS0o81G+9wQ==
X-Received: by 2002:a1c:964f:: with SMTP id y76mr2589173wmd.62.1583853613555; 
 Tue, 10 Mar 2020 08:20:13 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id o9sm69181610wrw.20.2020.03.10.08.20.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 08:20:11 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v5 1/8] clk: tegra: Add PLLP_UD and PLLMB_UD for Tegra210
Date: Tue, 10 Mar 2020 16:19:56 +0100
Message-Id: <20200310152003.2945170-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200310152003.2945170-1-thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_082016_751583_B310570D 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
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
index 45d54ead30bc..f99647b4a71f 100644
--- a/drivers/clk/tegra/clk-tegra210.c
+++ b/drivers/clk/tegra/clk-tegra210.c
@@ -3161,6 +3161,17 @@ static void __init tegra210_pll_init(void __iomem *clk_base,
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
