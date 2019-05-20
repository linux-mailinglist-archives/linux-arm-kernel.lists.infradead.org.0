Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E9423A75
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INGKgnM3BKObJPTkK/lxq1WJKfCyOqiYQP12c3+90Ko=; b=FSvlZR0oCEVm0r
	tLVBkxprRmAaAtQr8n91kd1pQIeKwyJ93BUSnmloV56108CmuHMpAvLevm8yc0a7SScrw0lqu8iqC
	E5Ntoe4kduf/Ynk31tlHhFi6gnHXttH39u2IxHFCkMGZv5EQbipNOfo2QnV6yt6ldxvri7r5d6dS0
	X6D6h8U9ruZcPXt5JKO4uI6OaFhLQ3fjRKDSV5irdSj83VQ2vz0wacC9VrMRkoeq6Qbk18ziwFvOQ
	cPUQrVM3ns568NOOeW1NiI+eqHleWOUjpR45TIBPPIwmX7HDJUQRa6lW6clyfdzhIE/q1yk4T7pxJ
	9HGcrumhAAEOKUwET+oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjSh-0001Yd-7E; Mon, 20 May 2019 14:40:23 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjQi-0006Ql-BN
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:38:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id d9so1948188wrx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZVqgXqCRLzgJjndvfbSssXq9sPi6rcSDzSBDfSWDhDc=;
 b=oRVC9sOVqaJJ7/VIvGdz/yOhmhMuouO38MVvt9FsMEigfB4u6TYFZsxNCzy/tT7QxZ
 BH5gtZkLsm6GOm7m6uA5mZUwbR0hX3M+nuU8dMVFqLgx+7ZgxSjJhBlY0VIEH0U3o/hz
 +ogf7v6+8tA4eU6oW2zhlcO1Niz72Txg3u7NOb6B5/9ZurmxWE6YlHkzSpMdVU4H5wet
 mnPY1SbOcXHiQguasq+UYd8rqSYOvRGkQHxaeFQOahtAQaxIyAbIF2i44eP/cmi7oFTh
 skkZ6eL8D2lD5YVvsU3NMDKGESXCV1aHo8CMFBoLVSWjB/ri+FhpEaLLPJkLPn+EJkBz
 Op1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZVqgXqCRLzgJjndvfbSssXq9sPi6rcSDzSBDfSWDhDc=;
 b=Ald9IeaaAuLXfrkda3wlUNIOhd0gBsgWcNz5UYmbNgh2O00e8g8cQRHG6Ua8hEDASU
 QKTvvPynbrFTGq2IBj91yGznZJujel3agbJ0i9hBF23teKJ6ndWaZ+jiIby+KoG5GaOr
 bR3pg4OjHCxtRUDT0EdsVlFL/3TlEw4/Pbw5LEH8vx+T+9tV/zwEYe5WcQcj2RGiWLbX
 k8hg5LYAUeAlOm6wisPU0JwslEecbec0mP7l/CcLNwRABsjx8HjmsbWz4k9CA9vJYI4I
 20o5yIwtPMLwL1nfUeqFZYXTI7qMs4iscgWyx7NPycZexwiOetjS7aY8VHYO7HT9AHsX
 ueeQ==
X-Gm-Message-State: APjAAAW14HfkTq0fg+tuZ6Sz6Rgb6EP709uuLUNsnaoIHyNVPF0B/Dv6
 TgqwO/4tELco9U74X9R197oSgQ==
X-Google-Smtp-Source: APXvYqxn7weDR9r3Q5lHk0WD6puAQO2W9ig2A6lM4Zo14uhc1ETk74//4DY3cTMY1DYzaw61XQ7UVQ==
X-Received: by 2002:a5d:40ca:: with SMTP id b10mr6653651wrq.10.1558363098881; 
 Mon, 20 May 2019 07:38:18 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y4sm12505976wmj.20.2019.05.20.07.38.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:38:18 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 05/10] ARM: dts: meson8: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:38:07 +0200
Message-Id: <20190520143812.2801-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520143812.2801-1-narmstrong@baylibre.com>
References: <20190520143812.2801-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073820_865929_62EFB871 
X-CRM114-Status: GOOD (  18.17  )
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
 arch/arm/boot/dts/meson8.dtsi | 42 +----------------------------------
 1 file changed, 1 insertion(+), 41 deletions(-)

diff --git a/arch/arm/boot/dts/meson8.dtsi b/arch/arm/boot/dts/meson8.dtsi
index 7ef442462ea4..fd8d57d0a3af 100644
--- a/arch/arm/boot/dts/meson8.dtsi
+++ b/arch/arm/boot/dts/meson8.dtsi
@@ -1,46 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0 OR X11
 /*
  * Copyright 2014 Carlo Caione <carlo@caione.org>
- *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- *     You should have received a copy of the GNU General Public License
- *     along with this program. If not, see <http://www.gnu.org/licenses/>.
- *
- * Or, alternatively,
- *
- *  b) Permission is hereby granted, free of charge, to any person
- *     obtaining a copy of this software and associated documentation
- *     files (the "Software"), to deal in the Software without
- *     restriction, including without limitation the rights to use,
- *     copy, modify, merge, publish, distribute, sublicense, and/or
- *     sell copies of the Software, and to permit persons to whom the
- *     Software is furnished to do so, subject to the following
- *     conditions:
- *
- *     The above copyright notice and this permission notice shall be
- *     included in all copies or substantial portions of the Software.
- *
- *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
- *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
- *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
- *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
- *     OTHER DEALINGS IN THE SOFTWARE.
  */
 
 #include <dt-bindings/clock/meson8b-clkc.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
