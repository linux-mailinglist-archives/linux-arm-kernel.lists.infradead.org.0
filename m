Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C67E75E49D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 14:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rzAn3xlBp46d8KvPU0ih2TY3JHcPyU4v3CTsm8NqW28=; b=XOiZLFuGIy3jqu
	jwK4zYoEAFs57UADPoEP3yRN9wAlnlsUBKGZpaseOED4rqR/c3lgohAcqAGnZO6k13V90eNWtURPM
	aDQE/wpz+fMVLmsW5fxvt9bUZzfcRasEg5N+sEhALmJmamqrvmnYto2xrbGvm2goqRiDbNumE/aT4
	NG8KRLECH4+VmhCUl7ZRIgo155xreo0Ap1E8OxTjL4/6eX6FPy9oTAYTK2jT297g1POU37rsXkXL2
	clsRdARzBzRsncmiClSZThrQ6HZNiVdYAwRA72gt/T5WJWpVYyKLFxvga/o9VCVKU6ebP8AabJhB2
	UvDx1s37kvq3M6twW3bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hienR-000248-Dk; Wed, 03 Jul 2019 12:55:37 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiefw-0003Vf-2N
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 12:47:57 +0000
Received: by mail-pl1-x643.google.com with SMTP id w24so1207641plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 05:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gMi5S9N0GS+CtqUmG8SfHhdsksm3MgXETiiYgsZWDa4=;
 b=D7K74xUqXT9ATiZBZ3DrvWEEytOGd7t049PvGLghPyWRlkTxxABKFBVoF8x3eZh6YL
 i9aoG8NXBBb323/5pMTanuGFoLG1U/Gstktbuyy3kegJ331Fm6D0TR5KOiXEZpMAhhNb
 i+rpNLQC42wUqeEYu34I8TJ1xjC5qfPaXRR7w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gMi5S9N0GS+CtqUmG8SfHhdsksm3MgXETiiYgsZWDa4=;
 b=aRx8zzXifn23ykhykloCr00IhZv7w+TIAImLRx+jTCajQwr5o7NksE/8akZVbO2jsA
 GwSkvPziVOAnzAb88vCP1h0Wk3b++TzZBDmDBUldrKoQc97lN9+5uDNZLG1nibU799kI
 HW2nqpeWvdo5ewr5xRWYQmwY5dpluk7MfxH3hbvOCkhbfLAYscsdJ3Ll1CXGgK1QRk+6
 yLE59lCY83UV/pogxPp7wQP2eJdcXXDmypcr74w5V6nCCieqQywuhjCqgxeocBzOjjNM
 73zASie/iZ5inFEfbSY3+OErtM5+KtKL21bMKi0IMGVBpypfYq76PqwRWhrYSUc4Fi8i
 hDgg==
X-Gm-Message-State: APjAAAWeQKChWd9AnMh2vnfZYXta7DY3/OKRr98v0EDNwqJSckIZJ0Da
 vKOADeoPx6Gd7IVZhmUKe3pfwQ==
X-Google-Smtp-Source: APXvYqz6N8t5Rl+9VqdoH4geuUip5ZR+hfO739jS5YHsDGWfchAIGowwt/dTDF4YfxbNLaKb/UyG2Q==
X-Received: by 2002:a17:902:8a94:: with SMTP id
 p20mr42018467plo.312.1562158071569; 
 Wed, 03 Jul 2019 05:47:51 -0700 (PDT)
Received: from localhost.localdomain ([183.82.231.32])
 by smtp.gmail.com with ESMTPSA id q1sm3735890pfn.178.2019.07.03.05.47.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 05:47:51 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 20/25] ARM: dts: axp152: Switch to use SPDX identifier
Date: Wed,  3 Jul 2019 18:16:04 +0530
Message-Id: <20190703124609.21435-21-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190703124609.21435-1-jagan@amarulasolutions.com>
References: <20190703124609.21435-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_054752_250187_5CA55856 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-sunxi@googlegroups.com, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adopt the SPDX license identifier headers to ease license
compliance management on axp152.dtsi.

While the text specifies "of the GPL or the X11 license"
but the actual license text matches the MIT license as
specified at [0]

[0] https://spdx.org/licenses/MIT.html

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/axp152.dtsi | 39 +----------------------------------
 1 file changed, 1 insertion(+), 38 deletions(-)

diff --git a/arch/arm/boot/dts/axp152.dtsi b/arch/arm/boot/dts/axp152.dtsi
index f90ad6c64a07..4122aaf49e21 100644
--- a/arch/arm/boot/dts/axp152.dtsi
+++ b/arch/arm/boot/dts/axp152.dtsi
@@ -1,45 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright 2015 Chen-Yu Tsai
  *
  * Chen-Yu Tsai <wens@csie.org>
- *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This file is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This file is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
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
 
 &axp152 {
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
