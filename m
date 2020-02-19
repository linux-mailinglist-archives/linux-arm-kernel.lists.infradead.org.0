Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 279B6163DD2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:38:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dmCxTF6rth5jx7exmjNzXkj1bGPO8R7jqXns02h90gI=; b=AjOo6VOpD8QryG
	Dn399plXFck15/U5kpcJbs0zX3jx07KxbHRZO1dvtRCc2SOn7bmYeNG52TxAeY1yKzyRZ+SbtW9Ji
	ICxOzqevnCHR7bqW2E0gre0/A5o7alNGNvHIRx4DCIvc1VdTBOzMFoR7HV6X6qjyUtGoBdipQWPJe
	LWOEcYlRlsL9q322yO4iN2/ggrrkjZbHl8IkH/qZG5BEt/I9rCD48jSdFYuAQuufBhGQ0gMctFQzL
	+4pbyErHPCbxXLYSDBFosKVNu30VmcCgSLrY9jrv6L9TG/AcFacm0DBfg5itYtbOOjGWyB+s+7Tlu
	vnD3WhEhL609buGt6RLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Jw3-0003kB-GN; Wed, 19 Feb 2020 07:38:19 +0000
Received: from [167.172.186.51] (helo=shell.v3.sk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Js2-0007Vd-S2
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:34:13 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 4021FE006F;
 Wed, 19 Feb 2020 07:34:24 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id obBDEgqxufYX; Wed, 19 Feb 2020 07:34:19 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 9E60EE0051;
 Wed, 19 Feb 2020 07:34:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id T9OzMkojXK5b; Wed, 19 Feb 2020 07:34:16 +0000 (UTC)
Received: from furthur.lan (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 0EC1EE0070;
 Wed, 19 Feb 2020 07:34:16 +0000 (UTC)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 09/10] clk: mmp2: Add PLLs that are available on MMP3
Date: Wed, 19 Feb 2020 08:33:52 +0100
Message-Id: <20200219073353.184336-10-lkundrak@v3.sk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219073353.184336-1-lkundrak@v3.sk>
References: <20200219073353.184336-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_233411_236540_138951B5 
X-CRM114-Status: UNSURE (   9.11  )
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

There are more PLLs on MMP3 and are configured slightly differently.
Tested on a MMP3-based Dell Wyse 3020 machine.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 drivers/clk/mmp/clk-of-mmp2.c | 34 +++++++++++++++++++++++++++-------
 1 file changed, 27 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/mmp/clk-of-mmp2.c b/drivers/clk/mmp/clk-of-mmp2.c
index 7594a8280b93a..310d77855f03f 100644
--- a/drivers/clk/mmp/clk-of-mmp2.c
+++ b/drivers/clk/mmp/clk-of-mmp2.c
@@ -57,10 +57,16 @@
 #define APMU_USBHSIC0	0xf8
 #define APMU_USBHSIC1	0xfc
 
-#define MPMU_FCCR	0x8
-#define MPMU_POSR	0x10
-#define MPMU_UART_PLL	0x14
-#define MPMU_PLL2_CR	0x34
+#define MPMU_FCCR		0x8
+#define MPMU_POSR		0x10
+#define MPMU_UART_PLL		0x14
+#define MPMU_PLL2_CR		0x34
+/* MMP3 specific below */
+#define MPMU_PLL3_CR		0x50
+#define MPMU_PLL3_CTRL1		0x58
+#define MPMU_PLL1_CTRL		0x5c
+#define MPMU_PLL_DIFF_CTRL	0x68
+#define MPMU_PLL2_CTRL1		0x414
 
 enum mmp2_clk_model {
 	CLK_MODEL_MMP2,
@@ -86,6 +92,14 @@ static struct mmp_param_pll_clk pll_clks[] = {
 	{MMP2_CLK_PLL2,   "pll2",           0, MPMU_PLL2_CR,       0x0300, MPMU_PLL2_CR, 10},
 };
 
+static struct mmp_param_pll_clk mmp3_pll_clks[] = {
+	{MMP2_CLK_PLL2,   "pll1",   797330000, MPMU_FCCR,          0x4000, MPMU_POSR,     0,      26000000, MPMU_PLL1_CTRL,      25},
+	{MMP2_CLK_PLL2,   "pll2",           0, MPMU_PLL2_CR,       0x0300, MPMU_PLL2_CR, 10,      26000000, MPMU_PLL2_CTRL1,     25},
+	{MMP3_CLK_PLL1_P, "pll1_p",         0, MPMU_PLL_DIFF_CTRL, 0x0010, 0,             0,     797330000, MPMU_PLL_DIFF_CTRL,   0},
+	{MMP3_CLK_PLL2_P, "pll2_p",         0, MPMU_PLL_DIFF_CTRL, 0x0100, MPMU_PLL2_CR, 10,      26000000, MPMU_PLL_DIFF_CTRL,   5},
+	{MMP3_CLK_PLL3,   "pll3",           0, MPMU_PLL3_CR,       0x0300, MPMU_PLL3_CR, 10,      26000000, MPMU_PLL3_CTRL1,     25},
+};
+
 static struct mmp_param_fixed_factor_clk fixed_factor_clks[] = {
 	{MMP2_CLK_PLL1_2, "pll1_2", "pll1", 1, 2, 0},
 	{MMP2_CLK_PLL1_4, "pll1_4", "pll1_2", 1, 2, 0},
@@ -127,9 +141,15 @@ static void mmp2_pll_init(struct mmp2_clk_unit *pxa_unit)
 	mmp_register_fixed_rate_clks(unit, fixed_rate_clks,
 					ARRAY_SIZE(fixed_rate_clks));
 
-	mmp_register_pll_clks(unit, pll_clks,
-				pxa_unit->mpmu_base,
-				ARRAY_SIZE(pll_clks));
+	if (pxa_unit->model == CLK_MODEL_MMP3) {
+		mmp_register_pll_clks(unit, mmp3_pll_clks,
+					pxa_unit->mpmu_base,
+					ARRAY_SIZE(mmp3_pll_clks));
+	} else {
+		mmp_register_pll_clks(unit, pll_clks,
+					pxa_unit->mpmu_base,
+					ARRAY_SIZE(pll_clks));
+	}
 
 	mmp_register_fixed_factor_clks(unit, fixed_factor_clks,
 					ARRAY_SIZE(fixed_factor_clks));
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
