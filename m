Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B18F21CA1EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 06:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rlRhdccpGpBfSFqLaJX4vvsRyjKRAuQ0Vo6it8ScUVI=; b=L0o+jq0W7bkwrzG44XKc/aJI9r
	TxFRBsezkQX8CSSVYCbP5UBs3bfDWVzWl+1TMgkevUaiJs6YYdV1J+ITd3wW0ID+fQsX7vYbq52Ps
	1DQ6D0SpxWsbpXw3R+cIoicUdoONm+2rqxYjn3iDaiHez2GHnw+soVs/xzBM/i4kueJtU63Tah2c/
	p9Zd4uXBlIJrRkFA3yMVIi2ZFpViisoHolnw4qTuTWciR1UaiT627cIPHkGw+9peHkCPMlO3A0RBm
	U0E6SyjgwcV5qvhjdmK5lKAnlS1pYyC/yYg52LzcLnoovoPxGMFEcr7/q1GvaHKmfCkufgKw0JY/6
	yNqD5LOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWuPM-00077r-D1; Fri, 08 May 2020 04:14:44 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWuOJ-0006Q2-8S
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 04:13:40 +0000
Received: by mail-pg1-x544.google.com with SMTP id b8so261982pgi.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 21:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sGTXTVIeWZfMKGu2Tui/sSS6UaYWbPyLZVydf0J+7iw=;
 b=VrRdrzH7uKw/48TsVJC0k5uaudQ/8i4despiyT+mgT4Oe7Uw8VOpOj9Xe9kAwWSOrh
 FtHdoUcfmFSrMJMUPMSkVlbzZlsazu7YQ21sZyaU2m3P0V48G4dqdsiUOh2Q/rwbZXNy
 oqV1wlxFAiU8EQHraM/wta9w16G93woaX01sKbrtyrtgLftdjx/Zro/oT0KmPuTWsbfE
 LsmgyY+DZ9ULBA4C908KplqHUhCNMgRhNIYnh9D/GFBwWyo0nRqKQGw95vF8LczzNpsy
 OZII5c3ewtpx/1zWKnAbch5U03VOwcZd1k25XnYHOt1PqjJEBxdZ9kaLS8jj7SBzh/8m
 KTVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sGTXTVIeWZfMKGu2Tui/sSS6UaYWbPyLZVydf0J+7iw=;
 b=gTmJsDeNiqu2YeN+ko8At94XhwZ7kUIxmh87ascu7fVbGZdB7z59tF6OIqraMaRqvK
 DPob0QLgtZwhHA/jWsOQqT5mPtZSUFm5yq8wRghzNhmoYL5gJZK/GZlKdy88IDj8jKqF
 tbnNpSSzYreU9ahnDL209LI3oltSvjrosiNen8pqjulqTzxIg7BD7EfLARhoDIoJXKhk
 K6pGQV5E1gQu38BP2Px23frKg3y1TMRqDj0Fuga6P/F42/XOU+7OJtD5WnwNsJfcjM2L
 H+82+ZyYjULUnMIuQNlsvPkAD0bfcpSycxVdMxuskwjsGc0THG2sgZH1p+8Fvr9J8R4/
 SPqA==
X-Gm-Message-State: AGi0PuaTor8pPl5vzs9SRD/7Etiu3TSOvAtm+pr2nbxGOisz0pvZz52/
 ro83gZ3NkLn0n0I5/8tze0Y=
X-Google-Smtp-Source: APiQypKtSx7FFpg/lKRdr/OnMpMvj7PJ21YY/dFtMba1MMBSiMMuH8F3u50v0gIMSY0JufkuJgzOYQ==
X-Received: by 2002:a62:1994:: with SMTP id 142mr720891pfz.259.1588911218632; 
 Thu, 07 May 2020 21:13:38 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id h12sm314868pfq.176.2020.05.07.21.13.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 21:13:38 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
 daniel@ffwll.ch, mturquette@baylibre.com, sboyd@kernel.org
Subject: [PATCH v2 4/5] clk: stm32: Fix stm32f429 ltdc driver loading hang in
 clk set rate. keep ltdc clk running after kernel startup
Date: Fri,  8 May 2020 12:13:13 +0800
Message-Id: <1588911194-12433-5-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588911194-12433-1-git-send-email-dillon.minfei@gmail.com>
References: <1588911194-12433-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_211339_321233_13D815A9 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 dillon min <dillon.minfei@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

as store stm32f4_rcc_register_pll return to the wrong offset of clks,
so ltdc gate clk is null.
need change clks[PLL_VCO_SAI] to clks[PLL_SAI]

add CLK_IGNORE_UNUSED for ltdc to make sure clk not be freed by
clk_disable_unused

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 drivers/clk/clk-stm32f4.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-stm32f4.c b/drivers/clk/clk-stm32f4.c
index 18117ce..0ba73de 100644
--- a/drivers/clk/clk-stm32f4.c
+++ b/drivers/clk/clk-stm32f4.c
@@ -129,7 +129,8 @@ static const struct stm32f4_gate_data stm32f429_gates[] __initconst = {
 	{ STM32F4_RCC_APB2ENR, 20,	"spi5",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 21,	"spi6",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 22,	"sai1",		"apb2_div" },
-	{ STM32F4_RCC_APB2ENR, 26,	"ltdc",		"apb2_div" },
+	{ STM32F4_RCC_APB2ENR, 26,	"ltdc",		"apb2_div",
+		CLK_IGNORE_UNUSED },
 };
 
 static const struct stm32f4_gate_data stm32f469_gates[] __initconst = {
@@ -1757,7 +1758,7 @@ static void __init stm32f4_rcc_init(struct device_node *np)
 	clks[PLL_VCO_I2S] = stm32f4_rcc_register_pll("vco_in",
 			&data->pll_data[1], &stm32f4_clk_lock);
 
-	clks[PLL_VCO_SAI] = stm32f4_rcc_register_pll("vco_in",
+	clks[PLL_SAI] = stm32f4_rcc_register_pll("vco_in",
 			&data->pll_data[2], &stm32f4_clk_lock);
 
 	for (n = 0; n < MAX_POST_DIV; n++) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
