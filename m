Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD028AF57
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 08:11:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WAuDgdv3fH3Wle3SLjweyfFhuh1io5vB+fQeiHrg1AE=; b=EaKwVjoLRNPipI
	MB4rwLTDff617xdKHNToztChtnMSsjA0PfguOsN2SbHSK+7eSwQK/WU6oaV3WykxE2gqeAghIDJ6D
	wYd0iutxb42f/WSeiCiLsru0fZkBOklnP0nIxtJupk+iVWHaFf7EnWsu9S6ydz0UxoFWtlUF3xKb+
	JfBvdLOjrPTo68qvQpsWEUKsUxfQuOLEkinZMslWpbjjcuIf7LA7alwGYJAVfvrik2rvpEBhSv9cV
	HJp7hNGPWMW9mexW4f5vs2f9pqZ1fF4V0UDRwfDuofMUhVYuc4kfIASFU/lWjRkPQtWsBSLw2Ide9
	W7hF2ipLINOmoO3ne5vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQ1o-0002Yd-OO; Tue, 13 Aug 2019 06:11:28 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQ1I-0002Jy-R0
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 06:11:01 +0000
Received: by mail-wm1-f66.google.com with SMTP id i63so357341wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 23:10:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uk9LUIzsgSRkXcDo9ThPQ+SJ/EmYFrkkLULf/OVB6Gk=;
 b=S5c3VMGZohlO2HDnX/LTUJ1Pgwc/v08ApxvBbaeSC6RFoqiIHvTYOjXeqrr4xO9K5a
 ZJwp1u3L6zz9b+Hjma86LQmMKJRv2GjTFtwjfI+Q7HpidROISqmOw4HoK2UqoElZA2sJ
 vkSimmru6VKOmx638zO7KPCqneetGgaLC5z+lHGiIKPr1fAtVIh0pSgwE8GCFVevuZI0
 ZFjbpfvEZjFW/woky8ga9zRBa1h3nfqwmnmAob9r3/+bh6bHS8oNdUtEhQi052oCPrQ7
 O/VBlV41ehrbMe8498z67VbaMMHFx7fvmJ3vzzrrfBemXqs+AcKuHAAdF7QaOUvytMLP
 qwCw==
X-Gm-Message-State: APjAAAWvXz4aC/giyefLVvxnLN2XnPy5CAVhJrpz1CGhvopY2CXRjalR
 mCM+cVJNT6b8wdSTfbE4J8Y=
X-Google-Smtp-Source: APXvYqy1Xna/xTbSCLLFyNaxLEe6jSucJlbYjjCOD1yeSbN/MB02EzrZ+wJzyuGXTzE0/hKH9yrctg==
X-Received: by 2002:a7b:c929:: with SMTP id h9mr1120163wml.1.1565676653666;
 Mon, 12 Aug 2019 23:10:53 -0700 (PDT)
Received: from localhost.localdomain (broadband-188-32-48-208.ip.moscow.rt.ru.
 [188.32.48.208])
 by smtp.googlemail.com with ESMTPSA id g26sm431358wmh.32.2019.08.12.23.10.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 23:10:53 -0700 (PDT)
From: Denis Efremov <efremov@linux.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] MAINTAINERS: Update path to tcb_clksrc.c
Date: Tue, 13 Aug 2019 09:10:46 +0300
Message-Id: <20190813061046.15712-1-efremov@linux.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <7cd8d12f59bcacd18a78f599b46dac555f7f16c0.camel@perches.com>
References: <7cd8d12f59bcacd18a78f599b46dac555f7f16c0.camel@perches.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_231056_979619_ED15CE68 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yefremov.denis[at]gmail.com)
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
Cc: joe@perches.com, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Denis Efremov <efremov@linux.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update MAINTAINERS record to reflect the filename change
from tcb_clksrc.c to timer-atmel-tcb.c

Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-arm-kernel@lists.infradead.org
Fixes: a7aae768166e ("clocksource/drivers/tcb_clksrc: Rename the file for consistency")
Signed-off-by: Denis Efremov <efremov@linux.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index c9ad38a9414f..3ec8154e4630 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10637,7 +10637,7 @@ M:	Nicolas Ferre <nicolas.ferre@microchip.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Supported
 F:	drivers/misc/atmel_tclib.c
-F:	drivers/clocksource/tcb_clksrc.c
+F:	drivers/clocksource/timer-atmel-tcb.c
 
 MICROCHIP USBA UDC DRIVER
 M:	Cristian Birsan <cristian.birsan@microchip.com>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
