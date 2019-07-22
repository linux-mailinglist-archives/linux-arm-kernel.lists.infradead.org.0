Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0856FD44
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8KDoLuJMmf3PUrN9yxOteU5JmV8KR083nu2pKvO9Zzg=; b=txLASK3yNu3MJqUjSXzbKnnA4R
	uaL+JsYAa8l2JpAGOwuHhl/BgYT7x/mTm2HYa5njVlCCCCzeHbdLUbFgFRofJRE5q5I2hOR9zN7ci
	AxhFhtdUgAJNDF0LMO1ujYiTlI/Kk4i+nOQX96cBkS3BfAxXGaDneataGYAzjDOCCL4PB1RUmTYON
	e/IUJldla4M/y4LYCcOrqWcCICRDzZL1gbWBL9cOg5rME8B8k+qUff6GfW29yfbZKMjhlt+DNnuqb
	vb6Dy8ncS45uVIeHyWvHE4HpOaumLVaS1uKpXkoOWS3tBm1S6aqB/yV9KgIt4u3O8qn/sOpZKvEOt
	a2OkrIaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpV4s-0002jh-E0; Mon, 22 Jul 2019 09:57:54 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpV1g-00088w-9w
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 09:54:51 +0000
Received: by mail-wr1-x442.google.com with SMTP id n9so38791940wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 02:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mMLWTpRyQOIhO2zBKiwG8296jQFE+BtYZV6zzvxEPl0=;
 b=Old0UmrEQpghjmdsyoDyvj4lfyDsHwZ/YHTJrSS71Rkp6llbPDMWpt6vUyKbPuLD/C
 Al3qUkgJ03TKuwBnLhuB4WEBymQJkvEQjc19V4WryIHJPTcnLoOWr+iynxfl3RPN84eM
 FkLZB3Pv/fGcwGHayM7YO59CZzZni//t8YowaFybhuIkmerAlbWaCULTdMK3532TAAeC
 K2TlU+g+6Tu673Ux91bWkOcZwGE64tRbXJt9cgW8p7TMwFa9I5jOEmW/Qq+5/rDqCVCR
 J58Mgwsq3V9DKWYMcRwPc1020hRhiH6r+0hoZ2tnwkiNcJRCEa9YdlDm/ZaVtLGmVxz6
 m28Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mMLWTpRyQOIhO2zBKiwG8296jQFE+BtYZV6zzvxEPl0=;
 b=XIbiG5h5i7UyVEsl50GisiAX7YBYnz29+Nu+VLp0bh/h8C6H1krlhr3tayYIneVX/N
 zHrSOEjqMn1OuTJAu/vDm5HowRVeRKu2yBP401On7px4eW+cEiktjI9Zj6OjHHXQqDtc
 HaFJnQ92+IAnAOWwaXJ/kb/2+gbt7QgLPpBjPRrzohk3NcJUmm4XRwWB8zecfkETWXJk
 ug6UXnaXAJ4tiByMmf9xAZySfkHSZNnReirkWbErvmv2n+qGBoSn2kJ00qAFwCJpOChp
 Au6YfoCumAi+Cj85sb73SzW4Avoe81oRvB9gUKrmwNGPjWvxlp49x1zoie+m9jughNnS
 X6Cw==
X-Gm-Message-State: APjAAAWb0B8GbF2WH9XBKaL9TT1deGvgYjlYZI+voswDH6akI4Ux4hMi
 VLG6+1p+HLtLfFoD39cnM1uB5Q==
X-Google-Smtp-Source: APXvYqzv5RI2+LQsoPPLCF7HYqwq+tI19+tyzHYBuoo7bAJ+ZihsVffuyiLWlbK83w2LDeFMa6Ndyg==
X-Received: by 2002:adf:e6c5:: with SMTP id y5mr77160892wrm.235.1563789275176; 
 Mon, 22 Jul 2019 02:54:35 -0700 (PDT)
Received: from pop-os.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id 91sm83158469wrp.3.2019.07.22.02.54.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 02:54:34 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH 7/8] clk: meson: remove ee input bypass clocks
Date: Mon, 22 Jul 2019 11:54:24 +0200
Message-Id: <20190722095425.14193-8-amergnat@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190722095425.14193-1-amergnat@baylibre.com>
References: <20190722095425.14193-1-amergnat@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_025436_705264_59EF4A40 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: narmstrong@baylibre.com, sboyd@kernel.org, khilman@baylibre.com,
 Alexandre Mergnat <amergnat@baylibre.com>, linux-kernel@vger.kernel.org,
 baylibre-upstreaming@groups.io, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

During probe, bypass clocks (i.e. ee-in-xtal) are made from device-tree
inputs to provide input clocks which can be access through global name.
The cons of this method are the duplicated clocks, means more string
comparison.

Specify parent directly with device-tree clock name.

Remove the bypass clock registration from the ee probe function.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/clk/meson/Kconfig       |  1 -
 drivers/clk/meson/meson-eeclk.c | 10 ----------
 drivers/clk/meson/meson-eeclk.h |  2 --
 3 files changed, 13 deletions(-)

diff --git a/drivers/clk/meson/Kconfig b/drivers/clk/meson/Kconfig
index 178ee72ba4bc..72a37572501f 100644
--- a/drivers/clk/meson/Kconfig
+++ b/drivers/clk/meson/Kconfig
@@ -38,7 +38,6 @@ config COMMON_CLK_MESON_AO_CLKC
 config COMMON_CLK_MESON_EE_CLKC
 	tristate
 	select COMMON_CLK_MESON_REGMAP
-	select COMMON_CLK_MESON_INPUT
 
 config COMMON_CLK_MESON8B
 	bool
diff --git a/drivers/clk/meson/meson-eeclk.c b/drivers/clk/meson/meson-eeclk.c
index 6ba2094be257..a7cb1e7aedc4 100644
--- a/drivers/clk/meson/meson-eeclk.c
+++ b/drivers/clk/meson/meson-eeclk.c
@@ -10,7 +10,6 @@
 #include <linux/mfd/syscon.h>
 #include <linux/regmap.h>
 
-#include "clk-input.h"
 #include "clk-regmap.h"
 #include "meson-eeclk.h"
 
@@ -18,7 +17,6 @@ int meson_eeclkc_probe(struct platform_device *pdev)
 {
 	const struct meson_eeclkc_data *data;
 	struct device *dev = &pdev->dev;
-	struct clk_hw *input;
 	struct regmap *map;
 	int ret, i;
 
@@ -37,14 +35,6 @@ int meson_eeclkc_probe(struct platform_device *pdev)
 	if (data->init_count)
 		regmap_multi_reg_write(map, data->init_regs, data->init_count);
 
-	input = meson_clk_hw_register_input(dev, "xtal", IN_PREFIX "xtal", 0);
-	if (IS_ERR(input)) {
-		ret = PTR_ERR(input);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "failed to get input clock");
-		return ret;
-	}
-
 	/* Populate regmap for the regmap backed clocks */
 	for (i = 0; i < data->regmap_clk_num; i++)
 		data->regmap_clks[i]->map = map;
diff --git a/drivers/clk/meson/meson-eeclk.h b/drivers/clk/meson/meson-eeclk.h
index 9ab5d6fa7ccb..77316207bde1 100644
--- a/drivers/clk/meson/meson-eeclk.h
+++ b/drivers/clk/meson/meson-eeclk.h
@@ -10,8 +10,6 @@
 #include <linux/clk-provider.h>
 #include "clk-regmap.h"
 
-#define IN_PREFIX "ee-in-"
-
 struct platform_device;
 
 struct meson_eeclkc_data {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
