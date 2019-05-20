Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADDF23A82
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t67cwvEZMJscg/V5KZuerrrYgat0DLeloVJWL9E7884=; b=P4ut0wXkKJzQaR
	scqpmRN99uieS+0IE10bByLYt5Me9X2S1cdTjAkaNAOBxE/SShAhkrSYTn1GHg4NM2c14yiCRnAZb
	AhQ6hxDm7A7Firgwno4dO13foOCZbZxzyrhQxuzxv9DEvJbbH/92MDU+deRgvYsBX7kyq4W68VtJ3
	trVobFZlysdYanbWH4EjRzswcPBBvg8mCktxt7CtideE/8/UmpLwdXF4SqD/YBgp4UDX1daixN9CY
	FBh3ncRuyvq/GIaYPnszsU+41BefRcTPBpy+rQYdQXIzoY9b51C48di4MgvShYpGFzQyzDCpV8kHh
	VuQ3cDnAJF13TB3B6+kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjU1-00030y-JO; Mon, 20 May 2019 14:41:45 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjTe-0002o7-Mu
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:41:26 +0000
Received: by mail-wr1-x443.google.com with SMTP id r7so14872818wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QuVh9TVsMqZSn9qS73DaH0TkGBsg1S2LZDD25U2BAlk=;
 b=WCbRRamr4ZuC30uvTI0zqjb40m9TBkUAGNetbDmjURtBHYQm7JZtDqmVMxLVisKum/
 moGYyeiHx3jCWiteFsGfm4mPMmCsxdH78GkvOfkaU5lonf//0m0Bl3uCi2q5WF6yv8ho
 Ah6+4VpJzq9M7+ls7RGtlxvPhRVjGc2QOvfTzoXReszIvluY+i4h49bcycRWP4gsZoZb
 wKHZrHV4MOUIDPsmO6HdT5tYMaWH8hXFwlpxzLYroMXXh2fREFmFkobxSB5owMkU5/x2
 E/IR4jNBR7MI4HTWFR9yUr62+KxcB/c5atuMEKHB0mDNkYsgsXY2QFe441f48s7bBOBn
 JpQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QuVh9TVsMqZSn9qS73DaH0TkGBsg1S2LZDD25U2BAlk=;
 b=ozvnxArjWjDJ4VBRNIExPOZsQ1y+x4Xubs/JKiVPaWOVSYNO0EwQ7YBWwqRaomwVQ4
 w0T9CAnJ3qSqsX5M6Ln7+T1uIEjRO92tbBuu5CsPpgOeNB9kkbzbhzuS7HhD4ue7hu+M
 WlJlrAH63uwF0JGxjTRAwqFZJUTAqMRAT1T1tqIivpaQb5EbaTX+muihkzccBmO2OsKb
 lvx4z5hqcWfWRNxgmcS82plHz3OtrfljTPmZFeOqrS3MeYH7HjMaJHLqOywaEKgrKRJG
 +UsbPLgbjlhLBo/4RxPhRrKLZipUe+0kD/IciJNuz4gRNkBYiyblYt83gf3mElU91EUv
 0i0g==
X-Gm-Message-State: APjAAAXnvJ8qLfunqTAj7sgzmZay9hP39itxhuBL5N3PU3k8ViZ97W0o
 OdQ0vJTP8OudfApTwmbqZfHxyA==
X-Google-Smtp-Source: APXvYqwLWGWrmt9aWGH3uyiRHLGzj2Yw71bsYLdFfvi+AaABiH/XMU4nW2WLFlYBNK/Qtb3WCPayTQ==
X-Received: by 2002:adf:e40c:: with SMTP id g12mr29036029wrm.98.1558363281095; 
 Mon, 20 May 2019 07:41:21 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id w3sm6743679wrv.25.2019.05.20.07.41.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:41:20 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: linus.walleij@linaro.org
Subject: [PATCH 1/5] pinctrl: meson: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:41:04 +0200
Message-Id: <20190520144108.3787-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520144108.3787-1-narmstrong@baylibre.com>
References: <20190520144108.3787-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_074122_951535_165CDACB 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
 drivers/pinctrl/meson/pinctrl-meson-gxbb.c | 8 +-------
 drivers/pinctrl/meson/pinctrl-meson-gxl.c  | 8 +-------
 drivers/pinctrl/meson/pinctrl-meson.c      | 8 +-------
 drivers/pinctrl/meson/pinctrl-meson.h      | 8 +-------
 drivers/pinctrl/meson/pinctrl-meson8-pmx.c | 8 +-------
 drivers/pinctrl/meson/pinctrl-meson8-pmx.h | 8 +-------
 drivers/pinctrl/meson/pinctrl-meson8.c     | 8 +-------
 drivers/pinctrl/meson/pinctrl-meson8b.c    | 8 +-------
 8 files changed, 8 insertions(+), 56 deletions(-)

diff --git a/drivers/pinctrl/meson/pinctrl-meson-gxbb.c b/drivers/pinctrl/meson/pinctrl-meson-gxbb.c
index 4edeb4cae72a..83c0b1753e70 100644
--- a/drivers/pinctrl/meson/pinctrl-meson-gxbb.c
+++ b/drivers/pinctrl/meson/pinctrl-meson-gxbb.c
@@ -1,15 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Pin controller and GPIO driver for Amlogic Meson GXBB.
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
 
 #include <dt-bindings/gpio/meson-gxbb-gpio.h>
diff --git a/drivers/pinctrl/meson/pinctrl-meson-gxl.c b/drivers/pinctrl/meson/pinctrl-meson-gxl.c
index 0c0a5018102b..813f2bdd90a5 100644
--- a/drivers/pinctrl/meson/pinctrl-meson-gxl.c
+++ b/drivers/pinctrl/meson/pinctrl-meson-gxl.c
@@ -1,15 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Pin controller and GPIO driver for Amlogic Meson GXL.
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
 
 #include <dt-bindings/gpio/meson-gxl-gpio.h>
diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
index 96a4a72708e4..54fe8f0e4e6d 100644
--- a/drivers/pinctrl/meson/pinctrl-meson.c
+++ b/drivers/pinctrl/meson/pinctrl-meson.c
@@ -1,14 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Pin controller and GPIO driver for Amlogic Meson SoCs
  *
  * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * version 2 as published by the Free Software Foundation.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 /*
diff --git a/drivers/pinctrl/meson/pinctrl-meson.h b/drivers/pinctrl/meson/pinctrl-meson.h
index 5eaab925f427..29ca94926af0 100644
--- a/drivers/pinctrl/meson/pinctrl-meson.h
+++ b/drivers/pinctrl/meson/pinctrl-meson.h
@@ -1,14 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Pin controller and GPIO driver for Amlogic Meson SoCs
  *
  * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * version 2 as published by the Free Software Foundation.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <linux/gpio/driver.h>
diff --git a/drivers/pinctrl/meson/pinctrl-meson8-pmx.c b/drivers/pinctrl/meson/pinctrl-meson8-pmx.c
index b93b058c8a07..3810b066df16 100644
--- a/drivers/pinctrl/meson/pinctrl-meson8-pmx.c
+++ b/drivers/pinctrl/meson/pinctrl-meson8-pmx.c
@@ -1,15 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * First generation of pinmux driver for Amlogic Meson SoCs
  *
  * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
  * Copyright (C) 2017 Jerome Brunet  <jbrunet@baylibre.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * version 2 as published by the Free Software Foundation.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 /* For this first generation of pinctrl driver every pinmux group can be
diff --git a/drivers/pinctrl/meson/pinctrl-meson8-pmx.h b/drivers/pinctrl/meson/pinctrl-meson8-pmx.h
index 47293c28f913..47c0c28bb8fe 100644
--- a/drivers/pinctrl/meson/pinctrl-meson8-pmx.h
+++ b/drivers/pinctrl/meson/pinctrl-meson8-pmx.h
@@ -1,15 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * First generation of pinmux driver for Amlogic Meson SoCs
  *
  * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
  * Copyright (C) 2017 Jerome Brunet  <jbrunet@baylibre.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * version 2 as published by the Free Software Foundation.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 struct meson8_pmx_data {
diff --git a/drivers/pinctrl/meson/pinctrl-meson8.c b/drivers/pinctrl/meson/pinctrl-meson8.c
index 785e29e74a56..2070e3c61a34 100644
--- a/drivers/pinctrl/meson/pinctrl-meson8.c
+++ b/drivers/pinctrl/meson/pinctrl-meson8.c
@@ -1,14 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Pin controller and GPIO driver for Amlogic Meson8 and Meson8m2.
  *
  * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * version 2 as published by the Free Software Foundation.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <dt-bindings/gpio/meson8-gpio.h>
diff --git a/drivers/pinctrl/meson/pinctrl-meson8b.c b/drivers/pinctrl/meson/pinctrl-meson8b.c
index 7f76000cc12e..8d2d430ea02d 100644
--- a/drivers/pinctrl/meson/pinctrl-meson8b.c
+++ b/drivers/pinctrl/meson/pinctrl-meson8b.c
@@ -1,15 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Pin controller and GPIO driver for Amlogic Meson8b.
  *
  * Copyright (C) 2015 Endless Mobile, Inc.
  * Author: Carlo Caione <carlo@endlessm.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * version 2 as published by the Free Software Foundation.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <dt-bindings/gpio/meson8b-gpio.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
