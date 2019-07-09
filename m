Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2480B63448
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 12:29:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+D9Ya8HBc9ILx1T2xq0HfSplyVZLcEbLSTbyN8tTzAc=; b=Ima
	jcABzUGj2U1g2bz2nUeHXA1FpJTVb08cN+oy7z3IvvmtzmT//P30RiTmH8LHQXJ6wWapbz1JxBGT5
	dW4cbArml9QSIfWL/Me794on/UDVIcoaJsYCgxvHTmCXDSt2Ae7RUpz9x7wGKQxp9jDGmm8shj8B+
	6qGvLZ4ArH3l+35cUBhyEUif/nBcgrrBmESx1xg2SQGRdS8SjrtT8YjJuLmGSYLvW2+NBwkxfWhJ6
	c00/fjuw61XnOd10+dbVF0LVrIWe22qF3S1HAYy4VIx2RatcMbw1Sf1zFRMO4BBhklfgp7UmhXycY
	C4qzpZ0XTyt76IrWhgIFcrDCEi9NuRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hknNU-0006dl-M0; Tue, 09 Jul 2019 10:29:40 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hknNL-0006bi-Sk
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 10:29:33 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 09 Jul 2019 19:29:28 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 4BFEF18022B;
 Tue,  9 Jul 2019 19:29:28 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 9 Jul 2019 19:29:28 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 9C1331A14E3;
 Tue,  9 Jul 2019 19:29:27 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-gpio@vger.kernel.org
Subject: [PATCH 0/5] pinctrl: uniphier: Add some improvements and new settings
Date: Tue,  9 Jul 2019 19:29:11 +0900
Message-Id: <1562668156-12927-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_032932_045868_E47772C4 
X-CRM114-Status: GOOD (  10.50  )
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

This series adds some improvements and new settings for pin-mux.

Kunihiko Hayashi (5):
  pinctrl: uniphier: Separate modem group from UART ctsrts group
  pinctrl: uniphier: Add another audio I/O pin-mux settings for LD20
  pinctrl: uniphier: Add 4th LD20 MPEG2-TS input pin-mux setting
  pinctrl: uniphier: Add Pro5 PCIe pin-mux settings
  pinctrl: uniphier: Fix Pro5 SD pin-mux setting

 drivers/pinctrl/uniphier/pinctrl-uniphier-ld11.c | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c | 20 +++++++++++++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c  | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-ld6b.c | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-pro4.c | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c | 17 +++++++++++++----
 drivers/pinctrl/uniphier/pinctrl-uniphier-pxs2.c | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-pxs3.c | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-sld8.c | 10 +++++++---
 9 files changed, 79 insertions(+), 28 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
