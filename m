Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 327EF63455
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 12:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WjnrxxvZoY4mBZ2ayVa1gicgqmsTnTkYsAGIMc4wuPs=; b=eIF4Lk/4uOm7K03QVXF0PkmWnN
	CNSOQWucMT6W6bA/Zc7xlWAYLzpNIlNNAl0bBQXNYi2oD2cjDGEXTTIGxHTb2OaUr69QAtIT8S79h
	vemhayQXC7HBCpRkIrEfkBaNiKccYzpbQQZ+FxSu9EbMJ7mA88bvA5LiiiXPiEZt5VdzRvjaQkO8p
	6B5r7jDTETS2FWb1EkU1KozCs9H7PEROH5+Vwkf7JCUhMmbh56UQYQSP/crmda9K/e3aEB0eWty4V
	EbRvl1fl5oxv3UhwhhUxtv74V+pOl2XfoP6WWXcaDjmBI4+J1ejTOT05l9OxOO0gwmakFSnpI0HLQ
	tB0XIhaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hknOT-0000NW-JS; Tue, 09 Jul 2019 10:30:41 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hknNL-0006bj-TL
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 10:29:35 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 09 Jul 2019 19:29:29 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id D21CD18022B;
 Tue,  9 Jul 2019 19:29:29 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 9 Jul 2019 19:29:29 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 5C6401A14E3;
 Tue,  9 Jul 2019 19:29:29 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-gpio@vger.kernel.org
Subject: [PATCH 1/5] pinctrl: uniphier: Separate modem group from UART ctsrts
 group
Date: Tue,  9 Jul 2019 19:29:12 +0900
Message-Id: <1562668156-12927-2-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562668156-12927-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1562668156-12927-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_032932_490322_BF454F62 
X-CRM114-Status: GOOD (  13.01  )
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

It depends on the board implementation whether to have each pins of
CTS/RTS, and others for modem. So it is necessary to divide current
uart_ctsrts group into uart_ctsrts and uart_modem groups.

Since the number of implemented pins for modem differs depending
on SoC, each uart_modem group also has a different number of pins.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/pinctrl/uniphier/pinctrl-uniphier-ld11.c | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c  | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-ld6b.c | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-pro4.c | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-pxs2.c | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-pxs3.c | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-sld8.c | 10 +++++++---
 9 files changed, 63 insertions(+), 27 deletions(-)

diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld11.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld11.c
index 92fef3a..c390a55 100644
--- a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld11.c
+++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld11.c
@@ -526,8 +526,10 @@ static const unsigned uart2_pins[] = {90, 91};
 static const int uart2_muxvals[] = {1, 1};
 static const unsigned uart3_pins[] = {94, 95};
 static const int uart3_muxvals[] = {1, 1};
-static const unsigned uart3_ctsrts_pins[] = {96, 97, 98, 99, 100, 101};
-static const int uart3_ctsrts_muxvals[] = {1, 1, 1, 1, 1, 1};
+static const unsigned uart3_ctsrts_pins[] = {96, 98};
+static const int uart3_ctsrts_muxvals[] = {1, 1};
+static const unsigned uart3_modem_pins[] = {97, 99, 100, 101};
+static const int uart3_modem_muxvals[] = {1, 1, 1, 1};
 static const unsigned usb0_pins[] = {46, 47};
 static const int usb0_muxvals[] = {0, 0};
 static const unsigned usb1_pins[] = {48, 49};
@@ -600,6 +602,7 @@ static const struct uniphier_pinctrl_group uniphier_ld11_groups[] = {
 	UNIPHIER_PINCTRL_GROUP(uart2),
 	UNIPHIER_PINCTRL_GROUP(uart3),
 	UNIPHIER_PINCTRL_GROUP(uart3_ctsrts),
+	UNIPHIER_PINCTRL_GROUP(uart3_modem),
 	UNIPHIER_PINCTRL_GROUP(usb0),
 	UNIPHIER_PINCTRL_GROUP(usb1),
 	UNIPHIER_PINCTRL_GROUP(usb2),
@@ -636,7 +639,8 @@ static const char * const system_bus_groups[] = {"system_bus",
 static const char * const uart0_groups[] = {"uart0"};
 static const char * const uart1_groups[] = {"uart1"};
 static const char * const uart2_groups[] = {"uart2"};
-static const char * const uart3_groups[] = {"uart3", "uart3_ctsrts"};
+static const char * const uart3_groups[] = {"uart3", "uart3_ctsrts",
+					    "uart3_modem"};
 static const char * const usb0_groups[] = {"usb0"};
 static const char * const usb1_groups[] = {"usb1"};
 static const char * const usb2_groups[] = {"usb2"};
diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c
index 7fbc965..28e54b3 100644
--- a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c
+++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c
@@ -619,8 +619,10 @@ static const unsigned uart2_pins[] = {90, 91};
 static const int uart2_muxvals[] = {1, 1};
 static const unsigned uart3_pins[] = {94, 95};
 static const int uart3_muxvals[] = {1, 1};
-static const unsigned uart3_ctsrts_pins[] = {96, 97, 98, 99, 100, 101};
-static const int uart3_ctsrts_muxvals[] = {1, 1, 1, 1, 1, 1};
+static const unsigned uart3_ctsrts_pins[] = {96, 98};
+static const int uart3_ctsrts_muxvals[] = {1, 1};
+static const unsigned uart3_modem_pins[] = {97, 99, 100, 101};
+static const int uart3_modem_muxvals[] = {1, 1, 1, 1};
 static const unsigned usb0_pins[] = {46, 47};
 static const int usb0_muxvals[] = {0, 0};
 static const unsigned usb1_pins[] = {48, 49};
@@ -695,6 +697,7 @@ static const struct uniphier_pinctrl_group uniphier_ld20_groups[] = {
 	UNIPHIER_PINCTRL_GROUP(uart2),
 	UNIPHIER_PINCTRL_GROUP(uart3),
 	UNIPHIER_PINCTRL_GROUP(uart3_ctsrts),
+	UNIPHIER_PINCTRL_GROUP(uart3_modem),
 	UNIPHIER_PINCTRL_GROUP(usb0),
 	UNIPHIER_PINCTRL_GROUP(usb1),
 	UNIPHIER_PINCTRL_GROUP(usb2),
@@ -734,7 +737,8 @@ static const char * const system_bus_groups[] = {"system_bus",
 static const char * const uart0_groups[] = {"uart0"};
 static const char * const uart1_groups[] = {"uart1"};
 static const char * const uart2_groups[] = {"uart2"};
-static const char * const uart3_groups[] = {"uart3", "uart3_ctsrts"};
+static const char * const uart3_groups[] = {"uart3", "uart3_ctsrts",
+					    "uart3_modem"};
 static const char * const usb0_groups[] = {"usb0"};
 static const char * const usb1_groups[] = {"usb1"};
 static const char * const usb2_groups[] = {"usb2"};
diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c
index d09019b..88fd68f 100644
--- a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c
+++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c
@@ -583,8 +583,10 @@ static const unsigned system_bus_cs3_pins[] = {156};
 static const int system_bus_cs3_muxvals[] = {1};
 static const unsigned uart0_pins[] = {85, 88};
 static const int uart0_muxvals[] = {1, 1};
-static const unsigned uart0_ctsrts_pins[] = {86, 87, 89};
-static const int uart0_ctsrts_muxvals[] = {1, 1, 1};
+static const unsigned uart0_ctsrts_pins[] = {86, 89};
+static const int uart0_ctsrts_muxvals[] = {1, 1};
+static const unsigned uart0_modem_pins[] = {87};
+static const int uart0_modem_muxvals[] = {1};
 static const unsigned uart1_pins[] = {155, 156};
 static const int uart1_muxvals[] = {13, 13};
 static const unsigned uart1b_pins[] = {69, 70};
@@ -641,6 +643,7 @@ static const struct uniphier_pinctrl_group uniphier_ld4_groups[] = {
 	UNIPHIER_PINCTRL_GROUP(system_bus_cs3),
 	UNIPHIER_PINCTRL_GROUP(uart0),
 	UNIPHIER_PINCTRL_GROUP(uart0_ctsrts),
+	UNIPHIER_PINCTRL_GROUP(uart0_modem),
 	UNIPHIER_PINCTRL_GROUP(uart1),
 	UNIPHIER_PINCTRL_GROUP(uart1b),
 	UNIPHIER_PINCTRL_GROUP(uart2),
@@ -667,7 +670,8 @@ static const char * const system_bus_groups[] = {"system_bus",
 						 "system_bus_cs1",
 						 "system_bus_cs2",
 						 "system_bus_cs3"};
-static const char * const uart0_groups[] = {"uart0", "uart0_ctsrts"};
+static const char * const uart0_groups[] = {"uart0", "uart0_ctsrts",
+					    "uart0_modem"};
 static const char * const uart1_groups[] = {"uart1", "uart1b"};
 static const char * const uart2_groups[] = {"uart2"};
 static const char * const uart3_groups[] = {"uart3"};
diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld6b.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld6b.c
index 414ff3a..d1ed5b7 100644
--- a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld6b.c
+++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld6b.c
@@ -780,8 +780,10 @@ static const unsigned system_bus_cs5_pins[] = {55};
 static const int system_bus_cs5_muxvals[] = {6};
 static const unsigned uart0_pins[] = {135, 136};
 static const int uart0_muxvals[] = {3, 3};
-static const unsigned uart0_ctsrts_pins[] = {137, 138, 139, 140, 141, 124};
-static const int uart0_ctsrts_muxvals[] = {3, 3, 3, 3, 3, 3};
+static const unsigned uart0_ctsrts_pins[] = {137, 139};
+static const int uart0_ctsrts_muxvals[] = {3, 3};
+static const unsigned uart0_modem_pins[] = {138, 140, 141, 124};
+static const int uart0_modem_muxvals[] = {3, 3, 3, 3};
 static const unsigned uart0b_pins[] = {11, 12};
 static const int uart0b_muxvals[] = {2, 2};
 static const unsigned uart1_pins[] = {115, 116};
@@ -856,6 +858,7 @@ static const struct uniphier_pinctrl_group uniphier_ld6b_groups[] = {
 	UNIPHIER_PINCTRL_GROUP(system_bus_cs5),
 	UNIPHIER_PINCTRL_GROUP(uart0),
 	UNIPHIER_PINCTRL_GROUP(uart0_ctsrts),
+	UNIPHIER_PINCTRL_GROUP(uart0_modem),
 	UNIPHIER_PINCTRL_GROUP(uart0b),
 	UNIPHIER_PINCTRL_GROUP(uart1),
 	UNIPHIER_PINCTRL_GROUP(uart1b),
@@ -887,7 +890,8 @@ static const char * const system_bus_groups[] = {"system_bus",
 						 "system_bus_cs3",
 						 "system_bus_cs4",
 						 "system_bus_cs5"};
-static const char * const uart0_groups[] = {"uart0", "uart0_ctsrts", "uart0b"};
+static const char * const uart0_groups[] = {"uart0", "uart0_ctsrts",
+					    "uart0_modem", "uart0b"};
 static const char * const uart1_groups[] = {"uart1", "uart1b"};
 static const char * const uart2_groups[] = {"uart2", "uart2b"};
 static const char * const usb0_groups[] = {"usb0"};
diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-pro4.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-pro4.c
index 919b9be..4f63d7b 100644
--- a/drivers/pinctrl/uniphier/pinctrl-uniphier-pro4.c
+++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-pro4.c
@@ -1072,8 +1072,10 @@ static const unsigned uart2_pins[] = {131, 132};
 static const int uart2_muxvals[] = {0, 0};
 static const unsigned uart3_pins[] = {88, 89};
 static const int uart3_muxvals[] = {2, 2};
-static const unsigned uart3_ctsrts_pins[] = {80, 81, 82, 83, 90, 91};
-static const int uart3_ctsrts_muxvals[] = {2, 2, 2, 2, 2, 2};
+static const unsigned uart3_ctsrts_pins[] = {90, 91};
+static const int uart3_ctsrts_muxvals[] = {2, 2};
+static const unsigned uart3_modem_pins[] = {80, 81, 82, 83};
+static const int uart3_modem_muxvals[] = {2, 2, 2, 2};
 static const unsigned usb0_pins[] = {180, 181};
 static const int usb0_muxvals[] = {0, 0};
 static const unsigned usb1_pins[] = {182, 183};
@@ -1148,6 +1150,7 @@ static const struct uniphier_pinctrl_group uniphier_pro4_groups[] = {
 	UNIPHIER_PINCTRL_GROUP(uart2),
 	UNIPHIER_PINCTRL_GROUP(uart3),
 	UNIPHIER_PINCTRL_GROUP(uart3_ctsrts),
+	UNIPHIER_PINCTRL_GROUP(uart3_modem),
 	UNIPHIER_PINCTRL_GROUP(usb0),
 	UNIPHIER_PINCTRL_GROUP(usb1),
 	UNIPHIER_PINCTRL_GROUP(usb2),
@@ -1181,7 +1184,8 @@ static const char * const system_bus_groups[] = {"system_bus",
 static const char * const uart0_groups[] = {"uart0"};
 static const char * const uart1_groups[] = {"uart1"};
 static const char * const uart2_groups[] = {"uart2"};
-static const char * const uart3_groups[] = {"uart3", "uart3_ctsrts"};
+static const char * const uart3_groups[] = {"uart3", "uart3_ctsrts",
+					    "uart3_modem"};
 static const char * const usb0_groups[] = {"usb0"};
 static const char * const usb1_groups[] = {"usb1"};
 static const char * const usb2_groups[] = {"usb2"};
diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
index 4a6580d..1d418e3 100644
--- a/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
+++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
@@ -839,8 +839,10 @@ static const unsigned uart0_pins[] = {47, 48};
 static const int uart0_muxvals[] = {0, 0};
 static const unsigned uart0b_pins[] = {227, 228};
 static const int uart0b_muxvals[] = {3, 3};
-static const unsigned uart0b_ctsrts_pins[] = {229, 230, 231, 232, 233, 234};
-static const int uart0b_ctsrts_muxvals[] = {3, 3, 3, 3, 3, 3};
+static const unsigned uart0b_ctsrts_pins[] = {232, 233};
+static const int uart0b_ctsrts_muxvals[] = {3, 3};
+static const unsigned uart0b_modem_pins[] = {229, 230, 231, 234};
+static const int uart0b_modem_muxvals[] = {3, 3, 3, 3};
 static const unsigned uart1_pins[] = {49, 50};
 static const int uart1_muxvals[] = {0, 0};
 static const unsigned uart2_pins[] = {51, 52};
@@ -916,6 +918,7 @@ static const struct uniphier_pinctrl_group uniphier_pro5_groups[] = {
 	UNIPHIER_PINCTRL_GROUP(uart0),
 	UNIPHIER_PINCTRL_GROUP(uart0b),
 	UNIPHIER_PINCTRL_GROUP(uart0b_ctsrts),
+	UNIPHIER_PINCTRL_GROUP(uart0b_modem),
 	UNIPHIER_PINCTRL_GROUP(uart1),
 	UNIPHIER_PINCTRL_GROUP(uart2),
 	UNIPHIER_PINCTRL_GROUP(uart3),
@@ -946,7 +949,8 @@ static const char * const system_bus_groups[] = {"system_bus",
 						 "system_bus_cs5",
 						 "system_bus_cs6",
 						 "system_bus_cs7"};
-static const char * const uart0_groups[] = {"uart0", "uart0b", "uart0b_ctsrts"};
+static const char * const uart0_groups[] = {"uart0", "uart0b",
+					    "uart0b_ctsrts", "uart0b_modem"};
 static const char * const uart1_groups[] = {"uart1"};
 static const char * const uart2_groups[] = {"uart2"};
 static const char * const uart3_groups[] = {"uart3"};
diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-pxs2.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-pxs2.c
index 169bb44..e52e65a 100644
--- a/drivers/pinctrl/uniphier/pinctrl-uniphier-pxs2.c
+++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-pxs2.c
@@ -783,8 +783,10 @@ static const unsigned uart0_pins[] = {217, 218};
 static const int uart0_muxvals[] = {8, 8};
 static const unsigned uart0b_pins[] = {179, 180};
 static const int uart0b_muxvals[] = {10, 10};
-static const unsigned uart0b_ctsrts_pins[] = {176, 177, 178, 183, 184, 185};
-static const int uart0b_ctsrts_muxvals[] = {10, 10, 10, 10, 10, 10};
+static const unsigned uart0b_ctsrts_pins[] = {183, 185};
+static const int uart0b_ctsrts_muxvals[] = {10, 10};
+static const unsigned uart0b_modem_pins[] = {176, 177, 178, 184};
+static const int uart0b_modem_muxvals[] = {10, 10, 10, 10};
 static const unsigned uart1_pins[] = {115, 116};
 static const int uart1_muxvals[] = {8, 8};
 static const unsigned uart2_pins[] = {113, 114};
@@ -863,6 +865,7 @@ static const struct uniphier_pinctrl_group uniphier_pxs2_groups[] = {
 	UNIPHIER_PINCTRL_GROUP(uart0),
 	UNIPHIER_PINCTRL_GROUP(uart0b),
 	UNIPHIER_PINCTRL_GROUP(uart0b_ctsrts),
+	UNIPHIER_PINCTRL_GROUP(uart0b_modem),
 	UNIPHIER_PINCTRL_GROUP(uart1),
 	UNIPHIER_PINCTRL_GROUP(uart2),
 	UNIPHIER_PINCTRL_GROUP(uart3),
@@ -898,7 +901,8 @@ static const char * const spi0_groups[] = {"spi0"};
 static const char * const spi1_groups[] = {"spi1"};
 static const char * const system_bus_groups[] = {"system_bus",
 						 "system_bus_cs1"};
-static const char * const uart0_groups[] = {"uart0", "uart0b", "uart0b_ctsrts"};
+static const char * const uart0_groups[] = {"uart0", "uart0b",
+					    "uart0b_ctsrts", "uart0b_modem"};
 static const char * const uart1_groups[] = {"uart1"};
 static const char * const uart2_groups[] = {"uart2"};
 static const char * const uart3_groups[] = {"uart3", "uart3b"};
diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-pxs3.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-pxs3.c
index 3dc3e5b..2b388fd 100644
--- a/drivers/pinctrl/uniphier/pinctrl-uniphier-pxs3.c
+++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-pxs3.c
@@ -811,8 +811,10 @@ static const unsigned int system_bus_cs1_pins[] = {15};
 static const int system_bus_cs1_muxvals[] = {0};
 static const unsigned int uart0_pins[] = {92, 93};
 static const int uart0_muxvals[] = {0, 0};
-static const unsigned int uart0_ctsrts_pins[] = {243, 244, 245, 246, 247, 248};
-static const int uart0_ctsrts_muxvals[] = {3, 3, 3, 3, 3, 3};
+static const unsigned int uart0_ctsrts_pins[] = {243, 247};
+static const int uart0_ctsrts_muxvals[] = {3, 3};
+static const unsigned int uart0_modem_pins[] = {244, 245, 246, 248};
+static const int uart0_modem_muxvals[] = {3, 3, 3, 3};
 static const unsigned int uart1_pins[] = {94, 95};
 static const int uart1_muxvals[] = {0, 0};
 static const unsigned int uart2_pins[] = {96, 97};
@@ -887,6 +889,7 @@ static const struct uniphier_pinctrl_group uniphier_pxs3_groups[] = {
 	UNIPHIER_PINCTRL_GROUP(system_bus_cs1),
 	UNIPHIER_PINCTRL_GROUP(uart0),
 	UNIPHIER_PINCTRL_GROUP(uart0_ctsrts),
+	UNIPHIER_PINCTRL_GROUP(uart0_modem),
 	UNIPHIER_PINCTRL_GROUP(uart1),
 	UNIPHIER_PINCTRL_GROUP(uart2),
 	UNIPHIER_PINCTRL_GROUP(uart3),
@@ -914,7 +917,8 @@ static const char * const spi0_groups[] = {"spi0"};
 static const char * const spi1_groups[] = {"spi1"};
 static const char * const system_bus_groups[] = {"system_bus",
 						 "system_bus_cs1"};
-static const char * const uart0_groups[] = {"uart0", "uart0_ctsrts"};
+static const char * const uart0_groups[] = {"uart0", "uart0_ctsrts",
+					    "uart0_modem"};
 static const char * const uart1_groups[] = {"uart1"};
 static const char * const uart2_groups[] = {"uart2"};
 static const char * const uart3_groups[] = {"uart3"};
diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-sld8.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-sld8.c
index 463e932..087e8db 100644
--- a/drivers/pinctrl/uniphier/pinctrl-uniphier-sld8.c
+++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-sld8.c
@@ -513,8 +513,10 @@ static const unsigned system_bus_cs5_pins[] = {13};
 static const int system_bus_cs5_muxvals[] = {1};
 static const unsigned uart0_pins[] = {70, 71};
 static const int uart0_muxvals[] = {3, 3};
-static const unsigned uart0_ctsrts_pins[] = {72, 73, 74};
-static const int uart0_ctsrts_muxvals[] = {3, 3, 3};
+static const unsigned uart0_ctsrts_pins[] = {72, 74};
+static const int uart0_ctsrts_muxvals[] = {3, 3};
+static const unsigned uart0_modem_pins[] = {73};
+static const int uart0_modem_muxvals[] = {3};
 static const unsigned uart1_pins[] = {114, 115};
 static const int uart1_muxvals[] = {0, 0};
 static const unsigned uart2_pins[] = {112, 113};
@@ -572,6 +574,7 @@ static const struct uniphier_pinctrl_group uniphier_sld8_groups[] = {
 	UNIPHIER_PINCTRL_GROUP(system_bus_cs5),
 	UNIPHIER_PINCTRL_GROUP(uart0),
 	UNIPHIER_PINCTRL_GROUP(uart0_ctsrts),
+	UNIPHIER_PINCTRL_GROUP(uart0_modem),
 	UNIPHIER_PINCTRL_GROUP(uart1),
 	UNIPHIER_PINCTRL_GROUP(uart2),
 	UNIPHIER_PINCTRL_GROUP(uart3),
@@ -599,7 +602,8 @@ static const char * const system_bus_groups[] = {"system_bus",
 						 "system_bus_cs3",
 						 "system_bus_cs4",
 						 "system_bus_cs5"};
-static const char * const uart0_groups[] = {"uart0", "uart0_ctsrts"};
+static const char * const uart0_groups[] = {"uart0", "uart0_ctsrts",
+					    "uart0_modem"};
 static const char * const uart1_groups[] = {"uart1"};
 static const char * const uart2_groups[] = {"uart2"};
 static const char * const uart3_groups[] = {"uart3"};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
