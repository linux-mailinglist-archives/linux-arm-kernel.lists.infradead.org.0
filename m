Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6732395A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:05:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lTysExLgXKDGrNJeGDMoNkhY8+8RoryiYhW81lGVkr8=; b=foHhbxlKFGlrIO
	pQmk7n2r5Vnf8iZ3SxUok3rva7FGI/h5FywG1OakpzH0RUWkIrQ6RRAbN0BVtaIRODQuHPksW2sy+
	cNMWaHIH1xz4yfB4XqIBfnJZmKEAx5r/ND8o4qr/blwWiqFHai15Jd3RjksXPaw7/b1W86p0NXqF4
	0tj6xaks0IZqzzJpzttRCL9OT7MbqDhEmMWa7gnviAFERFWQcE9Mk9YA8wxrWfi70lBBX0ic0glyY
	XUWye+kgRMUbF+4K6yFd3xG1pNnLrNAH+XAKWeQHW/q8lJiLtPIM3z4G1BToOWWkR3rkMcShTLU2A
	jQmj583TRE72dc4F+YzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSiub-0003M9-1h; Mon, 20 May 2019 14:05:09 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSiuO-0003LS-J2
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:04:58 +0000
Received: by mail-wm1-x344.google.com with SMTP id f204so13479189wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=txk5DrZL33dHOyu6S/hwbHrXibD4nPtpq1m/2A+Wxoo=;
 b=t73dgU0Gc247WTF7B1Vk9vORzWG22PieCyt/1IhbX0ojd/0VrZw4VEQEr7Rfcjh6/l
 ZD0G2DsREEckY4mBG0ythw/g61R1AK4iLUKci+a0R2JU8eaaEf4bGNyDtqYbtfmrRnop
 pBbxVtrzMZeoIHuBPDOqAu4qp0dBncZztbNkwLQnxhu3S59r4/V7nehwMmMJJ/JNgd1K
 8UfjICYJRWEr+I0zKj2VuNujr9ioMZSMSqudF5Of41Wp/Cd42cdFDib4qAoCc2xZbbSy
 6psPlnUKIMz0Pimomwu/DK/tMqUHFvQUKy8xKGwl3sEaSl/bKoldGbQPJ4xAwM0RCW9j
 KSwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=txk5DrZL33dHOyu6S/hwbHrXibD4nPtpq1m/2A+Wxoo=;
 b=ijNIpCZqF1Mhq5wxA8r7rg8XRpF4b8hU7haIXIPb4dPqMsEU1harCEBw3hfQAk8Fck
 SGnyN1DoeSmTgk+cZkkkg2exV5b3wR8cogvYLL6E3/s1b+BzQr8+Dv2b+vQpsm1bo3aD
 bHy7evTlh9ai7UimP12m69LUG+mUrRMT2kP2er+RZcqzP2PMObzLczFJT2Z0iqqxpkjI
 yI4AX88E6yPFsT8ew5M/Fk6WXufg7tRC0/WIw3SwWWqhoTYG9ABgJ21wpEPGgp2jMEV1
 l7iJzY+6zQoMaEQEBKH+vOkfL4WxUcnxHfFaujkr+uJpFaGU/zUzC83KbLFMp5+fIR9T
 Impg==
X-Gm-Message-State: APjAAAXLIhD3EfWNF8byfCKqLy2Rz+Sy5bxVL0L6n4dAGlQpAp2bS34t
 nSVciK6k+DOdYds47rAWaIjw2Q==
X-Google-Smtp-Source: APXvYqwT6uVZjGxR/n5pqIYoJJgpdt5n9FK1oWxNGhWKEAx/4tWR4B+kGZw3mByDDBsWKa9cNp/B1g==
X-Received: by 2002:a7b:c844:: with SMTP id c4mr12089515wml.108.1558361095088; 
 Mon, 20 May 2019 07:04:55 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id w18sm13731201wru.15.2019.05.20.07.04.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:04:54 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: broonie@kernel.org
Subject: [PATCH] spi: spi-meson-spifc: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:04:52 +0200
Message-Id: <20190520140452.30167-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_070456_622490_EA8D7A1A 
X-CRM114-Status: GOOD (  11.32  )
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/spi/spi-meson-spifc.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/spi/spi-meson-spifc.c b/drivers/spi/spi-meson-spifc.c
index 616566e793c6..20413def4cfb 100644
--- a/drivers/spi/spi-meson-spifc.c
+++ b/drivers/spi/spi-meson-spifc.c
@@ -1,14 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Driver for Amlogic Meson SPI flash controller (SPIFC)
  *
  * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * version 2 as published by the Free Software Foundation.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <linux/clk.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
