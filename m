Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148761FD2BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 18:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqw+D949BNaX1f/iR2ITiMOJXxDaD5EOopAMwwntbw0=; b=u0d7jZWWbf2TZc
	1gNELEWz1I41ditufNeMcTtDxufkWlVxyms4CbSZRmHehk7jdci/ze3jusRiUF4DoW2V/JicIuV5b
	s/Nywrh7WsmkAb1ksxxdXnFmS1g7O5W9TRshHgwkKM8ZPEq4VQveuyaLx5MbpVT+TbAREl+/fKPbE
	c9u+t4eB44tubV5siw6Vp/FJQ/zYU2x5X9dhsZspc+m8XtF8q6nRCjDPrxggCNoy0wW9dfSiRQBGF
	FcGo949DTAHk8McZskbyn/B0UdORdiUwM3JXZhEcrr5+WGWqefk/W9oi7nXYJoKxRNcGa0ToVzhYF
	tXObYUITMzVAdxxQ4HCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbGM-00075D-OB; Wed, 17 Jun 2020 16:50:10 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbEe-0005lA-Hs; Wed, 17 Jun 2020 16:48:26 +0000
Received: by mail-ed1-x541.google.com with SMTP id x25so2502855edr.8;
 Wed, 17 Jun 2020 09:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QrtlUREQq2lhgOt3whoJddN27v5YME2qlHZx5rQeOQQ=;
 b=XAEQWxoFH30O+DOYVfJHuCz5hmfqCrra8kIbvJncG1vBUB/UaCXQHWq+u/MPQe9Vw6
 LhkWK9s3j1FMg2VZkTBg696VzGLadiVXdL3pCsbfBG05cuYKVRN45mZZRcLkmDmi4o5R
 TLP+ekrryklbqLGJ5isN/ArPBellfmdiAEVgVua81ajDu6xtv7kd4p4ZHT1K2grwtShh
 iHhUMtfda69+/lScK/oZ/QfZ7ZPz6Ik726B3Nt3Ip3tW7Gu7O6JiGja8PuKFKcDSf7fX
 SfhndMXzTSuDktTEjQFIHp7tmknaVsH0PAHGcwTTxhbW8IpcwLJupvvpPAh7PdPltcrG
 18WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QrtlUREQq2lhgOt3whoJddN27v5YME2qlHZx5rQeOQQ=;
 b=rSkVlwUqaFpKiLfxQ7I+28H1tMoKUUN9xnRnxUpHgkLzmgWaL5RHu3MvjvQ9F9VcTf
 ctSUOAxdAiPI7Cndl/3w2mY4bJ/yor1Wwf2DKcnhUGrcETTTdjsG/XSql37pkuDhDvEX
 jiu9BxQbaxPtstWXq+139aZd//9LFexlRCWYkiRD5TxlKVtIRoj3fqHfHBYNFTRJsQnD
 DMlmMybgdpFxOQTv83mYJLtymrwJGa6qFnl+/pN66czuIBONvygoiPDOwpeaksDXrJ+X
 yGWuJ2ruhDljfHPNGh5Ps/A4flWrxkxjpdHeN9ti7OgZZoxqx/0/C4kBqIGnYeC9n3Ae
 z5Og==
X-Gm-Message-State: AOAM530qqkSSQNNv/JLYqrpcsoYfCgXC2S5spbf97XPWIFySP7J06q15
 SbPr7fKRLdL2zDwumlr5MOA=
X-Google-Smtp-Source: ABdhPJyP9eVzPud4Ue7Xcr3fbTydj8xnuONF2GxezOsTe+R/iMs6MadVtMT1IxfrF2uMoWhRltFNVg==
X-Received: by 2002:a05:6402:1fc:: with SMTP id i28mr69249edy.63.1592412502558; 
 Wed, 17 Jun 2020 09:48:22 -0700 (PDT)
Received: from localhost.localdomain ([188.24.129.96])
 by smtp.gmail.com with ESMTPSA id v3sm127124edj.89.2020.06.17.09.48.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 09:48:22 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 06/11] clk: actions: Add APB, DMAC,
 GPIO clock support for Actions S500 SoC
Date: Wed, 17 Jun 2020 19:48:06 +0300
Message-Id: <341a92d9b84e9fca2bf646832c23d49ba6255ae7.1592407030.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
References: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_094824_616826_FDF04499 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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

Add support for the missing APB, DMAC and GPIO clocks in the Actions
Semi S500 SoC clock driver.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
---
 drivers/clk/actions/owl-s500.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/clk/actions/owl-s500.c b/drivers/clk/actions/owl-s500.c
index 0eb83a0b70bc..025a8f6d6482 100644
--- a/drivers/clk/actions/owl-s500.c
+++ b/drivers/clk/actions/owl-s500.c
@@ -175,6 +175,8 @@ static OWL_MUX(dev_clk, "dev_clk", dev_clk_mux_p, CMU_DEVPLL, 12, 1, CLK_SET_RAT
 static OWL_MUX(ahbprediv_clk, "ahbprediv_clk", ahbprediv_clk_mux_p, CMU_BUSCLK1, 8, 3, CLK_SET_RATE_PARENT);
 
 /* gate clocks */
+static OWL_GATE(gpio_clk, "gpio_clk", "apb_clk", CMU_DEVCLKEN0, 18, 0, 0);
+static OWL_GATE(dmac_clk, "dmac_clk", "h_clk", CMU_DEVCLKEN0, 1, 0, 0);
 static OWL_GATE(spi0_clk, "spi0_clk", "ahb_clk", CMU_DEVCLKEN1, 10, 0, CLK_IGNORE_UNUSED);
 static OWL_GATE(spi1_clk, "spi1_clk", "ahb_clk", CMU_DEVCLKEN1, 11, 0, CLK_IGNORE_UNUSED);
 static OWL_GATE(spi2_clk, "spi2_clk", "ahb_clk", CMU_DEVCLKEN1, 12, 0, CLK_IGNORE_UNUSED);
@@ -184,6 +186,7 @@ static OWL_GATE(hdmi_clk, "hdmi_clk", "hosc", CMU_DEVCLKEN1, 3, 0, 0);
 
 /* divider clocks */
 static OWL_DIVIDER(h_clk, "h_clk", "ahbprediv_clk", CMU_BUSCLK1, 12, 2, NULL, 0, 0);
+static OWL_DIVIDER(apb_clk, "apb_clk", "ahb_clk", CMU_BUSCLK1, 14, 2, NULL, 0, 0);
 static OWL_DIVIDER(rmii_ref_clk, "rmii_ref_clk", "ethernet_pll_clk", CMU_ETHERNETPLL, 1, 1, rmii_ref_div_table, 0, 0);
 
 /* factor clocks */
@@ -428,6 +431,9 @@ static struct owl_clk_common *s500_clks[] = {
 	&spdif_clk.common,
 	&nand_clk.common,
 	&ecc_clk.common,
+	&apb_clk.common,
+	&dmac_clk.common,
+	&gpio_clk.common,
 };
 
 static struct clk_hw_onecell_data s500_hw_clks = {
@@ -484,6 +490,9 @@ static struct clk_hw_onecell_data s500_hw_clks = {
 		[CLK_SPDIF]		= &spdif_clk.common.hw,
 		[CLK_NAND]		= &nand_clk.common.hw,
 		[CLK_ECC]		= &ecc_clk.common.hw,
+		[CLK_APB]		= &apb_clk.common.hw,
+		[CLK_DMAC]		= &dmac_clk.common.hw,
+		[CLK_GPIO]		= &gpio_clk.common.hw,
 	},
 	.num = CLK_NR_CLKS,
 };
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
