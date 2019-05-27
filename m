Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E62E2B6AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+nTkWQbkUB4rJgltgLjjmVoRV2sCaYTxlwsIBoicJc=; b=IgscIQMN6dHixg
	cUHL3uyQMNbLtLNdRWQONF9wgIMumJfZRt+YqMNnctHk4sYPrBvQJkQlSW1wt+HTBDmaC5A2rHy0f
	ffinBwnB2fsI6O0sgFC4hoSArCP7QAusOxgXij4YyzjMCR0wTV+orsRLdlMqSEfzUBXWYO6w48y2Y
	M+pXC/DFpdOu2jkeSQI/5EkCLOBgOYiSYOODsTrq0cmldjBgc3tCkP+kGMc2gQ0/rVTehr/87yqCD
	sd9dy2N0ihSpumqugVkdvynTwiZsFxo8i5rGqKJWOxOdHPL1QR91V8n+oYf6WLwDuPV0dEUvemIXi
	tWKPl9ixnn4mcNXV2PXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFsc-00060g-11; Mon, 27 May 2019 13:41:34 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFqC-0002EJ-ED
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:39:10 +0000
Received: by mail-wm1-x343.google.com with SMTP id w9so9778374wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JZ70KPzQ/anFS7YsMdVvfIAJmCYS+9JUpTW+5eTm7G8=;
 b=a4AqktkKm7/jdXHmUtVAHwL/u5HxExKzyVAqS0Sirayj/OOByPJlzMn7urM1OvAQix
 fd3AJvQ32lbX89Cy2pJPP6hYIyN5e189F+IG046cG6A3o3USxAkaXssW54PXYlBYMys+
 amRTEy7vvleKH5SP6bwFsfe4tVC+3xib4cX59ucTijotqu4h3ch/pi+/y+aTIT9N6xa9
 X1Xw6gjdh9G5lgUuASXKRwA871YHD945r3fmM/07ZUhBOJPkr+2+HqXN7y4zP5f5t/Ku
 jYLxj4ggv0YkzgOFAIRFkA/0DxJBKVRo2y7CQl2fIgyoDfF7n+dHY/J39C1hjPCFSQkT
 /D9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JZ70KPzQ/anFS7YsMdVvfIAJmCYS+9JUpTW+5eTm7G8=;
 b=WFeeyoJ10tVCYB8B9Sd29hMosLNxHRMV5nU+p+uLQfvjcinSOE9xXGNw+UxEn1B6iD
 7JL7zYUbJmJcVsSKp7WpuWmpMvOOSgmNofTELVacyxfaePryu6rETUpJxsLlqJX7vR1X
 kPWn5Zk7sJLlRJ81n6lxEe1WEF7/GxTNAE0//G7H//5rD0QDkwr3XQ1M6XujSpx+8rTq
 Eq7272C4vmE6k6a/+HmoqZYWI03rE9hPRdtHOld2xL3dizKHk66VYBaPC33JoLeHuv0D
 bq8N1eU9gI8b0UGY5m0X7AYR3KrygtkD1/HflJQi3v4AaNoRmuIzv2zxEpr7vC8mPgaF
 0BAQ==
X-Gm-Message-State: APjAAAWGi/ZDHBUXXvnXTxt7AgcCG9iJWQ40bYP+iTwGc3oJ/8OYcZc2
 VMrRwhhjHQoe/Gi9VthX72/fJg==
X-Google-Smtp-Source: APXvYqzABE6JC+x+21CVBHgoo+uK5hjDZBQWB3rj7Vjtipb8edgp1rrGncDmC0i4aRnQNgyZwGEQxQ==
X-Received: by 2002:a1c:a815:: with SMTP id r21mr25706734wme.66.1558964342139; 
 Mon, 27 May 2019 06:39:02 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a124sm7838335wmh.3.2019.05.27.06.39.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:39:01 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 01/10] ARM: dts: meson: update with SPDX Licence identifier
Date: Mon, 27 May 2019 15:38:48 +0200
Message-Id: <20190527133857.30108-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527133857.30108-1-narmstrong@baylibre.com>
References: <20190527133857.30108-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_063904_729434_DC87F40A 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
 arch/arm/boot/dts/meson.dtsi | 44 +-----------------------------------
 1 file changed, 1 insertion(+), 43 deletions(-)

diff --git a/arch/arm/boot/dts/meson.dtsi b/arch/arm/boot/dts/meson.dtsi
index 8841783aceec..c4447f6c8b2c 100644
--- a/arch/arm/boot/dts/meson.dtsi
+++ b/arch/arm/boot/dts/meson.dtsi
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
 
 #include <dt-bindings/interrupt-controller/irq.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
