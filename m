Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E6A2394B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NhjE4EXpV4zuTH0q5Hr1otHvtFMLvR7LWgWumAk5Zgs=; b=n2mWoE9vYuXVZV
	J+qsVvHOjZZx1FwJB33mLb5hy9a9MNJDW/Zr2WWygzlssmWJlgPw8NX4LTY5C3PoLu9Ddzv6sM+p1
	ALlS7OZbirJq30U0tY2BoLkjNUDHjLGYNnpGsYzwnA59HIfiDxjBlweIxW1KNpMBLh2d07w79XDjq
	xLJphyqb7VmuXkI2D6mmhx3tQ29dPoH+Jx5K5BvL9aAf2NLeILQ4wqye8+0LTHH8aH3d/JFmcXpMr
	KCdNw2+1E3tx7anovJU0R49OXMB+yDJoUVvEp5reZam70OXAOSJwZFec5hCNXUPk4NsulSWB0glWg
	X3v/JSdXD+jSjPJhguGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSiss-0002V1-KZ; Mon, 20 May 2019 14:03:22 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSisj-0002TR-TA
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:03:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id w13so4004978wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4GPEWsqSGIyKcLWUOXlYrzt0kxAdz+VJbHUnZMff5l4=;
 b=COuaP2MBnNWmngBntTsQoeRBks/Mc7dW9Rx6RL9bbz9atupXmZyHVyM5CGPycOM/n6
 8xVcnEnPA/L9itDuEmkLpaKMoLR83F33ROmW0vYMgSmFL5werfREgUWBvnn9NH3XsKUP
 T7p8ES/4c276ThMeDFvFkRDy7+3D5GhEy5mhGGBsBofNwqgl+8Y8/wujjk9yGB0h3Gq3
 fBMZRKVvffi4KNCHTppYERrvhI8vDj5br3gY40RHGQD8B1Ia6/68CjrRj4/eoIqBdQum
 0h5X7UECzZQTBNgYqk2dmCC647QtPHtX51c0Vh09eXOX2+wx3KJ4iM9k06dtQvEXoEca
 lcAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4GPEWsqSGIyKcLWUOXlYrzt0kxAdz+VJbHUnZMff5l4=;
 b=Oo5FY0tXFzDBO9SI/bmcJ3g26nW7J3DUPrfqwnjAzkBZZqTHPRpnsrs0kOxpAbHdlp
 ytTcFS18zwX405UBmAfetDFmqhFQHOU8/pzcIk8pw4Wsc3rz2IgamNkSbdRXVwtrkzCd
 hvusA0rQxOAouJIlTfbDw2WDukPqr5WtCpVR1ze6EcOhlz8vmToyMTjdDevCAbxEUzeG
 5rNL7W5Sy0eUHgenRlzQWwalq9Np6DRyKsL8mqMxl7BTQrLh2qL8DT/tTrhrIvdJK+mF
 OKpXtLwOTqa30Bf+TvwJ6E9257bkxXFWywWNPGso8kfSJQhnO7CwzNKFiOGzoMyyJEpU
 p2cA==
X-Gm-Message-State: APjAAAXHTYRN8yMpKqwLq8o7pske7nfOs0Dj/U9ppjp28T8bCYS3eg0S
 VvoAxkevlhTILnEHMFpb2O0IAw==
X-Google-Smtp-Source: APXvYqxW2HOtstliXfUJp5IEyuxHFFP18XQUBF3m6AqmQies8+8zwfm7C97xqkPjFQbVAoamlJqbjw==
X-Received: by 2002:adf:e691:: with SMTP id r17mr27306891wrm.50.1558360992409; 
 Mon, 20 May 2019 07:03:12 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y8sm14051419wmi.8.2019.05.20.07.03.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:03:11 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: tglx@linutronix.de,
	jason@lakedaemon.net,
	marc.zyngier@arm.com
Subject: [PATCH] irqchip: irq-meson-gpio: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:03:10 +0200
Message-Id: <20190520140310.29635-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_070313_938715_539BFBC5 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 drivers/irqchip/irq-meson-gpio.c | 15 +--------------
 1 file changed, 1 insertion(+), 14 deletions(-)

diff --git a/drivers/irqchip/irq-meson-gpio.c b/drivers/irqchip/irq-meson-gpio.c
index 7b531fd075b8..d83244ea0959 100644
--- a/drivers/irqchip/irq-meson-gpio.c
+++ b/drivers/irqchip/irq-meson-gpio.c
@@ -1,22 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (c) 2015 Endless Mobile, Inc.
  * Author: Carlo Caione <carlo@endlessm.com>
  * Copyright (c) 2016 BayLibre, SAS.
  * Author: Jerome Brunet <jbrunet@baylibre.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of version 2 of the GNU General Public License as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
- * The full GNU General Public License is included in this distribution
- * in the file called COPYING.
  */
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
