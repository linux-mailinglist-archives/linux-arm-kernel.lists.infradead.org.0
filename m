Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9302723A63
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBYlzIfGFfOC7DFP3bBBpIv0KzbL3JDblJOqpUUi/Ww=; b=dxByx2qyQZ+E+o
	s3aRQX97y3K1IuYmrOL+2Jkw3DHkvACatJJ9YvfuEnc6paXPf2Wr5N/+lsRpJN+u8PJSGufoJBnXi
	hR/kP7Lu3BPRHBqCcx3VpbCyr/HS+54PiOHa3TWmGmCSyR9uhYBc+q+d0uYwplf5/MfZn02idWpSR
	kl8P3+A1UdUazIMvLuyo1uNRdbzC5atnUSmhDc5xaiFwsQUVyemorMQ6Q+LF/1YIyaEnPvkghU+tM
	eossnLS57Vq9rzaviSUcqT8xHuK6++3zU1L+EynPpGq/S7HAmvT6933o6AZk4Wzzf0/SiQ8ZTkjDZ
	6ea5Ii/XVgMnTQrtpSTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjRm-0007jn-Tu; Mon, 20 May 2019 14:39:26 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjQg-0006O8-UA
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:38:25 +0000
Received: by mail-wm1-x344.google.com with SMTP id c77so12100274wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7fXId43znoURHIEgvEgBbx6jyFkNkDQCOlHnOrw38gs=;
 b=Gn8uBGli1Sc6+GDVYqZjvexihUGvjpyt1WZ3EKCrkBTa+bdMmS6tukhn+bn+0qpQFj
 0W10CLWrVu8rodRqQDmD8jaTM6J4bm7B+N1mWZUGOjV2Xcvr6huKJLCVuh5nNGJTASqz
 3kmd8CQIce55JjTegyK/KzioLwviWkCI14eY/fDXJD5gmrUcfNuP0FhqjPybeWJK8Jfr
 pnzxGchj2BGuGPYa1X/vI4NwVUwZ0Zh95/sVMF/zMGnrRziDyJ5BPxoKxUwfRlvXsJwi
 rq7YwoNWGnLkf2IQumU2oBVGdqo7mwNrYbCF8JvNHNsDg/0/8Xg9ImSXw+FQvbFtDMPe
 5vhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7fXId43znoURHIEgvEgBbx6jyFkNkDQCOlHnOrw38gs=;
 b=QiJ0V+a5mhiP9a2qj31GNpxdbdQBShWM29IOj8S0rUzyNeuaL/YxyTsftAgg673Dry
 tDG+sJ3ploO6+iXE2uoRB8ms45yCHyDpwGibRhT2O4kCDmfw3XCPvjOhdVAoD5b4LolO
 8XuLDS1mf9fHB/xpRQhhEHNmVwwSxkZ2dUquRxlnX4Wld2PEODqHtxXH6OjvIDm5HsU7
 doemXYTcZ8EplR6suJlWnjWAew39PU3YWl8288gvL3gFydxMEhzUT7WWTGCmboR1AkQr
 uhdLLM75fXgVcgAFFgT/MI97I6on22mjvZEYqHltnnFknLKzWAhgJf/9Vbw4swM3TSYf
 LGsQ==
X-Gm-Message-State: APjAAAUt0c09b0QF+zWmfIzaTcidG03O80YbP1uWLG6mbd5xjOo1kp44
 VAad5ZvEQ8w4dDKMuP3u1XkCHQ==
X-Google-Smtp-Source: APXvYqzpwGJ0wgU381MFS7JmTq3cw/qfDdbTQ68HoDgqrF9UUoAXStgMXCv+xWG+2+c4G4nQV3F7Ow==
X-Received: by 2002:a1c:be0b:: with SMTP id o11mr12604576wmf.63.1558363097439; 
 Mon, 20 May 2019 07:38:17 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y4sm12505976wmj.20.2019.05.20.07.38.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:38:16 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 03/10] ARM: dts: meson6: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:38:05 +0200
Message-Id: <20190520143812.2801-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520143812.2801-1-narmstrong@baylibre.com>
References: <20190520143812.2801-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073819_582402_90F0887D 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
 arch/arm/boot/dts/meson6.dtsi | 44 +----------------------------------
 1 file changed, 1 insertion(+), 43 deletions(-)

diff --git a/arch/arm/boot/dts/meson6.dtsi b/arch/arm/boot/dts/meson6.dtsi
index 65585255910a..39903172ea7c 100644
--- a/arch/arm/boot/dts/meson6.dtsi
+++ b/arch/arm/boot/dts/meson6.dtsi
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
 
 #include "meson.dtsi"
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
