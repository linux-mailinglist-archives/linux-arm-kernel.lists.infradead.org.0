Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0EE723924
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GbhU3YCCjz69CbW/FMmiZaxIzj/dPoc3Z2ks0Dk7yMA=; b=DHkjOEJsQgvTXa
	1P3awqvB7JxBy6hi/RfPS1pl4T/I1ImcZFZtVceuMTF5A++7CHc4v5Y1cCt9Yd9ITbg0gYHJ5B+MG
	0jukdPXIHFw6Lxai5h72D1dFPyHsXDzLTpJUQIGqu6rpZ87UMK42CgPdeCB7rycBolh7JZQ917zdu
	g47pjfoeTP5owDNJnvmGuJIHlthz4BAqxyJiisgXRa1NTwlTkiciW1V0N8G+nti5Hu9Uv7lSfOmEz
	dz96m1lqAGqqnYwgQvDcgydYIzPRvorNM0JKM70oGTnnpZwWiK38L//yQQc8Ip4D6qx/81JIBkC/a
	UP6YGl6WiqF6WSTp+KKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSisE-000281-6P; Mon, 20 May 2019 14:02:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSis5-00026c-3R
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:02:34 +0000
Received: by mail-wr1-x443.google.com with SMTP id d18so14767911wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v8c/nNirEKJZwKIupGqiWC7ZFCXPvzpzRwKkeo1GtHI=;
 b=G046+NmoXL7OmlgnOxpy2A8NXGg3BrTDxquqdqUum4Ygxt4MvSRKsevFEyp+7us3XH
 fc4SPI5TljfQN8pVoQbCL0YXZIHTmu2XEgSxWGe6mB3B+pa/lf3M6nBFbRw1zey+uYD1
 X9t6E3SM/X5+Q11kw9fhVUxKAeA1srEnEUSQuANAn58IWxJPrGoc0suA68x5scwwTKTh
 I2vtdPfI0jNG6kq7z/53mlkT0hz5tX1kc8snw5EEqwftaqjiBOW5+JtIEVWkGaOI5+do
 yRsBpNKsIkdSS2CWP5NXKmz5ozy32+/VobT83THj3Db3a1T4FVNWxEq0h4d9RMZIKTyb
 sELg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v8c/nNirEKJZwKIupGqiWC7ZFCXPvzpzRwKkeo1GtHI=;
 b=QBMhvdFgRWRu944xkgRNCavrUUmj+YhA3OFhMZYpd3J21OyjcpvwQ9KwVXXyenqRL6
 eDEmKLr668PpWSmutIcwjFMj3ABebBCC1NJHAyhikLtvzbqyXcDZpxr054JLEt6WFGXY
 us75tydYMdmll/1Y2A4ZNYB+TCjZsf+Bvi3sk3svXL4QilfKx3p+TMHCY+GxyZ4OcjhC
 9fvbxoEfxdZwHagwTe9FOuRsRJ/pY33+5wI4YXnUCoD8awC67SBL2yIRMeuzTjtsKSLA
 BO++DzpU4ya53lK/bDvHDeQ3lJiVn/Dmek6XdUU0HRw11FR2vCRmtaHd/yQ17bHPzXBe
 MOmw==
X-Gm-Message-State: APjAAAVV2xmjuadZMyAMr8HuGyTYnxwBD43PK1e2YxX07L2tx386yAsH
 f3imnWf6Pi9VzTTaPPGq2M1jLg==
X-Google-Smtp-Source: APXvYqwJ/Iyu7VnNKOAEfQFWmiIYCFgiEuV3TWfmUKry/H26rgf36s3aqukRIz7NFTNPiemoS3aFuQ==
X-Received: by 2002:adf:f44b:: with SMTP id f11mr16249685wrp.128.1558360951634; 
 Mon, 20 May 2019 07:02:31 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 67sm6650580wmd.38.2019.05.20.07.02.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:02:31 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net
Subject: [PATCH] iio: adc: meson_saradc: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:02:28 +0200
Message-Id: <20190520140228.29325-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_070233_339170_797A7345 
X-CRM114-Status: GOOD (  11.01  )
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/iio/adc/meson_saradc.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/iio/adc/meson_saradc.c b/drivers/iio/adc/meson_saradc.c
index 510d8b7ef3a0..e39d95734496 100644
--- a/drivers/iio/adc/meson_saradc.c
+++ b/drivers/iio/adc/meson_saradc.c
@@ -1,14 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0+
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
