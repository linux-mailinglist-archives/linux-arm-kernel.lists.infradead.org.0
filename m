Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D90E163043
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:36:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LbwSH8sh30ag4I4XQFqwsuWpy53MBQw6ONtXaGGjbN4=; b=hJ9MUMhY8reTsNY2Sfup4xkQnH
	hwgeVA1FSpLjcB+/p4yXZ/fVA/MTdRk4BQvYhq9Gxfo16mgAJdoFc0zETRE0gBUQ0cUnVhiToOOBl
	7BvhlEhBAw7oTbT4tWnFfmOVncn2nOByvQ5kKl69BW3HH8uYue6Nl2YVzVjb2VBbYq4o9s/o2wucm
	Gos2iZOFFJbkbBeMYOtde8oDj2twzwOxQwxIBUX0yFDNNfUicHi55RThp7GUjf9perAVvIoMg10iB
	dRh9dO+46KCKJ3lzYvi2Nf9pd4hFZhsG3pCYDF9AYom1mR3EsjrhQAhn75Dj86yPTA3FnM2I4rY2r
	keuRxdvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48fj-0003Xo-KY; Tue, 18 Feb 2020 19:36:43 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cZ-0007tU-Gq
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:29 +0000
Received: by mail-wr1-x442.google.com with SMTP id z7so25362056wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=K6WHmT1Q8HUElfvFbGW9Dh3Pw5PPNoHiq3K4083/U04=;
 b=106kcsSZ4LU/10R3o2p3osg/GDCO9WirwxTaO3LgTuMSCiG6apeUuthE3ZI9gItity
 u3rzE4mWwKv5n+cW9tmSB7Ljv+JXMY7bKTrWbRycZSmP5ElaRG6v8N9oPitXuBHcCySp
 +NtWaIFwwI2D2ajZEPiV1vAf4U9PlAdEVAVPs7xXnu1LVK7OhvEbrD8Hahoczg9oGCsH
 EebqJfPXqOrchabWBFKUzzw7WwpKStIUtPc63sCOdzDmYqOrv0HhZFxD6vaG5KMAsD4u
 UQwtvBDEDgMYHK7UQ1hV+wnAB8qJkk6PjAyK4MEvTJz5X5AXC+emiuSSYN+EsbVu6yWS
 hXLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=K6WHmT1Q8HUElfvFbGW9Dh3Pw5PPNoHiq3K4083/U04=;
 b=MoAvoEArY3AhFMsK7ff6CKyc4GwV8tQ7n6MnErxBZKlO9Nns6aDNjbwD4F10+fRUgG
 qlw5grgpTte7HDMM3udGiJ7wLMqWXc4GTM/CxxB8NaBEWTyxZirTkLp5EUEHe2MCEpbN
 tXXQPiRUq4kHPROiVNnMR2wMLSC8N+KfhEj+FTGO5+tnVnKP7lkYCd8dDjEYRNe6stQx
 7/9AUM3nGjoJCb89/os/D+FXVHTLJfzUI78nNfx8ejv3I4KVxzQ4DRIshrFTJkqgPuUf
 u14uNz6LJ5v/GBTsYWfaXWgRKpV8HakuKK0QGOqTe16NiE20lHAUY6J4Q7UNyfKL4LTP
 KnXA==
X-Gm-Message-State: APjAAAVYk27EhaIkAefoilEfbVQx/0BNycQ199WjC+gTm2VCTj9PEPLC
 WQd5a3r6mI44nQC3+IPn4SQpEw==
X-Google-Smtp-Source: APXvYqzvoP4MSFReUflySE73Nx02NzCW0jknJD3OEVLpu7rFICnkripQt1AiTb5uiiwG9a8GPfXtEA==
X-Received: by 2002:a5d:55c1:: with SMTP id i1mr32971190wrw.347.1582054406291; 
 Tue, 18 Feb 2020 11:33:26 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:25 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 12/20] usb: gadget: omap_udc: remove useless cast for
 driver.name
Date: Tue, 18 Feb 2020 19:32:55 +0000
Message-Id: <1582054383-35760-13-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113327_590926_59D0D441 
X-CRM114-Status: GOOD (  13.05  )
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
 drivers/usb/gadget/udc/omap_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/omap_udc.c b/drivers/usb/gadget/udc/omap_udc.c
index bd12417996db..bf87c6c0d7f6 100644
--- a/drivers/usb/gadget/udc/omap_udc.c
+++ b/drivers/usb/gadget/udc/omap_udc.c
@@ -3001,7 +3001,7 @@ static struct platform_driver udc_driver = {
 	.suspend	= omap_udc_suspend,
 	.resume		= omap_udc_resume,
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
