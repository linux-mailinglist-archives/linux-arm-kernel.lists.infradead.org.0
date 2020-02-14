Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01BA15E8B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 18:02:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pa14bW/FBdIeA8itU+SGwozWWh5OEB8387a+to0g1Y=; b=O8nYlhcjI0DB4u
	pP7I7s+ItzwuAhi6U542nxbRzgfUU4kKmGk1W+jqsC/FgEAHd42YTvHXhYvyvuUPTJZTltI0IgMFJ
	x+YlMTM2bj3J9cnooVMvLvwslM7ukMpQsLPJQyzwSKboVy0f8tMQXJWn098X4R5MP9pLJeWPFP1cb
	BaWjNzVIdXVe8EqSvecX7dhdO62iW/qC87mzT85Nd5mF4abVha7S2JhQf+NPv9dIsTF6QmokQ0ltX
	M6ZsDAokSp72KO0PnHbHc+99U+Pd44eQpZhzChYeXR2bn0XWINjfskK9uvClyJaXjbG6kSz82923j
	xtzBT0QogatSHnw3UDLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2eM4-0003YA-06; Fri, 14 Feb 2020 17:02:16 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2e79-0000ER-1g
 for linux-arm-kernel@bombadil.infradead.org; Fri, 14 Feb 2020 16:46:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=TzIhZoh7qQLX/1CZXQ/QYmjM+xU64Tt9MZ0g/6MW1Ec=; b=iBidTovsoVGpgVi2oRKlgtSo/B
 FCPQddl5FTxLJYf7peTa8yMsjd5u3cN9nVrl0bZV9weuR4FjwvYp6+IKLdTgYM6EVwgQsL83L+uST
 PQgz5be0ahNdwyQjqhFMQqC7OqIEqPpGMuatZqNchmr29amWh3cpDfD8IV+QZ+mqqoKWXCqc91+Yt
 k3nRqiz1Ye9eCRXXtYdnTeLV+UIYpKX2n6wN2n8TLQSBOhz+T0n4lN7Q4GS730cnvcIAh8cnnTfQw
 v8+LXRcCpS+1AElARJjji6dzFD3VUHaPsXREUpIcgSLd8T7507i9tsl+hQQV260ibXzGeS5JRjj3Y
 rq5tItFQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dbs-0007U1-Cx
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:14:33 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7520246C3;
 Fri, 14 Feb 2020 16:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696871;
 bh=Ag7cfjgAZDTtorJGvLhjabkF2VDVmnJ8PY2cP1WcwfE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xY6Q47yeeXz5lr26XpoykRzf8NJPNe3TrjFSVu8grCiybgGuRpn7xp6gG5v9rhAXq
 ZHxbrczpCqABdyB7ACchkkoKB74LKWIGBnNRsVRoxwEDSbEVQpIabWDMZ6QUI7/Xph
 opN8zs8SbORvU0Cacd5A64AE8Usg/ZdAQhqjf32o=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 129/252] clk: uniphier: Add SCSSI clock gate for
 each channel
Date: Fri, 14 Feb 2020 11:09:44 -0500
Message-Id: <20200214161147.15842-129-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index 89b3ac378b3f9..8b75dc116a98c 100644
--- a/drivers/clk/uniphier/clk-uniphier-peri.c
+++ b/drivers/clk/uniphier/clk-uniphier-peri.c
@@ -27,8 +27,8 @@
 #define UNIPHIER_PERI_CLK_FI2C(idx, ch)					\
 	UNIPHIER_CLK_GATE("i2c" #ch, (idx), "i2c", 0x24, 24 + (ch))
 
-#define UNIPHIER_PERI_CLK_SCSSI(idx)					\
-	UNIPHIER_CLK_GATE("scssi", (idx), "spi", 0x20, 17)
+#define UNIPHIER_PERI_CLK_SCSSI(idx, ch)				\
+	UNIPHIER_CLK_GATE("scssi" #ch, (idx), "spi", 0x20, 17 + (ch))
 
 #define UNIPHIER_PERI_CLK_MCSSI(idx)					\
 	UNIPHIER_CLK_GATE("mcssi", (idx), "spi", 0x24, 14)
@@ -44,7 +44,7 @@ const struct uniphier_clk_data uniphier_ld4_peri_clk_data[] = {
 	UNIPHIER_PERI_CLK_I2C(6, 2),
 	UNIPHIER_PERI_CLK_I2C(7, 3),
 	UNIPHIER_PERI_CLK_I2C(8, 4),
-	UNIPHIER_PERI_CLK_SCSSI(11),
+	UNIPHIER_PERI_CLK_SCSSI(11, 0),
 	{ /* sentinel */ }
 };
 
@@ -60,7 +60,10 @@ const struct uniphier_clk_data uniphier_pro4_peri_clk_data[] = {
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
