Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB66A6FD14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t6UthhFW0EO8mbjsXmxXsJEU6+f03OmENuV4OmVrS4g=; b=drnUZvQcpOKlYy0PLjEJk8jaV3
	aliTw+Ogc799DNlTBq1F78K682O6N0MLhofmm2NdG7a84pTmAFzjpeJDi5/maXa+dMoAIwfH5C7Y8
	QFkQw6ACny14ZzJhRf5Gau7VGq/YRVUrJ1odyRs5FlN0W/EPcPAsXAjDoHIXLTbOIG/EoZI+TZj9f
	ySfBOoO5z9VAQFxEUZeP0ERfZknZqETdf3KOPq11TQjS7k3ac77FUcX35nsd+Gns4B3KW5DVmAiiA
	LBGmse8iV0PiJQvfpWBJkIliC14PGMYSmRxkxA2eO80YUWkG0+BbHszmze2SHqIqRqPZn1szXus6p
	Kzj9DbKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpV0j-0007LF-U4; Mon, 22 Jul 2019 09:53:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpUyI-0005si-2I
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 09:51:10 +0000
Received: by mail-wm1-x341.google.com with SMTP id s3so34476222wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 02:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+f39f/vO7ZpFkzWKsXEJhzhzg/ZN6DlIsY5Iay+VBRo=;
 b=htZvDSRmT6jMXiu+Kg9emxAFoSbpATwOwuK0cNLzVzaiGKLnsnOA2XmQ2RVHdUCUp5
 FdkcTS94h30us1MuHruEE+k/Id0U24bnRRRv58Q8nUy13EA8hTGTQK5E1xzz7YzZN4F3
 ieG/UO+1w3yzdvC2LVnQYulswKw3JEY8e4r8KZ96CHKTPL0yeYG1/hssSbiFPcug93iA
 JekJkwn/2ESSPsvCwKi5qdXqDkFKV+ps3uvjwo6gJrUIRezBoqAYxcZDqoGlIiQHqtbh
 b71qyRpzA5z/tY8lgHFXK5sAOXi2iv4Xhz96QUjaW6nMuOZVK6tymStWgS8qwYW/7fQS
 o5CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+f39f/vO7ZpFkzWKsXEJhzhzg/ZN6DlIsY5Iay+VBRo=;
 b=ZNP14gf/Q/FdKWqh8HWXiSInkfTl1+RSE6AR5xvHL4TDeDsN0hu1K2/LV3iwiunhHS
 os0I54NdN5a/C1FKmEEh+E3Fxh+hOicoq2p5HZ/neG/iQgsSqZFORKPIKQD1HAaL4BN1
 eXSP1+8tsQqJoqojhSN5FoE7VIhveXx4qA8vfv/RNVICLmKv/02KfzwPtwHidnpQfLfD
 yhVaNQfpbllCIoZuwq6biyMuiMHJrLAdzzMmhNJV2RJ7ZK4mBbxtP0DPSdCBctro/4Ec
 7vyRIOzZ3EMFPYw+XBCM/zWrdwEIKSmUIQWOeNo9/49HpANPmMdz4kFS2z9mRtYGomGW
 IcGg==
X-Gm-Message-State: APjAAAUVqA87gLZE0kvaE0J6luHYBCTcjsaTImeNUBWakb9MWSK9Rcor
 6yf3ozAIyymCMzjrNXNlTi6U0g==
X-Google-Smtp-Source: APXvYqwwj/UlXQVUKhMKbdQjX82TUkiVIMSZYM6b25puvxqYcGVmxB0FMrhP37zUSRCkIXwb7Mp1+w==
X-Received: by 2002:a1c:ef0c:: with SMTP id n12mr60072852wmh.132.1563789064707; 
 Mon, 22 Jul 2019 02:51:04 -0700 (PDT)
Received: from pop-os.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id o3sm31050738wrs.59.2019.07.22.02.51.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 02:51:04 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH 4/4] clk: meson: remove ao input bypass clocks
Date: Mon, 22 Jul 2019 11:50:53 +0200
Message-Id: <20190722095053.14104-5-amergnat@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190722095053.14104-1-amergnat@baylibre.com>
References: <20190722095053.14104-1-amergnat@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_025106_312751_94296AA2 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

During probe, bypass clocks (i.e. ao-in-xtal) are made from device-tree
inputs to provide input clocks which can be access through global name.
The cons of this method are the duplicated clocks, means more string
comparison.

Specify parent directly with device-tree clock name.

Function to regiter bypass clocks is removed.

Input parameters from meson aoclk data structure are deprecated and then
deleted since all aoclk files are migrated.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/clk/meson/Kconfig       |  1 -
 drivers/clk/meson/meson-aoclk.c | 37 ---------------------------------
 drivers/clk/meson/meson-aoclk.h |  8 -------
 3 files changed, 46 deletions(-)

diff --git a/drivers/clk/meson/Kconfig b/drivers/clk/meson/Kconfig
index ee0b84b6b329..178ee72ba4bc 100644
--- a/drivers/clk/meson/Kconfig
+++ b/drivers/clk/meson/Kconfig
@@ -33,7 +33,6 @@ config COMMON_CLK_MESON_VID_PLL_DIV
 config COMMON_CLK_MESON_AO_CLKC
 	tristate
 	select COMMON_CLK_MESON_REGMAP
-	select COMMON_CLK_MESON_INPUT
 	select RESET_CONTROLLER
 
 config COMMON_CLK_MESON_EE_CLKC
diff --git a/drivers/clk/meson/meson-aoclk.c b/drivers/clk/meson/meson-aoclk.c
index b67951909e04..bf8bea675d24 100644
--- a/drivers/clk/meson/meson-aoclk.c
+++ b/drivers/clk/meson/meson-aoclk.c
@@ -17,8 +17,6 @@
 #include <linux/slab.h>
 #include "meson-aoclk.h"
 
-#include "clk-input.h"
-
 static int meson_aoclk_do_reset(struct reset_controller_dev *rcdev,
 			       unsigned long id)
 {
@@ -33,37 +31,6 @@ static const struct reset_control_ops meson_aoclk_reset_ops = {
 	.reset = meson_aoclk_do_reset,
 };
 
-static int meson_aoclkc_register_inputs(struct device *dev,
-					struct meson_aoclk_data *data)
-{
-	struct clk_hw *hw;
-	char *str;
-	int i;
-
-	for (i = 0; i < data->num_inputs; i++) {
-		const struct meson_aoclk_input *in = &data->inputs[i];
-
-		str = kasprintf(GFP_KERNEL, "%s%s", data->input_prefix,
-				in->name);
-		if (!str)
-			return -ENOMEM;
-
-		hw = meson_clk_hw_register_input(dev, in->name, str, 0);
-		kfree(str);
-
-		if (IS_ERR(hw)) {
-			if (!in->required && PTR_ERR(hw) == -ENOENT)
-				continue;
-			else if (PTR_ERR(hw) != -EPROBE_DEFER)
-				dev_err(dev, "failed to register input %s\n",
-					in->name);
-			return PTR_ERR(hw);
-		}
-	}
-
-	return 0;
-}
-
 int meson_aoclkc_probe(struct platform_device *pdev)
 {
 	struct meson_aoclk_reset_controller *rstc;
@@ -86,10 +53,6 @@ int meson_aoclkc_probe(struct platform_device *pdev)
 		return PTR_ERR(regmap);
 	}
 
-	ret = meson_aoclkc_register_inputs(dev, data);
-	if (ret)
-		return ret;
-
 	/* Reset Controller */
 	rstc->data = data;
 	rstc->regmap = regmap;
diff --git a/drivers/clk/meson/meson-aoclk.h b/drivers/clk/meson/meson-aoclk.h
index 999cde3868f7..605b43855a69 100644
--- a/drivers/clk/meson/meson-aoclk.h
+++ b/drivers/clk/meson/meson-aoclk.h
@@ -18,20 +18,12 @@
 
 #include "clk-regmap.h"
 
-struct meson_aoclk_input {
-	const char *name;
-	bool required;
-};
-
 struct meson_aoclk_data {
 	const unsigned int			reset_reg;
 	const int				num_reset;
 	const unsigned int			*reset;
 	const int				num_clks;
 	struct clk_regmap			**clks;
-	const int				num_inputs;
-	const struct meson_aoclk_input		*inputs;
-	const char				*input_prefix;
 	const struct clk_hw_onecell_data	*hw_data;
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
