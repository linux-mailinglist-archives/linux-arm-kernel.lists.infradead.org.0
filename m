Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A73741163CB
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Dec 2019 21:56:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MOc/5Yha8ezFEgHPncq6QfjD/kh5A2Q3wrvNGQRc1ik=; b=c3P5XWn/0RY+A+
	T+mROKbvvaebgRPYTGT9BQX2aLOJfxxGCZDZ4+/GxNpmddPcsuZT2FujYZ+aoQqznwxrg2TNwxroZ
	eimw05hHGxVYvRrK/fKmiqMm+skJSp4dVTmGBIlupdXfzwUDx1h05vAoN7Y0Dv7I3MhZlKKd83WY9
	ygVHB4swWYG2p/2qsnJy4ar8Hw3BTDPelv3qNF+qbicN6DZ4HMNS0uKmEx3ICZsGry8qR/4C7Ecrl
	C89XIzysBBDCoCCfjZ1Rha+XWWcHqjX7VMfaMR+JuLz6awLKMe9YOMSC8UUA71mTs1c55VGyZfbXT
	EXi3sHWkmJWpBR6IijXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie3b9-0006v4-2H; Sun, 08 Dec 2019 20:56:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie3az-0006tS-9Y; Sun, 08 Dec 2019 20:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7hKGw58ILqckxLS6Lqao62LAcoLIpMmoX9aFw/dvBCE=; b=KM/zNa/clE8J0Y3OeUGpK/I6bj
 PdwCKbvlLRzNjmcnMLqJmyg5P2kphUmpWeyJ8RXFsSxzJZPD8sjhm6cpXDBnBjGlPr7fIa5B8GmmC
 SVWgTOMoZ/+pg+BDSbKGrX7lKaPMo9K01m8V6GfBbtkyjJReEndwzeb7I6eelHJ9TCssizEO/eFZX
 E1fD8nC4dYTWgIQP0zy8aqXOyTLKRf5DpUPigVdIWPc3ozXY7GdgvaNCEJ8F3+E1BRnf+/xdMnas2
 PgAPkX3samKAGxSjSSfPjCUFW+ZlNv6QVqD8xGyeYToezLcgNz+2l4ZfX+oLMFQ3YUliqC7X5wE5G
 2yBSDDFA==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie3bO-0005CV-O3; Sun, 08 Dec 2019 20:56:28 +0000
X-Originating-IP: 88.190.179.123
Received: from localhost (unknown [88.190.179.123])
 (Authenticated sender: repk@triplefau.lt)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 56DA720005;
 Sun,  8 Dec 2019 20:55:18 +0000 (UTC)
From: Remi Pommarel <repk@triplefau.lt>
To: Neil Armstrong <narmstrong@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Yue Wang <yue.wang@Amlogic.com>
Subject: [PATCH 1/2] clk: meson: axg: add pcie pll cml gating
Date: Sun,  8 Dec 2019 22:03:19 +0100
Message-Id: <20191208210320.15539-2-repk@triplefau.lt>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191208210320.15539-1-repk@triplefau.lt>
References: <20191208210320.15539-1-repk@triplefau.lt>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_205626_843031_32AF72E6 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-pci@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Remi Pommarel <repk@triplefau.lt>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PCIE_PLL_CML_ENABLE is used to enable or disable pcie clock PAD
output reliably on AXG platforms.

Signed-off-by: Remi Pommarel <repk@triplefau.lt>
---
 drivers/clk/meson/axg.c              | 3 +++
 drivers/clk/meson/axg.h              | 2 +-
 include/dt-bindings/clock/axg-clkc.h | 1 +
 3 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/meson/axg.c b/drivers/clk/meson/axg.c
index 13fc0006f63d..ac9ab7f75ee8 100644
--- a/drivers/clk/meson/axg.c
+++ b/drivers/clk/meson/axg.c
@@ -1142,6 +1142,7 @@ static MESON_GATE(axg_vpu_intr, HHI_GCLK_MPEG2, 25);
 static MESON_GATE(axg_sec_ahb_ahb3_bridge, HHI_GCLK_MPEG2, 26);
 static MESON_GATE(axg_gic, HHI_GCLK_MPEG2, 30);
 static MESON_GATE(axg_mipi_enable, HHI_MIPI_CNTL0, 29);
+static MESON_GATE(axg_pcie_pll_cml_enable, HHI_MIPI_CNTL0, 26);
 
 /* Always On (AO) domain gates */
 
@@ -1246,6 +1247,7 @@ static struct clk_hw_onecell_data axg_hw_onecell_data = {
 		[CLKID_HIFI_PLL_DCO]		= &axg_hifi_pll_dco.hw,
 		[CLKID_PCIE_PLL_DCO]		= &axg_pcie_pll_dco.hw,
 		[CLKID_PCIE_PLL_OD]		= &axg_pcie_pll_od.hw,
+		[CLKID_PCIE_PLL_CML_ENABLE]	= &axg_pcie_pll_cml_enable.hw,
 		[NR_CLKS]			= NULL,
 	},
 	.num = NR_CLKS,
@@ -1341,6 +1343,7 @@ static struct clk_regmap *const axg_clk_regmaps[] = {
 	&axg_hifi_pll_dco,
 	&axg_pcie_pll_dco,
 	&axg_pcie_pll_od,
+	&axg_pcie_pll_cml_enable,
 };
 
 static const struct meson_eeclkc_data axg_clkc_data = {
diff --git a/drivers/clk/meson/axg.h b/drivers/clk/meson/axg.h
index 0431dabac629..d65670d6c607 100644
--- a/drivers/clk/meson/axg.h
+++ b/drivers/clk/meson/axg.h
@@ -140,7 +140,7 @@
 #define CLKID_PCIE_PLL_DCO			89
 #define CLKID_PCIE_PLL_OD			90
 
-#define NR_CLKS					91
+#define NR_CLKS					92
 
 /* include the CLKIDs that have been made part of the DT binding */
 #include <dt-bindings/clock/axg-clkc.h>
diff --git a/include/dt-bindings/clock/axg-clkc.h b/include/dt-bindings/clock/axg-clkc.h
index fd1f938c38d1..218a05ff508d 100644
--- a/include/dt-bindings/clock/axg-clkc.h
+++ b/include/dt-bindings/clock/axg-clkc.h
@@ -72,5 +72,6 @@
 #define CLKID_PCIE_CML_EN1			80
 #define CLKID_MIPI_ENABLE			81
 #define CLKID_GEN_CLK				84
+#define CLKID_PCIE_PLL_CML_ENABLE		91
 
 #endif /* __AXG_CLKC_H */
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
