Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE612B6A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MK1R03SKlqx2brxO2Dq/SlBR7wqmW2JulFF/6uNe1KM=; b=AmIHJdor+v8r8Q
	iWXX/tnco7ZDIyLJc7oCbAwBqxVN5aSG/sNJivF+e88gPnidE0MR4Nbi9Pt4faEYDX+AXdY0BE7G2
	IMZPQNUxHThzRTa0HYl5E53CSLF5RXQp2iTp5Fyd8H9ovjBhkUPUfYg3LOCoIq9/zG0Ex58fMmBIu
	ar+6sNtbBmM0nbobUxbaZqmVezEkIj26dHUryXaNvHH+y5TCvhYidUwdLwx/Iz4g779x6iKc0/Cxy
	T6mEno47sKql19h96SCwnHUIXVwsXQq/juBUm7U//ecdaRU4bYCvln3RV6Zdm0Nyo3TyI81z/nOFE
	7/NNcnJla90Nr/IGxmeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFry-0005Ik-Pp; Mon, 27 May 2019 13:40:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFqG-0002NY-WD
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:39:15 +0000
Received: by mail-wm1-x342.google.com with SMTP id i3so16194314wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FfgebMbGwf7Q9Gr5G1WufDedu7zpTfv4Qk3723gKuHA=;
 b=gp15NGaWUqz2H0Wkd8QHPcS30em+G/Z4uhV7Kc6EttgeraQebzvBgpDe7aq7Bd2gdW
 JOnrNk5lXLAYUY7Eg/CSHEkdUUDydksAoIXicIisIHVCOLa/gr7lKFhxWJ7mz+onb9xU
 Q6k7T2RC7OatFdrQVCw9gI6WSXWrm8004fI7zpT4yreZoi2VVHDNb8TdsLjdW6HRcPge
 VlRntHyLzy73RvOwCnBj+SRH2b1B5VJA/RTxeG3i2FDso+KnefTwqAmhtc/hGnYOyuND
 M9lGcgvlMNSsm0MyO5EZUPb+G6fGKdLnW9P1KqkDIByVNEdQCO4K17g0wYA/Ys9kOUuI
 ek4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FfgebMbGwf7Q9Gr5G1WufDedu7zpTfv4Qk3723gKuHA=;
 b=gov1oU5ufMvE/drbWtyNSgvTxoXysiCs7pb7y3+R4wO0j6SFx0HG8tfLCgsJIoraK5
 3y6fFSA+OCSCzbkathxqtPP1HB0qQ/Ep97/KD45Dc7k1Rcg2yF65Ztj/UiXOCBsO0sFO
 Ac3blkQmMxf5WcaWk0Gf9YK+iQZxDbalPLCpWYee5dag+8pip0+D3y0KHfPHM1R+lvM+
 K2p7+yP27bzRy2FFZPxr3qYW62LWGkchYr/RyymBlRdlmLnBISlPbtlIm6BAqN72FP3W
 e+wWlyv/ignJbhrBNB2uSVCXqFxmRKJ6ICj7u6ABJOoDz6058S7iHTkDVxSd8xTn/u8q
 wJbw==
X-Gm-Message-State: APjAAAVpvHeLsWCrPvNr3yCrU3d0VxicQ2k9zs4csTNggGrr4c62Gj75
 ytCvp8vDze/eHt7LhQI0wdWbXw==
X-Google-Smtp-Source: APXvYqx2n+0dCb0I4WHAGuAk60wnSXJkj1WeeLU20junP8mTXddMCQbvk4C92SqYr7SMM1YYcoD+fw==
X-Received: by 2002:a1c:ca0b:: with SMTP id a11mr27459696wmg.52.1558964347484; 
 Mon, 27 May 2019 06:39:07 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a124sm7838335wmh.3.2019.05.27.06.39.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:39:06 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 06/10] ARM: dts: meson8b-mxq: update with SPDX Licence
 identifier
Date: Mon, 27 May 2019 15:38:53 +0200
Message-Id: <20190527133857.30108-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527133857.30108-1-narmstrong@baylibre.com>
References: <20190527133857.30108-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_063909_272262_D82AD258 
X-CRM114-Status: GOOD (  19.45  )
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
 arch/arm/boot/dts/meson8b-mxq.dts | 42 +------------------------------
 1 file changed, 1 insertion(+), 41 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b-mxq.dts b/arch/arm/boot/dts/meson8b-mxq.dts
index 08ddd7fb0bf8..784b393314a1 100644
--- a/arch/arm/boot/dts/meson8b-mxq.dts
+++ b/arch/arm/boot/dts/meson8b-mxq.dts
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
 
 /dts-v1/;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
