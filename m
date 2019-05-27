Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7442B6AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xeqXVHqk6zCJL8pIE188UD8PYd0Y1Qpze8V2f+3mm3g=; b=metB9Xrn2y5W69
	tPgaLDGUjvzPqwSAIM7Cs+/gZXUekUZ7xFmVVT1x3qij2dLy1Sf45alIfZAXo7bEzibYrt3xkNvIK
	TnSIQ9jZO7M8u7Q6rokcYcosE1RQw81KqBPGGQfWsqooR/Oalbj6n9EppkZQTjiGNO/WlSXVfx3tV
	DhKhHN0kRseMNwnYAK0QaGqP3qT4KqpR5Xy6eWNAlJorIIHjHwNZibz7kghAvA3EXojVdjGMLvloK
	SIp7+l0VMQ9/rPh7kzN09y89wyeSw+rmbBu5EIt4B+5xsdFdjlj3AjO6bUObBLyPKS8IqPV0I2biv
	4XyFVcYmKg2Lvre3jMgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFsn-00067a-2O; Mon, 27 May 2019 13:41:45 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFqJ-0002Ry-V6
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:39:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id f8so17004956wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6ultmkYjgWhJ/xZHGxkX6N7CA7j/pBGMWJYUycDlyOs=;
 b=ZWCIeJeJ5bbe3QYU5MHYCmvgdOx1CvzmjJ1SIJ+/EfRaQthknG2V3UFeEgwDV42KiD
 ff4floiGIvqL50CVQGqrsv3olYmlrE9/51PBX7UYPNLMjIM3NJ+qWUXUi5LsohTIg6Z+
 yGUKXHKhJw9prtsh8Ke1/bKpxWKdakHKTN+iwno6zEjcmCk/Lrd+Xvme8n/xqqlfNxfp
 ISAAWiimOCHcv1UCmcsfiLCfUMQUZu/vGC14lsyF6Jpgy72LnNb3XrNDIdUbXvkv89S8
 9YbS2dWln5pw869bY5Jeb0YsttYTTBw9ejIyQDiajuEiwQP4lj4nSXvXndViRYBY6PYx
 bXRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6ultmkYjgWhJ/xZHGxkX6N7CA7j/pBGMWJYUycDlyOs=;
 b=V3YmeAlan9m5R5rOE67BCL3pXws1excPXh6TT1fg+G3PmV4Y0WZv4YbcArfVdcY66h
 qZD9jhwy9+aU9baUMk45h4Gxy8Hhx8qpEFjsHIAb644/n/MdmqlQvyfUSVCM0q7oFxNF
 8xRGVrWRAJ1ybuJzIok6dZ3XrsgMddQ8pom1TlN2ISrMoLpIPDm3SKnSl4zcM9zbrXhU
 TQ7hNrpWU9c4xJNWV8QtWEmSSasl9eNe9G81IcWpLX3ktatShfgYjsBwRng12ahoWoef
 XCNlr8WzSvsrLlytbEM1KwoHdVlkDca7w8JDYOOvnraKKKa75nFqte/mxXntO4r+d3sL
 uR9g==
X-Gm-Message-State: APjAAAV1IQj4EVXZkMBF047cSh4f84wwHzSM4o8v/HIb+2WEKXsieiAh
 LHixW6wcS4y3w57/H2cKkUKHTYTxoZp2og==
X-Google-Smtp-Source: APXvYqx24uqW1qXuZFPiiToIbx1locFeLMf7EvNsEfe3TjVzFZkOove/54wDfLTO4gRyDSMZlztdgA==
X-Received: by 2002:adf:e301:: with SMTP id b1mr10932162wrj.304.1558964350293; 
 Mon, 27 May 2019 06:39:10 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a124sm7838335wmh.3.2019.05.27.06.39.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:39:09 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 09/10] ARM: debug: meson.S: update with SPDX Licence
 identifier
Date: Mon, 27 May 2019 15:38:56 +0200
Message-Id: <20190527133857.30108-10-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527133857.30108-1-narmstrong@baylibre.com>
References: <20190527133857.30108-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_063912_174327_97FB619A 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
 arch/arm/include/debug/meson.S | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/include/debug/meson.S b/arch/arm/include/debug/meson.S
index 1bae99bf6f11..df158693a327 100644
--- a/arch/arm/include/debug/meson.S
+++ b/arch/arm/include/debug/meson.S
@@ -1,10 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2014 Carlo Caione
  * Carlo Caione <carlo@caione.org>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #define MESON_AO_UART_WFIFO		0x0
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
