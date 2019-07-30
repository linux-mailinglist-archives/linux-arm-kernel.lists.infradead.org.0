Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FE97A078
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 07:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k0Fm3qJey4eiEuUki1JkR1Rpz3bVL3b2PPSLrPnifbY=; b=RdK60OY9mwy+GgCJAAmL0jfz9Q
	BtqNrBKSYjh31AshvpSsKJ/3dNeci4oDXGmbCG/nZzHrlgbvvKpIqpFZHk7AkLHcqYD8OUIfsBY+X
	LEeMVfAHbOM7L4zDg05DieRKcCEX59/6qOLrfkh58/Sn9/ibuRR2NyXBo+FC82mZplJ+V8c/H6q6L
	ZseDy1irnOJX7xxtI1qE+ObApFHrKBdOvNyK7gT+elUGDM0Xug8onQR3CMyHc8+qshtEMN3JYbu76
	o/gjLi+mns2wxmiGVZfV+A+0x67FUjYHXB4++NJ32yawBLPzCVZQB/hMWiXaw489jiBf5KRFBVq7R
	fPF5wmsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsKvr-00054Y-RJ; Tue, 30 Jul 2019 05:44:19 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsKvK-0004qQ-1d
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 05:43:47 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 30 Jul 2019 14:43:44 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 23ADC180B6E;
 Tue, 30 Jul 2019 14:43:44 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 30 Jul 2019 14:43:44 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 7D4801A04FC;
 Tue, 30 Jul 2019 14:43:43 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-gpio@vger.kernel.org
Subject: [PATCH v2 2/5] pinctrl: uniphier: Add another audio I/O pin-mux
 settings for LD20
Date: Tue, 30 Jul 2019 14:43:27 +0900
Message-Id: <1564465410-9165-3-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564465410-9165-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1564465410-9165-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_224346_198363_06974399 
X-CRM114-Status: GOOD (  13.83  )
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

This adds support for pinmux settings of aout1b group. This group includes
audio I/O signals derived from xirq pins, and it is equivalent to "aout1"
in functionality.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c
index 28e54b3..8d4fb65 100644
--- a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c
+++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c
@@ -544,6 +544,8 @@ static const struct pinctrl_pin_desc uniphier_ld20_pins[] = {
 
 static const unsigned aout1_pins[] = {137, 138, 139, 140, 141, 142};
 static const int aout1_muxvals[] = {0, 0, 0, 0, 0, 0};
+static const unsigned aout1b_pins[] = {150, 151, 152, 153, 154, 155, 156};
+static const int aout1b_muxvals[] = {1, 1, 1, 1, 1, 1, 1};
 static const unsigned aoutiec1_pins[] = {135, 136};
 static const int aoutiec1_muxvals[] = {0, 0};
 static const unsigned int emmc_pins[] = {19, 20, 21, 22, 23, 24, 25};
@@ -664,6 +666,7 @@ static const unsigned int gpio_range2_pins[] = {
 
 static const struct uniphier_pinctrl_group uniphier_ld20_groups[] = {
 	UNIPHIER_PINCTRL_GROUP(aout1),
+	UNIPHIER_PINCTRL_GROUP(aout1b),
 	UNIPHIER_PINCTRL_GROUP(aoutiec1),
 	UNIPHIER_PINCTRL_GROUP(emmc),
 	UNIPHIER_PINCTRL_GROUP(emmc_dat8),
@@ -707,7 +710,7 @@ static const struct uniphier_pinctrl_group uniphier_ld20_groups[] = {
 	UNIPHIER_PINCTRL_GROUP_GPIO(gpio_range2),
 };
 
-static const char * const aout1_groups[] = {"aout1"};
+static const char * const aout1_groups[] = {"aout1", "aout1b"};
 static const char * const aoutiec1_groups[] = {"aoutiec1"};
 static const char * const emmc_groups[] = {"emmc", "emmc_dat8"};
 static const char * const ether_rgmii_groups[] = {"ether_rgmii"};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
