Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5AF23AA0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5PmQ2JOsY312AT6jQtqKHYVoK4HyAdMIuJ1mfz/sHY=; b=t/LBqQ/6FDfwaw
	QRoyX6zrWcX92C1sz7+ktnHYF6ufHk8emVRU/37dyjWabqQSf5my36qzzzBTMhdC9YvKqiAvrZWHo
	nnzLN/ScTOh/M1CpNLjiS5SYwavKdOh/R9zkOt+blT2mnIqhQvmm+oo39sXlbCXCTx/NQbAApGQVu
	OhJKfkeRpd2YEgE2/9tpFVzKNVqcjpn7s8UGxq9UJXYpLYARATFYYaC78nHmjXTqq4H4UsMAGj2Ns
	TOn/SnDFsRj98GDV6JvA5ASqo9Wpz6IfpIxPsYbcbeGzST9rUuPzdXvG2YmDTIVAxaJyWEStbek4M
	mypBS3sKOxJbSG5LvG5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjUg-0003ti-B8; Mon, 20 May 2019 14:42:26 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjTh-0002po-1p
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:41:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id e15so14927099wrs.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/eIOsCuxZwktl3xw8ay3mSx96v8QQ77Uvy6NZl0E648=;
 b=0uHHRnJUYdVoRrTFCqfzIRBv9Av29o4nV8C1TIS9S2aUgCicSRTzNLNnFQnKRyYvAT
 QRSxLM2pahL9yUiWDWZD1soaAnw50vTNmx2iuYfW4OAOFqhaltwHQQwu+hmwD88/tTWm
 7ISI3n+CapSqNCCeRzTtEl7EGbIVfJDcGGvJbWqciTEUQBaw7iYPj3NEKaGILqutpwaJ
 6+oeEkQw5Tc8FBI1CwD2UGZWEOeyLWNFsPiQMFF6EWyYGnXYBCebV4hTKriArm1d6icc
 U8ZC5B9HOFWd6ryyKpSXF9qN6SjUmtErJpkzHz2A3sVH92U3w7OmJKDiCWCKCLJuTVCE
 Ikug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/eIOsCuxZwktl3xw8ay3mSx96v8QQ77Uvy6NZl0E648=;
 b=RRblq2N09cA/NFQNGKlKp6006yaUei+nN1y3kiDJlFlikw3UWNwAtWBV8wJc5YsjLJ
 O6k2QwPhBNl9vg0xviMUdHgHTlaPWPuz9SYwgdOoPqz0DKRfwMVJm2LIoGJGqLal3vyX
 I8djbxRzoPMsjIFnDp/z/gLM4scB8A015cR93nFSIKQlSogpjcHs0mwlXn596cz1uNwC
 VEqFm5oDDJKVq2YrtIAwbGv6elgZGx6KXJxjcEdZPbW6GmCdF88TOzypuzrPN3iNqaGO
 yuqmIjZHNUVPvLEwHSASIz774ADet/M8K/VidkJsAogw0q6BM7WvbQAYo2QQAZZSXXeE
 ILZw==
X-Gm-Message-State: APjAAAWUxHHcnajXdwVxnhxXnzC3jGCIeqZHMePDCfjlU10AWaUy8pvV
 9JXxAGXmnMuIvgkPGIXRpWKltA==
X-Google-Smtp-Source: APXvYqwgtePZNKu08GKGClVL1s98oqOvHASlh3T+I+k6sUKnVg2QOZSHDtEWj4Cg2DLN7JSb8cfegQ==
X-Received: by 2002:adf:ce8e:: with SMTP id r14mr33715538wrn.289.1558363283611; 
 Mon, 20 May 2019 07:41:23 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id w3sm6743679wrv.25.2019.05.20.07.41.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:41:22 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: linus.walleij@linaro.org
Subject: [PATCH 4/5] dt-bindings: gpio: meson8-gpio: update with SPDX Licence
 identifier
Date: Mon, 20 May 2019 16:41:07 +0200
Message-Id: <20190520144108.3787-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520144108.3787-1-narmstrong@baylibre.com>
References: <20190520144108.3787-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_074125_137835_C69B8847 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: linux-gpio@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 include/dt-bindings/gpio/meson8-gpio.h | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/include/dt-bindings/gpio/meson8-gpio.h b/include/dt-bindings/gpio/meson8-gpio.h
index fdaeb5cbf5e1..e1387a8520e5 100644
--- a/include/dt-bindings/gpio/meson8-gpio.h
+++ b/include/dt-bindings/gpio/meson8-gpio.h
@@ -1,14 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * GPIO definitions for Amlogic Meson8 SoCs
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
 
 #ifndef _DT_BINDINGS_MESON8_GPIO_H
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
