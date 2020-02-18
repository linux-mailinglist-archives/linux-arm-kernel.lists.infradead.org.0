Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE07163040
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:36:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=09qzPCECSTRHecEz77TdCtalPAUzOh/udHWmmOAvNDk=; b=HDgedg0rTP3J8e+kKDZdqSrmWE
	AHZDqFNRUr2IugveszyQpeZenl32Skxrq6ZHbKDrlkjFgKRDpllgF5gTp/ONGZyGHRciLb5JSv4mS
	udwBohsICzg1IpoCZeX15IJxEq36rIv9z8ywAYUwWoqCS4l/+NBxsD+nfQ//hBLzPSwpAdlHC3njx
	YxBtij6MxwnXbLf8AJJhXurUwKH8cNEtPbtMm9axsv5cOGj0iM29Er0mKd9nRdrDLkhHidGd0rllb
	EI0oCqqB3aUeCJN68IlkDeXbjITmvymgmsV1iHMLtwgq5LAaQmPRCBHDq4Kjrxr2Gkflpp/3RCX35
	cW+vdBVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48fJ-00035B-U2; Tue, 18 Feb 2020 19:36:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cY-0007rc-03
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id g3so25350946wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VMhMCON8OuPufsG3ipSiCKDEgdVOYQVgnIzCUNgOnkY=;
 b=xB0Z0aPPPvTY5q59s/RiIVELERzjH2U8BFSMfOWfBxU2w29Zfc9KMc+U4jFuEPyX7a
 uJ/OxOvBnsGCSNGOJ9l5BqsfOc8Oj/HkX1E7JK95tLefzhDZYcFbWpgM+GTIYQaS0q+M
 6YAbCjlcGgapYWOvCKTdsoJaM0ekXgBQCiNgCLo9oFbtNOY4Dsj1VuZ0AHGF27Cn833s
 63gK3tlkEQbl61aBlFDS6LJAMCPYSQK+cU3iOdRmeuPsv5VXxNl9X/HL4nV1KMW4e2Kc
 wydsLep3EGtzxBHuZxoMEMPZ/DC7SefkXC4Mgh1lYfJgXyfXI2onhupUqgL/x2xFBL50
 NATg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VMhMCON8OuPufsG3ipSiCKDEgdVOYQVgnIzCUNgOnkY=;
 b=NXLEtgH4z+pxCLhsrWPNpjrn09Gz2D0dabl0ImO8Dgxipo0HtFM/244NcKb04i0j59
 fqBwUAp6al7XDdgzsfHg36WS0ZF+Wy0H0v7Kzdn+wzasexPsJkbvieEOmiBqyZ19rE0q
 bo/bQIy+uuXK9F3ryl0qVChQH0+NxaTp/LM/JZtuytxQN1tPfEVz/j/FDBfDW+W5IWLq
 PRS1sC5nD896j5+W5ageEWZVKUUFusA7fErn/cV1NsoiUq4u802gwxdvNNeyBRHOopzT
 VYry2dONXRL/OANnjZlBIGAibk2A+jW4C6EzHAGLrOkd7gxwMHRCRq9Y/yid+7WXCbrx
 KgJg==
X-Gm-Message-State: APjAAAUUTDzfqGQTJCpjB7OWYh7ibOJXk2Q1Ct1+1klk+IDoCL/QnTzG
 WOdanT5IuAMrktzjHV9t+M5doQ==
X-Google-Smtp-Source: APXvYqzckUIyriHGnsYfrHwscI3IStYXXWUqfYiWyMM7Rh4jYCpfpR1iboxY9wA3gVwPxIiNgFDTCA==
X-Received: by 2002:adf:dfc8:: with SMTP id q8mr30710027wrn.135.1582054404454; 
 Tue, 18 Feb 2020 11:33:24 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:23 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 10/20] usb: gadget: m66592-udc: remove useless cast for
 driver.name
Date: Tue, 18 Feb 2020 19:32:53 +0000
Message-Id: <1582054383-35760-11-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113326_180807_FFE306EE 
X-CRM114-Status: GOOD (  13.23  )
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
 drivers/usb/gadget/udc/m66592-udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/m66592-udc.c b/drivers/usb/gadget/udc/m66592-udc.c
index a8288df6aadf..75d16a8902e6 100644
--- a/drivers/usb/gadget/udc/m66592-udc.c
+++ b/drivers/usb/gadget/udc/m66592-udc.c
@@ -1691,7 +1691,7 @@ static int m66592_probe(struct platform_device *pdev)
 static struct platform_driver m66592_driver = {
 	.remove =	m66592_remove,
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
