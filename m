Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 734C27A07B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 07:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=puX5yUeAxlRl76FQVXcYMDDDFNaEyWDKfRkWO8JLCMg=; b=NIKRua7I8qKAqLQ0nVlW6pkmis
	p4xIMzatUlaQvH/QbRibd0q3nTry3XTDTUw3hGv1IASQSzvLyFM6nE+zEFvGS6SA0DRepdxePvq1R
	Q5oEwQk5vMipLuvVYYVpPTrBAnwKDEZ65qir4R9RH/TdC4+K90LxzvlnmS0Rac1n6mNpM81p1L/8z
	6Vd0mmU/9YTVws80uZ7l9cgOHPc2EjK/Y4VglSjyJ0eZGXnsV4tmdDwuyX/OpuONehmawFeQvA/3p
	QXP+H0UDNO3aKqGz3t9b/GZYkzqYkpX6rPW12EbNp4k2yGoDgojx8FP4TXT9K+OVEV8U7RQ/cwI2Q
	oxxOBGQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsKwG-0005Mc-A2; Tue, 30 Jul 2019 05:44:44 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsKvL-0004rD-5W
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 05:43:48 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 30 Jul 2019 14:43:44 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id E5C3260629;
 Tue, 30 Jul 2019 14:43:44 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 30 Jul 2019 14:43:44 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 8AEA41A04FC;
 Tue, 30 Jul 2019 14:43:44 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-gpio@vger.kernel.org
Subject: [PATCH v2 3/5] pinctrl: uniphier: Add 5th LD20 MPEG2-TS input pin-mux
 setting
Date: Tue, 30 Jul 2019 14:43:28 +0900
Message-Id: <1564465410-9165-4-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564465410-9165-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1564465410-9165-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_224347_330441_011558B6 
X-CRM114-Status: GOOD (  11.48  )
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

The 5th serial TS interface uses the following pins:
  hscin4_s: PCA[11-14]

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---
 drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c
index 8d4fb65..0a8b186 100644
--- a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c
+++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c
@@ -576,6 +576,8 @@ static const unsigned hscin2_s_pins[] = {124, 125, 126, 127};
 static const int hscin2_s_muxvals[] = {3, 3, 3, 3};
 static const unsigned hscin3_s_pins[] = {129, 130, 131, 132};
 static const int hscin3_s_muxvals[] = {3, 3, 3, 3};
+static const unsigned hscin4_s_pins[] = {80, 81, 82, 83};
+static const int hscin4_s_muxvals[] = {3, 3, 3, 3};
 static const unsigned hscout0_ci_pins[] = {113, 114, 115, 116, 117, 118, 119,
 					   120, 121, 122, 123};
 static const int hscout0_ci_muxvals[] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
@@ -679,6 +681,7 @@ static const struct uniphier_pinctrl_group uniphier_ld20_groups[] = {
 	UNIPHIER_PINCTRL_GROUP(hscin1_s),
 	UNIPHIER_PINCTRL_GROUP(hscin2_s),
 	UNIPHIER_PINCTRL_GROUP(hscin3_s),
+	UNIPHIER_PINCTRL_GROUP(hscin4_s),
 	UNIPHIER_PINCTRL_GROUP(hscout0_ci),
 	UNIPHIER_PINCTRL_GROUP(hscout0_p),
 	UNIPHIER_PINCTRL_GROUP(hscout0_s),
@@ -721,6 +724,7 @@ static const char * const hscin0_groups[] = {"hscin0_ci",
 static const char * const hscin1_groups[] = {"hscin1_p", "hscin1_s"};
 static const char * const hscin2_groups[] = {"hscin2_s"};
 static const char * const hscin3_groups[] = {"hscin3_s"};
+static const char * const hscin4_groups[] = {"hscin4_s"};
 static const char * const hscout0_groups[] = {"hscout0_ci",
 					      "hscout0_p",
 					      "hscout0_s"};
@@ -757,6 +761,7 @@ static const struct uniphier_pinmux_function uniphier_ld20_functions[] = {
 	UNIPHIER_PINMUX_FUNCTION(hscin1),
 	UNIPHIER_PINMUX_FUNCTION(hscin2),
 	UNIPHIER_PINMUX_FUNCTION(hscin3),
+	UNIPHIER_PINMUX_FUNCTION(hscin4),
 	UNIPHIER_PINMUX_FUNCTION(hscout0),
 	UNIPHIER_PINMUX_FUNCTION(hscout1),
 	UNIPHIER_PINMUX_FUNCTION(i2c0),
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
