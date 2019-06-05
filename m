Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E53A3686D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 01:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vcNeA0i0eFLPAsn8R1KcVHLCgVnDXJnt6/9k4XX9fao=; b=L+NjfGW69HF3a3
	6QzqZGcDv6qHu0hFoinCF/pJYOL4CQZ1nuN1DsP16aYk9+d9ugw/hKu3h1ytMAAGszk1myjon/Hy8
	/uqfsuj6+QrY7ucuRNbiDYkxLEgqRAieP1JRotfoMPHr+xOk+bFmVSdPjGGiyhVxkVchBjqMfQeri
	MTbMnDgcfcwrMNJetC/nBqS1dwI6pcYFyQyyd2jJ2OD1Xex+z4jKclZEFOxOfBsGhx9ObWZskdPX3
	m6tK2Ji9tveGE1rVhH8ZGhMCdiav5vdd0K1q6WhAHo1Evbj0uEn5nLF2OwCbjP+b8MgI4++6rW+0O
	zjsDxE/+PV0ZKKZlH5HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYfmj-0008BI-P7; Wed, 05 Jun 2019 23:57:37 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYfmc-0008Am-SY; Wed, 05 Jun 2019 23:57:32 +0000
Received: by mail-wm1-x341.google.com with SMTP id w9so647585wmd.1;
 Wed, 05 Jun 2019 16:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CoEKt3CyAM8pXZNIOFLtJ4NXiqc8XDf8/zgh2kIleYE=;
 b=ttD0EcZdokG+eHCPuoKzaxTh1/e9jppmuGOG9Bx7wn2M+XZ/MzL4+73QYIgcSOlF98
 Wwrmkd9J3VNehRzye7Kbqk7O1XJUqKO8zNxx0yoHZ3cKwl1IIKYgREu5zmc5APYT/6h/
 Ke5faRmuunUoqwM3bk52rYrH3bm/MytLpIew8Nk2h0oVNleTVbzqPn2XiOWRd55CYBvM
 +1iHfw1DAvWlcOSjBB+nHK0QvHrvPzX/N2U/jb7iyiZQwQbtRui/tPOEOjs+sLyg60rC
 j9orX4xyMYpUC2jKnVN++F8VXkZuu11O797s1ZyL53s0lhpvJdpBF0h7CbFEQGxO2+DS
 s3lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CoEKt3CyAM8pXZNIOFLtJ4NXiqc8XDf8/zgh2kIleYE=;
 b=kcX9wK/ZznZQcwxSTgWe96oqkfCmhuDlH9LfJA9ZCjROfN4rIBN/h8W0I4wYRA/DDc
 H87z6hAC0ejtbXqAK8gTuawV6BzjdmhF/djX0s3ILc5tgkPj1zUpiMTKuMDC13pry+6e
 qcypjHMBKbgd/MUZOKPxR3oELNDgpVNumd0coUDlZ3h472kRIdt+RI0p9TUYWq9QBSk9
 UHqOLRei7efUXtWJFTVQBX97mq8nKzIC0igVjluJmrVipq5C52FyJTBsOrefPStSrIn7
 qjKfw/c5q5ZIvRIq07dPMVHkiswQceaSLetbsa1HB8hvAoxVFmICx0whqg0godaVsaaN
 YlZw==
X-Gm-Message-State: APjAAAV1Kw6AE0MK1/nn3xt00xop9iKRIMyHW0sgR3Ef3cMWuBraHF19
 r6Ec4ZwS5yXdxBWu9ZftXcM=
X-Google-Smtp-Source: APXvYqwNXvyVrYJ/+XP8N6e1Hk1Le0wEopGarZqZ89V6cCoDAPq+dq0qX6FmIYJZdMYXIYqWTGNRIA==
X-Received: by 2002:a1c:f70f:: with SMTP id v15mr23841079wmh.102.1559779048577; 
 Wed, 05 Jun 2019 16:57:28 -0700 (PDT)
Received: from X555LD.home ([2a02:85f:1501:7500:4991:f471:d726:d8ee])
 by smtp.gmail.com with ESMTPSA id q15sm245915wrr.19.2019.06.05.16.57.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 05 Jun 2019 16:57:27 -0700 (PDT)
From: "Leonidas P. Papadakos" <papadakospan@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/2] clk: rockchip: add clock for the watchdog pclk on rk3328
Date: Thu,  6 Jun 2019 02:57:13 +0300
Message-Id: <20190605235714.22432-1-papadakospan@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_165730_925491_D96B986F 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (papadakospan[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-rockchip@lists.infradead.org,
 "Leonidas P. Papadakos" <papadakospan@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: <itdaniher@gmail.com>

Following the discussion here:
https://github.com/rockchip-linux/kernel/issues/123

it can be seen that these are the changes needed to enable the use of the hardware watchdog in the rk3328 SoC.

This is in line with past changes for the rk3288:
http://lists.infradead.org/pipermail/linux-rockchip/2015-January/002314.html

Signed-off-by: Leonidas P. Papadakos <papadakospan@gmail.com>
---
 drivers/clk/rockchip/clk-rk3328.c      | 9 +++++++++
 include/dt-bindings/clock/rk3328-cru.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3328.c b/drivers/clk/rockchip/clk-rk3328.c
index 076b9777a..546ee0ab7 100644
--- a/drivers/clk/rockchip/clk-rk3328.c
+++ b/drivers/clk/rockchip/clk-rk3328.c
@@ -876,6 +876,8 @@ static const char *const rk3328_critical_clocks[] __initconst = {
 
 static void __init rk3328_clk_init(struct device_node *np)
 {
+	struct clk *clk;
+
 	struct rockchip_clk_provider *ctx;
 	void __iomem *reg_base;
 
@@ -892,6 +894,13 @@ static void __init rk3328_clk_init(struct device_node *np)
 		return;
 	}
 
+	clk = clk_register_fixed_factor(NULL, "pclk_wdt", "pclk_bus", 0, 1, 1);
+	if (IS_ERR(clk))
+		pr_warn("%s: could not register clock pclk_wdt: %ld\n",
+			__func__, PTR_ERR(clk));
+	else
+		rockchip_clk_add_lookup(ctx, clk, PCLK_WDT);
+
 	rockchip_clk_register_plls(ctx, rk3328_pll_clks,
 				   ARRAY_SIZE(rk3328_pll_clks),
 				   RK3328_GRF_SOC_STATUS0);
diff --git a/include/dt-bindings/clock/rk3328-cru.h b/include/dt-bindings/clock/rk3328-cru.h
index afb811340..555b4ff66 100644
--- a/include/dt-bindings/clock/rk3328-cru.h
+++ b/include/dt-bindings/clock/rk3328-cru.h
@@ -164,6 +164,7 @@
 #define PCLK_DCF		233
 #define PCLK_SARADC		234
 #define PCLK_ACODECPHY		235
+#define PCLK_WDT		236
 
 /* hclk gates */
 #define HCLK_PERI		308
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
