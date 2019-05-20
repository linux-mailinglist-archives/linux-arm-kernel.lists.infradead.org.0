Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D87542390E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:00:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gvE05g3vXLTEdRmNTXU5Ra51m/uCXMs54iacrhU1Zwo=; b=m1pHMHBxh0bLzS
	xBzIGBa2n1f7BrgWLtvpSBahQwl8ODdRHM3zTokVLDhFaR6UZco8Qphm0u2Td7yc6leFg4rBvNGpn
	Vhmcz/+wrYgronm5lJ0BZ+cmbY+aQIqqaQ0jCpTMwFhjSm6ssum5vLOEeYRK0X25Y3KIR84imLpEM
	CWdYXXJ5i6N0EWcuzPRwwdxQiTUh+BKKiqVPtCpXBrEakbUldc457m9H82wppUZfwPrKmkwEAuYC7
	YvgErIngu8b+qnefKjzp5XrF5X2FWfvW0UbiCIrtEnPal0T4NXZjpnH7oBBGqSTv7EE68SRWVIuxJ
	F0EGUaHgnDYA7hT3PZeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSipw-0000pr-0o; Mon, 20 May 2019 14:00:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSipo-0000os-MZ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:00:13 +0000
Received: by mail-wm1-x341.google.com with SMTP id c66so13396wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bk5f0M6WXXbmXTgHtGqHLx2M1jGm6Hu++/ddevpUC3U=;
 b=buEEeU0rxW+e3VpPPy7csd4kPlVjuprnv5G+Zm6gKc+zaXk8TprUccdvM19Ccp4LXh
 EoR8MHoSYy73D0FMJXHN9UXVKLhiWJArCqWVFuKB0QtWmaEsDWRuRvpjbklW9/yzTiDK
 F1tAcywJotdwUGTOr5atQP0RjeO1WyFI0mwqr4M7Of9HhVKUKudFeuGMKjfsdXC2R7eB
 C4t2S/TzdMmRlAECyazDkOnLmHQzwzvS1BBVmm8rm2x93LXMIZZyUm/09M5VlhciSjMq
 1iT1sZQN/QXdKEXq+yZ0VZUHfIZvLof9jMsNr1FgmNIT96LWYQyIi51aTe35PwxOdKtT
 6RpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bk5f0M6WXXbmXTgHtGqHLx2M1jGm6Hu++/ddevpUC3U=;
 b=Wa3IbF+/gtGGcSby7uN8qG1px7Ec85894GVYBWsVmayi4i4T1AyCwKAzAEDVH3vS58
 Q5JMYc0OpexM9xKdElpOw3jbUQxhcNcBu53pNkAXrPpBARYeQIl13tSANPXewQIK5nGU
 n0mKZDQDP2ls4O6ptpO0XtFTy4Zj/7eoyc2+jno+H/nIdDb4QOw7wxYh6nF8A8UpAV7a
 RteXhXVp6a11VT4CbSvC8hrx4Lvr+xojxCr0eTGQ2Zkcm9dQo+pbIBwxyhSuRHuNjBlD
 osxHngkm8v37fI+EwekX1f1JBjWgFA+GNuVxuQsKwl0397076cg0l6PROZV8plccpXcC
 Vf6g==
X-Gm-Message-State: APjAAAWMBrP31bBUxf0tZJfralbKD76iFj8CA8HHU9zQsqVj0cQua+Kl
 SoDAZUp5oQqdrsANNtB0EzfDzg==
X-Google-Smtp-Source: APXvYqweyz/vJLz3XSJrTqHAwkyOi496405Xmp7phDEGv3avQAvcYEUVMcBQhA7ylJbR35xK+RmgDw==
X-Received: by 2002:a1c:c8:: with SMTP id 191mr11326841wma.6.1558360810799;
 Mon, 20 May 2019 07:00:10 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id l16sm28656473wrb.40.2019.05.20.07.00.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:00:10 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel.lezcano@linaro.org,
	tglx@linutronix.de
Subject: [PATCH] clocksource: timer-meson6: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:00:07 +0200
Message-Id: <20190520140007.29042-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_070012_740342_09CD14DC 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 drivers/clocksource/timer-meson6.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/clocksource/timer-meson6.c b/drivers/clocksource/timer-meson6.c
index 84bd9479c3f8..9e8b467c71da 100644
--- a/drivers/clocksource/timer-meson6.c
+++ b/drivers/clocksource/timer-meson6.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Amlogic Meson6 SoCs timer handling.
  *
  * Copyright (C) 2014 Carlo Caione <carlo@caione.org>
  *
  * Based on code from Amlogic, Inc
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2.  This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #include <linux/bitfield.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
