Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A278A7A075
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 07:44:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NmcQ6Qkh+DEJgoa+snELQcPfo0f4nKmpHmZE8XlALyM=; b=R7Q
	59kRCQ7Bknyk2vyP/hNiCAtPrmYoX0hXB3L6uqnowKyc3W76r50kEOyC2b6HD4gXi54SLllIHGkAy
	AXgeWyfI6adRtLE1dwU+Ti1ADHO/Xq6bkaPode3uMB6d6rT2493Gvfsd2a0v7Oo4zmzv+4fq2ffQf
	YMv9vSTkJmUATIuUNTjDahaOd27WQN0PfaS4Gs82P1R6WC7pK4Qerni6Z1wuaF5shlAG8Ju/fLtS2
	WZsq3/8qGOWB1gQK8Aky4/iaUmdWmEj0lLvKHtvxEJA6Sj1P+eVaeUPrhZRT+9N0AlAX89hMNu1Zi
	ffD2h9/6ny/OpDV2NtsFZ8o7JLVelhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsKvY-0004sQ-VX; Tue, 30 Jul 2019 05:44:01 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsKvK-0004qO-1c
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 05:43:47 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 30 Jul 2019 14:43:41 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 8CA3A60629;
 Tue, 30 Jul 2019 14:43:41 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 30 Jul 2019 14:43:41 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 21B5C1A04FC;
 Tue, 30 Jul 2019 14:43:41 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-gpio@vger.kernel.org
Subject: [PATCH v2 0/5] pinctrl: uniphier: Add some improvements and new
 settings
Date: Tue, 30 Jul 2019 14:43:25 +0900
Message-Id: <1564465410-9165-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_224346_198354_68DA5A3C 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
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

This series adds some improvements and new settings for pin-mux.

Changes since v1:
- sort arrays in alphabetical order
- sort pin numbers in ascending order
- merge "aout1b" pin-mux to aout1_group
- change "4th" in the subject to "5th"
- add Acked-by: lines

Kunihiko Hayashi (5):
  pinctrl: uniphier: Separate modem group from UART ctsrts group
  pinctrl: uniphier: Add another audio I/O pin-mux settings for LD20
  pinctrl: uniphier: Add 5th LD20 MPEG2-TS input pin-mux setting
  pinctrl: uniphier: Add Pro5 PCIe pin-mux settings
  pinctrl: uniphier: Fix Pro5 SD pin-mux setting

 drivers/pinctrl/uniphier/pinctrl-uniphier-ld11.c | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c | 20 ++++++++++++++++----
 drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c  | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-ld6b.c | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-pro4.c | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c | 17 +++++++++++++----
 drivers/pinctrl/uniphier/pinctrl-uniphier-pxs2.c | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-pxs3.c | 10 +++++++---
 drivers/pinctrl/uniphier/pinctrl-uniphier-sld8.c | 10 +++++++---
 9 files changed, 78 insertions(+), 29 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
