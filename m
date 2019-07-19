Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC196E69B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 15:37:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5eylCfc+DTJ5PmhnsoI7h8w4hdBYDs7KmHiQqsHaN6w=; b=IIE8ZPGurpQ6RPWjpZjDpZ1NsA
	n9rxS57hQ7TMrTf6nT5UnXybu5+rU+9a5SNr94CEXbmLXerET99fgLvNS+Fde4zrnuMXlZO+FeQUc
	o+aEh1ilb8wA/jFVRYtqH/+u0IdYYlcyTLuDbsPQrNzvRzWmssxQqBQUUd8g3xJhC2I1SBMSCpVjj
	n3OYm33EkQymVaVSy4fzZb3BUjFeqqwnyQ6gXwRfpU1q2KdiMj2btIhs1E4OZVudHNJ1U830Pa8Wf
	G01ck1typ2t2zjq5qciK5qDHe/eZLmljhpDlhueeFekhkO8zA6xboBaLPHsm7eLaYqA01RGskB5tQ
	hDTJNkQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoT4U-0006QD-9U; Fri, 19 Jul 2019 13:37:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoT3f-00069a-W8; Fri, 19 Jul 2019 13:36:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8BC3D1509;
 Fri, 19 Jul 2019 06:36:23 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 642693F71A;
 Fri, 19 Jul 2019 06:36:22 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-serial@vger.kernel.org
Subject: [RFC PATCH 2/2] serial: pl011: Don't bother pushing more TX data
 while TX irq is active
Date: Fri, 19 Jul 2019 14:35:25 +0100
Message-Id: <1563543325-12463-3-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1563543325-12463-1-git-send-email-Dave.Martin@arm.com>
References: <1563543325-12463-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_063624_071274_406A50F3 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Russell King <linux@arm.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Phil Elwell <phil@raspberrypi.org>, linux-rpi-kernel@lists.infradead.org,
 Jiri Slaby <jslaby@suse.com>, Rogier Wolff <R.E.Wolff@BitWizard.nl>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the TX irq is active, writing chars to the TX FIFO from
anywhere except pl011_int() is pointless: the UART is already busy,
and new chars will be picked up by pl011_int() as soon as there is
FIFO space.

To reduce the scope for surprises, bail out of pl011_start_tx_pio()
without attempting to write to the FIFO or start TX DMA if the TX FIFO
interrupt is already in use.

This should also avoid pointless overhead in some situations.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>

---

Please test both with and without this patch.

I believe with the previous patch in place, this patch is not strictly
necessary.  However, if the UART is actively transmitting in the
background already, it does make sense not to waste time trying polling
the FIFO fill status or setting up DMA etc.
---
 drivers/tty/serial/amba-pl011.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/tty/serial/amba-pl011.c b/drivers/tty/serial/amba-pl011.c
index e24bbc0..f28935a 100644
--- a/drivers/tty/serial/amba-pl011.c
+++ b/drivers/tty/serial/amba-pl011.c
@@ -1318,6 +1318,10 @@ static void pl011_start_tx(struct uart_port *port)
 	struct uart_amba_port *uap =
 	    container_of(port, struct uart_amba_port, port);
 
+	/* It's pointless to kick the UART if it's already transmitting... */
+	if (uap->im & UART011_TXIM)
+		return;
+
 	if (!pl011_dma_tx_start(uap))
 		pl011_start_tx_pio(uap);
 }
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
