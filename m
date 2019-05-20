Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 462B723A2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wfgcVsbwSAVq9QJWtIbgL06xA5oEFNzQcLfAzoZ4XFM=; b=QQiXHvjBAGnzTL
	FtSiQDLS7S0brKDDXvZoIZQ7WVEAo5El+XMZM20kN0thx8OzFe08Cj83yU2Gy5hlOACr/vVmVKDiE
	6rcnODG8cvGUu4wuXJh3mXdtXXM/McxQ/kgp1WnbB6jDrd5AynVssi8IMgaWdi8V5YCW/wA0gU9nJ
	Lt8an5jBgcCmtyLEGi2bI6D2PCuE36FGUfsQ3N5JdEbWiePP/U9f6u+cRbhEjHZHgbgF4B0x+VeDQ
	K0fipQchCkcXFSuPyFlVFaBRhF8N4PFVEo0N3XXx9nOqmbxygZat0+PGbwc28ATpEjpW9MBH0RSGY
	GKA0f+gBCkqe0lWNwe5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjOx-0004HE-3R; Mon, 20 May 2019 14:36:31 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjOQ-0003lz-Pi
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:36:04 +0000
Received: by mail-wm1-x343.google.com with SMTP id j187so13311983wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c/IQIiBxQQceOQ1Fth2H/n6wt8SG358oGzAhtkipV64=;
 b=GApKEWEdPnbMaWzQa05Iq9QP1y91iTXaYPumr/5P89B1mfgAlLJ6NOI6iWJ0OIuhEM
 59M8j4XvcU5auApgPlcPlIrpAeUHzg4AzZQIFXBFOdRv1sShBhO2kDo+XyUKp2DWCb+i
 THsAfzL30A0LNUfSXUroeZS/KC5t99UMoCGNQHrFbg5IgGxUGe/bDXY6ORw/1EEBtujG
 zAlOnsdJnM0htJTkzGD+pDHrIwOEBmVsp4p18Bq7NMsDwnXUFMdJOFerr0feU0Wc6SYE
 6poc+5Vx7UyhZhqUWYxSga/buwo13xOpQpZqC8z1x1vInhq0awN4eyIMOYXdz2/Vklcm
 WG9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c/IQIiBxQQceOQ1Fth2H/n6wt8SG358oGzAhtkipV64=;
 b=POa4QWj4fOGQDK7mAgvVL95DN7WbUXJ+3CMzD7HOg2VZV3N4pCvtgMuSZTmtpwOYbo
 DK+YAy4YakMl9G08lST8KVtD0Jt/lDXeqTEUIyh2xYbErN0lOzfvvDcs6sVs04/2mzQF
 tP9yPa5alGZOXIhMyITSwe/EKIQgFgIwbGLAjHxMrMN43DnxPhJiXKXWmeBOrvXiQgV9
 GumXrfFW07k2kr9c6auI6D1auMGfqaGFsgC9kGbsgzlLjYKHKWKbaj/d7fr6SWUHC3j5
 X5d5cE4i4JZu9JQfIYG3nytRmUObYdm5F3IRd4F7JvQimCkAbnfq30Dt6LZoL27v+Z/t
 fzNw==
X-Gm-Message-State: APjAAAVxCqjm/QTRXcdyb3oyMZ5aE0obxgqL4Y7XW0Hb6DToV2HjSnQ8
 kgMQZ9dhFgsv7ke8CPv989BX0g==
X-Google-Smtp-Source: APXvYqwetj4Xy0Szkpqs0+6b88v6/86NBnhvTXRKC28fd1PYFkfi9fdcPWhg4U8BxtlCsQaiSSlFQQ==
X-Received: by 2002:a7b:ce84:: with SMTP id q4mr11888332wmj.41.1558362957248; 
 Mon, 20 May 2019 07:35:57 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id j13sm14042591wru.78.2019.05.20.07.35.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:35:56 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com
Subject: [PATCH 2/2] phy: amlogic: phy-meson8b-usb2: update with SPDX Licence
 identifier
Date: Mon, 20 May 2019 16:35:51 +0200
Message-Id: <20190520143551.2330-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520143551.2330-1-narmstrong@baylibre.com>
References: <20190520143551.2330-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073559_133002_44D6BF9F 
X-CRM114-Status: GOOD (  12.22  )
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/phy/amlogic/phy-meson8b-usb2.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/phy/amlogic/phy-meson8b-usb2.c b/drivers/phy/amlogic/phy-meson8b-usb2.c
index 9c01b7e19b06..5f17f10f4df9 100644
--- a/drivers/phy/amlogic/phy-meson8b-usb2.c
+++ b/drivers/phy/amlogic/phy-meson8b-usb2.c
@@ -1,14 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Meson8, Meson8b and GXBB USB2 PHY driver
  *
  * Copyright (C) 2016 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <linux/clk.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
