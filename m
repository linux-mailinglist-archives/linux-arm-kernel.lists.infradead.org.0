Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E285E491
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 14:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1BIbJ8ESF4slmeXxyVRP78qMmkOWJ/F41nUka348Ll4=; b=XxOciykOWdsxEx
	+tTNA5OgHmkFFvfAVqdwAqQ+2ZdUwMp+A9BYUXoprBAgQNXH38h8fkhzujLZ6kJbviOO/e581Umv8
	M2a5NeyKm/mPXWvC6a/s8nJrnruF9wjExCx6edSevTfXwhzSGSY0m1qIHBj99ur7Y/xL4gwOZsVXE
	kT4vvb0M0kVqK8e4ZO+nxPQ+/dNUEyJiNf1U7UMUarCX3CkdhsnAzQvs0ALcWPoNj6Qikc+MQVU/N
	dNjBV6saKnuI44tZkQ4oVCLHU3+bo5G3ud0TnBRWuVmu3bk1oucIPEZA9gc4PKVpzl9km4xSnK50+
	BGmbikxZLAE7VOq9opbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hielM-0008Ru-Aw; Wed, 03 Jul 2019 12:53:28 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiefg-0003Hm-Es
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 12:47:39 +0000
Received: by mail-pl1-x643.google.com with SMTP id bh12so1202105plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 05:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S1ba1K9fyy+5qb8wq4Py+5mYj4w5zxZQVOLZoJxTMuo=;
 b=LldCI44X9Xgj+KQ7igQdPCvoeKY0QkFSIUlew9W5MKMM2GTLawR4+nrFnrdV8SZ9Qn
 rcORCaRaadNquMSWMLkpMiNHI1A05QbSxvlS3xUfr6fqsELlZ2grn220xNi9ijvDZ2Ok
 E5LErPRoJAdtNNWe4+Nrq/dxyRQFLp1agKtVo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S1ba1K9fyy+5qb8wq4Py+5mYj4w5zxZQVOLZoJxTMuo=;
 b=TiZ/AnuuhXb2pEHSoYBdbvIg76YlsM+ZedXzeP9BdgwTN8Zp6ZbBc+TKl1zea2vXxG
 cJSJ3v6LeppJST7OYnsRXnoyy+9C85B1Dp/O0fhqWFFFXY3XmAJjQnkbeiEDL67BY+2b
 5dDPhxBMgWHB2fTbKBidgifcC+f3fcUbnPnBnS1akNMQgFtQe1F8MrXGlmHNMUq9VLkT
 TgcuuG3jBu7tOxFihMeh3AfERESkizYz9CjtDxtVulgVWiGxCtPCCSfD1rv8RLxzo7ER
 Fi6WY2P85BJJ/5I94CgO9fzG5jMvOggeM7tWYWJIq7VTSabpHu375GkJIaHibKGD112s
 MGhA==
X-Gm-Message-State: APjAAAUUBlPTR9TmfbzBEkPVdWJAFyJByc1h6VlAKoYqt4SviiIAt+c3
 n5+NMCAwNnUzOgD2lLoB+riv1Q==
X-Google-Smtp-Source: APXvYqy9jbP5SSZotDo314YorMjS7X521i23RpMvXcpJM8TBaNiAnm8ovF/1KztULAYD0rntbprk1g==
X-Received: by 2002:a17:902:8f81:: with SMTP id
 z1mr41260972plo.290.1562158055385; 
 Wed, 03 Jul 2019 05:47:35 -0700 (PDT)
Received: from localhost.localdomain ([183.82.231.32])
 by smtp.gmail.com with ESMTPSA id q1sm3735890pfn.178.2019.07.03.05.47.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 05:47:34 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 15/25] ARM: dts: sun8i: Switch H2+ dts to use SPDX identifier
Date: Wed,  3 Jul 2019 18:15:59 +0530
Message-Id: <20190703124609.21435-16-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190703124609.21435-1-jagan@amarulasolutions.com>
References: <20190703124609.21435-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_054736_759500_137CD7DD 
X-CRM114-Status: GOOD (  18.78  )
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
compliance management on Allwinner H2+ dts files.

While the text specifies "of the GPL or the X11 license"
but the actual license text matches the MIT license as
specified at [0]

[0] https://spdx.org/licenses/MIT.html

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../boot/dts/sun8i-h2-plus-orangepi-r1.dts    | 39 +------------------
 .../boot/dts/sun8i-h2-plus-orangepi-zero.dts  | 39 +------------------
 2 files changed, 2 insertions(+), 76 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-h2-plus-orangepi-r1.dts b/arch/arm/boot/dts/sun8i-h2-plus-orangepi-r1.dts
index 3356f4210d45..ff31d817b551 100644
--- a/arch/arm/boot/dts/sun8i-h2-plus-orangepi-r1.dts
+++ b/arch/arm/boot/dts/sun8i-h2-plus-orangepi-r1.dts
@@ -1,43 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.xyz>
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
 
 /* Orange Pi R1 is based on Orange Pi Zero design */
diff --git a/arch/arm/boot/dts/sun8i-h2-plus-orangepi-zero.dts b/arch/arm/boot/dts/sun8i-h2-plus-orangepi-zero.dts
index f19ed981da9d..c2a4d8f5f251 100644
--- a/arch/arm/boot/dts/sun8i-h2-plus-orangepi-zero.dts
+++ b/arch/arm/boot/dts/sun8i-h2-plus-orangepi-zero.dts
@@ -1,46 +1,9 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright (C) 2016 Icenowy Zheng <icenowy@aosc.xyz>
  *
  * Based on sun8i-h3-orangepi-one.dts, which is:
  *   Copyright (C) 2016 Hans de Goede <hdegoede@redhat.com>
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
 
 /dts-v1/;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
