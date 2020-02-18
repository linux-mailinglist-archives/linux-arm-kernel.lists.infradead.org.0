Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 823AF16303B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:35:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3jd7kE/D3Fudp5Rc1SkRvaoGzIW8j2t4DzWRxsp2F7Y=; b=m6L0IG7pte5qerMbpoaz5T9De2
	x2LtfzaGvbo2A+cPjrxt516s8BKx8MasNyP/zlnwaBgf3vVMz1VnAuG8aM/+bMqOq6cDDD7p9wzM9
	8UaLoVXb/WJgN6PnBS4pXGxMoIE9Ae7oxehZ6GGXDuTZMoOjWMEK6pKe9vEGEt7sxlaUcXCqrgITW
	kYhIHcvJUupKB0dKTOXobfmezxWQ4OjUbq2ps18rTlDIbBM/6gO/R26jbZpP8+6iyS/mDCVFJNVf0
	k1cnefjE82Qle86VqfNyvnVjuJ+dX2Rqbmw5XNyEj6yeJdNhAbP0BQ1WdMcKCME3/9I/5h/j710gj
	54dkpMDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48e3-0000cW-J1; Tue, 18 Feb 2020 19:34:59 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cT-0007nf-3F
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id u6so25467740wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MHonpuv7CKuPglJHIaWmpMCNHqnlw8BincncIn85484=;
 b=xPlX00MbtZPFdDI8x/pR7q0l1TZpqo2MP/MlI6syrVxWnNMq3POocxJWNitt2FlfxK
 ca40BfKAOFXHzRriPeTtPNg+bNr5ei/h3F2xMcHQwCEDcOb5WPV5mCq8naeI6ImybtU/
 bnVwuMQjNelohtlU4ihbZGDKOX6knBA76tIlFkcrBCXLkHOlGCLftfdvMEAZQ/Ba4aSD
 EqRICW1GkyQoFz0XWgtwU0MVv/use0zPoxumU8KbBonqUWBy7wfeVjZcjs+RqGiKuUVt
 p5gck6BIpA9G/WG4ZGueIPji09RD6jn5tBIZWSMjJsWk311ldnufMQtfArBWaKdpSykE
 pwQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MHonpuv7CKuPglJHIaWmpMCNHqnlw8BincncIn85484=;
 b=pxu1Z0rQ6JNXZs4r/S5sgVBu5XyYV2kWQNybApEfu1GbOFRZk4uxLwXGi4HY4VEZp4
 HTvaB71s7vWjw+D40n+HIJ2MuiT9I2q2OXMldL4NmBHAYpMo0dw2rPnqii+EG8U1VLyu
 g2g9MKmh5cki83HNPZDVfPDeJAe9775NWGVsA+IqXoeDQKu98LJPyapqlnbUHQsbdeyj
 IM+k23P6iJKjV5xZIpE6sx6PoNarYXdVqZJ+doWYNyC0a1FZWYWFXkQLkK1dys/M4wpy
 Zenp2nlIeqjsAmze3gyZqQkWR+1xcoWutRSqoKc+1fFCwKXGQz5bTvDeTHvnyaFPAQMJ
 csEg==
X-Gm-Message-State: APjAAAXauFvV5y+O9c/FPwn5auK7he7hYR+uAPKAYTxuLeTsCgQYPMI6
 aq3cG9HX6+2maPu00FLxdVfhpA==
X-Google-Smtp-Source: APXvYqwDYnjVJED0t0uAAknTEyT+FlngUXNJYoICixbTq4qdRKzsb0cy22FB6lKxXU3H3aF+0ybUNw==
X-Received: by 2002:adf:fa87:: with SMTP id h7mr32215756wrr.172.1582054399956; 
 Tue, 18 Feb 2020 11:33:19 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:19 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 05/20] usb: gadget: dummy_hcd: remove useless cast for
 driver.name
Date: Tue, 18 Feb 2020 19:32:48 +0000
Message-Id: <1582054383-35760-6-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113321_146060_19F62C30 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

device_driver name is const char pointer, so it not useful to cast
driver_name (which is already const char).

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/usb/gadget/udc/dummy_hcd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/udc/dummy_hcd.c b/drivers/usb/gadget/udc/dummy_hcd.c
index 4c9d1e49d5ed..6e3e3ebf715f 100644
--- a/drivers/usb/gadget/udc/dummy_hcd.c
+++ b/drivers/usb/gadget/udc/dummy_hcd.c
@@ -1134,7 +1134,7 @@ static struct platform_driver dummy_udc_driver = {
 	.suspend	= dummy_udc_suspend,
 	.resume		= dummy_udc_resume,
 	.driver		= {
-		.name	= (char *) gadget_name,
+		.name	= gadget_name,
 	},
 };
 
@@ -2720,7 +2720,7 @@ static struct platform_driver dummy_hcd_driver = {
 	.suspend	= dummy_hcd_suspend,
 	.resume		= dummy_hcd_resume,
 	.driver		= {
-		.name	= (char *) driver_name,
+		.name	= driver_name,
 	},
 };
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
