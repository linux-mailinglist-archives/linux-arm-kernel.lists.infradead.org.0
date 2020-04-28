Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B6A1BCDAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 22:50:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fgQBjPSSDmTWd27ofnMYJUChGqZIKOxh65LIfUoCgVI=; b=JiVzaqAaTaOXTx
	pEjlJrhIiiwrUm1oGIQV+N2ZiU4ztfvh78dT8gIZxyHxAhR0IixrCAtkimIZy9IeQd7+U4eZK6EvX
	Eqzf26RBVihgpfpW2n/54RBIafI1quJpMHZTeYqMaDTQD65MiFv1IZ3wydCKHE53RJEb+ntEr7NAy
	wllaA2HlA0Rfg9kEBk1bk/3x4HW1GLRjARwa61LJoMnYtN60wgZ3r994C90pvUz9D9kf5JEt53iYd
	H0EYzCvMU1KGbHkdCAzTF5YA3gAITEGNlyB/N6cZY5DCWNiILQZnCpc5rHyD4SCuCo+89y0kupCCI
	wZ5uKRNCpQA2HL1mcT6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTXB2-0002Uo-CG; Tue, 28 Apr 2020 20:50:00 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTXAq-0002U7-Cs
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 20:49:49 +0000
Received: by mail-ot1-f65.google.com with SMTP id e26so35296955otr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:49:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6EeJQUcQx1ZUEC6Sz+HmpaKf0KrWlHRUUSnQJGXOOU4=;
 b=Wh7nwaiGon4wpdeT5hJrAWQ9S41aAr9TFXk6XtdnBvqfmX78eYwGp9dweBOuTWUHSM
 wgTD+DeAGBjos0eKqg1hXljNhaEfVEmpDdC+LgY+5dOa2dHVVmBa5W4/EehhJJbNtQSd
 eOIkpDqpIiRGgqZqAXcczO5b/0ag/4wSC2Bfy1a0IEKyx58pG6nd3Ltb/LdcDauE/XBX
 IIGQ3LkaJHaljIjyRjfgI2wLSkQWA7pO656HEhQmdavCzwRKUwYfrAKho3PMOFqi4wKW
 /hpEn+hZa2HlhamxHrFKTKD+XC+R0KdpimLK/J6/ywm6H2a0teg7Z70J8Y8XHqVxG91X
 WvfQ==
X-Gm-Message-State: AGi0PuYj2N3vS4pKyoTYioDM7Bg+uEWeryFLuTfQnKMVyW3twf9Ka0nn
 jCCyTsjNZ501wBL6WDHIXQ==
X-Google-Smtp-Source: APiQypImciVBBbDsKwb7MoERjDQFaLAa6CEeYV+23Ln+YWTVS91K0H71jB579oSoRpkXUBz4Xdp2+A==
X-Received: by 2002:a9d:7414:: with SMTP id n20mr25652200otk.61.1588106987239; 
 Tue, 28 Apr 2020 13:49:47 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id r67sm5109606oie.19.2020.04.28.13.49.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 13:49:46 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] clk: versatile: Drop the legacy IM-PD1 clock code
Date: Tue, 28 Apr 2020 15:49:45 -0500
Message-Id: <20200428204945.21067-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_134948_435987_B7E4D684 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Stephen Boyd <sboyd@kernel.org>, soc@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the non-DT IM-PD1 support code has been removed, drop the clock
related code from clk-impd1.c.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-clk@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
This is depends on the pending IM-PD1 DT support Linus has queued up. 
Perhaps apply on top of his PR '[GIT PULL] Versatile changes for v5.8 
take 1'.

 drivers/clk/versatile/clk-impd1.c            | 121 -------------------
 include/linux/platform_data/clk-integrator.h |   2 -
 2 files changed, 123 deletions(-)
 delete mode 100644 include/linux/platform_data/clk-integrator.h

diff --git a/drivers/clk/versatile/clk-impd1.c b/drivers/clk/versatile/clk-impd1.c
index b05da8516d4c..95129d39a44b 100644
--- a/drivers/clk/versatile/clk-impd1.c
+++ b/drivers/clk/versatile/clk-impd1.c
@@ -8,7 +8,6 @@
 #include <linux/err.h>
 #include <linux/io.h>
 #include <linux/platform_device.h>
-#include <linux/platform_data/clk-integrator.h>
 #include <linux/module.h>
 #include <linux/mfd/syscon.h>
 #include <linux/regmap.h>
@@ -20,26 +19,6 @@
 #define IMPD1_OSC2	0x04
 #define IMPD1_LOCK	0x08
 
-struct impd1_clk {
-	char *pclkname;
-	struct clk *pclk;
-	char *vco1name;
-	struct clk *vco1clk;
-	char *vco2name;
-	struct clk *vco2clk;
-	struct clk *mmciclk;
-	char *uartname;
-	struct clk *uartclk;
-	char *spiname;
-	struct clk *spiclk;
-	char *scname;
-	struct clk *scclk;
-	struct clk_lookup *clks[15];
-};
-
-/* One entry for each connected IM-PD1 LM */
-static struct impd1_clk impd1_clks[4];
-
 /*
  * There are two VCO's on the IM-PD1
  */
@@ -80,106 +59,6 @@ static const struct clk_icst_desc impd1_icst2_desc = {
 	.lock_offset = IMPD1_LOCK,
 };
 
-/**
- * integrator_impd1_clk_init() - set up the integrator clock tree
- * @base: base address of the logic module (LM)
- * @id: the ID of this LM
- */
-void integrator_impd1_clk_init(void __iomem *base, unsigned int id)
-{
-	struct impd1_clk *imc;
-	struct clk *clk;
-	struct clk *pclk;
-	int i;
-
-	if (id > 3) {
-		pr_crit("no more than 4 LMs can be attached\n");
-		return;
-	}
-	imc = &impd1_clks[id];
-
-	/* Register the fixed rate PCLK */
-	imc->pclkname = kasprintf(GFP_KERNEL, "lm%x-pclk", id);
-	pclk = clk_register_fixed_rate(NULL, imc->pclkname, NULL, 0, 0);
-	imc->pclk = pclk;
-
-	imc->vco1name = kasprintf(GFP_KERNEL, "lm%x-vco1", id);
-	clk = icst_clk_register(NULL, &impd1_icst1_desc, imc->vco1name, NULL,
-				base);
-	imc->vco1clk = clk;
-	imc->clks[0] = clkdev_alloc(pclk, "apb_pclk", "lm%x:01000", id);
-	imc->clks[1] = clkdev_alloc(clk, NULL, "lm%x:01000", id);
-
-	/* VCO2 is also called "CLK2" */
-	imc->vco2name = kasprintf(GFP_KERNEL, "lm%x-vco2", id);
-	clk = icst_clk_register(NULL, &impd1_icst2_desc, imc->vco2name, NULL,
-				base);
-	imc->vco2clk = clk;
-
-	/* MMCI uses CLK2 right off */
-	imc->clks[2] = clkdev_alloc(pclk, "apb_pclk", "lm%x:00700", id);
-	imc->clks[3] = clkdev_alloc(clk, NULL, "lm%x:00700", id);
-
-	/* UART reference clock divides CLK2 by a fixed factor 4 */
-	imc->uartname = kasprintf(GFP_KERNEL, "lm%x-uartclk", id);
-	clk = clk_register_fixed_factor(NULL, imc->uartname, imc->vco2name,
-				   CLK_IGNORE_UNUSED, 1, 4);
-	imc->uartclk = clk;
-	imc->clks[4] = clkdev_alloc(pclk, "apb_pclk", "lm%x:00100", id);
-	imc->clks[5] = clkdev_alloc(clk, NULL, "lm%x:00100", id);
-	imc->clks[6] = clkdev_alloc(pclk, "apb_pclk", "lm%x:00200", id);
-	imc->clks[7] = clkdev_alloc(clk, NULL, "lm%x:00200", id);
-
-	/* SPI PL022 clock divides CLK2 by a fixed factor 64 */
-	imc->spiname = kasprintf(GFP_KERNEL, "lm%x-spiclk", id);
-	clk = clk_register_fixed_factor(NULL, imc->spiname, imc->vco2name,
-				   CLK_IGNORE_UNUSED, 1, 64);
-	imc->clks[8] = clkdev_alloc(pclk, "apb_pclk", "lm%x:00300", id);
-	imc->clks[9] = clkdev_alloc(clk, NULL, "lm%x:00300", id);
-
-	/* The GPIO blocks and AACI have only PCLK */
-	imc->clks[10] = clkdev_alloc(pclk, "apb_pclk", "lm%x:00400", id);
-	imc->clks[11] = clkdev_alloc(pclk, "apb_pclk", "lm%x:00500", id);
-	imc->clks[12] = clkdev_alloc(pclk, "apb_pclk", "lm%x:00800", id);
-
-	/* Smart Card clock divides CLK2 by a fixed factor 4 */
-	imc->scname = kasprintf(GFP_KERNEL, "lm%x-scclk", id);
-	clk = clk_register_fixed_factor(NULL, imc->scname, imc->vco2name,
-				   CLK_IGNORE_UNUSED, 1, 4);
-	imc->scclk = clk;
-	imc->clks[13] = clkdev_alloc(pclk, "apb_pclk", "lm%x:00600", id);
-	imc->clks[14] = clkdev_alloc(clk, NULL, "lm%x:00600", id);
-
-	for (i = 0; i < ARRAY_SIZE(imc->clks); i++)
-		clkdev_add(imc->clks[i]);
-}
-EXPORT_SYMBOL_GPL(integrator_impd1_clk_init);
-
-void integrator_impd1_clk_exit(unsigned int id)
-{
-	int i;
-	struct impd1_clk *imc;
-
-	if (id > 3)
-		return;
-	imc = &impd1_clks[id];
-
-	for (i = 0; i < ARRAY_SIZE(imc->clks); i++)
-		clkdev_drop(imc->clks[i]);
-	clk_unregister(imc->spiclk);
-	clk_unregister(imc->uartclk);
-	clk_unregister(imc->vco2clk);
-	clk_unregister(imc->vco1clk);
-	clk_unregister(imc->pclk);
-	kfree(imc->scname);
-	kfree(imc->spiname);
-	kfree(imc->uartname);
-	kfree(imc->vco2name);
-	kfree(imc->vco1name);
-	kfree(imc->pclkname);
-}
-EXPORT_SYMBOL_GPL(integrator_impd1_clk_exit);
-
 static int integrator_impd1_clk_spawn(struct device *dev,
 				      struct device_node *parent,
 				      struct device_node *np)
diff --git a/include/linux/platform_data/clk-integrator.h b/include/linux/platform_data/clk-integrator.h
deleted file mode 100644
index addd48cac625..000000000000
--- a/include/linux/platform_data/clk-integrator.h
+++ /dev/null
@@ -1,2 +0,0 @@
-void integrator_impd1_clk_init(void __iomem *base, unsigned int id);
-void integrator_impd1_clk_exit(unsigned int id);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
