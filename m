Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9990C10D0C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 05:19:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oInIsygVrWc1UIOQox3AB/LdRQ0GwPVdvbbfh+HfhRc=; b=PCJ
	rJ4FvUH/61cV6EFl4w2jiwy8H0A9oPEVeI8h5M9G/oAauXEkqaqNM3JHbLN5YK0GFmnu/GXQz9Lfu
	//gBC6A8A5kqbQDYwg57PTBHTHpNY0uiC81DSA32iMO3eRTUQXt/e4GgFk0T41BzjWySGVjrmElGB
	1H5PdYpYPAp2vUsvgQPNtOA1KyiBHnOBRHdFLacGT3c9z7Keb7ME+Tt4oA2lLIa75+Z/L8//zsHRF
	29DA75jrV10a1JKu5dJEwITDt3gNWz24bBrGLn1zeHbZEK+sYnQh3Rvu53NM/OidsOwTztPeFh0jg
	mXmtIEUuxbIEqqvPFBs/qXF/yilhyEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaXki-00069F-Ok; Fri, 29 Nov 2019 04:19:32 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaXkY-00068s-Iu
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 04:19:23 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 29 Nov 2019 13:19:21 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id D39F0180D62;
 Fri, 29 Nov 2019 13:19:21 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 29 Nov 2019 13:19:50 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 4F89A1A0006;
 Fri, 29 Nov 2019 13:19:21 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Philipp Zabel <p.zabel@pengutronix.de>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH] reset: uniphier: Add SCSSI reset control for each channel
Date: Fri, 29 Nov 2019 13:19:19 +0900
Message-Id: <1575001159-19648-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_201922_743221_826C2A94 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SCSSI has reset controls for each channel in the SoCs newer than Pro4,
so this adds missing reset controls for channel 1, 2 and 3. And more, this
moves MCSSI reset ID after SCSSI.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/reset/reset-uniphier.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/reset/reset-uniphier.c b/drivers/reset/reset-uniphier.c
index 74e589f..279e535 100644
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
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
