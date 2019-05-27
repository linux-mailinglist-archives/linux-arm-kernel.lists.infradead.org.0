Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7312B6B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HoUVf6IzPLMjpOUtSQCoNpn67CH2d1KvJ/OHKz1YPFA=; b=tSlH8DxgByTHVC
	oYx5NQu3X9hWNlv3lABEt3zDIEaSEsvhIy6hLNZvh3FRd7hBPQ7wk6FfK2rx8m7lD5Nqg/nB+ChuR
	zrCf38AJoflY4xg2XtKeAuv0C4KEs16aETSPIxUealt/vcmuf/JfFfIs/52tN1e571Yh3LoV/+Z04
	zsuFj3QQcjfN5YJ4NWTyEKQb09IYOfMpSS6iHHup1s3+9qNnIbZntaNLOIYpjhdcsHnPtFDLlHGtF
	YzC3v0VwpioknQpjmW7hNb39J1xzujGD218uuVpWAzWL2dArS0cRABcDW0qQx6+Zvs8VDr9E2svR7
	VQOQNN+z+y+yoOuMwQSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFtg-0007H8-0O; Mon, 27 May 2019 13:42:40 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFsZ-00061o-AL
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:41:39 +0000
Received: by mail-wr1-x442.google.com with SMTP id m3so17005627wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PtDy3UqUv5LCOqIXsFJGqcQMLOz550V0nprsW2J4Uqs=;
 b=wRxTnBMZt4cyd6WSY+pJUHPjaTqxPDKslWD4fOAz8Cl2ktdI78Ttpi98/VNQZgMMhd
 aQZroMDNgYrSKNN5UN95MemKkMASMsxQPlnFHtESyOSQnBMvR+HaF9LfzxQO1c/R6x+5
 DGyUbTd4JEs885rGAnMICBiTHoU6mN9oX61c/ZpdNQZEn6+z7S+yrQ7mYPyF4AFE0pJG
 CB2QHL0pbFzN2w4+t7iQj+VufoK2s2CXmf7xai5IiJu57Os/SDq05AU1LFq0ruYrW/aD
 v/VEf+IplThk/8c87IVibob6n5cg4dHuQIgDwqlNxehqAI/Ci4ALdnMQ72C6SfthBx7w
 i9jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PtDy3UqUv5LCOqIXsFJGqcQMLOz550V0nprsW2J4Uqs=;
 b=f/tmpazblxpAOmInjW9UAIfqrW197l6nFmsgTaav9nkFDmY/mbl4n/N+CYOrkLb+qp
 UocwTfdTkmw2eqGZ92THLiZLzmsl13R0Zs43eTpmMOiBOzA9e6Ugr0UXjvRqdk9HMmiq
 I6s5/sNCpxRsCFWexDKv5+aRKiJvRHNGCu5IfWRFIrfVslRc5xUPWjxaqOo2EJ1R0bH+
 i0c9kCF655+ePkc9LVO0la6xB+L/0E0uCT36A4lD0ymUm3qdIeYY9OTC43pzZASbOZjN
 VXebgwrlVrX1+3390W+YEObmobOnyhoCBIpG+Qm7N2+eJcxrybgR3ckEEV+eIj9g1s0J
 oSNA==
X-Gm-Message-State: APjAAAWMb5ZuwPi+BkxfpRGUYmnQw4b+lcGM7J7/Ji4VocvbGuD06Hbx
 Lc7QFFIP7U22K7ItE789A8b0qw==
X-Google-Smtp-Source: APXvYqwDoS1XKkP03Qo+GoG8JiTCdQ46ynTcTBid/U8fuWfQmDWA+axN+IkEGbAUdXNQUif5PkUSqQ==
X-Received: by 2002:adf:fc8f:: with SMTP id g15mr21780561wrr.122.1558964489668; 
 Mon, 27 May 2019 06:41:29 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id z20sm19631838wmf.14.2019.05.27.06.41.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:41:29 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: broonie@kernel.org
Subject: [PATCH v2] spi: spi-meson-spifc: update with SPDX Licence identifier
Date: Mon, 27 May 2019 15:41:24 +0200
Message-Id: <20190527134124.3034-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_064131_596730_A6B762B9 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
Changes since v1:
- Moved to a single C++ comment block

 drivers/spi/spi-meson-spifc.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/spi/spi-meson-spifc.c b/drivers/spi/spi-meson-spifc.c
index 616566e793c6..f7fe9b13d122 100644
--- a/drivers/spi/spi-meson-spifc.c
+++ b/drivers/spi/spi-meson-spifc.c
@@ -1,15 +1,9 @@
-/*
- * Driver for Amlogic Meson SPI flash controller (SPIFC)
- *
- * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * version 2 as published by the Free Software Foundation.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
- */
+// SPDX-License-Identifier: GPL-2.0+
+//
+// Driver for Amlogic Meson SPI flash controller (SPIFC)
+//
+// Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
+//
 
 #include <linux/clk.h>
 #include <linux/delay.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
