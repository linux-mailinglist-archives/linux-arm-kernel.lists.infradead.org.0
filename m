Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 120892B6A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yF+m9xnx9Fphk9rMc+ex/eGG+753Tu06917f45gMsRY=; b=tIqbLaoIvemQbY
	aSPKCu88RRdE8LO+JD/b5saq68cSHJoK3KkJmUQFJ4DKSS8tKW9oGdjlb3D0M/U0jezaA7r57sYDK
	gA3g8B5SqxeC7xOmSn3bnLLs+kymB/bKPMkMez/lpiHm8xT3WhInP5pcYAPmH+O+ELoBEpZ97+0eT
	8H3B3+8m5Tylj/OxGcR1pjvESEHOUKcOjSVsA7pfT6e9piSV7lFree+y5lHvlQ7Kftk9YALKKmDqr
	9tlsHPTTpe+UmVnwxdZ3P3vss145en3n/aRKdd/omTy0Hp6ei1Dn+mgRsc5+XApVS9nhtaAUNgxKd
	Bslm1G6nkOkG6Os9TD9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFrS-0004AK-C9; Mon, 27 May 2019 13:40:22 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFqG-0002LZ-2o
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:39:14 +0000
Received: by mail-wm1-x342.google.com with SMTP id u78so3358755wmu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vhuA4Qk1JM8R8+GoGVu3NgHcPc2TyFNVbue48QXSQ8c=;
 b=Tb1Q6CIg0cSyouTKUCRztqV5MfCVmxXuQT2HbZyTy2ZIhBON0ajN5KVXdRdukyAXyO
 L8f3sALq/EGCmUZw0l6l9l+eoKD5U8z1RiKluT7wEk/idNtSSjVGDSBF7gT/wknTRzHA
 5TwzynO+ikYlbMNw1nJyQ+EwjUxFuF7yPEy9YmvWOME0SzUBfJZPfToFFn4b+MejGmbX
 eisCrvPJpA2d/L358T1juFVLWhbsG7mIOEyZ8p/FWhPCHtbk37T7s1mwy5FC5RnDKdrv
 0RO9WI6zlw1PBgKeHgp4PvLIvZUekHebn4ZZW2KdpcdETOl+SxzywowJt+CHZE+zMKhy
 IvDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vhuA4Qk1JM8R8+GoGVu3NgHcPc2TyFNVbue48QXSQ8c=;
 b=qGfBmWayFhSs9D7FbD7YeBOLICcHZDhgOu0GTgybaQhgBxenYeB+kC9n2rykE4CG5N
 zhm8adijdiTHIoDANan08LmB+0KcnKMczNDk5jXmvwPkFkxH3zOUM0hgFkolhQB1jUFd
 r6icclYSoqOLA9ie5dpIr/BF9MaNra4NzQEIMLgL++34ZHQlNj6SYTzZmYq7Ng/2AxBK
 LYKbzlHcvoL9Z3CTIyBaJ0DKLgVrnbEBwKGQX3ExIbrCCNcOg/rH1OD06y5IVym5jRWE
 cBFX4LZGs2D3nluMGu3DOTg9aeWjwFTIULHImvnBsjRTxi3UCTK1HDes5qxR8MSXgN90
 3FSg==
X-Gm-Message-State: APjAAAV5j751bNgCF899nAhgpmcysEGZH6Zx/Zm/iJPWY6p4achPQ3Ay
 VEzgsv1wTJ3nbiqmYIHx7no1Ew==
X-Google-Smtp-Source: APXvYqyuX3cAW8Rw/FCEAHARS5eCeagM1dgihff84N2r7WboJAcdNwqrffgecij8XfggSeVk3z2jVw==
X-Received: by 2002:a7b:cb84:: with SMTP id m4mr14629675wmi.50.1558964346013; 
 Mon, 27 May 2019 06:39:06 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a124sm7838335wmh.3.2019.05.27.06.39.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:39:04 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 05/10] ARM: dts: meson8: update with SPDX Licence identifier
Date: Mon, 27 May 2019 15:38:52 +0200
Message-Id: <20190527133857.30108-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527133857.30108-1-narmstrong@baylibre.com>
References: <20190527133857.30108-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_063908_492019_8ACB059C 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

While the text specifies "of the GPL or the X11 license" the actual
license text matches the MIT license as specified at [0]

[0] https://spdx.org/licenses/MIT.html

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm/boot/dts/meson8.dtsi | 42 +----------------------------------
 1 file changed, 1 insertion(+), 41 deletions(-)

diff --git a/arch/arm/boot/dts/meson8.dtsi b/arch/arm/boot/dts/meson8.dtsi
index 7ef442462ea4..3dfc62da669e 100644
--- a/arch/arm/boot/dts/meson8.dtsi
+++ b/arch/arm/boot/dts/meson8.dtsi
@@ -1,46 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
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
