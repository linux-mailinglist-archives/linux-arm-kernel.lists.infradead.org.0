Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB1C12B054
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 02:42:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QIoAdlwFisqVl1TVfQsq8P1pu/iDdPm840GQGFaJbcA=; b=GxR
	JbO0E8aBklr36SWeX8bKd2le6flrdcbmNGd3my5b4bxVIGVEPNHgcFS05fi7kTTLkxQUTbpieEh4p
	3/ejuf5Z1aV7OKZebTEDw3cWDgYqWca3iW+MOlJ0/oK1syVZJqVqSHsgHl0+MY9spTQdZG73O8FJA
	H0u+eG7N/GPTfCDK4kThGJ4zpttlA9/pKFvmCq7ZvaHxb00M0/Tsvf33C6DzX9dbiyCsUpA5SHoDd
	UzK2NNMvyKiSS4QEtKbi/bkWLYvz08Dgv8qoJgfIeqV6JzEGZiG8OIaTF7N6jvyGP6lyDkn9aiBWI
	fHMCUYnUzyfh02tBLuNROvL3dDwEvdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikee1-00025c-2u; Fri, 27 Dec 2019 01:42:25 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikedr-00024v-R1
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 01:42:17 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 27 Dec 2019 10:42:09 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id ED167603AB;
 Fri, 27 Dec 2019 10:42:09 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 27 Dec 2019 10:43:02 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 677131A01BB;
 Fri, 27 Dec 2019 10:42:09 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH v2] clk: uniphier: Add SCSSI clock gate for each channel
Date: Fri, 27 Dec 2019 10:42:05 +0900
Message-Id: <1577410925-22021-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_174216_001111_30D150BC 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-kernel@vger.kernel.org,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SCSSI has clock gates for each channel in the SoCs newer than Pro4,
so this adds missing clock gates for channel 1, 2 and 3. And more, this
moves MCSSI clock ID after SCSSI.

Fixes: ff388ee36516 ("clk: uniphier: add clock frequency support for SPI")
Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---
Changes since v1:
- Add 'Fixes' and 'Acked-by' tags

drivers/clk/uniphier/clk-uniphier-peri.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/uniphier/clk-uniphier-peri.c b/drivers/clk/uniphier/clk-uniphier-peri.c
index 9caa529..3e32db9 100644
--- a/drivers/clk/uniphier/clk-uniphier-peri.c
+++ b/drivers/clk/uniphier/clk-uniphier-peri.c
@@ -18,8 +18,8 @@
 #define UNIPHIER_PERI_CLK_FI2C(idx, ch)					\
 	UNIPHIER_CLK_GATE("i2c" #ch, (idx), "i2c", 0x24, 24 + (ch))
 
-#define UNIPHIER_PERI_CLK_SCSSI(idx)					\
-	UNIPHIER_CLK_GATE("scssi", (idx), "spi", 0x20, 17)
+#define UNIPHIER_PERI_CLK_SCSSI(idx, ch)				\
+	UNIPHIER_CLK_GATE("scssi" #ch, (idx), "spi", 0x20, 17 + (ch))
 
 #define UNIPHIER_PERI_CLK_MCSSI(idx)					\
 	UNIPHIER_CLK_GATE("mcssi", (idx), "spi", 0x24, 14)
@@ -35,7 +35,7 @@ const struct uniphier_clk_data uniphier_ld4_peri_clk_data[] = {
 	UNIPHIER_PERI_CLK_I2C(6, 2),
 	UNIPHIER_PERI_CLK_I2C(7, 3),
 	UNIPHIER_PERI_CLK_I2C(8, 4),
-	UNIPHIER_PERI_CLK_SCSSI(11),
+	UNIPHIER_PERI_CLK_SCSSI(11, 0),
 	{ /* sentinel */ }
 };
 
@@ -51,7 +51,10 @@ const struct uniphier_clk_data uniphier_pro4_peri_clk_data[] = {
 	UNIPHIER_PERI_CLK_FI2C(8, 4),
 	UNIPHIER_PERI_CLK_FI2C(9, 5),
 	UNIPHIER_PERI_CLK_FI2C(10, 6),
-	UNIPHIER_PERI_CLK_SCSSI(11),
-	UNIPHIER_PERI_CLK_MCSSI(12),
+	UNIPHIER_PERI_CLK_SCSSI(11, 0),
+	UNIPHIER_PERI_CLK_SCSSI(12, 1),
+	UNIPHIER_PERI_CLK_SCSSI(13, 2),
+	UNIPHIER_PERI_CLK_SCSSI(14, 3),
+	UNIPHIER_PERI_CLK_MCSSI(15),
 	{ /* sentinel */ }
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
