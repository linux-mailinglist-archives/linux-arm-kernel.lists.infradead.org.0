Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7F223A64
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fgEL+c+K5EFhKYrJWQR9HqzSDaBrC0fs6l+aYkWoAu4=; b=BO1rsMThWQvRrz
	YFiBIUZjaGlVSlIaEb32PnEP/XPznYuwG2sy6UzKfvyJgprDpWqd7LefNcGzjCmJdNDEmDX42IvTC
	SNG3O5IQnSx8X9DC5f3zqPkcduQyTw5JXaDU4ZexrN9vah0cIQ0fM/v5hmLV/rZtbLkUMDxX1sXGA
	PxAvExcscAbWPZGf4238tt/llYWnTxBO0bhF5/OaiWnS0aZ4sX9C/FbP05bQxT2ZCOY8hQIV0Bame
	V3OMpEeCNi+kaGgg63vOrZU8Mtq6WbgHlv0e3MgXjm5XWBZhygNbvDhrcYcSX7+OeyWxq3wmZAQHM
	yLgTntgpnqIaAFpp7MHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjRx-0007xS-9o; Mon, 20 May 2019 14:39:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjQi-0006PE-1E
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:38:25 +0000
Received: by mail-wr1-x442.google.com with SMTP id e15so14914435wrs.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZjBhuWUBVlc7dSbIXQ9In2EP/rViqYs/vCz1OGKxCCo=;
 b=kVZUlP82EkRSrN6VcYSVwKkCxt7PQ+zs5bUwr53RfYDV8HJjP8vQeRIVC6cGuccADJ
 waEJK9ExJy1eXBNoALtXkEN7prV90JuQVLK5scVl3Q069iV720hh5xzXYvuFMkAoSisY
 dQzR/WvbC32ZkTFNbzgPGrpdw88bl5qHequC/Sa200KSqJZHjyGulR8gL+v4A2nb/aQR
 v7tS1uUrzJOF7f5TFRV0NnOGUwyAl0YW7zd6g0Mn/ub0kZtikmcyig7X4gHdehPpQ9Pi
 fRZ1ZX1GMHwWds7s2Zx7Dxq1lOAXVd4Ym+QY1HAJ8YrqMQMnnLoCpIGWD+breSORZlUz
 6Ikw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZjBhuWUBVlc7dSbIXQ9In2EP/rViqYs/vCz1OGKxCCo=;
 b=LOazLNzmcmfkiuTEGArq5hU2aPZZ9TQN0EVzD5r9LNgwSINvWyLtiO4oe9QYvd29Ea
 KlQ2x9KyxI3x818yoWLA6UOYZAUXiUJlH9V8LydO8ECjRWItbQ3RSF6pQhmg3KqUrmHa
 B42mg8bBPrNDEFgHj/33ibfCgCJ9QYbGf10OOjYGVLVVxcLVe6DlTZbqDaTJPAdniLcw
 Bz/Li4I8uYVF+S5KulRzvxeJryOUm4XVG3VKX3hJbkoglUkw6vPJzFRDPCguRGgv7EON
 zYg3vF5Yqvj2diK5won5IeAsBekGnBY0fTPa4yb+/NVXiNSU/fzzc+pXLuLWE76SfEln
 zJWw==
X-Gm-Message-State: APjAAAU8S4sGha9nCLMo7T0YJFcXZ7aCJ2PZXKuMduLLQdCFmV7kRT1Y
 AZ8Dq79t4sonMfkxcAHJNk1yUg==
X-Google-Smtp-Source: APXvYqwXaHdBxpngufWJn9Ad2Me+6dkJb3DeeqhmezZE29Zs8eIpl6gaJ/UafZXChQA7a+09VlyOHA==
X-Received: by 2002:adf:f3ca:: with SMTP id g10mr21281688wrp.249.1558363098166; 
 Mon, 20 May 2019 07:38:18 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y4sm12505976wmj.20.2019.05.20.07.38.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:38:17 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 04/10] ARM: dts: meson8-minix-neo-x8: update with SPDX Licence
 identifier
Date: Mon, 20 May 2019 16:38:06 +0200
Message-Id: <20190520143812.2801-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520143812.2801-1-narmstrong@baylibre.com>
References: <20190520143812.2801-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073820_496653_594DE56D 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
 arch/arm/boot/dts/meson8-minix-neo-x8.dts | 39 +----------------------
 1 file changed, 1 insertion(+), 38 deletions(-)

diff --git a/arch/arm/boot/dts/meson8-minix-neo-x8.dts b/arch/arm/boot/dts/meson8-minix-neo-x8.dts
index 8686abd5de7f..2e669455a12d 100644
--- a/arch/arm/boot/dts/meson8-minix-neo-x8.dts
+++ b/arch/arm/boot/dts/meson8-minix-neo-x8.dts
@@ -1,43 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0 OR X11
 /*
  * Copyright 2014 Beniamino Galvani <b.galvani@gmail.com>
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
