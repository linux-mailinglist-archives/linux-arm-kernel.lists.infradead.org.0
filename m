Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8031023A5A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RqZxAO2MXlfcBVsvQUogV60XPRRKq9GNb5TnlszAoA=; b=ZZ3QrWUyfWlBOU
	YoDz6kMyik+RBk19FPbcnh7rQwGO7ywKwtYRLf/xWMzG0OGfQ7s6wt//Vxn5yI+x9ti5FM9Q+HIxR
	eOnXtG5SETsySfN7AUFvvxSYIeU5p0omU8Sh4fqk5Sk1wMd2cvdxYFTliX8zrN3InqVZVKl1hkUHD
	JhVdtEDYC6cifUQTa2xfKU2HTT/bblCnkzgONwXUvhOFA/LghwfTi7TuGOBU0Muj8h7DH61BQHAJZ
	AAIxhqK995GIXgnI0lVweiJLQbr5BUh30KDROVm10p7rBjdzvBThPoHRjHNrufyss9Dca3HjRtbjq
	Goc+VulY2YiF5HbGno1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjQv-0006Zu-KO; Mon, 20 May 2019 14:38:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjQ0-0005cu-Sg
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:37:44 +0000
Received: by mail-wr1-x443.google.com with SMTP id r4so14870115wro.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3QDibyFNEaQBAlcOcZglPf5uEDCypT1ErrGWYL3AuN8=;
 b=n4ucZluqd7Rn9USs5AaNQcjkyWV/7ZvhsEaiHXgqDmJDwmsOYW+Tc8gHioUBrggmSL
 4251XCulu6Dw79ci++0dkIlexw5Crd+G++jWvULCjL/uVcD8e9jNBpsOUcdUMMVds3sx
 vnx01w7hms6aoV0BX3+IL4XZK63zWrBq5zjMBjceXB5fS8ZAX0FDZ/SRvZ5j73c4Q2nJ
 z85NWcT8a6kDaM1hOu6ePfpyASuAKKkSRxl3ZdcqHNUywqo6cQobptZh6s8yPmCV2Ibj
 UBlo338Kt2yB4L5sRKE75tiJadZcXXRvvF3aaL2QwxetkGb8S90tDFJMAaGbBbMbyF69
 RsjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3QDibyFNEaQBAlcOcZglPf5uEDCypT1ErrGWYL3AuN8=;
 b=C9283LQCS62iAY57GoS/15+/Bxh6IfD2mNSSK+lHXU5siHJ8fY12r0arKX9I9Tq/h0
 s9uXHEcdVVLe7tPYB88nlC7B4nEElmO9+x5MW7cx4QDz7jDUuN59EbHY04s29syErItB
 RH8amBcuM6d3OtCR7wydxHohAl5FUJc+2pOcR/nh6yTJjHdR+HOQfqdTHflE48zT+hjN
 FoUhxS6ann/OALbbdpGPnnOdhfNwxLTtdtoZzpvloImYn3kwhGLeTJnsHjIu2YlP5kqA
 06KsnY9lIF73PltxhdqJm14wOp69VCuiwFLCqtEJkn0qvuk/6nwptW+B/JCnpbm3bzaN
 IhIg==
X-Gm-Message-State: APjAAAWW3r54Msg5K7mdVEktTO3egdiH4WBTA8A5xZrFRM3qCkIO5QLM
 bnB43H+XLmJivIwmY3wKOYyaDw==
X-Google-Smtp-Source: APXvYqxmDYEY1Ff/PypAXqIIxFM6K9hf2q4tW4sAGg5SIB2c/1YEMr3YhzaRmZW/7u5KKCEoKW757Q==
X-Received: by 2002:adf:8184:: with SMTP id 4mr48432770wra.27.1558363055370;
 Mon, 20 May 2019 07:37:35 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b136sm19076204wmg.1.2019.05.20.07.37.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:37:34 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: srinivas.kandagatla@linaro.org
Subject: [PATCH 1/2] nvmem: meson-efuse: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:37:31 +0200
Message-Id: <20190520143732.2701-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520143732.2701-1-narmstrong@baylibre.com>
References: <20190520143732.2701-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073737_088003_4A11667A 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/nvmem/meson-efuse.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/nvmem/meson-efuse.c b/drivers/nvmem/meson-efuse.c
index 99372768446b..9f928fa9964f 100644
--- a/drivers/nvmem/meson-efuse.c
+++ b/drivers/nvmem/meson-efuse.c
@@ -1,17 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Amlogic Meson GX eFuse Driver
  *
  * Copyright (c) 2016 Endless Computers, Inc.
  * Author: Carlo Caione <carlo@endlessm.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of version 2 of the GNU General Public License as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
- * more details.
  */
 
 #include <linux/clk.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
