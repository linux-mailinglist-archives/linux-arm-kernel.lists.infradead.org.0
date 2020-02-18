Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 433FC16303D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:35:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KlLgCDVzAZP6TEKa13oqqGlKM/qZw1DZxA2iHI9qK08=; b=SHNi3sSCQCTzxKTokM3q19QvYQ
	osSjiefrcZqpLPjPwlZShcgBK6IYRh0QmDY8EpAVkqN/BX12FTJO247cPbeqbF9AU2j6gdgKppU2M
	GDopzyYvM70qEV7ZYWvlr34wpN+Tf113Mrande36lz89mqHOf2tjK2PLdxOAGXtOIf/5IeEIJogBf
	yyQ6P6/7O6ouO+sZ6M1A3XgZqXXSQM7ocv/KqreXm5N4isn1amjgwlXp7i9RsIZD+GsUCSPrOXZYX
	zNIpwF9V4ufMuErm8R9onRaJXGVOPL9e+b/lTM11zkalleMsu5rVoIUxyMzZQh7WaHS5JS1JFDEhh
	VHiAnqNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48eb-0002J9-Tz; Tue, 18 Feb 2020 19:35:33 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cV-0007ow-ER
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:24 +0000
Received: by mail-wm1-x343.google.com with SMTP id n3so1791057wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=n2/6Go98pHaxpLCc5lRLRHeU4KxfdOQs2LuzJH/tK0k=;
 b=RRR7WIr1e0sQU9K3EdoR/DhnYIc4/rh3LiZbPMP3o7KsDxgcrnlOejN0fh/4Y8Rh3Q
 PlF1am3pvjHFriwsTGetrBUQ+vxK91j/cwtv861hpab+b7fFGhLBT/1KZMhBapKahvxp
 +cMVOJ9slgZWA9SfAfKhFxyCeQizK0oe1imzaUNU5ICbKQepRp+X3gthGa65xy6AG37M
 ymq1Q8iA1cfeopQSGsQ7Lq/TYulpxOdga90qXJW77ShQyoU3ip//MS9KhaqE7b4YUfaU
 qEBv7669Xyp3pbtXR46v9X4zfy/GYbkyjOTmFk4dvqifb81mNHbp5lBHfYnb+JVH61UU
 GZDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=n2/6Go98pHaxpLCc5lRLRHeU4KxfdOQs2LuzJH/tK0k=;
 b=TnV0nnlkMbAPD8qAGFfHasvANgP0OSK0pr+HavE/qk5DZOXTutL0bvrIH6H2OD10ON
 ukVjirL2ElJOxYYN7AlIZyfT+nKup2H/rAzQF89NAq0iYpADpr+WqGr+hVM+Krm8W1vl
 2rBf/n2FSwW+qqQyn8cSXcZWPZOhpI90jpJEbZZQqc8SVRFTsCWffGUHAr0CWzz9ubNm
 c2e6fPhQUEuy4oabkQfhEG2dv/1Embf+ChhE8GzHEX864e8rX9rv7sqoTY0fQAaN2gHU
 sqEBhJYLIYIAwwM7VCQ5ihRr0tlaNzFFVlDf0uGC1QksCoshiKdXSxoILA9cE1JazgU0
 SP4A==
X-Gm-Message-State: APjAAAUTWHYgHE2FoZ/4fvXCTXUEBEYMI8A/xCho8ot0NnL2UvOI8m4/
 9+ai0rbL17xcscxgzdiiBFM2ZQ==
X-Google-Smtp-Source: APXvYqyC6GjfeEE6nKgfSsSWz1/SSC2ZJpbMalzrWcB1oLvQHLfxW6Z17TFDIAS/YBVFDc1UIIhZ2w==
X-Received: by 2002:a1c:7c18:: with SMTP id x24mr4978411wmc.185.1582054401703; 
 Tue, 18 Feb 2020 11:33:21 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:21 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 07/20] usb: gadget: fusb300_udc: remove useless cast for
 driver.name
Date: Tue, 18 Feb 2020 19:32:50 +0000
Message-Id: <1582054383-35760-8-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113323_515436_6BDBCCD7 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
udc_name (which is already const char).

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/usb/gadget/udc/fusb300_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/fusb300_udc.c b/drivers/usb/gadget/udc/fusb300_udc.c
index 00e3f66836a9..9af8b415f303 100644
--- a/drivers/usb/gadget/udc/fusb300_udc.c
+++ b/drivers/usb/gadget/udc/fusb300_udc.c
@@ -1507,7 +1507,7 @@ static int fusb300_probe(struct platform_device *pdev)
 static struct platform_driver fusb300_driver = {
 	.remove =	fusb300_remove,
 	.driver		= {
-		.name =	(char *) udc_name,
+		.name =	udc_name,
 	},
 };
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
