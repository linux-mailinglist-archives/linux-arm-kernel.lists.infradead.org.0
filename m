Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2463F23A71
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:40:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkRjmwv8wBQ3n3VJTEl1qYZ6F/MobgtikGhpOUw7hik=; b=CIbkAWjqLOXfLb
	P6YShmEFQw/6iSe0lU0Suf5CzaUTZvz1yYWGLH6XBdyYokGofRWYnDA78u3dhQciikbwMFPsRTMpB
	1SgCBe8Nd/rZhPxJRVbXGqoYR/8hrE57Pg58Lj2UD7ik6ifg8kkyFy81uqnymq5dT6YM7K2seI7ZZ
	d9AJDfLrw//rmBdN9AjTns5JjBMbeErj7hpJAdr8M9/kgJxPu7sLFCnCUsiJI2gSQTjFBfUhn49dj
	oC8bSl1lV41aM7c7p1JFY1Sh44cTTssO+JwhoEmxA826ms/Vo+0rlu78S6CW64rsqPwgbHYBbhmcT
	FOoDX4rjUH5yOsxiFYfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjSK-0008TK-Jw; Mon, 20 May 2019 14:40:00 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjQj-0006Th-V9
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:38:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id j187so13320092wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D3XiPRAq3iONjbh9isT60h9K+swEUyZx5NpuH8isn+A=;
 b=oHqucEjAN5rGyDvitqgZd0LC8uSMCUjDrBRZN2eJPKviS1qb9uPEv++ZVXEvl7uVo1
 C4S0D9mxbt9VPrRp9qMMgJc12026O9sLj3WAe+hy+o8pRy3LW/NEbK2iXRgptHeE9skm
 WDJ0eGi9vzd4WIozt6kxY8UHLa9B6j3+dTYCG1Rg9GLJAEcwwP0IXKb4MGvNEBzeTL1L
 m+lPjSS9K3DB2q/MGNe25uAFshy7uEQCRHtJwnJdZueBrnmit7SDxq/J0dYbhiQvGee7
 MJ5+z2o1GySyloJCHQC6ADThHznMW7XvT52Uy5sxAxCAOrQxfnQvq3KAC4sjkJquWBj7
 MkYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D3XiPRAq3iONjbh9isT60h9K+swEUyZx5NpuH8isn+A=;
 b=HwE+Bm7IJVHQX6bFwmh3DbovfZrauWS08S7lVIpXhBcW+JDO6xKSvgblSlNbuTaBxw
 c8AsoOlMjz3QRoTY6S/B+YjVWtfJHTqNEe/8XzEztJXKJCSdRR/g0BDSZUPeh+LbOcnj
 jBqOCNk623mryV+QJXT1kjsxl7KbhzJ37EhVbhYjSWBEfVliBTVKG1kalWsxNh0W9mp2
 uHPiaRqLK44m3fKJ9w+bfEtMCyflrhZ0M9HoC/wdDqnI8MO6eja6FUuul7fkRdRDkAVz
 8r0she0iKDuW9n9WngGjUqLT5PCoQzU8b2ctHXvXQ7McVbqSUaOVLK/bpW9ymNOM+Xj9
 jh0g==
X-Gm-Message-State: APjAAAXCiOE6H1ozRBhLVFZj8RBIH2FnHrNf4FpvJhZ+mLiwL0GpM4fs
 Tbg6g0A0FNMxjZd+MbpdPyt0Ig==
X-Google-Smtp-Source: APXvYqwveN2FjHNtP87z7oiJEE63JF4b4KLW1YKfeunSUmvfE+GgGL+YeURbB/vCkk+m+o4sZZmsHg==
X-Received: by 2002:a1c:c016:: with SMTP id q22mr35830816wmf.6.1558363100320; 
 Mon, 20 May 2019 07:38:20 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y4sm12505976wmj.20.2019.05.20.07.38.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:38:19 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 07/10] ARM: dts: meson8b-odroidc1: update with SPDX Licence
 identifier
Date: Mon, 20 May 2019 16:38:09 +0200
Message-Id: <20190520143812.2801-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520143812.2801-1-narmstrong@baylibre.com>
References: <20190520143812.2801-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073822_634298_D5ECFBFC 
X-CRM114-Status: GOOD (  18.38  )
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
 arch/arm/boot/dts/meson8b-odroidc1.dts | 42 +-------------------------
 1 file changed, 1 insertion(+), 41 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b-odroidc1.dts b/arch/arm/boot/dts/meson8b-odroidc1.dts
index f3ad9397f670..27bfad138f87 100644
--- a/arch/arm/boot/dts/meson8b-odroidc1.dts
+++ b/arch/arm/boot/dts/meson8b-odroidc1.dts
@@ -1,47 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0 OR X11
 /*
  * Copyright 2015 Endless Mobile, Inc.
  * Author: Carlo Caione <carlo@endlessm.com>
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
 
 /dts-v1/;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
