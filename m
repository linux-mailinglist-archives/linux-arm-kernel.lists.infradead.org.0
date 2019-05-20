Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B334023A02
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:29:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K3FrIn7xikHVEzRRkpkIPaC4yDmLoteXObhi6asHLlA=; b=K9juejo/9eB01M
	kyEicuslFRLdnHZBH6GzEfBVgsq5/jWkKIC3u2nv4MxniXg8+82fB9jHs+A5iwfAXMdg3Q1lLdF2R
	mJEyjahdFMidXVlSyUnv2XY/sJWT5bCq7h+KrY3pkR4NylVfMyXymKjjxtgLqTOR/ZIWwBzZq6JoP
	lPRSAqzzmjhIC6/Pumuf7VpxjLHwHsdd/lOl0jUUSebGw/LMgjlAvGrGxI6dq2eD65M1hcIaI9wH7
	5x3V73A0T78RnEZWonyWb/+02oQtdEFa+RS+VH9u5lKu/sWEArB9yxKqMOkCi50KVU98ZKZGd49TX
	txHNm2jLQiQRZBGI7o4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjHg-0006lk-1z; Mon, 20 May 2019 14:29:00 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjHX-0006kb-KC
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:28:53 +0000
Received: by mail-wm1-x343.google.com with SMTP id 15so9231228wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A12cpc+WUhF71aXBZdyNVOx5fCS+Vei2NjBPNK5Pnn0=;
 b=J0KpAxRV6c7LEUvGEfmWqd52V9FoX5XyChfLKAjO9N8Lask56HE52hii+peIuS/TvR
 qei9bPgkPegaYnLdBt7Q72ThAnNKXSbeBV1n9LXvau06nDyMUCJ/j8EtNF/S+HUx7GBz
 PTvBjkeL1IRYjM8OgtccAv6S8uIP1hVbY7A+2NsWYdwi4wVGCAwwwrDrGQZJhBrQxwup
 QEDg8v4UwJCMOBaSyvwqAII9qrGZmbPI3bHFUyRRS0ocV7f7hM4+SXFENg7PjYHKbJOo
 x+Bi8v6wgG6PAqedkhqyOw40xElslb52WKem7eJl4qhv5HhFSXKr+rImqWlxLdCObRog
 Kltg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A12cpc+WUhF71aXBZdyNVOx5fCS+Vei2NjBPNK5Pnn0=;
 b=b9vcWBQVnoIu/gZHPrfhMTX4ubzL4fx0q89eshPVUy69/MYm9F11L9/LDsNX5uu+Ce
 QNUKDc0QIxadUCsHeWcgmYfS6Ga9/pNTOrTmJtsR3n2lZQAhrlofcty7qjJE3+guRp4Y
 oc9ghbDY+8axhOBWOJ9hNjtTqIEpcBTMd64vkJouzCxYBx+qP+MSzV0HbPmpIwShzUMV
 dx6ZOWHx9KzicAsVWZAjZp0NprJcmUCAr76nzpntZD34+Brhsqbzxi/EYdAHSjBcbAmM
 Y6RnvFMBx3zipDDdGwFT8M3QcdZE9TYfDx+zfZAmQBQPT0+zDcb+PDZ8y3RcXb5vvoAb
 v3Vw==
X-Gm-Message-State: APjAAAXM+bV8X8jPC22FTNQ37SUHYR7ahIqLP1b7sJ1LUPFPdT6WcrKv
 bfUN0Wj0tJAToxQSH69FIVqrzzV3gbrE0w==
X-Google-Smtp-Source: APXvYqyRQP9yJCxY65JkyqLPbCzFVGNKEaUa+r0HJCszmKWVUSyVt6zf/KCdViAxXMq2Oc6MPsJrnA==
X-Received: by 2002:a1c:700b:: with SMTP id l11mr5463602wmc.106.1558362530051; 
 Mon, 20 May 2019 07:28:50 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id z74sm154843wmc.2.2019.05.20.07.28.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:28:49 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net
Subject: [PATCH] watchdog: meson_wdt: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:28:47 +0200
Message-Id: <20190520142847.442-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_072851_706049_BE548646 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/watchdog/meson_wdt.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/watchdog/meson_wdt.c b/drivers/watchdog/meson_wdt.c
index 01889cef81e1..3389f4c02603 100644
--- a/drivers/watchdog/meson_wdt.c
+++ b/drivers/watchdog/meson_wdt.c
@@ -1,12 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *      Meson Watchdog Driver
  *
  *      Copyright (c) 2014 Carlo Caione
- *
- *      This program is free software; you can redistribute it and/or
- *      modify it under the terms of the GNU General Public License
- *      as published by the Free Software Foundation; either version
- *      2 of the License, or (at your option) any later version.
  */
 
 #include <linux/clk.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
