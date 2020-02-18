Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBA916300F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:33:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=svFB8Qc3XKvczI2A+3HoeX/JURKnlfpL4b4efNbm81I=; b=OhltnM0nF4yMDKTz6thviUCK6j
	FFAdHRuDkPO0GIFYPR5U6LDJJWai8ZYcsozAl44hZunQ5R42qhaVO6vwRN3dwXpiBgn3UBA/8fnW9
	BAcFeTfP4UmqIuB6tUQKNkdWIZNdeXHvKgKk690K+AmnpBF4sHPje3q5CILDRnApTzokR09R7QXSz
	HwutIm+hjdr04rxABdDtAilK9U6WUdVLV3LIY890APaCBbZfdsRc8CkvvHVXX5poayMvyEb57QHUL
	fFtpR82fu6RjHbBZJtqhZZyX9yhTHwBSiMx/bB29bj9DeQM7snjRKIW9tQ97Ruen7BxTwwI06fjD8
	JkYdtBzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48co-0007pE-2i; Tue, 18 Feb 2020 19:33:42 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cQ-0007mX-Lb
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:20 +0000
Received: by mail-wr1-x442.google.com with SMTP id w12so25401260wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9nGneN4FF9FG4UqBBakQfwNSGfoHUIS33OCajZHkIHc=;
 b=OvB7KyfyEVZHQJfu/Zd/LprOMDUmwxj14FNKr6Qv5XAFcb22USOTj1kGcVyzSm2RXH
 GOHieY/yIwsFCWpLr7XeqeJFhQ2DHcc5hfwydTprXHOaUcga3Qr6pHSjYIrf/Q6XSqNs
 StC1ITm1/WWYjQjMd/IQgYHp8BYmvOMfPS8J4ma59IkWd4rpCEd0Uqlh8eApv6pRHK6L
 Am+CSNySXgEsH1c6DqlpNBEoavoJxGyRh4mZ2ettOdwynUmBA/cwJRYpCMtcG7mCrbWt
 I+x9br1lCHlQvuXWsY3Jxq1xXA6B97Pj2unGQN7+kNssu99Qej/NoUcH2bdCd8hY0V8+
 tEYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9nGneN4FF9FG4UqBBakQfwNSGfoHUIS33OCajZHkIHc=;
 b=HtI6MVGFX9LCPS6iZo1lp97uDlrES9vYvZsuzSJhx+SW9qXyGnYZFh9S0QZLpWERiK
 MPrU638W1ZzNFhvnNurCv+IolZ2xlq6et5eHFfsD/2ggsvqJpRKyfYTR0nLAXNL2s4Xd
 LcSnpnrloAPYy6Dvln6MlzJISnVP8EverrSglrGt0GydDaj/wazFFhE2cSmfvXQmRH/C
 zlVuGE42RskLoipvUnalwijzINDFbmGIPM0dfaFOYKs26AELvChzOvYwA8i3jo5gLXVH
 ytNBu7AHpH5O10H0TWurlClmc0X+VV/5aKXqCDpIs43cWtQhn718PWRJknjfV9/6Upqu
 VElw==
X-Gm-Message-State: APjAAAV3pNQGSOT9AQoUJ0Tpn/U2elOupFvwddA8CNN5f1jASPa3qZMk
 YJUUts5mPHgkAOQIXEDaie+c5XxTnmw=
X-Google-Smtp-Source: APXvYqw3rW1kRcZH/PRtRWgPRBFpvvRAhqVbY4TEosssX4QTBJn9TlTcWsGkj8OA5iYx8iCEg6BUZg==
X-Received: by 2002:a5d:6b82:: with SMTP id n2mr32891365wrx.153.1582054395840; 
 Tue, 18 Feb 2020 11:33:15 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:15 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 01/20] usb: gadget: legacy: gmidi: remove useless cast for
 driver.name
Date: Tue, 18 Feb 2020 19:32:44 +0000
Message-Id: <1582054383-35760-2-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113318_711321_A87D81D3 
X-CRM114-Status: GOOD (  13.41  )
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

usb_composite_driver name is const char pointer, so it not useful to cast
longname (which is already const char).

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/usb/gadget/legacy/gmidi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/legacy/gmidi.c b/drivers/usb/gadget/legacy/gmidi.c
index 9eea2d18f2bf..265c392810d7 100644
--- a/drivers/usb/gadget/legacy/gmidi.c
+++ b/drivers/usb/gadget/legacy/gmidi.c
@@ -174,7 +174,7 @@ static int midi_bind(struct usb_composite_dev *cdev)
 }
 
 static struct usb_composite_driver midi_driver = {
-	.name		= (char *) longname,
+	.name		= longname,
 	.dev		= &device_desc,
 	.strings	= dev_strings,
 	.max_speed	= USB_SPEED_HIGH,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
