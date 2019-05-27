Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 095272B6B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CM1HMlRkormEoZdAm/WoQtDPLo715szmCqbICSCmtbo=; b=mJ1ekub+0QON32
	LuUJFiQwlAxadySCyI/8ndEvZfhV8BBKe8ShfceROSkGEMiThicB+Mya5bB8n98djSxjabJ74nkBj
	tlEGGakFKSxSxXaPvQSykz7pAYnI5vUen8nQYsifcdX/mxSz5zyRlpmMoa0IbyOxwUQ9RpefYxBpQ
	M/Chq67RUmLFUUnleNwObaMsXNyFlkfyg+mdn4Fx9bGnQFGpGEaWjB2Y8FG/bFVDz13UegoxemURx
	mAgFPuyroUQUpepKyJJFTWPM3G7OwkgTpWnd7ZeZACVB0lRzxaFTuCwqTUVhQ0ypdQ7FHhMgTM/FL
	ZlPq98S5DhmnRyBM0hUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFt9-0006gD-Gq; Mon, 27 May 2019 13:42:07 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFqT-0002Z7-15
 for linux-arm-kernel@bombadil.infradead.org; Mon, 27 May 2019 13:39:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=verJ2TtoOCB8JmW8F70UDjfoCp/cGBMV0EuzVh2W1as=; b=VLPx/fvsT7xxdNEbfwzPiMuT2S
 obnfbq9fmUYQTuFGWXFIMZnVkaaChsbHxYT7zW1JHoFaRrD+Pon29b+p/n0mpVpceY0ZLMNN2a44P
 c3fDSO8kVSF16Nr4bOIaTkH4jbDoIuDij6dxL5iQTTTMast16E5ub4cowocYbidzYqs0/Ds12zjIM
 0Dk0cPuciMYMBLAIoqCjRv6rjZzq4gMq/JeW4FBitccCWPEo9B4CEE1IfN+EMlarjoGXD42T9Ukl8
 8uDFJ7p68DHHgYGWb9CvDEr+Jr/mRlnJiA+oJa2raLlFBuKUZIIO/18fTyVY9zcKZ3yzftoas/LSt
 GLaUPQeg==;
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFqM-0003Yy-C8
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:39:19 +0000
Received: by mail-wm1-x342.google.com with SMTP id y3so16230708wmm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=verJ2TtoOCB8JmW8F70UDjfoCp/cGBMV0EuzVh2W1as=;
 b=di7iNvnui7FhLrNe5R7wm7HudrjyzbQi94oSfDaZu4LWq8akC9LiUFa+RHumrQcLEA
 aOhH7queUJ9e0VbTh3LORPtzI+VWRq31fSwU0hCvOI554q1EXtLsxaWBRmo1x4ppmDDJ
 +EIncHx/MDk0NuxHkyPuaStxM7Xfps2rGWP2k1fzRoWucdDtkJkpH6l9GfqtHIL5DdLq
 XcImVYBi13I+SG39PDvZ8rfaxadr03MA/ZfHVK6LHCCmX2mpqy1TJZrchrtOCMx6K6JZ
 DoFLVeVGp8SpmASbDcXGj9Xba7xZIn76sb2s9BKmDFbxnIaVlbLABt57dYK7QzKaF4tV
 YCfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=verJ2TtoOCB8JmW8F70UDjfoCp/cGBMV0EuzVh2W1as=;
 b=NtW+jTyAn8fJyuJE2HesoKBC3GBOX3AeUF7zZRLKJV3FiYsgOTURdv62OqKUA7C6cv
 pDG3tVF7klDOYoAckao501k6ohM6hcKCOAyhsjcYNlL33rh/snl68c+r48ql/95DyYlx
 Vo+Ao5gf/mtui/OukVuRw1Zcg0gfDra2vuJGwLOrlma/0oOSD4pHv9Lf9kbJSoHOGwNB
 ibf473P4qOuuyQ5kzZ+h4KnqS4YtD3miDzbfQqX70e2/OqwKi0TlM+ZzhZjxiw0KMWe3
 TP34wLq2W9Ub8eunMal2HcsY90hPYNz+R7t7UPHyFje/3GC6PlU8sCPUrz6i7DXiSu/Q
 zbwg==
X-Gm-Message-State: APjAAAUC3bx3fIzlDCSE1hXTw2qQJeM5sBUsP+8Nz4x3qucSxSBVegFd
 n565TETH7H73A5KCqt0Ancb1wA==
X-Google-Smtp-Source: APXvYqyd/kK2slKqdVMOm7do4U1lyX83rjJItaXdUFe1Fo2m7B4apmdNOOZfK2IQ34qBHCqw24Uajg==
X-Received: by 2002:a7b:c3c3:: with SMTP id t3mr27136443wmj.88.1558964349041; 
 Mon, 27 May 2019 06:39:09 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a124sm7838335wmh.3.2019.05.27.06.39.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:39:08 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 08/10] ARM: dts: meson8b: update with SPDX Licence
 identifier
Date: Mon, 27 May 2019 15:38:55 +0200
Message-Id: <20190527133857.30108-9-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527133857.30108-1-narmstrong@baylibre.com>
References: <20190527133857.30108-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_093914_462743_F07A2E97 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 arch/arm/boot/dts/meson8b.dtsi | 42 +---------------------------------
 1 file changed, 1 insertion(+), 41 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index 800cd65fc50a..6e48182962de 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -1,47 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
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
 
 #include <dt-bindings/clock/meson8b-clkc.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
