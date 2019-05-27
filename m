Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E72572B6BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HEtIqn+7abB4ffEVIlTMuuGVJZ/HccqiRorZkkeJyY0=; b=MfOWr7IURBD9z4
	Ls5Ky46bfGVPUW7QQFSTzJ3mkg0vWmQcSgTZND8Zh4habkQm/lu86YEQ0jEPgBfN3WSCDg//e8vGv
	bp0oMdsazE2piAsB0ODXbaMlsT9W2rmxOZeouK/7+3jRphBBRfT4hrNWMlku1rmzEWbY+DR51C8kT
	urbONZXrK3zP7aCThJH89fl7V23G5rF+Vh7nE63UZL59NQMfmHiHkVPgFxh1bsI5ajtbLy8P4NYdS
	cy/6Sblywpa/4XSuupbuUzkrUeAB+NL1p7OJWOBM2QZzW6FrlwCNPiJXAMMG/R0GaImBR0lECWy1u
	o27rbD3v9Zl9V0gD9bbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFuV-0007jF-NQ; Mon, 27 May 2019 13:43:31 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFuM-0007hp-9f
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:43:23 +0000
Received: by mail-wm1-x342.google.com with SMTP id y3so16244317wmm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kCiJ2Da6Bdx0f26fODvp2y3M2kismC8wC26JqfeJQ7M=;
 b=OU+HYJGUyJkf6WspzAE2MO/L7hPgR/TCD9A7gpk41fnqGWvDnS/2YYprGRmbtyXVlM
 WAK4BRaMdlleBVdPjeFZrLYt36k5CksvpLzZ5nYh8z/jnxf299e47VaP68Ipsex+X0qZ
 0KRhfIZKEwMPvSBZ6CqW0ZxgMpXilxkJdI8GUyrUmyqZoV2RtDblYlaPpf+BrUFUv2Dr
 3KA7YjSSTWmgnktkfBTtpz1FB6Dy7Ufr+qaGnOO5Uj5hNZJcn8dvXt4Om+7tSbPnxKZ2
 +y5VQAiOVWzpdty3fLHtZHHUGzqFGuZQ2P3yog3VojGIlkqZ8HTVXU5t1YWKhcO9yK4u
 4GFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kCiJ2Da6Bdx0f26fODvp2y3M2kismC8wC26JqfeJQ7M=;
 b=BJV6XjxO91vCW8LDvvUC/kcnrip0Wan1Um9XSNWZ1Wt/bFBSVAcUC4FBrYtIj7I/mE
 SfC07lrujXw1q0xEarHq5oCHbY+7kNVDL5+JxxGkWSkf3cPKnUvTPEfSpRLV2csPJKks
 3GcJiM/ZAu9D3RnBXrgwkjxpIMqxjyz0eUEh9mvpX4C59NIdinVyZEUF5Df9VbApeQNb
 GHzTreTLy9/jSYLbvAuDoaf4O+sHkfy1IDpPixBdMbmmMo7nhrWJpg8AcExclGzTaiU4
 M3IIIE2iEAkqhIEGbzXGWsHfREaioB9vETQ5CKtZ7bvIwnrk9Bv7Z1RXJc3YvqJHQCZ5
 tuMg==
X-Gm-Message-State: APjAAAWrmPEnMaXVeuoMV4qU5rKwGfbJ8fVGol3XNTIy3h/gvp24A9Gm
 ssHQh7hizdQnb6l9teCSfUV9pA==
X-Google-Smtp-Source: APXvYqyWGZ1o+3JoKtMfo50PU7d32A1d9yTM0bYrWBeHwltd357tf1/9T5MWMWeTFOdN3r9igxK68Q==
X-Received: by 2002:a05:600c:23ce:: with SMTP id
 p14mr24714908wmb.36.1558964600694; 
 Mon, 27 May 2019 06:43:20 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id n4sm12965536wrp.61.2019.05.27.06.43.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:43:19 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: linux-iio@vger.kernel.org
Subject: [PATCH v2] iio: adc: meson_saradc: update with SPDX Licence identifier
Date: Mon, 27 May 2019 15:43:14 +0200
Message-Id: <20190527134314.4340-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_064322_336640_E07A2111 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: martin.blumenstingl@googlemail.com, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
Changes since v1:
- Used correct GPL-2.0 license

 drivers/iio/adc/meson_saradc.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/iio/adc/meson_saradc.c b/drivers/iio/adc/meson_saradc.c
index 510d8b7ef3a0..7b28d045d271 100644
--- a/drivers/iio/adc/meson_saradc.c
+++ b/drivers/iio/adc/meson_saradc.c
@@ -1,14 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Amlogic Meson Successive Approximation Register (SAR) A/D Converter
  *
  * Copyright (C) 2017 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <linux/bitfield.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
