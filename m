Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1C98B150
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 09:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xvpKz7rpM/IWjx818QwxXoFzXzSe5KteCoQZzBf7l6g=; b=R9BcQwT10kicoW
	xhgM5CerARAUZRjjFSHZv2zQwoBbmjRxQYOhknEIZ7dlRGacsTRvYyWzulPdfL20c+ygDt/bwcVR9
	mNnFvLv8DUzYoQxDQlIJU4w537bOWJ3xW+6Fw4ZoSrg7tgzIp9uVJxI01yR8xcveDQuz19UUz3iuN
	VFkf3g9hYNftSj6lee+CJpOXpYt3qMwMGNrjCuvE3pR6HnchfpNIMxNIW8L6JNv6PY49Zs3oOQzEr
	Koza6h4KnUUb30U+3w+9iG/ZExgW+ob9ebyt8ITtGRFz6IivPYLBC1h7xuSz2moCRcyw++5zFGaNP
	NKmNreAwZHCRq//YMXHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxRQK-0004eE-OM; Tue, 13 Aug 2019 07:40:52 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxRQ5-0004dH-FE
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 07:40:38 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Razvan.Stefanescu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Razvan.Stefanescu@microchip.com";
 x-sender="Razvan.Stefanescu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Razvan.Stefanescu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Razvan.Stefanescu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: cxXL8660C9M6aAGH2Uluy4pcamff96/clUOJXI9w+01rqmasY0c+Z3YC/5KrXvVwTnoGGDOOVM
 svl2t9PlHw9U1CtHEd0w3eW9usRPRTPaAXTFitv4XA3ciqUFsPScxeMd276tteDf/SLCimGAY7
 Z2373lX/AjNYX5vjjc0HkI8NmHwRvTp4wiQcvpLNUKUId8H5iuREpjnjyc8ZeB99oLsuZGxQ/6
 dLBeW1QwY7/pZzzlaJRq52j6YWpzVn6RRsgHX6AGJ8NZ035bbgIflK/VpoNiClDiewbJuqkswk
 Z0c=
X-IronPort-AV: E=Sophos;i="5.64,380,1559545200"; d="scan'208";a="44893566"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Aug 2019 00:40:29 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Aug 2019 00:40:29 -0700
Received: from rob-ult-m50855.microchip.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 13 Aug 2019 00:40:26 -0700
From: Razvan Stefanescu <razvan.stefanescu@microchip.com>
To: Richard Genoud <richard.genoud@gmail.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jslaby@suse.com>
Subject: [PATCH] tty/serial: atmel: reschedule TX after RX was started
Date: Tue, 13 Aug 2019 10:40:25 +0300
Message-ID: <20190813074025.16218-1-razvan.stefanescu@microchip.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_004037_546891_564D66E5 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When half-duplex RS485 communication is used, after RX is started, TX
tasklet still needs to be  scheduled tasklet. This avoids console freezing
when more data is to be transmitted, if the serial communication is not
closed.

Fixes: 69646d7a3689 ("tty/serial: atmel: RS485 HD w/DMA: enable RX after TX is stopped")

Signed-off-by: Razvan Stefanescu <razvan.stefanescu@microchip.com>
---
 drivers/tty/serial/atmel_serial.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/tty/serial/atmel_serial.c b/drivers/tty/serial/atmel_serial.c
index 0b4f36905321..8e667967928a 100644
--- a/drivers/tty/serial/atmel_serial.c
+++ b/drivers/tty/serial/atmel_serial.c
@@ -1400,7 +1400,6 @@ atmel_handle_transmit(struct uart_port *port, unsigned int pending)
 
 			atmel_port->hd_start_rx = false;
 			atmel_start_rx(port);
-			return;
 		}
 
 		atmel_tasklet_schedule(atmel_port, &atmel_port->tasklet_tx);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
