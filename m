Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A15323A61
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:39:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLY77dm+K6WjIHcnwea/SuCIJIinXO8P1UwWjFCCQBs=; b=dImgBLcUzHVRDo
	QQUu4QdXQzM0F8rfMFqn7JI6/mfYU/hrgh+gaxjSr7VJc+WVSxLYtbZzvZcmighsXTNH4MjYGla9y
	11yYLcEcER3WDvd/yVz7aOWOdYJeb9gvfhL7Gtvj0P4BHSnfwBhoUbAUsH+guGWBKHyZT+C3YICr7
	p2MlMYBYNnzvbAGob9awiWzW0YLgLoX7Jf0591krsq61uhZQX3n5AMhlfJn3hD98UONNCHNsHs7kB
	JvxZKyrW+3q7vPkK5FEmQAJeVht2M1JRLBU1x8qanzH8I/mRVFCnTrdj6SfNDqiJHoqMl1UujtkGv
	BnctJUk5er2V2znH1yKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjRb-0007TD-MY; Mon, 20 May 2019 14:39:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjQf-0006LS-Gb
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:38:22 +0000
Received: by mail-wr1-x443.google.com with SMTP id s17so14929924wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l9U9UFxewhzgfdgHobwlemQkQvapoJUzpG7DyO7HNN0=;
 b=k4NzsdZWw7F3mbMtriap8qmSsAr/E5Fom1fD7BsuJEUZ5gEsCldI4enocXYFcNvnlL
 MxBWCCmDp2GcUiDKY6jjA40Lz+/63YhXoJLO/1Cs7YAU1KvvAizLFmrekcdREQPFjSN7
 KPezATZpwdkAUy0fPHxrD294tpuUYUCzp8EIdsN0uvegUsQtnt/32P0ESrmZxrVZfaHX
 FGxwrQ/dtu46WZUhTWgWFs2wJaYBo7a5+qcR28oUosOoZU/KsSJBgNp+9QFby9Y4bLQJ
 GvYj1DqkWymR+OOZ9KGRRZBrC4s3bU64R0OKHJh6hLqMOY+gcdakF/p5rO/TDtkCYwII
 wMUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l9U9UFxewhzgfdgHobwlemQkQvapoJUzpG7DyO7HNN0=;
 b=loxdXvDSf8YR5gZ8IyNIzAUUNwSS59DXQ4z3Hjn3Bda8tOh9/FZDKbENmqiH2XgOh2
 0G1S5yAH6S0A1NG+UoThr6FOeMmN7pd5xMN92SP3uC1U4X43s/tQ1tYIyTi2ZTuNq1QQ
 /da8rHqRsAizi8fzdWEONkThlEdCIm41JR/AaZD/hsMOFG2J4glK0vKsTGafzz7JI0Ib
 UhXK7TTKFVm7Jh2HPVhgAi+kdczljBHtek13GGeO7QDNplZn+ghHGHyWuodTKXd/zYls
 sYC1ddrBlfuqZwyo+7ZvKI4OsGExbfjX0sw4lbw08OCvEjEWpOY/prEHBm8wRfr7Zncz
 H9Gw==
X-Gm-Message-State: APjAAAU06pnKsh1DnwNYLauTxYs6skLF9iYqy83xhRW1maNds3HJFVK1
 kOjCxfBkw0zePNPcA4fHbut9rM3IHPME7Q==
X-Google-Smtp-Source: APXvYqxhH4U5Wn9b4ZaRUOkvitSAEMC4SBP5q+SbWgFqVIcYcMlMhG5xdnJZXUxqMdLgouERAcWGhw==
X-Received: by 2002:a05:6000:10c7:: with SMTP id
 b7mr14036103wrx.288.1558363095957; 
 Mon, 20 May 2019 07:38:15 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y4sm12505976wmj.20.2019.05.20.07.38.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:38:15 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 01/10] ARM: dts: meson: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:38:03 +0200
Message-Id: <20190520143812.2801-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520143812.2801-1-narmstrong@baylibre.com>
References: <20190520143812.2801-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073818_065982_B6954A2D 
X-CRM114-Status: GOOD (  17.85  )
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
 arch/arm/boot/dts/meson.dtsi | 44 +-----------------------------------
 1 file changed, 1 insertion(+), 43 deletions(-)

diff --git a/arch/arm/boot/dts/meson.dtsi b/arch/arm/boot/dts/meson.dtsi
index 8841783aceec..6e59894bc6c6 100644
--- a/arch/arm/boot/dts/meson.dtsi
+++ b/arch/arm/boot/dts/meson.dtsi
@@ -1,48 +1,6 @@
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
- *     You should have received a copy of the GNU General Public
- *     License along with this library; if not, write to the Free
- *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
- *     MA 02110-1301 USA
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
 
 #include <dt-bindings/interrupt-controller/irq.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
