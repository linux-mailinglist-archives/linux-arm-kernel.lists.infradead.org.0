Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A0118088E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:51:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tk3idSvb39fQuhoG1rYkOElpt/5SQBVMNdJHHHBxJpo=; b=QAggjN4gtAuSp+
	tprx1A5OSzwtlECeGJn96P4v/TMBQOW4de0lWIhWWOxVKYg1xugAXqExw6w47iwOdrqEQe/EF3aW/
	WLQkQjWILZixZfj//DwIyAK7q0Me87ed4jA5U47eoMw8giTuPrNQA4pYp5Gsf8oYkGoc8mZuWNkXm
	aOExVUcaMrnqQyHMMIFR6WtxTkygdFbknvdTMqCXXU7H5iEREey8JWP+Rd9D+0vOrKeWFsw/nrw5i
	Jo9EPyFbc/MyaHikpBk6KmmngJ1vjQngAHKMDPz+aUnWsW3xIZxFSyN61fOeWacCEt+Jg/UKcjmZs
	Cr7MceBiNntU5qU23hjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBku6-00041I-7w; Tue, 10 Mar 2020 19:51:02 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBksv-00020m-9n
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 19:49:51 +0000
Received: by mail-pl1-x641.google.com with SMTP id g6so5867272plt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 12:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z9ZKe9DPK55G94wFxazjpOuNWkVTtqx7CppQ9HO6NqY=;
 b=QxA1mfJNuNo101umOeAqQ1YfnCfKPylu4nJIhD8ICZb+kA1lQjLgkrzbxjk25h9SQr
 pZ5PkAaIlTsqDsvLkgZqL3tlvvp1XW9cPNAyB78bh/rEsJurcqd5DWeG30lDAWmR39Ad
 uW7KbxfzTH4jlBTd0WHwYTYPNKorO5VQDSD4WM6EKOJZ9tIt3gq3Lq/jWHo2sQ/r/y+A
 DhW3HSUJ0GFiNByu57by+d8FfdQSqK2BDl3J4+4tGoo0iMBayPuPQlUu9G4ljDYR0c3S
 VZV0FovHyoTyzy2UMcwIU/SDGBlzJh2RwIVQYo9kTDPW0n2g3u8GRg7K4BwXTRIaLJrj
 rgnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z9ZKe9DPK55G94wFxazjpOuNWkVTtqx7CppQ9HO6NqY=;
 b=sGNg8mEyIaqVnlKRTAGkjSnHNIY3iz4dvAQjZO8EkI2n00YNRw6N7tu2qjSFGzBnPj
 YaqFsOKrJ8azknRA6Xc3fXQLsbpWF1Odr74lA4byWckWPpVmaAGb6LeJl/C5IMvhuNVv
 Tk0XNTOGapb8bP91FaPOkSQ6qZyiNJSyImCkopfYCHt+rDi5fvpPIWGzjzEnc/swUBgW
 WAqTW2+NgQvn2xt+JRXzLMknzhsvootP+kJiAuUolNUkbdwX3mdD6/sacLNhNzeo7+Vq
 9OzZ/OlYZUO+BapDY1VCtT4NxGZsT+qB7C+ILeWN2LVZo/Px28vnDqzISRbWfnuVVsDc
 B5cA==
X-Gm-Message-State: ANhLgQ3qd4P825rEpF2rqhKEU4VsgXg+YErJ3ke3+6G4976Er4fKDOvW
 JX9FWM7AvuoUipEC+zD8ZxU=
X-Google-Smtp-Source: ADFU+vttShOB0et+FIE14Un1vRU7k4VYoJ6iz35zEx98edQYoJE8W2h24Jqu/B/zyrxKywi6Kqvs+A==
X-Received: by 2002:a17:902:9b95:: with SMTP id
 y21mr8418083plp.101.1583869788247; 
 Tue, 10 Mar 2020 12:49:48 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.228])
 by smtp.gmail.com with ESMTPSA id d19sm3784490pfd.82.2020.03.10.12.49.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 12:49:47 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCHv3 5/5] clk: samsung: exynos542x: Move FSYS subsystem clocks to
 its sub-CMU
Date: Tue, 10 Mar 2020 19:48:54 +0000
Message-Id: <20200310194854.831-6-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200310194854.831-1-linux.amoon@gmail.com>
References: <20200310194854.831-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_124949_490524_F55A89A0 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

FSYS power domain support usbdrd3, pdma and usb2 power gaiting,
hence move FSYS clk setting to sub-CMU block to support power domain
on/off sequences for device nodes.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
New patch in the series
---
 drivers/clk/samsung/clk-exynos5420.c | 45 +++++++++++++++++++++-------
 1 file changed, 34 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index c9e5a1fb6653..6c4c47dfcdce 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -859,12 +859,6 @@ static const struct samsung_div_clock exynos5x_div_clks[] __initconst = {
 	DIV(0, "dout_maudio0", "mout_maudio0", DIV_MAU, 20, 4),
 	DIV(0, "dout_maupcm0", "dout_maudio0", DIV_MAU, 24, 8),
 
-	/* USB3.0 */
-	DIV(0, "dout_usbphy301", "mout_usbd301", DIV_FSYS0, 12, 4),
-	DIV(0, "dout_usbphy300", "mout_usbd300", DIV_FSYS0, 16, 4),
-	DIV(0, "dout_usbd301", "mout_usbd301", DIV_FSYS0, 20, 4),
-	DIV(0, "dout_usbd300", "mout_usbd300", DIV_FSYS0, 24, 4),
-
 	/* MMC */
 	DIV(0, "dout_mmc0", "mout_mmc0", DIV_FSYS1, 0, 10),
 	DIV(0, "dout_mmc1", "mout_mmc1", DIV_FSYS1, 10, 10),
@@ -1031,8 +1025,6 @@ static const struct samsung_gate_clock exynos5x_gate_clks[] __initconst = {
 
 	/* FSYS Block */
 	GATE(CLK_TSI, "tsi", "aclk200_fsys", GATE_BUS_FSYS0, 0, 0, 0),
-	GATE(CLK_PDMA0, "pdma0", "aclk200_fsys", GATE_BUS_FSYS0, 1, 0, 0),
-	GATE(CLK_PDMA1, "pdma1", "aclk200_fsys", GATE_BUS_FSYS0, 2, 0, 0),
 	GATE(CLK_UFS, "ufs", "aclk200_fsys2", GATE_BUS_FSYS0, 3, 0, 0),
 	GATE(CLK_RTIC, "rtic", "aclk200_fsys", GATE_IP_FSYS, 9, 0, 0),
 	GATE(CLK_MMC0, "mmc0", "aclk200_fsys2", GATE_IP_FSYS, 12, 0, 0),
@@ -1040,9 +1032,6 @@ static const struct samsung_gate_clock exynos5x_gate_clks[] __initconst = {
 	GATE(CLK_MMC2, "mmc2", "aclk200_fsys2", GATE_IP_FSYS, 14, 0, 0),
 	GATE(CLK_SROMC, "sromc", "aclk200_fsys2",
 			GATE_IP_FSYS, 17, CLK_IGNORE_UNUSED, 0),
-	GATE(CLK_USBH20, "usbh20", "aclk200_fsys", GATE_IP_FSYS, 18, 0, 0),
-	GATE(CLK_USBD300, "usbd300", "aclk200_fsys", GATE_IP_FSYS, 19, 0, 0),
-	GATE(CLK_USBD301, "usbd301", "aclk200_fsys", GATE_IP_FSYS, 20, 0, 0),
 	GATE(CLK_SCLK_UNIPRO, "sclk_unipro", "dout_unipro",
 			SRC_MASK_FSYS, 24, CLK_SET_RATE_PARENT, 0),
 
@@ -1258,6 +1247,28 @@ static struct exynos5_subcmu_reg_dump exynos5x_gsc_suspend_regs[] = {
 	{ DIV2_RATIO0, 0, 0x30 },	/* DIV dout_gscl_blk_300 */
 };
 
+/* USB3.0 */
+static const struct samsung_div_clock exynos5x_fsys_div_clks[] __initconst = {
+	DIV(0, "dout_usbphy301", "mout_usbd301", DIV_FSYS0, 12, 4),
+	DIV(0, "dout_usbphy300", "mout_usbd300", DIV_FSYS0, 16, 4),
+	DIV(0, "dout_usbd301", "mout_usbd301", DIV_FSYS0, 20, 4),
+	DIV(0, "dout_usbd300", "mout_usbd300", DIV_FSYS0, 24, 4),
+};
+
+static const struct samsung_gate_clock exynos5x_fsys_gate_clks[] __initconst = {
+	GATE(CLK_PDMA0, "pdma0", "aclk200_fsys", GATE_BUS_FSYS0, 1, 0, 0),
+	GATE(CLK_PDMA1, "pdma1", "aclk200_fsys", GATE_BUS_FSYS0, 2, 0, 0),
+	GATE(CLK_USBH20, "usbh20", "aclk200_fsys", GATE_IP_FSYS, 18, 0, 0),
+	GATE(CLK_USBD300, "usbd300", "aclk200_fsys", GATE_IP_FSYS, 19, 0, 0),
+	GATE(CLK_USBD301, "usbd301", "aclk200_fsys", GATE_IP_FSYS, 20, 0, 0),
+};
+
+static struct exynos5_subcmu_reg_dump exynos5x_fsys_suspend_regs[] = {
+	{ GATE_IP_FSYS, 0xffffffff, 0xffffffff }, /* FSYS gates */
+	{ SRC_TOP3, 0, BIT(24) },                 /* SW_MUX_PCLK_200_FSYS_SEL */
+	{ SRC_TOP3, 0, BIT(28) },                 /* SW_MUX_ACLK_200_FSYS_SEL */
+};
+
 static const struct samsung_gate_clock exynos5x_g3d_gate_clks[] __initconst = {
 	GATE(CLK_G3D, "g3d", "mout_user_aclk_g3d", GATE_IP_G3D, 9,
 	     CLK_SET_RATE_PARENT, 0),
@@ -1376,12 +1387,23 @@ static const struct exynos5_subcmu_info exynos5800_mau_subcmu = {
 	.pd_name	= "MAU",
 };
 
+static const struct exynos5_subcmu_info exynos5x_fsys_subcmu = {
+	.div_clks       = exynos5x_fsys_div_clks,
+	.nr_div_clks    = ARRAY_SIZE(exynos5x_fsys_div_clks),
+	.gate_clks	= exynos5x_fsys_gate_clks,
+	.nr_gate_clks	= ARRAY_SIZE(exynos5x_fsys_gate_clks),
+	.suspend_regs	= exynos5x_fsys_suspend_regs,
+	.nr_suspend_regs = ARRAY_SIZE(exynos5x_fsys_suspend_regs),
+	.pd_name	= "FSYS",
+};
+
 static const struct exynos5_subcmu_info *exynos5x_subcmus[] = {
 	&exynos5x_disp_subcmu,
 	&exynos5x_gsc_subcmu,
 	&exynos5x_g3d_subcmu,
 	&exynos5x_mfc_subcmu,
 	&exynos5x_mscl_subcmu,
+	&exynos5x_fsys_subcmu,
 };
 
 static const struct exynos5_subcmu_info *exynos5800_subcmus[] = {
@@ -1391,6 +1413,7 @@ static const struct exynos5_subcmu_info *exynos5800_subcmus[] = {
 	&exynos5x_mfc_subcmu,
 	&exynos5x_mscl_subcmu,
 	&exynos5800_mau_subcmu,
+	&exynos5x_fsys_subcmu,
 };
 
 static const struct samsung_pll_rate_table exynos5420_pll2550x_24mhz_tbl[] __initconst = {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
