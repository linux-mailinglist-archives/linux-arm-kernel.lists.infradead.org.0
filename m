Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DB963453
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 12:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o3oPDtR6c1Qp7eTuBbVJqVtEuIIuhHjkIIpDNGcN36o=; b=iMNdas2HKdoG5qZxpeO7W0eP00
	w7QQLl9BpgvQI4kfc/OzUiRHQYuq3XEtZJUcVFl06gBppc2HLhkBYuZ80rq7DWhMqj3tlLKn4Ae/O
	jrNjjELVAs+x9q+O8cldBHNcsaQO/iDcw2/oVHaGELz7pUyJHMrHFyDo1PaMm93jNkcH7aFeOd9IW
	UrVvVX1TNdgIONKhPdMANyksNs0N9W9qgYBdlwDKj6Jy2iKmDdtq3eWF3hcM2WT2Heetq4mYYXkc5
	ppNXjc5PzW3F/yUKQZrNk4+kuNPAUMonF0VmBkMiYPa9iR3iIzyT1gcmsJ27xpAoWRT9ZpRA1CmGw
	+40KDqBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hknO5-00074W-Tq; Tue, 09 Jul 2019 10:30:18 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hknNN-0006cv-Nb
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 10:29:35 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 09 Jul 2019 19:29:33 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 1191560629;
 Tue,  9 Jul 2019 19:29:33 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 9 Jul 2019 19:29:33 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id A69921A14E3;
 Tue,  9 Jul 2019 19:29:32 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-gpio@vger.kernel.org
Subject: [PATCH 4/5] pinctrl: uniphier: Add Pro5 PCIe pin-mux settings
Date: Tue,  9 Jul 2019 19:29:15 +0900
Message-Id: <1562668156-12927-5-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562668156-12927-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1562668156-12927-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_032933_875964_690F8E91 
X-CRM114-Status: GOOD (  11.61  )
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

Pro5 PCIe interface uses the following pins:
    XPERST, XPEWAKE, XPECLKRQ

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
index 1d418e3..577f12e 100644
--- a/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
+++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
@@ -855,6 +855,8 @@ static const unsigned usb1_pins[] = {126, 127};
 static const int usb1_muxvals[] = {0, 0};
 static const unsigned usb2_pins[] = {128, 129};
 static const int usb2_muxvals[] = {0, 0};
+static const unsigned pcie_pins[] = {109, 110, 111};
+static const int pcie_muxvals[] = {0, 0, 0};
 static const unsigned int gpio_range_pins[] = {
 	89, 90, 91, 92, 93, 94, 95, 96,		/* PORT0x */
 	97, 98, 99, 100, 101, 102, 103, 104,	/* PORT1x */
@@ -925,6 +927,7 @@ static const struct uniphier_pinctrl_group uniphier_pro5_groups[] = {
 	UNIPHIER_PINCTRL_GROUP(usb0),
 	UNIPHIER_PINCTRL_GROUP(usb1),
 	UNIPHIER_PINCTRL_GROUP(usb2),
+	UNIPHIER_PINCTRL_GROUP(pcie),
 	UNIPHIER_PINCTRL_GROUP_GPIO(gpio_range),
 };
 
@@ -957,6 +960,7 @@ static const char * const uart3_groups[] = {"uart3"};
 static const char * const usb0_groups[] = {"usb0"};
 static const char * const usb1_groups[] = {"usb1"};
 static const char * const usb2_groups[] = {"usb2"};
+static const char * const pcie_groups[] = {"pcie"};
 
 static const struct uniphier_pinmux_function uniphier_pro5_functions[] = {
 	UNIPHIER_PINMUX_FUNCTION(emmc),
@@ -979,6 +983,7 @@ static const struct uniphier_pinmux_function uniphier_pro5_functions[] = {
 	UNIPHIER_PINMUX_FUNCTION(usb0),
 	UNIPHIER_PINMUX_FUNCTION(usb1),
 	UNIPHIER_PINMUX_FUNCTION(usb2),
+	UNIPHIER_PINMUX_FUNCTION(pcie),
 };
 
 static int uniphier_pro5_get_gpio_muxval(unsigned int pin,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
