Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BEC8AFF7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 08:33:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yF1gAp/Nj0TP87/GAfDRV4ORBPRKajmXNik3jBw7gUA=; b=NgxwNamGQ8Zdeo
	Sd9X9/nn8N5axDX7lhOmXszAix3iGtwIdYbA/VKa9IL0UqjdP4vzrxq7LaO+2/tBLEKn51YCq+nM5
	kdqyCMX5bXL3S/pj4x1KrG9ENLXiF/TwrA+1bUdd2623Xr0huSgJd4wL66tgu96PdFg9npAP247NL
	Bs7n0QEz2x0J166VPxCvDw52bZ3EsT0uOf2hCOQwMQgbYwO1Ho4rH/2Mt2jf3MKrivCx8pb1+Kymh
	aHGtoyc3kRth3xubEU6iaH2pTomrdoezASxhiAvPzI0YdjSre2NjB00RemTh4LR5GvL8MRD7C34f8
	kKl95TsyxY+uv0ZIv3qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQN5-0001t4-Ki; Tue, 13 Aug 2019 06:33:27 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQMq-0001sU-8h
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 06:33:13 +0000
Received: by mail-wm1-f67.google.com with SMTP id m125so401070wmm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 23:33:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sz3hBlZrKToKuC257EuHXyI7IFd+9vCG5NtLH+UK5dE=;
 b=W2sjXcgPTdsqNyVV7EYTgKuOCO9lzwOvBxDomzzWT9xJO4SAWtkwDCrC6nceERcCZl
 qFrgFSSIkw/HMUPpQ97ZeYIqFFTrpA6pfVhI5iEEKdZGXMysAiwTsJHwJ8/cSXV+gAOl
 beA48vHuIHl7WhPUlzUpU9mRxq85vSz6/XT3ODsom0JqaDBgyoS3AFP/+TZYExR55Rfc
 V9jUkK17m98xWIuEsvj+9AkvOY1pk3W48ZACxobIfngp3B10dPolfGS05WfSfUdleHGt
 O0Rkm8HGe8TlT0R1maxC/FXrJM4XyLUMw4vUGZ1l4jK0I35GNT317nrROXXaZT0CnKQm
 z3pA==
X-Gm-Message-State: APjAAAX7z1RN3y0KKeECsOMzF/+TBjVHTBJ6K5/qS1z7Wv8HVO8SOZKE
 bnhHzwvXWz30y0W5QuPnIr8=
X-Google-Smtp-Source: APXvYqxMgeV+8orhH6cQ52RcH1PBjaI1BCrIQSLyKerSVwcKSkQ3fLMDFSOHumSk0HLOz0nQgV+MIA==
X-Received: by 2002:a1c:9e4b:: with SMTP id h72mr1097686wme.99.1565677990805; 
 Mon, 12 Aug 2019 23:33:10 -0700 (PDT)
Received: from localhost.localdomain (broadband-188-32-48-208.ip.moscow.rt.ru.
 [188.32.48.208])
 by smtp.googlemail.com with ESMTPSA id v124sm488763wmf.23.2019.08.12.23.33.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 23:33:10 -0700 (PDT)
From: Denis Efremov <efremov@linux.com>
To: linux-kernel@vger.kernel.org
Subject: [RESEND PATCH] MAINTAINERS: Update path to physmap-versatile.c
Date: Tue, 13 Aug 2019 09:32:51 +0300
Message-Id: <20190813063251.21842-1-efremov@linux.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190813061024.15428-1-efremov@linux.com>
References: <20190813061024.15428-1-efremov@linux.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_233312_302009_3346B922 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yefremov.denis[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Denis Efremov <efremov@linux.com>,
 joe@perches.com, Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update MAINTAINERS record to reflect the filename change
from physmap_of_versatile.c to physmap-versatile.c

Cc: Boris Brezillon <bbrezillon@kernel.org>
Cc: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org
Fixes: 6ca15cfa0788 ("mtd: maps: Rename physmap_of_{versatile, gemini} into physmap-{versatile, gemini}")
Signed-off-by: Denis Efremov <efremov@linux.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index d42b478f2673..eeeb4097d5bd 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1221,7 +1221,7 @@ F:	arch/arm/boot/dts/versatile*
 F:	drivers/clk/versatile/
 F:	drivers/i2c/busses/i2c-versatile.c
 F:	drivers/irqchip/irq-versatile-fpga.c
-F:	drivers/mtd/maps/physmap_of_versatile.c
+F:	drivers/mtd/maps/physmap-versatile.c
 F:	drivers/power/reset/arm-versatile-reboot.c
 F:	drivers/soc/versatile/
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
