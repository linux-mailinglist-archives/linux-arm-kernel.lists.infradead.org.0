Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A9423A5E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nb1pNTBirvZefR+Sn/MUGog0OvLmZMNRF/vRLDYy8RY=; b=YQ9LHK7usWcdES
	X+De/1VI3svymU/PySmj5y9rEfinvmx9ONJlBHEPG48d6FBbBabc1VfOPXGAHb5LOGMaT7Es+SAT1
	F7UlnWyn07LSgNc5c5IrTCuCcqtHodP22rW5UCut+vCncRGODzy5PLN3vdTa6Hnl8hbiG73bUyn5d
	AsgUGsjQZGhSQCePeo0uVjPZ2vDRkmkzjiDITbKM6qBcZ5kPBw/5+Cxz6ZVNErVHXHkkANw0iOHgO
	k4Omp+lqYcDsJXKOXl0teaHsx7x58NdFtgEDCRYn2XljHC03sIgM0PH7eSu9l4ZcpwFj8kLnJf73G
	IZ2tZ2q4iVcNy+HNNSYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjRM-00076q-Ge; Mon, 20 May 2019 14:39:00 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjQg-0006NL-N1
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:38:23 +0000
Received: by mail-wm1-x343.google.com with SMTP id j187so90631wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gsXRVF+Q4Xl1eJydcYQleu4f8bJRfycH0peR8dxLr58=;
 b=LxgGhVu87BajYbSzmXi0IzSAiHiTAYKHLacnLWWV7vXsrDMMNhNEDTbyA84BeXaYIk
 ec/9sfy4kZ6Cw0rtYk8QKvGQnSMOlY2IWAbVGrZ10rY++c+xzDjUDtTb0uYihYzh3Ir6
 T5YcwqIS21nZgaIl0J1zc41HhzAWyCApOBXpchVLeSScvGqYikxymiUUtxTDnBpTtLL6
 ohZt7Loy1JE2i3X8uKjvCj/OK4OLMdI1TG2PeRCHYEdULKhe6t6XiNCNIFTm16kcQDbz
 svNnyMHCquBY3JcHr4OeoyQICrvktG0FjlrrbCY1kYb1kbLrmmF7iZ7aG63widp0XvUD
 zxSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gsXRVF+Q4Xl1eJydcYQleu4f8bJRfycH0peR8dxLr58=;
 b=oyNuabe8JBoA3/CeWRd2tv2Z/C5DrOpgt4tfLyXqiaqm7mkjLYXWhDBqh9I9SnZs5C
 iDnJVDMQAzy5K78qizvKrQaTSJS4tqyYwI3tTxdR4e9OkVDpSU2xDNpb6XB3Kt/GeCbc
 6eHGrwdlXfwvSdGv22b1Wq+6mq9NVOVMpPQ4xMIhK8QCrAN+4V5zR8eN1Em9J+hUyrzK
 jWzhxQYyB5z0Pi64CYvr4n7pvfPg9FV85adKKqRCnep2LlMY1TosdEEB7kehSJvz1s5c
 Geg7ZcpS/rWmjSkcv8dJPW9GzwcckvvW0jB69h73oueKim2Yw+0eG/l5TClbobUgNhmO
 Qb6A==
X-Gm-Message-State: APjAAAVOOtuqVdmf6n5sgC5aaI0a+WR0lzAehvQrUoidHgBh/RuqoRhC
 aCI0Rs3NuTkn7bPggcfsXlkbTw==
X-Google-Smtp-Source: APXvYqweBWN2ESfxa4/+dEXt37jaGm0QmgzGH5jH9Agalj8dDA35BL5pOixdonfwJ0DfZHMLhn+f9A==
X-Received: by 2002:a1c:b782:: with SMTP id h124mr2889396wmf.20.1558363096676; 
 Mon, 20 May 2019 07:38:16 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y4sm12505976wmj.20.2019.05.20.07.38.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:38:16 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 02/10] ARM: dts: meson6-atv1200: update with SPDX Licence
 identifier
Date: Mon, 20 May 2019 16:38:04 +0200
Message-Id: <20190520143812.2801-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520143812.2801-1-narmstrong@baylibre.com>
References: <20190520143812.2801-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073819_281597_383AB714 
X-CRM114-Status: GOOD (  17.89  )
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

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm/boot/dts/meson6-atv1200.dts | 44 +---------------------------
 1 file changed, 1 insertion(+), 43 deletions(-)

diff --git a/arch/arm/boot/dts/meson6-atv1200.dts b/arch/arm/boot/dts/meson6-atv1200.dts
index 997e69c5963e..4d2a37da0161 100644
--- a/arch/arm/boot/dts/meson6-atv1200.dts
+++ b/arch/arm/boot/dts/meson6-atv1200.dts
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
 
 /dts-v1/;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
