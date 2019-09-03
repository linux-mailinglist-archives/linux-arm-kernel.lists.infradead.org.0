Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3531A6098
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 07:31:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GK44ClL8AUkw/NvwsFy4fsADEVmeYcoLZohc2RUawPk=; b=lK5
	0skDotFzS+A1JmHUjqw/H4AyLhEtQGZyX2GFSRNuBis16Jaiv4EZe1h6POVleWHgG+b8yF7RrzWJb
	4PTTVltPKkWTg6pYfar+4bO5PKIL9K7Kf64KgNvamUm+DlGVCcwVvfIkIHH/VwHKZHNtQ3OYFCpDt
	PQhjfRbapeHejANROU7iRPqFRbckm5JBu6qlD0P1N3Rg4wdTkj7K88+pZeJwyoP2nwjVXtQ3d2Eun
	P283niM8NNUfbhkXMSp6J74OPkqFDj6fRLVe6Bz4hRIT2kEEfhRbuox0Wj13w3jVcZ8YyR5Y2u/H5
	obyH8JCZpBPeOf3rGwkW3c5MmnjC44g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i51PW-0008D1-UW; Tue, 03 Sep 2019 05:31:23 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i51PJ-0008BB-TB
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 05:31:11 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 03 Sep 2019 14:31:04 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id DA5F918028D;
 Tue,  3 Sep 2019 14:31:04 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 3 Sep 2019 14:31:04 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id B002D1A0E9F;
 Tue,  3 Sep 2019 14:31:04 +0900 (JST)
Received: from hamster.e01.socionext.com (unknown [10.213.134.20])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 860471204B3;
 Tue,  3 Sep 2019 14:31:04 +0900 (JST)
From: Keiji Hayashibara <hayashibara.keiji@socionext.com>
To: broonie@kernel.org, yamada.masahiro@socionext.com,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] spi: uniphier: introduce polling mode and fix bug
Date: Tue,  3 Sep 2019 14:30:58 +0900
Message-Id: <1567488661-11428-1-git-send-email-hayashibara.keiji@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_223110_054231_130CF4E2 
X-CRM114-Status: GOOD (  11.32  )
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
Cc: jaswinder.singh@linaro.org, linux-kernel@vger.kernel.org,
 masami.hiramatsu@linaro.org, hayashibara.keiji@socionext.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series introduces new polling mode and fixes bug.

- Introduce new polling mode for short size transfer. Either the estimated
  transfer time is estimated to exceed 200us, or polling loop actually exceeds
  200us, it switches to irq mode.
- Fix a bug of register overwrite.
- Minor corrections.

Keiji Hayashibara (3):
  spi: uniphier: fix wrong register overwrite
  spi: uniphier: remove unnecessary code
  spi: uniphier: introduce polling mode

 drivers/spi/spi-uniphier.c | 85 ++++++++++++++++++++++++++++++++++++----------
 1 file changed, 68 insertions(+), 17 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
