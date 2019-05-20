Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B19241B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 22:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I//lAxDt0h4ttc1W+zK881GaYhExI2Fc+2ST3ilpCeg=; b=I/7bkCHaNWz9hm
	NlVun0ObvbBuGKqnOttzjXwEKoWx0ySdcCPxrY58DydZS0N4+u9eLAk3kVhJJMO7PLWIMl8RpbqdU
	L6xdpBZV07J+CL/6pnueVV8g1kBDBJaJ0jzb4R5uWTvHBrdjSMBoGhJ52/FGhFJmd5GQob34Zsvjm
	pGpNhbAViUXXLVA/MjrDVjzBQLpqnlxdZVqknI0qw22Sfzoxwo/A1+NiUpYvDQzZP5/eV/NL4zllx
	SjlBPVPNVSGSmqY2fvRjBp3TLCIp6nXp5HE0OmIgZjt+HF056SeVlOcg5guUD+g/8Qh/P88lKf1Ya
	rc6V05TNS2t+UKqTQ+Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoWR-0002fz-8b; Mon, 20 May 2019 20:04:35 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoVS-0001Zj-Jw; Mon, 20 May 2019 20:03:39 +0000
Received: by mail-wm1-x344.google.com with SMTP id j187so577982wmj.1;
 Mon, 20 May 2019 13:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=do0dKBdes1ma1vSqJcaos6AAvi/dpG1xqDF1uEcr96s=;
 b=IX7WNp2h3OoeEP1kMReGf8ZvQsHhieYCtYrGNrzNgPAabFO9RFZj0G2yrehUXRbGdZ
 5RhJq+Lzn4nvDTo+ZTStdwmg8dz7IhlszdHFkksOVKuOgGGhp0aHWq8gDpqhDBDwBhg3
 vf+woIYXk2rmo9VDdDOqHnxVjsuoVnmsK0qYbRRLuFizo/C9BmZ2b7jxtLMqn68T/DnY
 mwFyJ91QdG12cOTPAnglCXosmPh4d79vpsMKAf2rxzvXD0A0MkjsRPe6WlTIaysUyaa8
 cLdU68JcNllPY5GUI5Pa1/eeuH5t/kkjuQOoyDLSrV98ynjAILH2y/MatgPRY+NdaInX
 Apzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=do0dKBdes1ma1vSqJcaos6AAvi/dpG1xqDF1uEcr96s=;
 b=K3qX2LxrHWx+fvj596MExABvsCpA9tN/vQchkr4j3WejtOEJvXzYaWObdpV8vCKmEG
 7caUcoKBx4rZ8nvpn4iUWs9TstXTvnB5YGhyQUcHoRHYjdKuIsVJlWtEerpmPvPRzz2Z
 E/5Vn72TjAp55VhHhFkt2PDZu1nJ1FCO3qKRQeW+PEZzuxhL1uMmqlh6xaRF0rYZ3/9X
 Y8dvx2RAAF5FTaDhYtrwToSysm9I6v+cBmk+tfIjgPkUG6zuIzN+WQI4dEArjKdFJPkK
 H1CbpaVWhlcnKOLpyhgsCTlfH46ZjKpJCHs0HLtzOAOpUT17ts9bYSnYrQR39DsZ96Mh
 i4eg==
X-Gm-Message-State: APjAAAVIoT0Yl3fS02odhV4mcwLQNeyl9lOR8KWgQ5K3D6nqnljd/nqu
 h/vYawK4ZQFgI7uXBlliV5tUt+C+
X-Google-Smtp-Source: APXvYqy9p/CmdbIKMiBY9W6jTMEHHTN6rUdiBTPoRPeTt56omD+TOTEfxBv7/Mwx3XTWgPEXlTjgiA==
X-Received: by 2002:a1c:a846:: with SMTP id r67mr620804wme.24.1558382613169;
 Mon, 20 May 2019 13:03:33 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133EE71009C356FA1F0E19AF9.dip0.t-ipconnect.de.
 [2003:f1:33ee:7100:9c35:6fa1:f0e1:9af9])
 by smtp.googlemail.com with ESMTPSA id t7sm23583379wrq.76.2019.05.20.13.03.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 13:03:32 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org
Subject: [PATCH 4/4] clk: meson: meson8b: add the cts_i958 clock
Date: Mon, 20 May 2019 22:03:19 +0200
Message-Id: <20190520200319.9265-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520200319.9265-1-martin.blumenstingl@googlemail.com>
References: <20190520200319.9265-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_130334_971406_C6BE999D 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the cts_i958 clock to control the clock source of the spdif output
block. It is used to select whether the clock source of the spdif output
is cts_amclk (when data are taken from i2s buffer) or the cts_mclk_i958
(when data are taken from the spdif buffer). The setup for this clock is
identical to GXBB, so this ports commit 7eaa44f6207fb6 ("clk: meson:
gxbb: add cts_i958 clock") to the Meson8/Meson8b/Meson8m2 clock driver.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/meson8b.c | 24 ++++++++++++++++++++++++
 drivers/clk/meson/meson8b.h |  2 +-
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index 13ce1783eead..537219fa573e 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -2259,6 +2259,26 @@ static struct clk_regmap meson8b_cts_mclk_i958 = {
 	},
 };
 
+static struct clk_regmap meson8b_cts_i958 = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_AUD_CLK_CNTL2,
+		.mask = 0x1,
+		.shift = 27,
+		},
+	.hw.init = &(struct clk_init_data){
+		.name = "cts_i958",
+		.ops = &clk_regmap_mux_ops,
+		.parent_names = (const char *[]){ "cts_amclk",
+						  "cts_mclk_i958" },
+		.num_parents = 2,
+		/*
+		 * The parent is specific to origin of the audio data. Let the
+		 * consumer choose the appropriate parent.
+		 */
+		.flags = CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
+	},
+};
+
 /* Everything Else (EE) domain gates */
 
 static MESON_GATE(meson8b_ddr, HHI_GCLK_MPEG0, 0);
@@ -2544,6 +2564,7 @@ static struct clk_hw_onecell_data meson8_hw_onecell_data = {
 		[CLKID_CTS_MCLK_I958_SEL]   = &meson8b_cts_mclk_i958_sel.hw,
 		[CLKID_CTS_MCLK_I958_DIV]   = &meson8b_cts_mclk_i958_div.hw,
 		[CLKID_CTS_MCLK_I958]	    = &meson8b_cts_mclk_i958.hw,
+		[CLKID_CTS_I958]	    = &meson8b_cts_i958.hw,
 		[CLK_NR_CLKS]		    = NULL,
 	},
 	.num = CLK_NR_CLKS,
@@ -2759,6 +2780,7 @@ static struct clk_hw_onecell_data meson8b_hw_onecell_data = {
 		[CLKID_CTS_MCLK_I958_SEL]   = &meson8b_cts_mclk_i958_sel.hw,
 		[CLKID_CTS_MCLK_I958_DIV]   = &meson8b_cts_mclk_i958_div.hw,
 		[CLKID_CTS_MCLK_I958]	    = &meson8b_cts_mclk_i958.hw,
+		[CLKID_CTS_I958]	    = &meson8b_cts_i958.hw,
 		[CLK_NR_CLKS]		    = NULL,
 	},
 	.num = CLK_NR_CLKS,
@@ -2976,6 +2998,7 @@ static struct clk_hw_onecell_data meson8m2_hw_onecell_data = {
 		[CLKID_CTS_MCLK_I958_SEL]   = &meson8b_cts_mclk_i958_sel.hw,
 		[CLKID_CTS_MCLK_I958_DIV]   = &meson8b_cts_mclk_i958_div.hw,
 		[CLKID_CTS_MCLK_I958]	    = &meson8b_cts_mclk_i958.hw,
+		[CLKID_CTS_I958]	    = &meson8b_cts_i958.hw,
 		[CLK_NR_CLKS]		    = NULL,
 	},
 	.num = CLK_NR_CLKS,
@@ -3171,6 +3194,7 @@ static struct clk_regmap *const meson8b_clk_regmaps[] = {
 	&meson8b_cts_mclk_i958_sel,
 	&meson8b_cts_mclk_i958_div,
 	&meson8b_cts_mclk_i958,
+	&meson8b_cts_i958,
 };
 
 static const struct meson8b_clk_reset_line {
diff --git a/drivers/clk/meson/meson8b.h b/drivers/clk/meson/meson8b.h
index c3787418088e..c889fbeec30f 100644
--- a/drivers/clk/meson/meson8b.h
+++ b/drivers/clk/meson/meson8b.h
@@ -178,7 +178,7 @@
 #define CLKID_CTS_MCLK_I958_SEL	210
 #define CLKID_CTS_MCLK_I958_DIV	211
 
-#define CLK_NR_CLKS		213
+#define CLK_NR_CLKS		214
 
 /*
  * include the CLKID and RESETID that have
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
