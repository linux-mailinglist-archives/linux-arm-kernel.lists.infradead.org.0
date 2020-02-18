Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1138D163047
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:37:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=onWhrwVo5X7vpC7dxsbt4a7zw/ajFEAq437weqduQ+A=; b=u4JV4PBFp8l84VPI+SaWARh0+y
	TDI25FBb1J0GXGiTgcdqbBF5+rq14+YnNU/XwspZjS0+IaDqu/VQGoEQUcSCV/SaaLCo6h0xnG2RS
	YXzVgHqeqtSwbtrvdRhD0jrzwZAEIRVwgcm5YBpc+VMXewxuf1GulIq5sU17Vx7iuywrpQNFY0FV+
	7j1IJjq3umMSDk1G8+/7YVy3F4jAOOgxbMJEaDxjiQp2nJNHK+1eUdz19mNmi0hP92fB2D53P7lmF
	ya0ebNu8x+B3bsF8Dftlko4aCr9Gk1ngcKjdztEzXt0p2mJFIwknGEgaHWabOKPE88EFMEcG1fzTw
	3nibyaaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48gd-0004Rt-0k; Tue, 18 Feb 2020 19:37:39 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cb-0007vF-AA
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id c9so25421139wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CICLGgehzIV39n0G5fNiUeOx0sShsCKvoh9C5iQTUS4=;
 b=QWteRJ8APs9AACJxJ9Isru24pG8gclsXlxMe6kSQOClBCpMl9ynpbto9oH6gayxX6Y
 LN8mY8/VqcBoPo+fXhK6Aqa5x7fmd5OU4M/ORWMM3qRj3G2vDIbIfrG5EdtHR1W5QQDN
 /1whNGpeWcaOTd0MTWYvaHXbvyeh/Eo3LW6tCgWil9L1mgTI/HYVtZEpoXzTm7o5w+GP
 QSrGXuQncB7Ov6s8JyeFsw0POrCwUA3tKyacioNHh9aHZlDSngcTLzejZr0fwEZKoPOT
 eCDkzPLTMnWddU0Utce26hh7WZ9jSv2IETBN8OcT8yCENZKT05/QWXLBaGVrge8suKLi
 xDfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CICLGgehzIV39n0G5fNiUeOx0sShsCKvoh9C5iQTUS4=;
 b=L1eXEjFY+0tLjMKHLE/YtiBXWoWDswcHNmAxEjy5eSDF8Liid8Ch1Zaig/UX1An/H2
 Art0A9rTcHTlFzjF9tJuhtFtfLK6AqXCFliIxLai9mNtzcmc4AMejCWd3UNQ97th3MUE
 2XgKwcSsGXhTSedRqfszbNt/ybkOSI50/5L6y97fy7el6T7VYxXMVEqUWaWOlz9cs1hM
 LQZlTmjhYLZ6rOoxGxsQImYqYZ05E8qjJQM4wxVGJ8eWqORQ6wi3OY6nanoaGEofiQnh
 5VKhftJy1Y39NUr4kO8VAVHQ5j8edonM/8N7EVvUJUDiWSUM4xqyxYLp4zPckZufPUOY
 tNKA==
X-Gm-Message-State: APjAAAXcd/WXTeGYyYiXjgGedn9xJaMdy42ltjYZODOQDwGgk8gCF79e
 EvKZEeXjevBnQvUJL5GZopmnKQ==
X-Google-Smtp-Source: APXvYqxEf0O101KsjGID0PiOn4lRSqAvS4WrZb4wtaWI12XLgPEfj4VBO+GEZ/T462WCcJF+1Y7oiA==
X-Received: by 2002:adf:fa87:: with SMTP id h7mr32216339wrr.172.1582054408009; 
 Tue, 18 Feb 2020 11:33:28 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:27 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 14/20] usb: gadget: renesas_usb3: remove useless cast for
 driver.name
Date: Tue, 18 Feb 2020 19:32:57 +0000
Message-Id: <1582054383-35760-15-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113329_474481_77BC0E30 
X-CRM114-Status: GOOD (  13.22  )
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
udc_name (which is already const char).

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/usb/gadget/udc/renesas_usb3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/renesas_usb3.c b/drivers/usb/gadget/udc/renesas_usb3.c
index c5c3c14df67a..42ae99ad9b25 100644
--- a/drivers/usb/gadget/udc/renesas_usb3.c
+++ b/drivers/usb/gadget/udc/renesas_usb3.c
@@ -2906,7 +2906,7 @@ static struct platform_driver renesas_usb3_driver = {
 	.probe		= renesas_usb3_probe,
 	.remove		= renesas_usb3_remove,
 	.driver		= {
-		.name =	(char *)udc_name,
+		.name =	udc_name,
 		.pm		= &renesas_usb3_pm_ops,
 		.of_match_table = of_match_ptr(usb3_of_match),
 	},
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
