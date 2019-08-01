Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 522677D6BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 09:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aycq7OoC5zzlt+lVZwqii4WJv1xCXZed5Fr7uHTSERI=; b=kGJkIXT1jRITW/
	cpts2q+4dAI+Bcl0iYOH57zMNGqCfy7WChRn6MJRVXppAsmbHfsH6xwAWVy5Cd8GsdR4M8nnQzzNW
	ndiDTWQ5ZNiWtt7UIHjdGJesr1vNRK5VqUlzfmwPj7cLLfM4ck06qxGE9TH+DNP55a/iOQ5BsZry1
	MDyihtjWNZZaCYSidZR3pOB00iN28tXxEFfA8OM4ewukRS87svCZqagYac3M8QaZ0Nsam7A8xTkKz
	rueSTL7h583sp8VBtTBwuZ55uRi4IaoDc8BuJ0uIKq5I8MixYy3b87X1kCAxzemVB2PnEdd/KhrNG
	1s6komo4E9/IaueyM5xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5vx-0002k1-La; Thu, 01 Aug 2019 07:55:33 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5vU-000176-2c
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 07:55:08 +0000
Received: by mail-wm1-x341.google.com with SMTP id x15so63566890wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 00:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S/U2vfr6KpQVUGk7LGivXBjTe3cQxbkb3JGHh9Y0Z5g=;
 b=GVM7VG1fhWn1thASAa3dEu1eaGoxMvUZKilOXRoZnyn5VPQTS8oN3mtNLX1TSuHFHu
 TLyEvanhuCJR7IlVKEusnMRkhmu8iA9hYUHH+HPeJgIw4s6CZdSGNQfA7i+CkFfkok86
 RORWtqYMWlgaBN0Zm/3weiXE28vfWRwS8Uf6WvUQ8ytDbv/240yNK1IFBoMArjiUyj2x
 pATmZz2YuFfYgItWgnafvVKgU80AMkIoiKJpb7Nies3ccLwGPEjhaxGrFBh3NaJDlZfD
 eXgQjsMyYZ5ZIlSObmFtLJOu+2REVIEOQl8bkjoiLdrpl7kXhBzlsvXfwrSJ4SkiyHbu
 rC9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S/U2vfr6KpQVUGk7LGivXBjTe3cQxbkb3JGHh9Y0Z5g=;
 b=YdoysS765sBmWqc/0aB7H5H4EgNK+dahc427twRh/aTLW4w5FYHW1wy8TVm12Wady0
 Ps2/MUm1io3QRhBEFHGbaqL+o7zs+P1TyOBrcayXw4Y0I8QngFW5p6e5VStizKFPYlU9
 KpQvioL9xm3Yp1kOp8Acmg1I82dMa3mN3KojnQxk2nOXQLjMs7QhEsdF44GmK43UmYAx
 WiaxDAXxaCW/X2PoMNcoCZxBs4vzg99Bah6RBWBFNskdA0IwvuQtzGJoJ/4hdQsauO8g
 N571vGrT8N9RLGtgC9iizeTkoVZI1z30S69H8+IZtxxEWc3KdbSlkpeOupAKcK5J4Te3
 cJUA==
X-Gm-Message-State: APjAAAVYWkZWddhvT6w5uDTRbFPVwJizc5YseHJfKSiHH4cMgPk5Erxl
 ueCk/8n5S+SV912gtvLQOopUEA==
X-Google-Smtp-Source: APXvYqx63hzIPJbnoKcosXltEPLqar2N+McXWG9ADJG7p3a1qb2nNDFC3hnrT0W0g1JeoKNM6mhzmA==
X-Received: by 2002:a1c:1a87:: with SMTP id
 a129mr112944890wma.21.1564646102195; 
 Thu, 01 Aug 2019 00:55:02 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y12sm64199221wrm.79.2019.08.01.00.55.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 00:55:01 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: p.zabel@pengutronix.de
Subject: [PATCH 3/3] dt-bindings: reset: amlogic,
 meson8b-reset: update with SPDX Licence identifier
Date: Thu,  1 Aug 2019 09:54:54 +0200
Message-Id: <20190801075454.23547-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801075454.23547-1-narmstrong@baylibre.com>
References: <20190801075454.23547-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_005504_120907_3D874672 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 .../dt-bindings/reset/amlogic,meson8b-reset.h | 51 +------------------
 1 file changed, 1 insertion(+), 50 deletions(-)

diff --git a/include/dt-bindings/reset/amlogic,meson8b-reset.h b/include/dt-bindings/reset/amlogic,meson8b-reset.h
index 614aff2c7aff..c614438bcbdb 100644
--- a/include/dt-bindings/reset/amlogic,meson8b-reset.h
+++ b/include/dt-bindings/reset/amlogic,meson8b-reset.h
@@ -1,56 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause */
 /*
- * This file is provided under a dual BSD/GPLv2 license.  When using or
- * redistributing this file, you may do so under either license.
- *
- * GPL LICENSE SUMMARY
- *
  * Copyright (c) 2016 BayLibre, SAS.
  * Author: Neil Armstrong <narmstrong@baylibre.com>
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
- * Copyright (c) 2016 BayLibre, SAS.
- * Author: Neil Armstrong <narmstrong@baylibre.com>
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
 #ifndef _DT_BINDINGS_AMLOGIC_MESON8B_RESET_H
 #define _DT_BINDINGS_AMLOGIC_MESON8B_RESET_H
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
