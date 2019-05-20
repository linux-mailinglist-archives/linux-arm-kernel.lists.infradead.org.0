Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 930D423A88
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:42:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kCyeIY3C8h6mwuqafTdDmJD2z908R//GK+yPPIu324=; b=qRlm7g93NZkcKR
	ndqsdO8vsNK1skbXeBOB+BheZey+4V4BX0Do6IUjia4qIzIPGbUudbjEaMrQRMPTPGaPNKuVfixkF
	xH5+G8kEu5L42ELiCFqh04LUP/UbJJpD+Dne3DA/C9czhB01jvX3NYQERkRZrP9TdjrJ7sEUqNIHY
	X/Inl40l46LRnNDxc37ZOARzPLA5ewGVVhazBGA1lwy5eUs9RzN61+0BiAo4lhJX+RafA0tazuA/r
	4CGkYXcWCUr/T38fY9RbwPvJafQduX/E82r2SYItHRNmcXbl1fDTmaLAKFaVgKYHhoqV+gsCW5cdJ
	BcTJy3Dku4tCs3f3kWKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjUQ-0003bK-Nw; Mon, 20 May 2019 14:42:10 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjTg-0002p7-2g
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:41:28 +0000
Received: by mail-wr1-x442.google.com with SMTP id b18so14865742wrq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1us822oM0AhXAzcfAqzMQ3a5bieM7q3ASmOGadOuJBc=;
 b=E1AMWXuy38k5enWVyxUIT/ZFjHFZOcLT7CtTfUN1RC08MO3lMPdlB9MZH6gbDpwXD5
 sIKnvw6Pt9WOWPtKKFY5ZZBINljbEiv3mIAs3Zhvs18xzREQM10TX32ptwEB12C4QqgY
 wQ4lwYft+xHb2ElPch/aLITUutJEdMrtuT37fdrqAKdcI2c5c79ymYkeg45++A6eV93b
 JHs+yVdektui4T0pIf5OS1mtK+6pKlECHlMbVhcw/HI8lRo17pkA79XTzmrAuaPNECpq
 O4TXt98WUPh9rzKjCQ5u6chtmr6HTFHcyANC1+0he2BUvbUwG18Rs6RReBGUMJ+J+z7o
 LJOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1us822oM0AhXAzcfAqzMQ3a5bieM7q3ASmOGadOuJBc=;
 b=m+lCScXr5//V8MwgwCmvanQA73Z5INWXw3Fhhs98mxW6ghPGtUhylktMlllhw98ohi
 sdn0u+zKphNffaXcHvA9DuhcCPcm3Bf58cpGsrshHwfo+tNXI1Ow54U9xzwjF+SzEwCE
 3SD9/Ji3jBBbuD7v6GOrmHxfn2ZbbtJdBmfWYRd2gYPAl2FolzglDH33uQstiixhLOSu
 mVcRMEwBOXQAzpcpt/M4QRAdYgrv3JydDil0SdlR3Ow1Klc8d8AYxRdl1b4yhKdFcqR1
 xzlvFiWqxcFVpDjIkMEPXFb0fmi0Tyup8KrM54nVhiUbKxboeQQiwbdkwKTj4hEu9LOv
 9LPQ==
X-Gm-Message-State: APjAAAW0S2M1vkqQzTw8mWyQKz4oUKriJpV3xN/rgqsHjIvjBXcSKgy5
 O9fOOEaBGe2fnsGQKSXXdapZ+g==
X-Google-Smtp-Source: APXvYqzBMSwJalhz2Y3RNdF8Ya61WL0sUiZ27ozMXzLdu3QUKt9tpH6yOyRHK1BjUf1IUkGmcdgesw==
X-Received: by 2002:a5d:5283:: with SMTP id c3mr7135680wrv.268.1558363282687; 
 Mon, 20 May 2019 07:41:22 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id w3sm6743679wrv.25.2019.05.20.07.41.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:41:22 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: linus.walleij@linaro.org
Subject: [PATCH 3/5] dt-bindings: gpio: meson-gxl-gpio: update with SPDX
 Licence identifier
Date: Mon, 20 May 2019 16:41:06 +0200
Message-Id: <20190520144108.3787-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520144108.3787-1-narmstrong@baylibre.com>
References: <20190520144108.3787-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_074124_210548_44D58F85 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: linux-gpio@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 include/dt-bindings/gpio/meson-gxl-gpio.h | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/include/dt-bindings/gpio/meson-gxl-gpio.h b/include/dt-bindings/gpio/meson-gxl-gpio.h
index 01f2a2abd35e..62417358f55b 100644
--- a/include/dt-bindings/gpio/meson-gxl-gpio.h
+++ b/include/dt-bindings/gpio/meson-gxl-gpio.h
@@ -1,15 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * GPIO definitions for Amlogic Meson GXL SoCs
  *
  * Copyright (C) 2016 Endless Mobile, Inc.
  * Author: Carlo Caione <carlo@endlessm.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * version 2 as published by the Free Software Foundation.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #ifndef _DT_BINDINGS_MESON_GXL_GPIO_H
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
