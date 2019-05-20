Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6DF23920
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=obiplaW1lnuF34UaLiwQZoFrEKnCfuAHrW1hdUkUtW0=; b=Bp6qTlC6xDL2Db
	F1jiGjRcTlCruBj7Ef/u7U74t3zkFA+UWPTxxxPw2eXWWUxXKj+Fj2Oj3OXIHdbZf+6DJ9zM+OYAy
	fACk+AbDnLzwQ31HIZz3k7tZlp1KzDqKR9xhdr6vu/Zn5gqKh9YKFboq+OMzB0XPpH2YvRf9k3a2L
	OBfxyk8FYbf+GlVURqyPWkPjv+XT3KQlcWAuVE8pJrHtkeEYVzLlSC9l/N5mOOUWviVPK01BzUTfA
	hDwUWEmpDL1/8fl4oN23azqTXh3ZCCTyMcO15wLIzRKv7zU3b59Ltwn0U5DKKupPiEK4bLJWHDsQb
	diW+O7Je+0423NjWy3kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSirL-0001mp-Nb; Mon, 20 May 2019 14:01:47 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSirC-0001jT-KN
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:01:40 +0000
Received: by mail-wr1-x444.google.com with SMTP id g12so14468047wro.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Z4tnU+N/DU1N5SPy41/fi/miGaLy6d3wjz6icgaZVuI=;
 b=0WoDOm7eSUPpLoIkMOSusIKkzLWDQndtkVtMrGv8KeIPGtwW9IqpBlwAf//CG+IO9b
 q7aVWcfLGjukA/a5dBEMZ0iwfWK22jsX7ha+nyfdiYkjP4D2eMGlGeoIGa3bQ84wsKS8
 TMAnpVntCcP2PVlcvED5ml1PjmoIkaRBsiXxHt05BNDwFma0SSCOafqRpg9eXjLBlEll
 N1J0oUsHG58CHkYHl922OZ9xuT6FSEyUr/2/6pa8v6s2R7m4xoijYYVdnJ50lx1Jetwo
 DRW724JkkmwuowaoF6lh8n70DvlR4bqUPhpAETLXkg6GfrTq9Gr7o61SKJT3nq1cM9iE
 RjDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Z4tnU+N/DU1N5SPy41/fi/miGaLy6d3wjz6icgaZVuI=;
 b=Rs5g9zUjWcyBkS/fEQTcb+15YPsgy0ZvZVVGjqSSqFfkeHVWRP4oHE8G2Mup0eDM6j
 3EuvsXrrShbMcFzCGRbMrgbG6IMhU5oBxuoihBJPEyVaTAesIxyrxZTfRKgbw5RGHiCj
 XIFUtpCjNwuZvFGAMQ17yE2BhlDDlI+hrPRKL72tdF72bpk03loEql0gkrDxNHSkv/qg
 4wYOuX+tM6swTiv88T0VAnRExyLleFP44QJ5ZQuIB6ogq78NcpQFaOg5CPAylmF2+7HS
 m6o5hxTHMPpsfgtSJFH7G9jYTLAsMut331XFnHhV0RgOmk+5B1BFkGtRlfhYMqcywppf
 sCUQ==
X-Gm-Message-State: APjAAAXyi6umhfV63BxNUNqyn67epJnJiJLZD3AFizQB00XoThUJptv3
 NTNQ+tU+wf1A+QFHgK8cXJZsLA==
X-Google-Smtp-Source: APXvYqwEEdJHWNWT9tmdPHAERp5H+E+95z5naZ9rAlFKjxLflOoHQqlwBCMhp9NAPjMi8a5idFRzog==
X-Received: by 2002:a5d:448e:: with SMTP id j14mr26575282wrq.158.1558360897097; 
 Mon, 20 May 2019 07:01:37 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id f10sm24622307wrg.24.2019.05.20.07.01.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:01:36 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: linux-i2c@vger.kernel.org
Subject: [PATCH] i2c: i2c-meson: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:01:33 +0200
Message-Id: <20190520140133.29230-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_070138_737463_CB0702DC 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 drivers/i2c/busses/i2c-meson.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-meson.c b/drivers/i2c/busses/i2c-meson.c
index 90f5d0407d73..f530d9a0450b 100644
--- a/drivers/i2c/busses/i2c-meson.c
+++ b/drivers/i2c/busses/i2c-meson.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * I2C bus driver for Amlogic Meson SoCs
  *
  * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #include <linux/clk.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
