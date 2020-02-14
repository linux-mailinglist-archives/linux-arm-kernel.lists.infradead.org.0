Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 407E315D926
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 15:14:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zhe4/NoYLs+cXfcdQa9fkVZtmsteS0XTM6zQ3UF4nKE=; b=mO5ogeLP68v2BG
	BnMPckbri8skKei5Ojv3lLCMrmJfZoSP8SwSpuZg8gIJ/VPjmEc9UsZDtjfCMWfkUj34k00bvdeO1
	IKGvPXtX9q9b43Iwp5/4UR8oO0VzClBpTbSsWGoqfSb53vQlcbDlCD0YGBPU6gBAO40WkORV3pZtc
	/O8h1N0vJekSsO+Mmq1AYIaBvW7CeLR7K93ofrSHU3VfW6tyjNDw7ZLTf231U+AlYEfV3H3YO76cK
	AgCsMixgnc/VPtSbd/bL/f1pCNjdLZUbFFsH/oCq+CXhyaNJlOAErU4A3beOe103x0CLzIXs0ti9r
	A7EsRDPzb8WptRI1NPYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2bjn-00032D-5j; Fri, 14 Feb 2020 14:14:35 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2bjf-00031V-Te
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 14:14:29 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 7E071C0003;
 Fri, 14 Feb 2020 14:14:10 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] tty: serial: efm32: fix spelling mistake "reserverd" ->
 "reserved"
Date: Fri, 14 Feb 2020 15:14:06 +0100
Message-Id: <20200214141406.20792-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_061428_092933_993080B7 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, kernel@pengutronix.de,
 Jiri Slaby <jslaby@suse.com>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix a spelling mistake in a comment.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/tty/serial/efm32-uart.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tty/serial/efm32-uart.c b/drivers/tty/serial/efm32-uart.c
index 2ac87128d7fd..f12f29cf4f31 100644
--- a/drivers/tty/serial/efm32-uart.c
+++ b/drivers/tty/serial/efm32-uart.c
@@ -200,7 +200,7 @@ static void efm32_uart_rx_chars(struct efm32_uart_port *efm_port)
 		/*
 		 * This is a reserved bit and I only saw it read as 0. But to be
 		 * sure not to be confused too much by new devices adhere to the
-		 * warning in the reference manual that reserverd bits might
+		 * warning in the reference manual that reserved bits might
 		 * read as 1 in the future.
 		 */
 		rxdata &= ~SW_UARTn_RXDATAX_BERR;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
