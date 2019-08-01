Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFEE7D6B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 09:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nk+DNsUdM9UYO9K8JzftUsxlMZkl6I0CnmRHlXzSpTw=; b=ovqjSji/Ox09pe
	DLZFm4G3hSuueJVZhMppWjJM4BY4PdmpDweV492Tcg4IwhKADHJoZenhMmNmvJmiqZ9GD7mT1E349
	vulBxraEQvzNQzW6Ws7BvvKlQTT6oTZit+lAicbfQOPv8h3oKhXowxVT5DXlbbFExGZsYsL+Bz8fw
	Xm/AEyEOIta0SaNPTZDcta+KgKxuoksglqELqzvfSk7y+A+Nnsqo5kZlirTJQKHbJ7oBY2/5OUeT3
	3VIaXPsPZNrlPmKgZKJfm5o1wqcbkuVhKTzcRwLrrT5tpIWaN1HAYa2F3zgM+UF5ZWjkx7Yl69t7+
	TONNsy7dT0GkOW8PJEQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5vm-0002N1-2c; Thu, 01 Aug 2019 07:55:22 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5vS-0000xF-BH
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 07:55:06 +0000
Received: by mail-wm1-x342.google.com with SMTP id g67so58138737wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 00:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VDh+yTCqb2E9NnVNrkncEUqcUL07YA1bsORJMbcQ8lw=;
 b=IzvL6Fh8RsohbqMby4W0y9O0NYlulPkbH7/6/KE7ev/epMQUxqEMGoBNO7hasjRB01
 /HKKAZluufYjxDeMWVHHn/PBOC16QdfF8bFsHPAH/y0seF5aLbTFn3qY0xodZ77nucSY
 xYMW3sPy+9Q9CM6qMRRSINJH5EbEDk5vXnNhNZLhPlQpUwj+N7ffv9fojxS7O7dsAM1Q
 wmk7yQI6F4l8KrAM7trg2kTFx7sn9OQD/diXUgZ9QzkMHRXcqBM5bSemJqoYhaxQhj/7
 E9wFCTeeCCjgGVkitxS5ZV+i0H0VTV0ObPeyma9le55NMAyecpfvqWXsQP3FV+hdWzCM
 UtSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VDh+yTCqb2E9NnVNrkncEUqcUL07YA1bsORJMbcQ8lw=;
 b=CruLk6AAXonVgAT0elC+4E9wEX53si2lgyxM7b9Rk0QpL7ypUyZJM1Vyh6xqlGvu+/
 kJ+7Rc2z+1IqXguMqIbGcVbixVQLDGwOGEGBjPHP8vwg8dsDpXu749FQzJp702a5RJY8
 Z37hm/KyWbaIJO+2zFBjs4Epqv1uE8wDO/UVE/Sb9bKFC7Lsz+r4dMgCAYEWt2fxfICk
 cHP6wSgHjJFvUd4c83nnkYzgJhSkjd/fHcM2fLdhgCc2jrxrd5m0Z/jz4xsWFYruHIko
 0E0j+SSkkzGyQPQauYbcfRKO9GkMLbmEdGlGm9FB/r2Gupv+RzlIhBO8/2bSu7xIWVem
 ia2g==
X-Gm-Message-State: APjAAAXJPjas5iuMo2yAb84HGaFByBfnVhX6tl7ng9gYEjzTlxUEXVZP
 GZof+oHqdOLVMOAtLMNREYlcSA==
X-Google-Smtp-Source: APXvYqzGk38l6yq4GXNCBAzayn9dzPlX9QGyiHIVNo8jdmjDHvCA/27f71y7td8ETAlQCK68vOhRjA==
X-Received: by 2002:a7b:ce01:: with SMTP id m1mr34128533wmc.1.1564646100811;
 Thu, 01 Aug 2019 00:55:00 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y12sm64199221wrm.79.2019.08.01.00.55.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 00:55:00 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: p.zabel@pengutronix.de
Subject: [PATCH 1/3] reset: reset-meson: update with SPDX Licence identifier
Date: Thu,  1 Aug 2019 09:54:52 +0200
Message-Id: <20190801075454.23547-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801075454.23547-1-narmstrong@baylibre.com>
References: <20190801075454.23547-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_005502_398627_5CCC8F97 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/reset/reset-meson.c | 51 +------------------------------------
 1 file changed, 1 insertion(+), 50 deletions(-)

diff --git a/drivers/reset/reset-meson.c b/drivers/reset/reset-meson.c
index 5242e0679df7..7d05d766e1ea 100644
--- a/drivers/reset/reset-meson.c
+++ b/drivers/reset/reset-meson.c
@@ -1,58 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
 /*
  * Amlogic Meson Reset Controller driver
  *
- * This file is provided under a dual BSD/GPLv2 license.  When using or
- * redistributing this file, you may do so under either license.
- *
- * GPL LICENSE SUMMARY
- *
- * Copyright (c) 2016 BayLibre, SAS.
- * Author: Neil Armstrong <narmstrong@baylibre.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of version 2 of the GNU General Public License as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
- * The full GNU General Public License is included in this distribution
- * in the file called COPYING.
- *
- * BSD LICENSE
- *
  * Copyright (c) 2016 BayLibre, SAS.
  * Author: Neil Armstrong <narmstrong@baylibre.com>
- *
- * Redistribution and use in source and binary forms, with or without
- * modification, are permitted provided that the following conditions
- * are met:
- *
- *   * Redistributions of source code must retain the above copyright
- *     notice, this list of conditions and the following disclaimer.
- *   * Redistributions in binary form must reproduce the above copyright
- *     notice, this list of conditions and the following disclaimer in
- *     the documentation and/or other materials provided with the
- *     distribution.
- *   * Neither the name of Intel Corporation nor the names of its
- *     contributors may be used to endorse or promote products derived
- *     from this software without specific prior written permission.
- *
- * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
- * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
- * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
- * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
- * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
- * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
- * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
- * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
- * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
- * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 #include <linux/err.h>
 #include <linux/init.h>
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
