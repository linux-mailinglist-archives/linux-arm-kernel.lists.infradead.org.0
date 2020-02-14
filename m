Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3887015E33D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:28:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t3VWdIX7DUq28/8tN3nZK4h1q6Cc65BGCG7jxw97ym0=; b=br24FfyVMRPmB+
	t0w8CiAF6vpQOWoFIyLFN8xMLm+C8zNpgYj8HQ+i7QUbMlZgWu2Vtc9cfUibL0AGZg28JXyYrVwoL
	tN0uStdjGdkfgRS+kvurXtib6rzTQUb3eukjJMPTzOJ55Szx+31ldqpC5oi/wRMv/I54vZpfLjyIm
	oZNWiTUCkI9He32a/4Ga7ldb/diUSPwCOy2zlnZMSiXM35tpBX6SMIB3ljU3pQa0gSLw4Z/BYpTSj
	qEloN2dwtdAqnfZp4nuYxEk5LIpQ/WDBzrCi4Wgaet9v0/9vOGQI7wA6YyRajPgZ64rX2GuJkFAxX
	icEivn2g3iH9mubG2+ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dpM-0004OR-7o; Fri, 14 Feb 2020 16:28:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dUX-0006eB-OC
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:06:59 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02E4A206D7;
 Fri, 14 Feb 2020 16:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696415;
 bh=RAbthy+G2lB0nNHDZTr4dUxOkTT5aKM66BXOrQ6RQ/Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=queeLnCcbmAmrzSsbb14MDjbX7eUAwt6BoEfNco1B5sRju+CDNI7TYEPcV7DHwDwd
 LwOy7pqK7EcMOg4CgnXPLRWVthUzu6ndaUEYZVVBYW0mxx5KDaUam8V4pdNay3Akck
 lE5lxtmMqBiZwOaLleIXMfRiS4DPvNYSW+/nO3NQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 237/459] reset: uniphier: Add SCSSI reset control
 for each channel
Date: Fri, 14 Feb 2020 10:58:07 -0500
Message-Id: <20200214160149.11681-237-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080657_860904_E294223A 
X-CRM114-Status: UNSURE (   9.69  )
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
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>

[ Upstream commit f4aec227e985e31d2fdc5608daf48e3de19157b7 ]

SCSSI has reset controls for each channel in the SoCs newer than Pro4,
so this adds missing reset controls for channel 1, 2 and 3. And more, this
moves MCSSI reset ID after SCSSI.

Fixes: 6b39fd590aeb ("reset: uniphier: add reset control support for SPI")
Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/reset/reset-uniphier.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/reset/reset-uniphier.c b/drivers/reset/reset-uniphier.c
index 74e589f5dd6a6..279e535bf5d80 100644
--- a/drivers/reset/reset-uniphier.c
+++ b/drivers/reset/reset-uniphier.c
@@ -193,8 +193,8 @@ static const struct uniphier_reset_data uniphier_pro5_sd_reset_data[] = {
 #define UNIPHIER_PERI_RESET_FI2C(id, ch)		\
 	UNIPHIER_RESETX((id), 0x114, 24 + (ch))
 
-#define UNIPHIER_PERI_RESET_SCSSI(id)			\
-	UNIPHIER_RESETX((id), 0x110, 17)
+#define UNIPHIER_PERI_RESET_SCSSI(id, ch)		\
+	UNIPHIER_RESETX((id), 0x110, 17 + (ch))
 
 #define UNIPHIER_PERI_RESET_MCSSI(id)			\
 	UNIPHIER_RESETX((id), 0x114, 14)
@@ -209,7 +209,7 @@ static const struct uniphier_reset_data uniphier_ld4_peri_reset_data[] = {
 	UNIPHIER_PERI_RESET_I2C(6, 2),
 	UNIPHIER_PERI_RESET_I2C(7, 3),
 	UNIPHIER_PERI_RESET_I2C(8, 4),
-	UNIPHIER_PERI_RESET_SCSSI(11),
+	UNIPHIER_PERI_RESET_SCSSI(11, 0),
 	UNIPHIER_RESET_END,
 };
 
@@ -225,8 +225,11 @@ static const struct uniphier_reset_data uniphier_pro4_peri_reset_data[] = {
 	UNIPHIER_PERI_RESET_FI2C(8, 4),
 	UNIPHIER_PERI_RESET_FI2C(9, 5),
 	UNIPHIER_PERI_RESET_FI2C(10, 6),
-	UNIPHIER_PERI_RESET_SCSSI(11),
-	UNIPHIER_PERI_RESET_MCSSI(12),
+	UNIPHIER_PERI_RESET_SCSSI(11, 0),
+	UNIPHIER_PERI_RESET_SCSSI(12, 1),
+	UNIPHIER_PERI_RESET_SCSSI(13, 2),
+	UNIPHIER_PERI_RESET_SCSSI(14, 3),
+	UNIPHIER_PERI_RESET_MCSSI(15),
 	UNIPHIER_RESET_END,
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
