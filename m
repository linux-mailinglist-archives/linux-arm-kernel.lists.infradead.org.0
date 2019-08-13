Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 308C28AF56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 08:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u6lsrjB9D+rp/czXDfw+DsgO16BOiJ92imE1rfGa55o=; b=Fomq0FXHO5zhpv
	4hyH3hGsQbS6ASRX/0o2skRppZbUkvnP43YxT8sejmjBSOLFQiTH8kAY2cC60LdU3w2MIWEb1ZAoD
	cPG9cZayIG4KFT3vJQXQ2npqPXTqPeJjomz4FY3xhxPVG/6TErrVI9EFsOkx+IdTTZQRNXPyHr/3h
	jH0Gastrl5UuR2RASUaYiGi3nnXLLlFXWfY0GnSB0NQ7FFizqGzmBIP+06Ex0/+g0K681fPcl06Wd
	itMqNPFvD5TAXdmTaMR8BTqj5YUZZuMwwqWhIxJkCEXs8/ywJSAyFydmTZcCQWhy3jEhC/ZKdTDP6
	wGGTEV2k9lIjtDUOtBFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQ1W-0002IF-Ap; Tue, 13 Aug 2019 06:11:10 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQ0v-00021W-Qy
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 06:10:35 +0000
Received: by mail-wr1-f67.google.com with SMTP id j16so4347259wrr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 23:10:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xQwc5rOjRj0zqrA+kmrUX2ciCtQC7Q6M4jUOyWVoK0g=;
 b=JUPTidw8n8/RH+hs90FthkYPQZmcnA1FgB7jLRjn+YmExacdJ65XZgpD+QJvsmRJnl
 9VKDdj1HFBj8/YrF3I3XsQW1X/Y139eXOV2X90MH/MpiUwUgnu/sm7eH/tpRgQNz69pV
 vjsFjmjB2RsJ50jW1FFD7GrBzItFqnL/TGgdgBFuHXy7MrjLpt3PHdRbKG/8YnxVZyYp
 vUicsgF1Mv/JUMNPS0WyYYRO9/9H1+h1F6NWjkhU9aOD3yRnjhN6goD/whIBa7w6w449
 4DOCnPsHq+TY7eO8OMJzIgRbDYOtN9I3fcRs39lR6Czq29Y3dv7njTCJlaI6GyCp6auo
 iffw==
X-Gm-Message-State: APjAAAVF66pGxtEfI9Ag9eqWSmRftbSS4NCjPrdw+B9zcF1EyUE/MhZe
 fYK/9+VPV6OIMAqRo3kVnws=
X-Google-Smtp-Source: APXvYqxtR1m030aNYymrabBRKfn+m8SOnZrXYimQUbsFw19W+YG+lCLztJnfiz4CnxFa/6iyGa+bVw==
X-Received: by 2002:a5d:69c8:: with SMTP id s8mr15559671wrw.353.1565676630260; 
 Mon, 12 Aug 2019 23:10:30 -0700 (PDT)
Received: from localhost.localdomain (broadband-188-32-48-208.ip.moscow.rt.ru.
 [188.32.48.208])
 by smtp.googlemail.com with ESMTPSA id f197sm1103343wme.22.2019.08.12.23.10.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 23:10:29 -0700 (PDT)
From: Denis Efremov <efremov@linux.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] MAINTAINERS: Update path to physmap-versatile.c
Date: Tue, 13 Aug 2019 09:10:24 +0300
Message-Id: <20190813061024.15428-1-efremov@linux.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190325212438.25657-1-joe@perches.com>
References: <20190325212438.25657-1-joe@perches.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_231033_870856_885DC61D 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yefremov.denis[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Denis Efremov <efremov@linux.com>,
 Boris Brezillon <boris.brezillon@bootlin.com>, joe@perches.com,
 Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update MAINTAINERS record to reflect the filename change
from physmap_of_versatile.c to physmap-versatile.c

Cc: Boris Brezillon <boris.brezillon@bootlin.com>
Cc: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org
Fixes: 6ca15cfa0788 ("mtd: maps: Rename physmap_of_{versatile, gemini} into physmap-{versatile, gemini}")
Signed-off-by: Denis Efremov <efremov@linux.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 590dcebe627f..c9ad38a9414f 100644
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
