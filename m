Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7B723A78
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:40:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqb6KQrcLlwFvqjKd/sQCsgVr1Ly0BtuJXHGKd4Q7gM=; b=JtfbFDydOAl71b
	ssIfa9B2gME0nkxBnabcsv8J1sAxzqoeJECe0Va4/bXMtYcI7Y8NKPUuP7W0MGiX+DsiFZ98AvcUX
	UgDogpeNwkIgzlJocFcaciTm7n9XQm7Z8kbiq+utCK7bgXHupvBH8eoj6FHthbYdqixVDx2iD5ntj
	msoJsm3/6Hj4PGxxDY7C6E+zffmHF6dyySakL5Pyz+oF5YMaQFaMLPcmydpbwYmj/4KrjHIzNpKiG
	PWdLITni4Wl9xBpgPO4bElMCAj1VcG06fPzCo0d+l2WnKO+uLhThk5cjchxMf6ls0qrTkYN7mI42V
	aXkAPF9IEFt+oxtv5mzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjT1-0001y0-P9; Mon, 20 May 2019 14:40:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjQj-0006S6-BA
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:38:32 +0000
Received: by mail-wm1-x341.google.com with SMTP id 198so13570970wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y20ylLT7P1j2zmS/M8TRrFaoBlL2u1wlYokCGcGh9bE=;
 b=rMnhpsSWW4eRlpukLPrOxf9e2lOvWhDWWqoNIrIJsKSY9pa62Xd4kQ0067q8W6AqU+
 C0vBXtulNvGfxVCB92NgU70uoex4gAS8ulWkeTi+JvE59Tn6YEJ9T+nQwSTD0ggL4Kbm
 y8kibu3FRZvgd5mgK0gaBa0gg5FnAcx5lI63OWn0m4/eMXjcEZSXZhpkJwmtQhcNmK7i
 src4owHkRNPgxx3MDcsSdRe2wgCb0m4rOOtQElpkK7Y5J1nnJe9lIF4FcI3xvS3Nn65C
 n8A4MMuTe5mntQixwL2tzdxx7fhytPnwlDHmcENvc8c396+FjzfMA2bJB9eqF0OQIduw
 KzCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y20ylLT7P1j2zmS/M8TRrFaoBlL2u1wlYokCGcGh9bE=;
 b=dkfZgujBwzQXUrvzDk79RWo91nSUB1ZNB77qNI4wbKETF7lNHYJiT8tAmlzGZvAIU6
 Rzp+uKFWzpwn8bxTQ4Mc6sgaCuq6kWEAxPDxtknMInksYCO9csUIV2YwdU/kkp2R9McF
 Y9r6KnhvxYNx9N4vJV5nDhsy4K5ajeeEU8PcgqednKl0UD5Ao3H8DHjoclFKrqa5HV5G
 VrcgSGW/1Ayb81DbEsFwqZ9lR8pIGYx8jK7800WHthIMUNKfwpJY25CdNL4NyPjmx7zB
 ITq95wdj3nUwNn5q1hTl16kgjV831ES+sGIrxXh4C02v5iu2pqr0XlmvIjS0pL87AQ8H
 YH6g==
X-Gm-Message-State: APjAAAW2CUYPQ0Mvp3v2nETtbpEbHkqXt2SseYHRmPszQVFkSbuscpdP
 SfoxYjXy1Nw4h4J84l6CKH9xNQ==
X-Google-Smtp-Source: APXvYqzkyDsfvC4aDIGmJFB8DXem17t7gLF+Y5FHN3d5fniARXq66Nn0EJfaJJP7Vc3hqFTucUPhbg==
X-Received: by 2002:a1c:63d5:: with SMTP id x204mr12488176wmb.3.1558363099620; 
 Mon, 20 May 2019 07:38:19 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y4sm12505976wmj.20.2019.05.20.07.38.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:38:19 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 06/10] ARM: dts: meson8b-mxq: update with SPDX Licence
 identifier
Date: Mon, 20 May 2019 16:38:08 +0200
Message-Id: <20190520143812.2801-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520143812.2801-1-narmstrong@baylibre.com>
References: <20190520143812.2801-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073822_622521_CFC44CC3 
X-CRM114-Status: GOOD (  18.48  )
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
 arch/arm/boot/dts/meson8b-mxq.dts | 42 +------------------------------
 1 file changed, 1 insertion(+), 41 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b-mxq.dts b/arch/arm/boot/dts/meson8b-mxq.dts
index 08ddd7fb0bf8..bb9a96c09f69 100644
--- a/arch/arm/boot/dts/meson8b-mxq.dts
+++ b/arch/arm/boot/dts/meson8b-mxq.dts
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
