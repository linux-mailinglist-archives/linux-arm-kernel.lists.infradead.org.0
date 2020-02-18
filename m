Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7440816303F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:36:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xge7HbZlUKhwcDhJi2nWzuQtX/ghY9HJq2dF1CyDsFk=; b=MlU883LeOoeXI0dmdbhn1SeBoN
	7vp8fPwuEO0W4P9iqPy3UQ52YeLyhtXd5J65z4IrktSFlMLPSEAEGccSEs9Y8F7EVpSvUwrDYnAdx
	pY+ouhVqPlbCuUxs4NQPWOJDyQPTC64hUSuX/15zSwFVOBID2npkCpPBu6BClsQIf7+HF4ZBZwT6z
	LZUHX4IhjiCvaa5HUvbFM9fFj6URHkaSAbGfeIu2Ogge/4b7XDARUaOJrjmeANSjvlJBhZ3y3oqWo
	B+dlbzcSC2O0QFuGx2jENxbM0ltO0psT7cMJjKdoL5lswyYGtZ5k3wl6YTPLAKPQBioPeNovDm2um
	HpR5bJ+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48f6-0002rx-Pc; Tue, 18 Feb 2020 19:36:04 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cX-0007qe-Aw
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:26 +0000
Received: by mail-wr1-x444.google.com with SMTP id y11so25380122wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=a7GEUna4G5RbXgq36EEYG2D0rjG6W8XH0Dtowe6As9s=;
 b=uRA4WO9lmxzJnN8WEkKi9RYhzj9YdW4cC5DYKICsVnNVacaQ9MyMZEa4pfRD5PaLh7
 t4uQnDrN90AItIWNienqvMAEsi0QfgYojLqhX8Cslw43H772RfSWRJ2e2IUOeKoSUiiM
 OtNwNmQ1yt9Qi3fO3AzxzoO083OuTRvtSFYnV89VAeUEPm2yiBEL90t0H5mp8tvDunq9
 czQIqOIzmzh6a/+kyiMFY5A35uqoNv37t0TJjaC68C90dxdGaUNw4yEfDRJKsMpvQZ2q
 L7qW/evqTpfiokn5ukUW+9GLzuBhFPFF4K42xCrxbVB04kMD1D3VguZdnT74SrPzX5Ie
 LULw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=a7GEUna4G5RbXgq36EEYG2D0rjG6W8XH0Dtowe6As9s=;
 b=DcQTRuA4dwYc118tUn4kU/bz8/puM5FC1c/vhwC+auuh9zqZXX1kA5lfSikMWCu89z
 t4eLywvmK5y+tssyH3AmiXt8Z9pSI/r/V/wO5dzqfRohpWDp4tPfgvOi17dDKXIuY8ZE
 BBvwCBdya2xKFGd2OHkmcN97WGn8ORCxszkA7WGsVtrJciD0QrGQ7RnrDjYM57Hq7foq
 GWh99SREkLoZ3SodZ4IkwSJGeAjFe+GzY1y/0tmPvOOir0Co3VguxYpbecdKGHjH6519
 InVLHUAdqq5VOhdhj0wcACFNQ/G5tOeT7ov7FWbpeuwchN82oqErv3Ey/J6jsLYADreg
 GB+g==
X-Gm-Message-State: APjAAAXcr5CVGPhQNzxGLm9IdAup1AN3NE1S4iUAfq22rGK2IjuHRvXu
 ATwIABWcGyxTP2gD9ODxeK9IWw==
X-Google-Smtp-Source: APXvYqxjXR4su4Hv72/U7GmAiRCFdmARwCRra/TybDUrWP+GSOq0Tnw/N56bhpE0fdQ/pQE08M6Y+Q==
X-Received: by 2002:adf:f986:: with SMTP id f6mr31872129wrr.182.1582054403557; 
 Tue, 18 Feb 2020 11:33:23 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:23 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 09/20] usb: gadget: lpc32xx_udc: remove useless cast for
 driver.name
Date: Tue, 18 Feb 2020 19:32:52 +0000
Message-Id: <1582054383-35760-10-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113325_438909_71410BA6 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 drivers/usb/gadget/udc/lpc32xx_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/udc/lpc32xx_udc.c
index d14b2bb3f67c..cb997b82c008 100644
--- a/drivers/usb/gadget/udc/lpc32xx_udc.c
+++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
@@ -3267,7 +3267,7 @@ static struct platform_driver lpc32xx_udc_driver = {
 	.suspend	= lpc32xx_udc_suspend,
 	.resume		= lpc32xx_udc_resume,
 	.driver		= {
-		.name	= (char *) driver_name,
+		.name	= driver_name,
 		.of_match_table = of_match_ptr(lpc32xx_udc_of_match),
 	},
 };
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
