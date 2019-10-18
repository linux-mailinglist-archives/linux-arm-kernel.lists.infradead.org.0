Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43ED3DC8D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LhV5sI3jLo7Wj8i0xbRRxIWZjJOfrnypAiyfUaDHhdk=; b=XxhsV4Q5Dw0pj3
	cHSe7GEfbrk51E4o90UG3dx2fyyS6ygaxPpB4HYtgYQtPZQPNC9lKFYHkDslWXn0Rex928143ZWRi
	lOVv3+OyXWxvFSTNeN0JGR/cxqeNiToE+1htb2ZpYYX91l66jSDUjw85Yvhj3PiOSQEhj7w02CkGg
	XLozJOiaQqpIAoOvBwx8xSMD3mtaQn8nOmYp9TgJDsOxS5eGXJCACArMO9IhTIj8r7IrrJOghH21c
	Pu4l3DW3b9OPE5V71Fp8MOVVDpPRD1Pqvj0jY5/k2rnoAcajs5mq1XdGUHjdOpLiYd6JkUmKnvHCx
	B+mXurmivECLkS3mnF0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUHk-0005ZP-UR; Fri, 18 Oct 2019 15:35:24 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUHZ-0005YX-0Q
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:35:16 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 1CD74200005;
 Fri, 18 Oct 2019 15:35:10 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] spi: atmel: fix handling of cs_change set on non-last xfer
Date: Fri, 18 Oct 2019 17:35:04 +0200
Message-Id: <20191018153504.4249-1-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_083513_187236_DDE8ADA1 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
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
 Mans Rullgard <mans@mansr.com>, Gregory CLEMENT <gregory.clement@bootlin.com>,
 Nicolas Ferre <nicolas.ferre@atmel.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mans Rullgard <mans@mansr.com>

The driver does the wrong thing when cs_change is set on a non-last
xfer in a message.  When cs_change is set, the driver deactivates the
CS and leaves it off until a later xfer again has cs_change set whereas
it should be briefly toggling CS off and on again.

This patch brings the behaviour of the driver back in line with the
documentation and common sense.  The delay of 10 us is the same as is
used by the default spi_transfer_one_message() function in spi.c.
[gregory: rebased on for-5.5 from spi tree]
Fixes: 8090d6d1a415 ("spi: atmel: Refactor spi-atmel to use SPI framework queue")
Signed-off-by: Mans Rullgard <mans@mansr.com>
Acked-by: Nicolas Ferre <nicolas.ferre@atmel.com>
Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
Hello,

This patch was first submitted 2 years[1] but was never applied while it
has received the acked-by from Nicolas, and I don't see any review
against it on the mailing list. So I resend it now.

Thanks,

Gregory

[1]: https://lkml.org/lkml/2016/1/17/31

 drivers/spi/spi-atmel.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/spi/spi-atmel.c b/drivers/spi/spi-atmel.c
index d88e2aa64839..9e84a93083bc 100644
--- a/drivers/spi/spi-atmel.c
+++ b/drivers/spi/spi-atmel.c
@@ -277,7 +277,6 @@ struct atmel_spi {
 	bool			use_pdc;
 
 	bool			keep_cs;
-	bool			cs_active;
 
 	u32			fifo_size;
 	u8			native_cs_free;
@@ -1416,11 +1415,9 @@ static int atmel_spi_one_transfer(struct spi_master *master,
 				 &msg->transfers)) {
 			as->keep_cs = true;
 		} else {
-			as->cs_active = !as->cs_active;
-			if (as->cs_active)
-				cs_activate(as, msg->spi);
-			else
-				cs_deactivate(as, msg->spi);
+			cs_deactivate(as, msg->spi);
+			udelay(10);
+			cs_activate(as, msg->spi);
 		}
 	}
 
@@ -1443,7 +1440,6 @@ static int atmel_spi_transfer_one_message(struct spi_master *master,
 	atmel_spi_lock(as);
 	cs_activate(as, spi);
 
-	as->cs_active = true;
 	as->keep_cs = false;
 
 	msg->status = 0;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
