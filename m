Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D372B696
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:39:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lu7nkqdZCRQcp9R/XEhKhucAJh+piyK0hX3sg2gWbXw=; b=DWAd5gAu/fDo4c
	xuMsvcyoPfV38UrpUFptaVFtKNZhPFjRTPhsb7fDjF2mAaTyxoZ8sFLK7tcGTCPPNimeC2Gfl06Bk
	b7N22JVGAutCIadssGpTsK+Jjz/a8g0LrcvpUgpM67SA6Pm6wlBAky3+Hju7G7V3XQJDl2f27zdir
	gS2HRXJvGB0sd3C+9PljSp3mvCMGxPmEy3/QkYWdRos/VPOdO5ID55cwh+l8qGViIIAoEVzqSjC7u
	eci/dnSaNHLMT+eLw85DqbIEzfoDp+7qBFjg7I/6kfFa5jGIMHZyI50b3Fi2Sp9jablCbVW1nycao
	3XwQsct9PEVXj7OvDTyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFqt-00035o-7c; Mon, 27 May 2019 13:39:47 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFqC-0002FL-Q2
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:39:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id e19so24352wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rXvaj3vUDYa9PEjMxbjGSAemm+pe/cxaMoF6H3fQNUY=;
 b=Q+l/PHhGVu51hTqZYdAfAdFQSOivF3m2nfu/Y1lh6dSmHYVjPpAtM9SppJmt36DwiS
 8e+PHIw8Hd1PNm4RtvY3Q8VQnLCVCzFu7Q7C3qaD3UCvI43VAhlw/YgOx+FyK9C8z9ZG
 tEajQcG1cPZ3cgfc4lCGbI3SfxBm+9kOgxvWrwp4CLqMDycJ9w6hMpLF3ki9Oy6sjdFR
 MtPRxPUafv20m4UZNN6pYh2n4jTPODTNe6PFv9kdiP2x7016xNsTa1emET1RlM7QvWFt
 S1R1+xBQYar0c9TjabnpI/uf2N+qr7k38vBef+DFHUa7EBRqtlREf4tBuPKHZaBDJzFf
 pfMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rXvaj3vUDYa9PEjMxbjGSAemm+pe/cxaMoF6H3fQNUY=;
 b=pNvPeVjgQhW73oIhEjztz5zWnVYHBHhuJsjHQhVtfnp1qjfiL5rVKvtprQucQSdOUV
 qtFLa6JlZRbwJWrfQbWYFpWwIKqUm4QszdCcTgVqc1BC+ys2gg4krWbYy6x2YOjJGWh8
 DCujevLOJ7UeRHU2IhxyaUJc0mxtePqteHws/43ap+2CS0IHzTJn/qc0RI6Q8iB81mcj
 Mytja2RYo4nShMuwsWnCzBKbnz373XI6bmTn2yl9a7rjEboWzTfjucs+VMMLMdmLQ1iV
 Pqc7OSJJPI7pkF+FK0vdCyqkg2jsCon8e7gN/LUyZKpJiicP+TAe1GtTOIXxztghUdcf
 /+Yg==
X-Gm-Message-State: APjAAAV+KOdJru1WPwX/E2GU6TE46vWBeNqhngabR1eDykeswbfNsCSo
 EcjCYC3cHscorkjTtlEG9gq3kg==
X-Google-Smtp-Source: APXvYqxE4aKHzOrcgMiwac+ZfptW5NzdYTrUzpPpU/O+y1MWCV9kobFuWkgBeYF0aTGmeExPm8e1Vw==
X-Received: by 2002:a7b:c442:: with SMTP id l2mr10420507wmi.50.1558964342824; 
 Mon, 27 May 2019 06:39:02 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a124sm7838335wmh.3.2019.05.27.06.39.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:39:02 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 02/10] ARM: dts: meson6-atv1200: update with SPDX Licence
 identifier
Date: Mon, 27 May 2019 15:38:49 +0200
Message-Id: <20190527133857.30108-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527133857.30108-1-narmstrong@baylibre.com>
References: <20190527133857.30108-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_063905_294497_BD472293 
X-CRM114-Status: GOOD (  18.90  )
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

While the text specifies "of the GPL or the X11 license" the actual
license text matches the MIT license as specified at [0]

[0] https://spdx.org/licenses/MIT.html

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm/boot/dts/meson6-atv1200.dts | 44 +---------------------------
 1 file changed, 1 insertion(+), 43 deletions(-)

diff --git a/arch/arm/boot/dts/meson6-atv1200.dts b/arch/arm/boot/dts/meson6-atv1200.dts
index 997e69c5963e..98e1c94c0261 100644
--- a/arch/arm/boot/dts/meson6-atv1200.dts
+++ b/arch/arm/boot/dts/meson6-atv1200.dts
@@ -1,48 +1,6 @@
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
 
 /dts-v1/;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
