Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C441069F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 11:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zs26mUdx0c3J/0cJcJufXMm2sm+SuvqhrmE0FZLQq9k=; b=WyljJkzN9i87Rn
	P68UfQ1p/AVKgWuQ0WBbzYCIB6QjQQSPeWGSOw6PRgpxJtdYod5Ekvd3Cro0Yd5113jWkcgIQCRMB
	Uu6xqnxE3KhCMeUeQ45z4w/Li4rKE77LHcadkpWLTGIFvzvs6y+ZyT+ETf2f4sPZqEaFw1PudR6cT
	3P67x6yXniRPrm26ZVOGEe+9dWzhMc5z72Nbh8dTvc82qLgLwRIAKEuCN+LvvyTWXivBdvlPx5r8i
	MdlGA2IbZRSoYpxXfGb9MmmimL0IkMNRtUCILOJWj49j8RxrAocQbTYOP1pou94YVZKEQeRDiDuI0
	z9JXPAQBAVrEIzUuYOQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLlsk-0008TS-8I; Wed, 01 May 2019 09:50:30 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLlsa-0008RT-Te
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 09:50:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id b3so8407293pfd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 02:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=vq6ABJrMXgL3b8vmrge6PuZWxawVLWLQA8qwraJhwLw=;
 b=vFCSk0Aabd+dZ+UacJfzyAb3TVGzqtMgoAE2/70GrZ8EkkRZIzU4sgccK4In1h2J09
 UEIkhBac8sDW/m1dH7xUEuvwRCkVOk1qpB9aC13WslidfzVpsbde/uyGdkKCwRpoCfdY
 F2yHs082PazgXcizsNqAXEKLdGyYKJ9Y5oKLsSi7vZpEfHkSA0UlpVOg+Ed/MA7Xbn0p
 H5VGY6wl2oiUsnn46OdB/Y45hwRx+yOfLyn1UQRxgeAtunJF2vatL1Kb2MAAJAu/f07W
 /pxk9YwsAmDFrH88f5F+KDU4FDnuCFsvgcZIIPXSaLrYXYCWvb6DRng2570JD3F/U4np
 mS4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=vq6ABJrMXgL3b8vmrge6PuZWxawVLWLQA8qwraJhwLw=;
 b=XnX8FikNPZIu8D1xK8bjgQl8MiP6wCXjp5ryrfQ5DVQAO7MAhEU3M786gXfGw8+sZW
 Z0JjC8YcOGJS+g4GexPQFhnySjqqPW+CXlfNqemFrXuE5oFazRaTbRrIczNFEQejRnFJ
 L/UL6L94tCcuscvQEcVq+lk/hOMVi9C4j5iZaCJj0gwqUARh97593Oi9vo6+5lODjf5g
 W+hu85ajvD2MifQDetz+iLHd3yB5EWr3KlAQOPyep59k/oNRH4vV4p1VyjKV1Th7FjLM
 HqZjOMzbwy6DbxSUn4Wbn/8wsXYzWbGpu81ktmiaDh6JgLe+gAYOcC+4/TUBPbXQSwUS
 W8PA==
X-Gm-Message-State: APjAAAUANZ/mAHnz8l2OlvaZJEjjDLyBnfgnhEzgXhRcBA0OI2+p/sVJ
 M/HaNr2k/woTyVwk0snPFzU=
X-Google-Smtp-Source: APXvYqztY9Lbt6YDhUTEMhvIf/V9nOYDHOePZOYfNXr48KcsqL8AgA4CqySLyw05cbKNOyrdsg6J9A==
X-Received: by 2002:a63:3284:: with SMTP id
 y126mr73331208pgy.424.1556704220128; 
 Wed, 01 May 2019 02:50:20 -0700 (PDT)
Received: from nishad ([106.51.235.3])
 by smtp.gmail.com with ESMTPSA id o15sm17048688pgb.85.2019.05.01.02.50.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 02:50:19 -0700 (PDT)
Date: Wed, 1 May 2019 15:20:12 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH] clk: sunxi-ng: Use the correct style for SPDX License
 Identifier
Message-ID: <20190501095008.GA9120@nishad>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_025020_984993_A17F76C8 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishadkamdar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.235.3 listed in dnsbl.sorbs.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Joe Perches <joe@perches.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch corrects the SPDX License Identifier style
in header files related to Clock Drivers for Allwinner SoCs.
For C header files Documentation/process/license-rules.rst
mandates C-like comments (opposed to C source files where
C++ style should be used)

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/clk/sunxi-ng/ccu-sun50i-h6.h     | 2 +-
 drivers/clk/sunxi-ng/ccu-suniv-f1c100s.h | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h6.h b/drivers/clk/sunxi-ng/ccu-sun50i-h6.h
index 2ccfe4428260..9406f9a6a8aa 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-h6.h
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-h6.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright 2016 Icenowy Zheng <icenowy@aosc.io>
  */
diff --git a/drivers/clk/sunxi-ng/ccu-suniv-f1c100s.h b/drivers/clk/sunxi-ng/ccu-suniv-f1c100s.h
index 39d06fed55b2..b22484f1bb9a 100644
--- a/drivers/clk/sunxi-ng/ccu-suniv-f1c100s.h
+++ b/drivers/clk/sunxi-ng/ccu-suniv-f1c100s.h
@@ -1,5 +1,5 @@
-/* SPDX-License-Identifier: GPL-2.0+
- *
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
  * Copyright 2017 Icenowy Zheng <icenowy@aosc.io>
  *
  */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
