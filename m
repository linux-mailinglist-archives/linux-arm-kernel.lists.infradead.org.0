Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F356B1D764F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:12:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jFKcKzFqG06tQp1vKDp7DHFu219AG+S7usFEmV6pf0E=; b=pLFNzvCRWLan9dGvobbExOJsCO
	GrY8WAr2fpwihTMhs/RBNP98hCXPr+bGUr1LUJZqWZzFUSvFrTrYZ8FjZOXlbWtfAT/kjKI4f6xYm
	eTAst9NshpiFjHfo8qTFUV4/9k/+lonpHC48Nl/nKW57LuE/OoH7PuIYfw5S6KznaJYhbfU68G9wF
	8N+nOLycAYUYiUkwdoper1D3L/lr591UzUsO8Y2ZCDO1V/gw3O/65LJ9Ku/mvPKyY2sP19thEnTM8
	m0smL/LpPJG9kTIupXrlhkqj3MD7KQ+2NH9/rWjjHY5Qxpe/VaBRV4gdnRLO//40KlxPvHb8oEpfO
	Ex74AzGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jadgp-0002Hj-Rb; Mon, 18 May 2020 11:12:11 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jadet-0007O6-Rm
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 11:10:15 +0000
Received: by mail-pj1-x1043.google.com with SMTP id s69so4985816pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 04:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=27PbOaMbBVWFDUpgZSoSDpOzKD3UMVb1DqVNCc5DcEA=;
 b=UitJdb8yW4cB8fRlc3JjAg8ulOAxElgqba+leJ02+HWVzReNhP+SfMJBe/0xauSVLz
 J3xwJzestItkmbiQMMeFDV/pf3IenhubvFo/kqCQMM25hEUDc+q1gRD7qFfwaCJdXxXF
 QBnLnPy3C27eIHvNI9H3Dm3ss/YWxQS4b3E484IH/w3olmmX7HwQKSmV9e5WZt2mKF+E
 gIrtK4ma7ItLVGMwwXo3uAJhNpUja6iXYZ9+9HIy7gBanA0QY163aGyLYGFlEMbj6aTi
 uCSy+MN4Kb9zZzK0nxDeuTB0BWf4+FjvyW1wrsr2a1cRIfSxrO/QyK/TgNMgm8wWnf0Y
 +4tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=27PbOaMbBVWFDUpgZSoSDpOzKD3UMVb1DqVNCc5DcEA=;
 b=aH+YMqjvzgnlGkH2gqPQCvUHRzqLzbe5V8+hZdGd/INL1cTO70z9LXJY3Ca2ZUwBOh
 lLqhb9EU/a3WwE4czA13grYTGWe+Wk6DsXZLKNmAbpKWIdq/ke+vo4E4FLD1WBQDdw3c
 PQBvcTohmivoAhb3TisH+Mg38W9Kb8WvJWGPZJIduP95w0vQBi8fB/lYfabsM2KaYI5m
 MCldrZIpT0FuPRVsNj4VUrFlwau3nsLxNbr5w5JMbab9cKgRZGvg7WRFOdkAe9pWhYSJ
 Iud6Jprmx6GcLU18kdkT9k6Ev5rssEpvr9Eldb/C6sX5S1fhWwL4UqSErrx7R7t6BI9j
 dI7Q==
X-Gm-Message-State: AOAM531gtQVnxkyHsp15rb28QgdHP1mCOXe7qaQDzRUB2qXWq8vraFMn
 8EFgo4N5naOngMT6m0aijKc=
X-Google-Smtp-Source: ABdhPJxxao0Kj7GXRQc9ppHfrOHRFrIZdWBFk8KcyBMOwQTFUDcMlXar/bj1RDMz8W105aJ1ZHFVug==
X-Received: by 2002:a17:90a:ba18:: with SMTP id
 s24mr19917130pjr.192.1589800208703; 
 Mon, 18 May 2020 04:10:08 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id a15sm8290630pju.3.2020.05.18.04.10.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 May 2020 04:10:08 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 broonie@kernel.org, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
 daniel@ffwll.ch, mturquette@baylibre.com, sboyd@kernel.org
Subject: [PATCH v4 7/8] clk: stm32: Fix stm32f429's ltdc driver hang in set
 clock rate.
Date: Mon, 18 May 2020 19:09:24 +0800
Message-Id: <1589800165-3271-8-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
References: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_041012_086631_762D9FE7 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-spi@vger.kernel.org,
 dillon min <dillon.minfei@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

fix duplicated ltdc clock register to 'clk_core' case ltdc's clock
turn off by clk_disable_unused()

ltdc set clock rate crashed:
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

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
Hi Stephen Boyd:

thanks for reviewing, this patch fix the wrong use of clk ignore unused.

thanks.

Changes since V3:
1 drop last wrong changes about 'CLK_IGNORE_UNUSED' patch
2 fix PLL_SAI mismatch with PLL_VCO_SAI
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
