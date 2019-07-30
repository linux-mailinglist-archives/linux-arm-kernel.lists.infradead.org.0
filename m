Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE917A07C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 07:45:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=olI/BIm/MnIB0ee2uz72r7qOn7CIvbzPeQVMR1voxvY=; b=sid57viPZHl+xLLLpEz6jzCa2k
	P5h4MfVqPO/8NkTevabdLc/LG7rAWsi/zqhfoNmBEBaQRl+VUa4W/K/xVpemdBoof4iieqiNsZIBC
	KwF5dOgHLXL3glrZudX+EgaN5uE9qXw5otUowgyMEOFbFlKHQprPpzi+PsvgQFupZOxkb9kPx7YMH
	lRR3FNlwqZyUpukayx5bW8uc4yURSG+8tasqn393l1oxFucLe2NBF3ldFS1OkitrY60aWtkLO/ipr
	zhowDEbWMCu1yXk+AgxjL8HMipK0+9GDdiCuN66OaOD0O3MvtrGl7tzvz+pL4F31xAYBEnUybIMow
	ELk9VJKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsKwW-0005dF-Tq; Tue, 30 Jul 2019 05:45:01 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsKvL-0004rW-Qt
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 05:43:49 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 30 Jul 2019 14:43:46 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 00B4F180B6E;
 Tue, 30 Jul 2019 14:43:46 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 30 Jul 2019 14:43:46 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 989731A04FC;
 Tue, 30 Jul 2019 14:43:46 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-gpio@vger.kernel.org
Subject: [PATCH v2 5/5] pinctrl: uniphier: Fix Pro5 SD pin-mux setting
Date: Tue, 30 Jul 2019 14:43:30 +0900
Message-Id: <1564465410-9165-6-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564465410-9165-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1564465410-9165-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_224347_985379_F2577DD5 
X-CRM114-Status: GOOD (  15.27  )
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

SD uses the following pins starting from 247:
    SDCD, SDWP, SDVOLC, SDCLK, SDCMD, SDDAT{0,1,2,3}

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---
 drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
index 0c0af99..4277d49 100644
--- a/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
+++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
@@ -809,7 +809,7 @@ static const unsigned nand_cs1_pins[] = {26, 27};
 static const int nand_cs1_muxvals[] = {0, 0};
 static const unsigned pcie_pins[] = {109, 110, 111};
 static const int pcie_muxvals[] = {0, 0, 0};
-static const unsigned sd_pins[] = {250, 251, 252, 253, 254, 255, 256, 257, 258};
+static const unsigned sd_pins[] = {247, 248, 249, 250, 251, 252, 253, 254, 255};
 static const int sd_muxvals[] = {0, 0, 0, 0, 0, 0, 0, 0, 0};
 static const unsigned spi0_pins[] = {120, 121, 122, 123};
 static const int spi0_muxvals[] = {0, 0, 0, 0};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
