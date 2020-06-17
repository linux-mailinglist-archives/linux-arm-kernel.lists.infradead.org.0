Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 166FE1FD2C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 18:50:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUFHv06oC9pCAahNFRKT97NuFIUiFBJNbEGX6mYIEuE=; b=Xh9/sm/cWDJ5hA
	8uuqX4HNKWL6iJS2vjAZAVpo3jv5UXgbCARkfRhZTOAIXAIUS7zXcvp7MxnTNx/DEQDtOBJSfHY1d
	ZWepxsQUfa84mAEe3e7I1/OqO1qYNVldz5duCWbqE40AO3YXn4FpmufW8z8euaLn3o5bjKwLxmyS0
	LgTKDJ5L1hOHgSigg+UJ6tj2MBczPUZsyigVr5JKAnhK3Mc0iyyNl2DAe2hi2B8NUiNylB5n+63mW
	7W5bZkmHzGdcZ3gvomlquLkPf7kF153vRfcWizkOw09zs+c7WDFuta/GJdf2utNifBViuSdMjLW/y
	9cKoszdzpN9TjvWud7LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbGh-0000jU-Nu; Wed, 17 Jun 2020 16:50:31 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbEi-0005ud-Dj; Wed, 17 Jun 2020 16:48:30 +0000
Received: by mail-ej1-x644.google.com with SMTP id q19so3126149eja.7;
 Wed, 17 Jun 2020 09:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6fVxLcF2XQJKtsCVrWUPWiIVRqtIIhB/4u8XgaRXYq8=;
 b=PbDQlkylV8BzQ62QxvxU6i6zJ2z8rgpr4t36HTDAIUFbnjVkXEApnIwTiW6slNgUe8
 FHdD7C9BjKXgEU77ydCgBJYAAcFTD7lZ7DFZ63+hBGZzBMkOENA8uuManPfMuhsStJcw
 BbxnzmjNDi8e4ke9bS/G7tgJqeJvum6lGjlsMSaYJZr8nS6HVXnmyi+Z7NdK75jMV3D2
 gYDlXcqW4RY2HNmvZZNDGM6wQyI0ZlWwirkYAhr2dOD/zB8E9lQztARmsugF0ILTZyT3
 tGIeex77E1MIS5TnWqGTPnGeNLNGXLkbDl1qrCXnqNNfv6p9LNXEXuKIe7ryfyRD7XwQ
 kI/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6fVxLcF2XQJKtsCVrWUPWiIVRqtIIhB/4u8XgaRXYq8=;
 b=EJDuyS5A/7buP65kW4BGZINczVihrz1fNR87bAKBI5o6fzJhfyeix1LzcxsVHUQId1
 rxwKcdmqL6WNsUckBAxAGa2t/D1cpF+HrwOMwTKTET2ZKTKswoLbcReFlKrWZ3zxLoWJ
 LmwjrNHeEVgetXjLu3t+bivHxxxyR/ws+2aB0TQUMgNOwbkpFkf//oszqAz4EggyKAXn
 +9O7VXrZ91VhcnICXNO61167UdyJc2I1fyZQGu6SncfwHGz2vvgabd7clOmcfi2oJWNt
 r6RwNeSKZWAYyv3dXUlvoH+WIfgXwJVAdm0JkIBVCSR9/iLtmCZLFtij/d5fFgOp9tcv
 pdbg==
X-Gm-Message-State: AOAM533F5k0KMHw3Q8Ojpv0BVKmWt3f3ur9Y2rkLrvTwny2M7OjTtuw4
 hqSR1Wu5nEVNj0vHiUuKPuo=
X-Google-Smtp-Source: ABdhPJzvfkBjdaEucnW6Yw9j2N0utHDwTtXn2MmFds5w5ZZP1PDzlH/1fl3mYO0+UhnDesHXQctLAQ==
X-Received: by 2002:a17:906:cc58:: with SMTP id
 mm24mr97135ejb.134.1592412506965; 
 Wed, 17 Jun 2020 09:48:26 -0700 (PDT)
Received: from localhost.localdomain ([188.24.129.96])
 by smtp.gmail.com with ESMTPSA id v3sm127124edj.89.2020.06.17.09.48.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 09:48:26 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 09/11] clk: actions: Add Actions S500 SoC Reset Management
 Unit support
Date: Wed, 17 Jun 2020 19:48:09 +0300
Message-Id: <e361b46511756070277ff10f94e1735bb69cc300.1592407030.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
References: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_094828_701894_773B5094 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add Reset Management Unit (RMU) support for Actions Semi S500 SoC.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
---
 drivers/clk/actions/owl-s500.c | 80 ++++++++++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/drivers/clk/actions/owl-s500.c b/drivers/clk/actions/owl-s500.c
index 025a8f6d6482..3bce72301c65 100644
--- a/drivers/clk/actions/owl-s500.c
+++ b/drivers/clk/actions/owl-s500.c
@@ -10,6 +10,8 @@
  *
  * Copyright (c) 2018 LSI-TEC - Caninos Loucos
  * Author: Edgar Bernardi Righi <edgar.righi@lsitec.org.br>
+ *
+ * Copyright (c) 2020 Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
  */
 
 #include <linux/clk-provider.h>
@@ -23,8 +25,10 @@
 #include "owl-gate.h"
 #include "owl-mux.h"
 #include "owl-pll.h"
+#include "owl-reset.h"
 
 #include <dt-bindings/clock/actions,s500-cmu.h>
+#include <dt-bindings/reset/actions,s500-reset.h>
 
 #define CMU_COREPLL			(0x0000)
 #define CMU_DEVPLL			(0x0004)
@@ -497,20 +501,96 @@ static struct clk_hw_onecell_data s500_hw_clks = {
 	.num = CLK_NR_CLKS,
 };
 
+static const struct owl_reset_map s500_resets[] = {
+	[RESET_DMAC]	= { CMU_DEVRST0, BIT(0) },
+	[RESET_NORIF]	= { CMU_DEVRST0, BIT(1) },
+	[RESET_DDR]	= { CMU_DEVRST0, BIT(2) },
+	[RESET_NANDC]	= { CMU_DEVRST0, BIT(3) },
+	[RESET_SD0]	= { CMU_DEVRST0, BIT(4) },
+	[RESET_SD1]	= { CMU_DEVRST0, BIT(5) },
+	[RESET_PCM1]	= { CMU_DEVRST0, BIT(6) },
+	[RESET_DE]	= { CMU_DEVRST0, BIT(7) },
+	[RESET_LCD]	= { CMU_DEVRST0, BIT(8) },
+	[RESET_SD2]	= { CMU_DEVRST0, BIT(9) },
+	[RESET_DSI]	= { CMU_DEVRST0, BIT(10) },
+	[RESET_CSI]	= { CMU_DEVRST0, BIT(11) },
+	[RESET_BISP]	= { CMU_DEVRST0, BIT(12) },
+	[RESET_KEY]	= { CMU_DEVRST0, BIT(14) },
+	[RESET_GPIO]	= { CMU_DEVRST0, BIT(15) },
+	[RESET_AUDIO]	= { CMU_DEVRST0, BIT(17) },
+	[RESET_PCM0]	= { CMU_DEVRST0, BIT(18) },
+	[RESET_VDE]	= { CMU_DEVRST0, BIT(19) },
+	[RESET_VCE]	= { CMU_DEVRST0, BIT(20) },
+	[RESET_GPU3D]	= { CMU_DEVRST0, BIT(22) },
+	[RESET_NIC301]	= { CMU_DEVRST0, BIT(23) },
+	[RESET_LENS]	= { CMU_DEVRST0, BIT(26) },
+	[RESET_PERIPHRESET] = { CMU_DEVRST0, BIT(27) },
+	[RESET_USB2_0]	= { CMU_DEVRST1, BIT(0) },
+	[RESET_TVOUT]	= { CMU_DEVRST1, BIT(1) },
+	[RESET_HDMI]	= { CMU_DEVRST1, BIT(2) },
+	[RESET_HDCP2TX]	= { CMU_DEVRST1, BIT(3) },
+	[RESET_UART6]	= { CMU_DEVRST1, BIT(4) },
+	[RESET_UART0]	= { CMU_DEVRST1, BIT(5) },
+	[RESET_UART1]	= { CMU_DEVRST1, BIT(6) },
+	[RESET_UART2]	= { CMU_DEVRST1, BIT(7) },
+	[RESET_SPI0]	= { CMU_DEVRST1, BIT(8) },
+	[RESET_SPI1]	= { CMU_DEVRST1, BIT(9) },
+	[RESET_SPI2]	= { CMU_DEVRST1, BIT(10) },
+	[RESET_SPI3]	= { CMU_DEVRST1, BIT(11) },
+	[RESET_I2C0]	= { CMU_DEVRST1, BIT(12) },
+	[RESET_I2C1]	= { CMU_DEVRST1, BIT(13) },
+	[RESET_USB3]	= { CMU_DEVRST1, BIT(14) },
+	[RESET_UART3]	= { CMU_DEVRST1, BIT(15) },
+	[RESET_UART4]	= { CMU_DEVRST1, BIT(16) },
+	[RESET_UART5]	= { CMU_DEVRST1, BIT(17) },
+	[RESET_I2C2]	= { CMU_DEVRST1, BIT(18) },
+	[RESET_I2C3]	= { CMU_DEVRST1, BIT(19) },
+	[RESET_ETHERNET] = { CMU_DEVRST1, BIT(20) },
+	[RESET_CHIPID]	= { CMU_DEVRST1, BIT(21) },
+	[RESET_USB2_1]	= { CMU_DEVRST1, BIT(22) },
+	[RESET_WD0RESET] = { CMU_DEVRST1, BIT(24) },
+	[RESET_WD1RESET] = { CMU_DEVRST1, BIT(25) },
+	[RESET_WD2RESET] = { CMU_DEVRST1, BIT(26) },
+	[RESET_WD3RESET] = { CMU_DEVRST1, BIT(27) },
+	[RESET_DBG0RESET] = { CMU_DEVRST1, BIT(28) },
+	[RESET_DBG1RESET] = { CMU_DEVRST1, BIT(29) },
+	[RESET_DBG2RESET] = { CMU_DEVRST1, BIT(30) },
+	[RESET_DBG3RESET] = { CMU_DEVRST1, BIT(31) },
+};
+
 static struct owl_clk_desc s500_clk_desc = {
 	.clks	    = s500_clks,
 	.num_clks   = ARRAY_SIZE(s500_clks),
 
 	.hw_clks    = &s500_hw_clks,
+
+	.resets     = s500_resets,
+	.num_resets = ARRAY_SIZE(s500_resets),
 };
 
 static int s500_clk_probe(struct platform_device *pdev)
 {
 	struct owl_clk_desc *desc;
+	struct owl_reset *reset;
+	int ret;
 
 	desc = &s500_clk_desc;
 	owl_clk_regmap_init(pdev, desc);
 
+	reset = devm_kzalloc(&pdev->dev, sizeof(*reset), GFP_KERNEL);
+	if (!reset)
+		return -ENOMEM;
+
+	reset->rcdev.of_node = pdev->dev.of_node;
+	reset->rcdev.ops = &owl_reset_ops;
+	reset->rcdev.nr_resets = desc->num_resets;
+	reset->reset_map = desc->resets;
+	reset->regmap = desc->regmap;
+
+	ret = devm_reset_controller_register(&pdev->dev, &reset->rcdev);
+	if (ret)
+		dev_err(&pdev->dev, "Failed to register reset controller\n");
+
 	return owl_clk_probe(&pdev->dev, desc->hw_clks);
 }
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
