Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434A615DE3A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:03:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzSsLkwInw9WCIMAI3xU67IYkY8pxQzLQfXiO++i/kY=; b=KhMa8ikQfvihHa
	ElVzxySdLOJGEUTPwc+rCsFWqYYPHD76h9dQVCJJ6WcGak1CQVx158fgUlMLB/ajESI/B2Nn9YYmp
	6L7q3mG0NXJnhMq9bZHVH31oUNbYNOO22koTfuNjSd0iOvHQB/2ZsPhmtNgRP+JcgZ4wvuGmcl0a7
	AHzQ1GV1VHtQTNdCSycmikZi1fAt1CbiL/5Eh2fi3cHUSXjZ2jkp4sAwRHKtvSAlajE6y2MwpMOju
	1JO9zF356Z4zCbKEPl2OOVIJdFptWDbsiKXDbV2Prid7lrOyZnD294HLPWpyIAr5Xpk2D252hESg8
	ncmzwo33NfPyK55oHuTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dR2-0001NU-SN; Fri, 14 Feb 2020 16:03:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dIz-0007s1-1k
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:55:02 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D105D24686;
 Fri, 14 Feb 2020 15:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695700;
 bh=VR/tYj5donPID9f9La1GAChsuMa4kOjV/ethBBqSGqk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vNfdHl+zv+D0ZItSon68bSG/N4awyNnXUinALs9X+QMiHK9a20ND2ozB7Xey9lYS8
 z6KwM9db4eqhcIStf7ATtaeVRd4wVuIgPv2GotnFybJkwbRz3XUu9Au8Lb72N5oCjD
 jpKTRb97PABLgAnXd4RPbHWtABJEtD02+nlKBvLg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 282/542] clk: uniphier: Add SCSSI clock gate for
 each channel
Date: Fri, 14 Feb 2020 10:44:34 -0500
Message-Id: <20200214154854.6746-282-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075501_141103_7D60DF6B 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>

[ Upstream commit 1ec09a2ec67a0baa46a3ccac041dbcdbc6db2cb9 ]

SCSSI has clock gates for each channel in the SoCs newer than Pro4,
so this adds missing clock gates for channel 1, 2 and 3. And more, this
moves MCSSI clock ID after SCSSI.

Fixes: ff388ee36516 ("clk: uniphier: add clock frequency support for SPI")
Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Link: https://lkml.kernel.org/r/1577410925-22021-1-git-send-email-hayashi.kunihiko@socionext.com
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/uniphier/clk-uniphier-peri.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/uniphier/clk-uniphier-peri.c b/drivers/clk/uniphier/clk-uniphier-peri.c
index 9caa52944b1c5..3e32db9dad815 100644
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
