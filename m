Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F39C1E05A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 05:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4C87YMfTm0wAGgBjtnNm8iRLztceaoH9aZfarVWFWks=; b=Mp+9yIPmYY77BV1j2uxbARrMby
	pZZwNZiop0n2z/2jCjUxg3VDAsrigHecry5M4VmvtE6+1anUU1McsK36KtYnkDKwcbF9O6OtVYcXe
	xHlvZpuZHH29lWTfs2WBT4b1PrUwVCw9aDx8NdQkMoZxFk1ANiGBnD9gpyYaqPwuOWs4FpAjJxPlD
	S3U4indhElTIqsoSgy9j0azNeqMbLTclj+3IgMfehp1trLlYxnuRbqM0RA+pJbn2KiblaJ1uiJQ/Y
	tWqtwxDqBm/KLDNpfiMvHhpiXvFm9VYeVmeIvEocV23+4A8lkev/gqpOdO1YjCt9V02HMjof+E3WN
	DExgCw9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd45f-0000Z7-T1; Mon, 25 May 2020 03:47:51 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd442-0007kg-AJ
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 03:46:12 +0000
Received: by mail-pj1-x1042.google.com with SMTP id s69so8003427pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 20:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JHR9IFaRgCyJGWikuHqyC0B14pMQIGmyd5Kpq3MNpmQ=;
 b=iz2EkdIG3/RqK9gUgyu2o4iN9HPdnIvCoCCpRwW1qd5e35SloeuFv6L7XUj7ZqqeJ6
 LbwKTi9GRKHJAmDxNPDCYbEVK+Cv7kWHyh8u5lMY0tI51s9VfTd18qBXSS92X6tsnmRL
 Ppxpi6MgO7teWvlPFFCP63GE0Q/Dczn6Nx+7aLgPTZbMf0kIDhuBySchsNpEPFczpMh2
 sKLt8SAA+J4iPs0wJvkisXGwQsHT9bjt3lVkkwiM1j9yd1hodeT/KTmC1AUXCwWM8xNQ
 XOL1owO12FeMDYfvUdazAEO3Ui07kMiVFywcUOFm2ywnReuW/5bz/8VWNVqY9FJRI/lM
 3nxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JHR9IFaRgCyJGWikuHqyC0B14pMQIGmyd5Kpq3MNpmQ=;
 b=KjGWVmFaOqF+gLZ09uBuFwwYvgd5fjXFGriDlzK2DWminxOp007fgiobFTKeTXL2/A
 EHNk8LBnZGFB1TZbSBEyNeFfjxwBlnU25leMvxoMqWIpdxTWsELPbxkqXw0wVNlOhy1X
 ici73pIqwQ38RKjmwjDu1fdBMvI6iVPCg6UI1TBjF8qqmI3xRFZbYeUEaX4EZmzwp6EI
 m0xbCCNojwjuoN7L6PUTqYbMGlk9RVJv4jAc1ZL8qa8+uNkjeqofWBK1Cui5PY74GV7D
 yY/xiyOXzdWB3imEuv4KD2KyY8wuGKnj+vQn3/b0DRlkKPWvdXSPtydHtJ3uI57EZKzb
 JZIg==
X-Gm-Message-State: AOAM531cjz0IAjMBwnGkSjGfeB+2h9N+y0YlHYIMvld+y8+xDlpyS2CB
 eaOzXf59k74dg5avJidFSFC0Ph+SQXw=
X-Google-Smtp-Source: ABdhPJzJrYHR/plluRNQNEeUqmbEYzI4Fk9f2Ze1yZ1DdZkWDcFo8tEe3yRHg3Z/d/BuOqTZ+HFmaA==
X-Received: by 2002:a17:90a:c385:: with SMTP id
 h5mr18680382pjt.147.1590378369159; 
 Sun, 24 May 2020 20:46:09 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id i98sm12152831pje.37.2020.05.24.20.46.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 24 May 2020 20:46:08 -0700 (PDT)
From: dillon.minfei@gmail.com
To: linus.walleij@linaro.org,
	broonie@kernel.org
Subject: [PATCH v5 5/8] clk: stm32: Fix stm32f429's ltdc driver hang in set
 clock rate,
 fix duplicated ltdc clock register to 'clk_core' case ltdc's clock turn off by
 clk_disable_unused()
Date: Mon, 25 May 2020 11:45:45 +0800
Message-Id: <1590378348-8115-6-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
References: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_204610_481572_D6E7AE33 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

ltdc set clock rate crashed
   'post_div_data[]''s pll_num is PLL_I2S, PLL_SAI (number is 1,2). but,
    as pll_num is offset of 'clks[]' input to clk_register_pll_div(), which
    is FCLK, CLK_LSI, defined in 'include/dt-bindings/clock/stm32fx-clock.h'
    so, this is a null object at the register time.
    then, in ltdc's clock is_enabled(), enable(), will call to_clk_gate().
    will return a null object, cause kernel crashed.
    need change pll_num to PLL_VCO_I2S, PLL_VCO_SAI for 'post_div_data[]'

 duplicated ltdc clock
   'stm32f429_gates[]' has a member 'ltdc' register to 'clk_core', but no
    upper driver use it, ltdc driver use the lcd-tft defined in
   'stm32f429_aux_clk[]'. after system startup, as stm32f429_gates[]'s ltdc
    enable_count is zero, so turn off by clk_disable_unused()

Changes since V3:
1 drop last wrong changes about 'CLK_IGNORE_UNUSED' patch
2 fix PLL_SAI mismatch with PLL_VCO_SAI

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 drivers/clk/clk-stm32f4.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/clk-stm32f4.c b/drivers/clk/clk-stm32f4.c
index 18117ce..fa62e99 100644
--- a/drivers/clk/clk-stm32f4.c
+++ b/drivers/clk/clk-stm32f4.c
@@ -129,7 +129,6 @@ static const struct stm32f4_gate_data stm32f429_gates[] __initconst = {
 	{ STM32F4_RCC_APB2ENR, 20,	"spi5",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 21,	"spi6",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 22,	"sai1",		"apb2_div" },
-	{ STM32F4_RCC_APB2ENR, 26,	"ltdc",		"apb2_div" },
 };
 
 static const struct stm32f4_gate_data stm32f469_gates[] __initconst = {
@@ -557,13 +556,13 @@ static const struct clk_div_table post_divr_table[] = {
 
 #define MAX_POST_DIV 3
 static const struct stm32f4_pll_post_div_data  post_div_data[MAX_POST_DIV] = {
-	{ CLK_I2SQ_PDIV, PLL_I2S, "plli2s-q-div", "plli2s-q",
+	{ CLK_I2SQ_PDIV, PLL_VCO_I2S, "plli2s-q-div", "plli2s-q",
 		CLK_SET_RATE_PARENT, STM32F4_RCC_DCKCFGR, 0, 5, 0, NULL},
 
-	{ CLK_SAIQ_PDIV, PLL_SAI, "pllsai-q-div", "pllsai-q",
+	{ CLK_SAIQ_PDIV, PLL_VCO_SAI, "pllsai-q-div", "pllsai-q",
 		CLK_SET_RATE_PARENT, STM32F4_RCC_DCKCFGR, 8, 5, 0, NULL },
 
-	{ NO_IDX, PLL_SAI, "pllsai-r-div", "pllsai-r", CLK_SET_RATE_PARENT,
+	{ NO_IDX, PLL_VCO_SAI, "pllsai-r-div", "pllsai-r", CLK_SET_RATE_PARENT,
 		STM32F4_RCC_DCKCFGR, 16, 2, 0, post_divr_table },
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
