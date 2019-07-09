Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE5D63452
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 12:29:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dN3RntDwiqR8LiW+eG3pd/ELc+4sb7xLZLr26xElfCE=; b=pe9IgDCmqBTrEYdbEcTC/eXZZ0
	YDIjP/MGczLzQMtyVpGSESs5zb7XmBDvD5GI9mnB/Cgrnlr24+NO63GewkrmMRKJK1NA20GnjHOAh
	wj0t2V76lBtZjmG7okkz6BnyT/9+jgCMMGio5zvebaK4QgpF2BggVxLNBApqk4vnOW2WmT1jLK7N3
	omUxwtakUoDNmu7X3w7DmOWhubyLK9pbTDZehfNYYxT7aE+UJMWV25gUjPLVkvoYPvVHMApnAPiek
	h7B+z278ErRLHYr+VTY0Aa/0C3VJ4EdIwdWaa0NL7swnGVv7ZG+Gpf1+73vESRqN8PItTGkyw+tsi
	nNqRBAUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hknNk-0006lr-HG; Tue, 09 Jul 2019 10:29:56 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hknNM-0006bl-A9
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 10:29:33 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 09 Jul 2019 19:29:30 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 0226C60629;
 Tue,  9 Jul 2019 19:29:31 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 9 Jul 2019 19:29:31 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 9320C1A14E3;
 Tue,  9 Jul 2019 19:29:30 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-gpio@vger.kernel.org
Subject: [PATCH 2/5] pinctrl: uniphier: Add another audio I/O pin-mux settings
 for LD20
Date: Tue,  9 Jul 2019 19:29:13 +0900
Message-Id: <1562668156-12927-3-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562668156-12927-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1562668156-12927-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_032932_462724_A3BEDA46 
X-CRM114-Status: GOOD (  11.58  )
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

This adds support for pinmux settings of aout1b groups. This group includes
aout1 signals derived from xirq pins.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c
index 28e54b3..2c66e70 100644
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
@@ -708,6 +711,7 @@ static const struct uniphier_pinctrl_group uniphier_ld20_groups[] = {
 };
 
 static const char * const aout1_groups[] = {"aout1"};
+static const char * const aout1b_groups[] = {"aout1b"};
 static const char * const aoutiec1_groups[] = {"aoutiec1"};
 static const char * const emmc_groups[] = {"emmc", "emmc_dat8"};
 static const char * const ether_rgmii_groups[] = {"ether_rgmii"};
@@ -746,6 +750,7 @@ static const char * const usb3_groups[] = {"usb3"};
 
 static const struct uniphier_pinmux_function uniphier_ld20_functions[] = {
 	UNIPHIER_PINMUX_FUNCTION(aout1),
+	UNIPHIER_PINMUX_FUNCTION(aout1b),
 	UNIPHIER_PINMUX_FUNCTION(aoutiec1),
 	UNIPHIER_PINMUX_FUNCTION(emmc),
 	UNIPHIER_PINMUX_FUNCTION(ether_rgmii),
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
