Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2D2163DCD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:37:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3KHX/ChhKmq6hRxzOa8FhOwwPiHOiMudlOXJ8IqBmc=; b=THiIZoDjyMPIlI
	SGK8m0m3xnk8aA0yrstU5gc/wKY1DYxx00hoTYPsg65g7BjeT4M6Jl9KVgy9e4i0sZhL1D2ISk5ho
	lKj9Rlb2HHyDnf5TmgIpPRIVhk1hQP9+BhZfnfPADldQlMuwTOiWIwJ06nbck9kaXXTegEeEmwf8W
	66hMdlmQVtnG4bH3RoFTclu97X0yHtMd005E08JvMyZspIXpNJ35nTkdEIBwT5c+m8iQpm3vrOu8i
	fqN4lIrFEwqvE+7MjAl7datkIAdkHmaJsas/dr9R0pscwDQCrghh6nugdOhxXZu7UMzq/55xdmbRB
	F3YkxH14YuHPPKMgderQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4JvA-0002rf-1g; Wed, 19 Feb 2020 07:37:24 +0000
Received: from [167.172.186.51] (helo=shell.v3.sk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Js0-0007Sy-Fs
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:34:10 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 950EDE0074;
 Wed, 19 Feb 2020 07:34:22 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id x4ftYDOkYapY; Wed, 19 Feb 2020 07:34:15 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 92531DFCA2;
 Wed, 19 Feb 2020 07:34:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id BvZCu-CvgOHj; Wed, 19 Feb 2020 07:34:14 +0000 (UTC)
Received: from furthur.lan (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 89EB4E0070;
 Wed, 19 Feb 2020 07:34:14 +0000 (UTC)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 05/10] clk: mmp2: Stop pretending PLL outputs are constant
Date: Wed, 19 Feb 2020 08:33:48 +0100
Message-Id: <20200219073353.184336-6-lkundrak@v3.sk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219073353.184336-1-lkundrak@v3.sk>
References: <20200219073353.184336-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_233408_703599_5B505D54 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The hardcoded values for PLL1 and PLL2 are wrong. PLL1 is slightly off -- it
defaults to 797.33 MHz, not 800 MHz. PLL2 is disabled by default, but also
configurable.

Tested on a MMP2-based OLPC XO-1.75 laptop, with PLL1=797.33 and various
values of PLL2 set via set-pll2-520mhz, set-pll2-910mhz and
set-pll2-988mhz Open Firmware words.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 drivers/clk/mmp/clk-of-mmp2.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/mmp/clk-of-mmp2.c b/drivers/clk/mmp/clk-of-mmp2.c
index ee086d9714160..251d8d0e78abb 100644
--- a/drivers/clk/mmp/clk-of-mmp2.c
+++ b/drivers/clk/mmp/clk-of-mmp2.c
@@ -3,6 +3,7 @@
  *
  * Copyright (C) 2012 Marvell
  * Chao Xie <xiechao.mail@gmail.com>
+ * Copyright (C) 2020 Lubomir Rintel <lkundrak@v3.sk>
  *
  * This file is licensed under the terms of the GNU General Public
  * License version 2. This program is licensed "as is" without any
@@ -55,7 +56,11 @@
 #define APMU_CCIC1	0xf4
 #define APMU_USBHSIC0	0xf8
 #define APMU_USBHSIC1	0xfc
+
+#define MPMU_FCCR	0x8
+#define MPMU_POSR	0x10
 #define MPMU_UART_PLL	0x14
+#define MPMU_PLL2_CR	0x34
 
 struct mmp2_clk_unit {
 	struct mmp_clk_unit unit;
@@ -67,11 +72,14 @@ struct mmp2_clk_unit {
 static struct mmp_param_fixed_rate_clk fixed_rate_clks[] = {
 	{MMP2_CLK_CLK32, "clk32", NULL, 0, 32768},
 	{MMP2_CLK_VCTCXO, "vctcxo", NULL, 0, 26000000},
-	{MMP2_CLK_PLL1, "pll1", NULL, 0, 800000000},
-	{MMP2_CLK_PLL2, "pll2", NULL, 0, 960000000},
 	{MMP2_CLK_USB_PLL, "usb_pll", NULL, 0, 480000000},
 };
 
+static struct mmp_param_pll_clk pll_clks[] = {
+	{MMP2_CLK_PLL1,   "pll1",   797330000, MPMU_FCCR,          0x4000, MPMU_POSR,     0},
+	{MMP2_CLK_PLL2,   "pll2",           0, MPMU_PLL2_CR,       0x0300, MPMU_PLL2_CR, 10},
+};
+
 static struct mmp_param_fixed_factor_clk fixed_factor_clks[] = {
 	{MMP2_CLK_PLL1_2, "pll1_2", "pll1", 1, 2, 0},
 	{MMP2_CLK_PLL1_4, "pll1_4", "pll1_2", 1, 2, 0},
@@ -113,6 +121,10 @@ static void mmp2_pll_init(struct mmp2_clk_unit *pxa_unit)
 	mmp_register_fixed_rate_clks(unit, fixed_rate_clks,
 					ARRAY_SIZE(fixed_rate_clks));
 
+	mmp_register_pll_clks(unit, pll_clks,
+				pxa_unit->mpmu_base,
+				ARRAY_SIZE(pll_clks));
+
 	mmp_register_fixed_factor_clks(unit, fixed_factor_clks,
 					ARRAY_SIZE(fixed_factor_clks));
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
