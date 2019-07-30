Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 436CC7A07D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 07:45:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xmFEyhnkADcudArL7fS/8tRd9nmle8UGjnfYaaZNeL8=; b=lB3aN4Hd3OXv/4kPo5ebodFtF5
	8Q2HLui/SQLzRC4yxNoMiOtFGg0fpouDUbE7zGBBMD9poXeiFWBbaAcwcxqvhCgk/1lFTjFXnPqbA
	D9ePOiZuYrC1O9yLLYTrGvuyWrwqHMD7StWohfeqMcDbzjYpJCFK+E7scGng3aFnUy4OhZsBfLwI8
	dNAzESiiKi/2HQo9iq4MV+O7HyXSONylN6Nwa/QPUbzfjicCsQvToiDRH2PftQHXBjVFap7PFcN6F
	6RPk7yIpZkgZ6brlvFms7olaSeCc10Q2vo4KSUzI97sr4aGio+gf5FCOxX9MQUXLz6s2UE8uQpS/x
	gxOcn2Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsKws-0005zo-Fk; Tue, 30 Jul 2019 05:45:22 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsKvM-0004qQ-0F
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 05:43:49 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 30 Jul 2019 14:43:46 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 33151180B6E;
 Tue, 30 Jul 2019 14:43:46 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 30 Jul 2019 14:43:46 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 94A731A04FC;
 Tue, 30 Jul 2019 14:43:45 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-gpio@vger.kernel.org
Subject: [PATCH v2 4/5] pinctrl: uniphier: Add Pro5 PCIe pin-mux settings
Date: Tue, 30 Jul 2019 14:43:29 +0900
Message-Id: <1564465410-9165-5-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564465410-9165-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1564465410-9165-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_224348_149881_5DC38E10 
X-CRM114-Status: GOOD (  12.55  )
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

Pro5 PCIe interface uses the following pins:
    XPERST, XPEWAKE, XPECLKRQ

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
index 1d418e3..0c0af99 100644
--- a/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
+++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
@@ -807,6 +807,8 @@ static const unsigned nand_pins[] = {19, 20, 21, 22, 23, 24, 25, 28, 29, 30,
 static const int nand_muxvals[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
 static const unsigned nand_cs1_pins[] = {26, 27};
 static const int nand_cs1_muxvals[] = {0, 0};
+static const unsigned pcie_pins[] = {109, 110, 111};
+static const int pcie_muxvals[] = {0, 0, 0};
 static const unsigned sd_pins[] = {250, 251, 252, 253, 254, 255, 256, 257, 258};
 static const int sd_muxvals[] = {0, 0, 0, 0, 0, 0, 0, 0, 0};
 static const unsigned spi0_pins[] = {120, 121, 122, 123};
@@ -902,6 +904,7 @@ static const struct uniphier_pinctrl_group uniphier_pro5_groups[] = {
 	UNIPHIER_PINCTRL_GROUP(i2c5b),
 	UNIPHIER_PINCTRL_GROUP(i2c5c),
 	UNIPHIER_PINCTRL_GROUP(i2c6),
+	UNIPHIER_PINCTRL_GROUP(pcie),
 	UNIPHIER_PINCTRL_GROUP(sd),
 	UNIPHIER_PINCTRL_GROUP(spi0),
 	UNIPHIER_PINCTRL_GROUP(spi1),
@@ -936,6 +939,7 @@ static const char * const i2c3_groups[] = {"i2c3"};
 static const char * const i2c5_groups[] = {"i2c5", "i2c5b", "i2c5c"};
 static const char * const i2c6_groups[] = {"i2c6"};
 static const char * const nand_groups[] = {"nand", "nand_cs1"};
+static const char * const pcie_groups[] = {"pcie"};
 static const char * const sd_groups[] = {"sd"};
 static const char * const spi0_groups[] = {"spi0"};
 static const char * const spi1_groups[] = {"spi1"};
@@ -967,6 +971,7 @@ static const struct uniphier_pinmux_function uniphier_pro5_functions[] = {
 	UNIPHIER_PINMUX_FUNCTION(i2c5),
 	UNIPHIER_PINMUX_FUNCTION(i2c6),
 	UNIPHIER_PINMUX_FUNCTION(nand),
+	UNIPHIER_PINMUX_FUNCTION(pcie),
 	UNIPHIER_PINMUX_FUNCTION(sd),
 	UNIPHIER_PINMUX_FUNCTION(spi0),
 	UNIPHIER_PINMUX_FUNCTION(spi1),
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
