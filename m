Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A40A616303E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:35:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1b76iFer/yUBl5DP/UXkDAEa89UsoEikKDnEALbWFhQ=; b=dgeViSiKZrjDLTr+EuK5Mpykp0
	gfwwYTtSn61QJoRnMDzuuMjwtyPeg7+gwAuDGb0UL7M2JAE+Ctr23ywQ3DJX95LiAg9y77nMGqekU
	uE/sFq/f90ThH1da9E1T3A3iCb4EmsYs2jT2NccKGRrXQhDugC/SpJh+P3LNmPe4XuihRs+SKzK80
	yNM9RKfeeeghpTTuP0MT5mMNewTRfY/XMgIqRCf3xLC0WIVeZwyTiPczqFawKqtJw+J1s9ibWgd5q
	pw/o0j/lVY4FwROGlu+4uK/kWCSdalKqFS/D1tdYK+W7qjjF4bYBkNmLecLHBqTxBQ8KUnOFdBqX1
	HPXrdiTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48eo-0002Xs-1A; Tue, 18 Feb 2020 19:35:46 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cW-0007pZ-G6
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id s144so2902980wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pjF+muLIhia2iJlkAiVEwAXGwvsTo93e9rZBfV8mBcQ=;
 b=FByhnh4aHbUwNUbrLIvCa7S87+yL9GFB5EFtUZDmg6Yh7/YSremqljAk7DlVVNbB0j
 eDHgyZHU38hH1nj2jmooaixF0wMPPMgmkycHURgyd39qmHHKGjmoJAti7onWk2ytn9yC
 j5dpQvtW24HH3oxtLgnIYTgtbSMoAV1CEhfbC6L+1tPFy13Rq/ZYJIyyZwRAgBcEp/8m
 7oEjGi9PRYVjY3hbz+Fc3JBC/GkA0STUH5NPL/BUbp71f3YJZrd5HuH3XHcDJzZJDmXg
 gqYFqmNij+sNWdWaHXPPLM2Ma6Md6xvqmQITG62MPIwEXmZd5KPSsNMOvV49b2b0unOF
 FNdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pjF+muLIhia2iJlkAiVEwAXGwvsTo93e9rZBfV8mBcQ=;
 b=jqBiK1WaYVa78brWn68rVhPGCY+fw2NshFHBb2+dRzkHsCDK/fJ4pn57N//d5wwve3
 +PG0PEbLYONqeLef9DdxpgIvTi5Et5CfKIBMKgbC+g+2+FeOYY1fpisLEmGqN9S3mLMG
 ir5kled2Bos0dVY1VEoT2CXJ6ImArJL51pk8OMl+CNDPrAezlB838VCQ+29HRdoB9zk5
 hn1fIEjPs/xxO4PxI6jGonJ2/S9YSUlGyQmHW7AwCUV3XqQVo2GpEbECmlGI7Nh5APrR
 sfotuNGbMcu8TOz/ZOowHHAzxLFODWRKh0/JYU/x/mLUG33tlduWMLvzvYGdHodbxuuj
 zf/A==
X-Gm-Message-State: APjAAAV/2Bc1Nz2nC0AgwYeztreaiIuM8M0lTVnDat9rOHwJpJMwdu5V
 iDsbcGdXkGxyjTXQ4pRYvFpo7g==
X-Google-Smtp-Source: APXvYqxoVM6rVVdhsfUOYDPvd6s6raX8l1EuWNKZpuyCFsDx7HpiuPGc56k+1Q/N8uLfxpoiCj/6/Q==
X-Received: by 2002:a7b:c778:: with SMTP id x24mr4959002wmk.59.1582054402666; 
 Tue, 18 Feb 2020 11:33:22 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:22 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 08/20] usb: gadget: goku_udc: remove useless cast for
 driver.name
Date: Tue, 18 Feb 2020 19:32:51 +0000
Message-Id: <1582054383-35760-9-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113324_539493_767E561F 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

pci_driver name is const char pointer, so it not useful to cast
driver_name (which is already const char).

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/usb/gadget/udc/goku_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/goku_udc.c b/drivers/usb/gadget/udc/goku_udc.c
index 4a46f661d0e4..91dcb1995c27 100644
--- a/drivers/usb/gadget/udc/goku_udc.c
+++ b/drivers/usb/gadget/udc/goku_udc.c
@@ -1844,7 +1844,7 @@ static const struct pci_device_id pci_ids[] = { {
 MODULE_DEVICE_TABLE (pci, pci_ids);
 
 static struct pci_driver goku_pci_driver = {
-	.name =		(char *) driver_name,
+	.name =		driver_name,
 	.id_table =	pci_ids,
 
 	.probe =	goku_probe,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
