Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E607C63454
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 12:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RnPvqDkq5uVFyE7+r+VA3n4iteussqwDxhVSFZtWTdo=; b=bBUE4gtCUcggd/B9DdvjYza0OZ
	keUpeENJevIm6COMpVf666FGcuTrTe2TcrgI9LvB27Wgq9sigb7QManxx3A9HJW8xCTRPf8FIOhZ2
	drorlMfk60/na4PZvCnlvU3/lLrtpCTvV1klyrAYSY+wZHfAIJo0OuRXX8XmXcMqL3AKeTjL9SILM
	I5eMRSMvL40YWOmV8ND7U+EeJUTzYvbvkdJDhed4MKz7vxYLqydDRIdI4zdTtJLLaDEuh58coRWrk
	+EG15bdtnWKxXY7mbfE3e8C8a7CFjfRQ57bi+hcpbaB2xriMXhsavuYZdoFjcZvOfGaQ5EuK2f4Sw
	Tl7iUFkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hknOG-0000B1-G4; Tue, 09 Jul 2019 10:30:28 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hknNN-0006bi-Pn
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 10:29:35 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 09 Jul 2019 19:29:31 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id E149418022B;
 Tue,  9 Jul 2019 19:29:31 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 9 Jul 2019 19:29:31 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id A2AF81A14E3;
 Tue,  9 Jul 2019 19:29:31 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-gpio@vger.kernel.org
Subject: [PATCH 3/5] pinctrl: uniphier: Add 4th LD20 MPEG2-TS input pin-mux
 setting
Date: Tue,  9 Jul 2019 19:29:14 +0900
Message-Id: <1562668156-12927-4-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562668156-12927-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1562668156-12927-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_032933_949519_6EC2AB09 
X-CRM114-Status: GOOD (  12.02  )
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
Cc: Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 4th serial TS interface uses the following pins:
  hscin4_s: PCA[11-14]

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c
index 2c66e70..2de601c 100644
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
@@ -722,6 +725,7 @@ static const char * const hscin0_groups[] = {"hscin0_ci",
 static const char * const hscin1_groups[] = {"hscin1_p", "hscin1_s"};
 static const char * const hscin2_groups[] = {"hscin2_s"};
 static const char * const hscin3_groups[] = {"hscin3_s"};
+static const char * const hscin4_groups[] = {"hscin4_s"};
 static const char * const hscout0_groups[] = {"hscout0_ci",
 					      "hscout0_p",
 					      "hscout0_s"};
@@ -759,6 +763,7 @@ static const struct uniphier_pinmux_function uniphier_ld20_functions[] = {
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
