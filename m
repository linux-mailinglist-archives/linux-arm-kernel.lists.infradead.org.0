Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FBDD321A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6smts2cod2UXyNSVJxsntw6W3vpLvKz0hwW1zlXa5/s=; b=sgHDVVAoeJ3Fgu
	Rwg1KcBrppIVXOR6qbBKwc+x0cpP+LSP049yW08ldbYccAxuJJ8cnDUYJ1kVopEzsR8k1slesbE3R
	Reoh3Z6Nf99NcWpyiKqbRA797VSO2tWaDLmjnG8idvtehfwLyT8QXoxfHTUclVjUtHvbGIhPxbwIO
	BrS1STcJSH4pX9DLZDbBRpKkTK/rbyuquYHKEUaNYDROjsJ1z3RFxM2//sI0GVPBzorCRlnBXd4HX
	+DHHl/88Gr7ZOjPAOdhJ/8XJ0IQLz9Yd3ABmB2War/YD0g1TeG844ksbZVtdm8kO4l5Vzh/Tjgch+
	frJV8TpRw88xAok//uFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIf5b-0001Yw-Cq; Thu, 10 Oct 2019 20:31:11 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIf5I-0001Xp-00
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:30:53 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M76jv-1iA7xr2etz-008WlZ; Thu, 10 Oct 2019 22:30:44 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH 01/36] ARM: samsung: make S3C24XX_MISCCR access indirect
Date: Thu, 10 Oct 2019 22:29:45 +0200
Message-Id: <20191010203043.1241612-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010202802.1132272-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ePLzvj7/CcvBZWd9/hVzvTOtmqd1jBEPawLsZLAlTOvjHU9Blp0
 tvxX+UeVAWK0nrC7dGI+hFjF8ptcLrjrkZNrN1/uNRe+uaNHpuu2BxrAFpK9lILdg4Kj5GH
 JUyKX7A09rEBq4diiC18Z0WoqEb+HshWV0vBBd3lWJmlI9+0Kf3EIUQ1g4JogJyATj7uv+x
 eMo6Lt9LmrEqY9ZyRGCZA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:p+vtab0Sm4g=:GZ7JjxHd28lp/BUZHy55/p
 b9I5JvBFzQsD16r9zrfKLjJ5zalwgRAiq/aD/2IFvOdvFT72F5T/lS/DlazeTamoLZsSS/X04
 mKee0zxPCOxG1iYddhlMCoHPUsmBSRePPJIvvWvLhieiH9YW0+BlgMGVG/6Wr+IceowcHuRxZ
 yQHylOXnOnpDglBkIRt6/qpzw39wUuLc1zI6hrFH420KpQzYVrB5lJsaE/ojDI9RnzIky8U9G
 4fvej/0S799sglaZhKk1G0PSEKgYy8GJSBwrO1/urLdKdj/hxgOUaesBjta4gi7AFk3XNzxnK
 c6evzMifq7jGzWo48d+THy66ClEQuqbFZhxZEoQQLoYNka0K5pdwhgdMVevI4Zs4v5Pg04LlK
 X0MvJQ5fy8ogANXieli/NIJH15cHvdR4YuAT2hSdW+wCjNbJNQzO1CVSkPpxRQvxgXwQvNpaU
 TuOz6XyrB8bqiOdKiIWgi94Uc4Ts07dgo8znCybeGKJgKpJ75gfhCCrSR+xKs8DbJyopza9um
 Hv6aI1VN1XK1MJ06/ESbj+wrKSh9THAhq2P098AbLclaTHFYy4enQZQ9T5Te0tl+q+6/DueLe
 8CY4X3pswccFQeZtOtRqOLZ/AekCpg0LiFMi6TBAZYP1yz2lkYTmigk1LOKDqPApclK+8PoQ3
 87kIeHnio6OFfq5FCtr/hN4bwvr3ttcBvyd1tJdYKGk99bLPLRWK8cRwAmdbVCYlnNbslk9kw
 8u4vrXdL8NT3UWlX90wxJSbcUoKF9+lTxFan3Cuv4EVvPVlUsnYW/ckcLtE/FrNPVbHEORV+7
 3yoOX40qgdQvdqA4yek9OrFe07/3c1B0m5RpVzCb6JjARIHKrdj/tB7SbtKinMz6keJyuwGMl
 nMMhZ3QF99zmHauGWf8A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_133052_342717_EC79ADD6 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clk driver uses both a function call into an exported
platform file and a direct register access to a hardcoded
virtual address for accessing the MISCCR register, both
become are a problem for a multiplatform kernel because
of the header file dependency.

Make this an indirect function call through platform data
instead.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-s3c24xx/common.c         |  3 +++
 drivers/clk/samsung/clk-s3c2410-dclk.c | 10 ++++------
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-s3c24xx/common.c b/arch/arm/mach-s3c24xx/common.c
index 3dc029c2d2cb..ebf6bde67816 100644
--- a/arch/arm/mach-s3c24xx/common.c
+++ b/arch/arm/mach-s3c24xx/common.c
@@ -667,5 +667,8 @@ struct platform_device s3c2410_device_dclk = {
 	.id		= 0,
 	.num_resources	= ARRAY_SIZE(s3c2410_dclk_resource),
 	.resource	= s3c2410_dclk_resource,
+	.dev		= {
+		.platform_data = s3c2410_modify_misccr,
+	},
 };
 #endif
diff --git a/drivers/clk/samsung/clk-s3c2410-dclk.c b/drivers/clk/samsung/clk-s3c2410-dclk.c
index 1281672cb00e..fbcec0252c45 100644
--- a/drivers/clk/samsung/clk-s3c2410-dclk.c
+++ b/drivers/clk/samsung/clk-s3c2410-dclk.c
@@ -14,10 +14,6 @@
 #include <linux/module.h>
 #include "clk.h"
 
-/* legacy access to misccr, until dt conversion is finished */
-#include <mach/hardware.h>
-#include <mach/regs-gpio.h>
-
 #define MUX_DCLK0	0
 #define MUX_DCLK1	1
 #define DIV_DCLK0	2
@@ -52,6 +48,7 @@ struct s3c24xx_clkout {
 	struct clk_hw		hw;
 	u32			mask;
 	u8			shift;
+	unsigned int (*modify_misccr)(unsigned int clr, unsigned int chg);
 };
 
 #define to_s3c24xx_clkout(_hw) container_of(_hw, struct s3c24xx_clkout, hw)
@@ -62,7 +59,7 @@ static u8 s3c24xx_clkout_get_parent(struct clk_hw *hw)
 	int num_parents = clk_hw_get_num_parents(hw);
 	u32 val;
 
-	val = readl_relaxed(S3C24XX_MISCCR) >> clkout->shift;
+	val = clkout->modify_misccr(0, 0) >> clkout->shift;
 	val >>= clkout->shift;
 	val &= clkout->mask;
 
@@ -76,7 +73,7 @@ static int s3c24xx_clkout_set_parent(struct clk_hw *hw, u8 index)
 {
 	struct s3c24xx_clkout *clkout = to_s3c24xx_clkout(hw);
 
-	s3c2410_modify_misccr((clkout->mask << clkout->shift),
+	clkout->modify_misccr((clkout->mask << clkout->shift),
 			      (index << clkout->shift));
 
 	return 0;
@@ -110,6 +107,7 @@ static struct clk_hw *s3c24xx_register_clkout(struct device *dev,
 	clkout->shift = shift;
 	clkout->mask = mask;
 	clkout->hw.init = &init;
+	clkout->modify_misccr = dev->platform_data;
 
 	ret = clk_hw_register(dev, &clkout->hw);
 	if (ret)
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
