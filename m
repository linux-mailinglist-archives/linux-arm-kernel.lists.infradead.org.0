Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F2B163044
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:37:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uPn0q05tKMgA0lSZBFRIbdvvccdIejFjD7p9I03Gueg=; b=sqROOwBJxHIhS9gBm5Xjp1JymF
	4uER8pSCGu6VptwaQgbUcxeHvQRW6IgC9KzmDc07sl5n2Fzh0xt56z1JzofWDxsNiNXzR2gZ3svvI
	g0hPTDHVw1mUZLHtgG02J1/BXXGt89gIQ0ocwEjG6Xeru1vcnopHPVe8wED6H2rQM4J/+vlZhThIJ
	u7/atrTgwMDc5mYAzzqRdvsfqIcHVUBe+rgH6ZtdZ66Rj2CMfnTAM9v4s6Aktp7Ikqr4ERanhRjtb
	GvFsa1cUfDs5mD2qku15851vUPlvYzdF29Ek11fDi7DJf697Kwne68R7VqPrgOvj8bwY0lg66iL5F
	RZVdIKfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48fw-0003km-7V; Tue, 18 Feb 2020 19:36:56 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48ca-0007uB-CR
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:30 +0000
Received: by mail-wm1-x341.google.com with SMTP id s10so3975781wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Fhwn2ZW4+Oeu69BMvqd1Amzh30rqArEOAoeVg6PmOWg=;
 b=x0+U/skHhXnfbCeAgDwjQ8qJmDqyWtwDQlK7yFyQgERkVEMatsfBRZLy22osPctvse
 3q/bu1g2a1LEB3zjxbu3vETUdfOTugPNK76akGMUrub/BXHMFAG4ytSUwarKnCwwvjpO
 JNM05lNSHeykBpxAZFmqERzbfjrpwHZUTPKfErl5MFcDqYgeXfT6Hy1uikV6IJG94m1v
 T8xnTTvkJoN5gpQom6SHVyZUlLtuo21m58D+APxd1ixlpSXrkhOiD1q5u9XfEJr0ySDX
 aEhqNTVRPMUET3PRSWjME5kMLFoH2qjYOGYOSIk2kfBHDdi+UxjnyTNb6Ch5+SEw8wnD
 XXWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Fhwn2ZW4+Oeu69BMvqd1Amzh30rqArEOAoeVg6PmOWg=;
 b=WoPBsIf58h1wqslCZ9+oI/3N3FczkuzKsgaZHNEWZ41QMf4JIpnEvoBp6Rv3g3iDaP
 B5SxGVvQp7twA+X0KHudFM/moyWLhrE59fORsRjqGnO6oEEOgQ8G4saaxHgUnATqbFT7
 TFlqDr1dwdae8kh1kdsWqES2MEtGJ13iIbwGzbbPjJrIEVxo6lZ1vhTmjHpR3Ala16jD
 Tsj+YVmz7GLD+MCnaHz+KAhAQpjSO9UK9mYt1OxT6vOiZEy1GsWibeLMuMLjLIAWb7rp
 SMGYjJ2vBeqCJxH0X1a5SalDxfEFPjeOqo9zUq6i56FBkCPEE+Ha4yuqAn03Nnclr0KM
 Lf5A==
X-Gm-Message-State: APjAAAVPoVVzqd5vIl0MPL4ZKm4NfbbfUJ2DJXOM2EP/WRlocwmyQ2uh
 6WRFbeHNuSYM6Y+vSl5Vl3/9qA==
X-Google-Smtp-Source: APXvYqwU6LtJ+4yda1ST5mI7xKccXgYcyuYDViGv3r6yI47nRAJx8KQ7bO49LiFdYcP4+WBJfA7+AQ==
X-Received: by 2002:a1c:1b93:: with SMTP id b141mr4945747wmb.114.1582054407086; 
 Tue, 18 Feb 2020 11:33:27 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:26 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 13/20] usb: gadget: r8a66597-udc: remove useless cast for
 driver.name
Date: Tue, 18 Feb 2020 19:32:56 +0000
Message-Id: <1582054383-35760-14-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113328_471932_8CDF1724 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 drivers/usb/gadget/udc/r8a66597-udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/r8a66597-udc.c b/drivers/usb/gadget/udc/r8a66597-udc.c
index 582a16165ea9..537094b485bf 100644
--- a/drivers/usb/gadget/udc/r8a66597-udc.c
+++ b/drivers/usb/gadget/udc/r8a66597-udc.c
@@ -1968,7 +1968,7 @@ static int r8a66597_probe(struct platform_device *pdev)
 static struct platform_driver r8a66597_driver = {
 	.remove =	r8a66597_remove,
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
