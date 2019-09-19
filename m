Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DDAB7670
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:37:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFVCVS52iSdIngyUlOT737A758vBph9/Eex+5eLNIh0=; b=SwcbYzoilVN4a4
	mkOc6TRrLshCFTw2GhOE+/MiXiAa+JrzhNl9EsUBgKLjGsfYfTV9sldlyV3dbVwOxaId7OQJ2bo5Z
	HgUsGo4nVGtkX8pn5AKAX7jFI4Ix7ej/hfvz7SqM2QJ56G5vu6DE7WqDCi8XtJ84ILq8DBupAQoXm
	5YY2VlZGrcgg+luNqT7KIosYPX7p4rYOlkaQMoXu8x/X+GBdEhp1v1ZY2uIZGvArvDDSBZzHVeSYz
	eH2k2oSg9GEzN/Fss5GvVGLGIiWt+wc6sV7MNKBas+jcPSxMSFY/0ZBgrExz+gOPT3yAS08xi27A7
	A2Z5bIWQFJNKQtpy1IcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAssR-0006Lp-A3; Thu, 19 Sep 2019 09:37:27 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAsra-0005qh-7K
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 09:36:35 +0000
Received: by mail-wm1-x342.google.com with SMTP id i16so3586470wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 02:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ve+wzZh8jIbj36VSXYKI7yL2XeCKd4lhGJ7BfZhWHhk=;
 b=oNG10dYrCbn1pG2d0FdlS4/80H49wI5hR3HIWwCnhqqjA62jSItQNspBjzxvSMedTr
 4q8EAzYaQHcdosVIBhH6EkIz97rHE3T2imgWxPw+AJbGfy+/3bFQWAssrFRGNQyZZxws
 BqcbL59e6P+hICngHdTLTNZQJxf+Kigt4Arc8y+Zy41JmjnfhoGqIfb0KaDnvFaZc1te
 7zkGKrqNzp10j43LIeTAazbGfmtTUShsFgb11nRienzG70jNMu2lh/L0WmRaiY+zrNQC
 cECvYUo+1KTMaRsTURjUfLEAVXk7x+cvMRG9mqFeUaTb4mCSQrwEBkE0bVLHhhe+9x3Z
 Xk2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ve+wzZh8jIbj36VSXYKI7yL2XeCKd4lhGJ7BfZhWHhk=;
 b=QOj8T/cJkR7GtvojTxZfkDa0HojX6mH2dkGed66QYYZySobnKqvS24/icoXCm957HZ
 DL8CFvtI9vdG4OE+yj3oEco5kpKmKCVyrVUhTxkywBGAuYQibnryTjU50qIeyBDJA2Ea
 WSi+Q9HvFo7CEVJGOjsU3KDqM2UF0idwcufCznV/2vgX3tL0QWv2FBFW4q/EUXuWdzn0
 bqoKfsLgJ81l9AI/hJsHdh4P7EqHuYDCvB04KLeThlv/YiuTle1JblqbJ2yt8lgbm4PM
 dsmSAhmhvTZUrElZrjrp2KMTC8Jnhgh/x5AsFcwrDuJP8lNvRCxuz4X1/YxhpbqWvhkD
 fK2Q==
X-Gm-Message-State: APjAAAW38R1xmoob+lIxtR5RPOodpk9Dly15HDm/e015s4cc7kvQDnWA
 9KjOIzYwHPYt8+zI7Nk0JwXO/Q==
X-Google-Smtp-Source: APXvYqz9sp/AaYazMI2H4L0eBMS1cnM6EY4+65T2+0n8IFCg9CSZgaPu7/ywo3hsKzx2hiNglBB29A==
X-Received: by 2002:a1c:c589:: with SMTP id v131mr1915621wmf.163.1568885790845; 
 Thu, 19 Sep 2019 02:36:30 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id q19sm16701186wra.89.2019.09.19.02.36.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 02:36:30 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH 2/3] clk: meson: g12a: set CLK_MUX_ROUND_CLOSEST on the cpu
 clock muxes
Date: Thu, 19 Sep 2019 11:36:26 +0200
Message-Id: <20190919093627.21245-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190919093627.21245-1-narmstrong@baylibre.com>
References: <20190919093627.21245-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_023634_261917_3ABD9DEC 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When setting the 100MHz, 500MHz, 666MHz and 1GHz rate for CPU clocks,
CCF will use the SYS_PLL to handle these frequencies, but:
- using FIXED_PLL derived FCLK_DIV2/DIV3 clocks is more precise
- the Amlogic G12A/G12B/SM1 Suspend handling in firmware doesn't
  handle entering suspend using SYS_PLL for these frequencies

Adding CLK_MUX_ROUND_CLOSEST on all the muxes of the non-SYS_PLL
cpu clock tree helps CCF always selecting the FCLK_DIV2/DIV3 as source
for these frequencies.

Fixes: ffae8475b90c ("clk: meson: g12a: add notifiers to handle cpu clock change")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/clk/meson/g12a.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index 33c7e04b4a82..b3af61cc6fb9 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -343,6 +343,7 @@ static struct clk_regmap g12a_cpu_clk_premux0 = {
 		.offset = HHI_SYS_CPU_CLK_CNTL0,
 		.mask = 0x3,
 		.shift = 0,
+		.flags = CLK_MUX_ROUND_CLOSEST,
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn0_sel",
@@ -409,6 +410,7 @@ static struct clk_regmap g12a_cpu_clk_postmux0 = {
 		.offset = HHI_SYS_CPU_CLK_CNTL0,
 		.mask = 0x1,
 		.shift = 2,
+		.flags = CLK_MUX_ROUND_CLOSEST,
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn0",
@@ -465,6 +467,7 @@ static struct clk_regmap g12a_cpu_clk_dyn = {
 		.offset = HHI_SYS_CPU_CLK_CNTL0,
 		.mask = 0x1,
 		.shift = 10,
+		.flags = CLK_MUX_ROUND_CLOSEST,
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn",
@@ -484,6 +487,7 @@ static struct clk_regmap g12a_cpu_clk = {
 		.offset = HHI_SYS_CPU_CLK_CNTL0,
 		.mask = 0x1,
 		.shift = 11,
+		.flags = CLK_MUX_ROUND_CLOSEST,
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk",
@@ -503,6 +507,7 @@ static struct clk_regmap g12b_cpu_clk = {
 		.offset = HHI_SYS_CPU_CLK_CNTL0,
 		.mask = 0x1,
 		.shift = 11,
+		.flags = CLK_MUX_ROUND_CLOSEST,
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk",
@@ -522,6 +527,7 @@ static struct clk_regmap g12b_cpub_clk_premux0 = {
 		.offset = HHI_SYS_CPUB_CLK_CNTL,
 		.mask = 0x3,
 		.shift = 0,
+		.flags = CLK_MUX_ROUND_CLOSEST,
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn0_sel",
@@ -567,6 +573,7 @@ static struct clk_regmap g12b_cpub_clk_postmux0 = {
 		.offset = HHI_SYS_CPUB_CLK_CNTL,
 		.mask = 0x1,
 		.shift = 2,
+		.flags = CLK_MUX_ROUND_CLOSEST,
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn0",
@@ -644,6 +651,7 @@ static struct clk_regmap g12b_cpub_clk_dyn = {
 		.offset = HHI_SYS_CPUB_CLK_CNTL,
 		.mask = 0x1,
 		.shift = 10,
+		.flags = CLK_MUX_ROUND_CLOSEST,
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn",
@@ -663,6 +671,7 @@ static struct clk_regmap g12b_cpub_clk = {
 		.offset = HHI_SYS_CPUB_CLK_CNTL,
 		.mask = 0x1,
 		.shift = 11,
+		.flags = CLK_MUX_ROUND_CLOSEST,
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk",
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
