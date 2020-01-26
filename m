Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B26149A8F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 13:33:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e6xUp5vKXXO2Xecse9/leN1dazJirx/79HoR1B+AnZ8=; b=uBBI6hUbJdxvQ2
	GtL1Y3CllfgFYy806jhfVdO5WiatiMGzk8zVhBNQHu3MyXuIigbXWyzdsfKUZQHmAuJmqZsfvuY0c
	CzjjYLYkQfXg0OJWOzdh1U29O0wv1vCUmFCFrvapSgZkBjuRKsQPXWyB9NS/szFZyRrqXXSKGKMOX
	myB0vSXn031crMeU/AoB2fUInG4uJsUDXABHkHK9OSiAlxkdze6OdkuzaQDfjazEOlkEu6vRi3uMx
	QIry7bgvMuI7MrtDw51wUCJnDh7oHB/68R4E66Wvf51HUOTiVQ/8oivi0D5X9bqDzQuJIL7IhrJt5
	XtNSj9+p6bMkrWYZqBgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivh6c-0006lk-0K; Sun, 26 Jan 2020 12:33:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivh6T-0006lG-Am; Sun, 26 Jan 2020 12:33:26 +0000
Received: from ziggy.de (unknown [95.169.235.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF5AA2071A;
 Sun, 26 Jan 2020 12:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580042002;
 bh=jiPyg4xMYng3XTyef+gtnfbqk1VNKvF8MyDPzuNMtWU=;
 h=From:To:Cc:Subject:Date:From;
 b=oY/V6N+Bk295aS5GBBQ4hYmTuZJaC2Ikx3wC+D4nFi0kXAvZTX1gTtF0TS0ljn4r0
 Rhw8kURC/bEaPBnvaduzUuX751qYa/n9Dacm6ArLhMp+CYfDfnMbwZdqwmWbJoKqV3
 BJgFkNHZb6mcfOsRROAYBekXYeC0mxv6U2x4NQmE=
From: matthias.bgg@kernel.org
To: gregkh@linuxfoundation.org,
	jslaby@suse.com,
	nsaenzjulienne@suse.de
Subject: [PATCH] serial: 8250_early: Add earlycon for BCM2835 aux uart
Date: Sun, 26 Jan 2020 13:33:14 +0100
Message-Id: <20200126123314.3558-1-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_043325_396210_D08D3B3C 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Matthias Brugger <mbrugger@suse.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, matthias.bgg@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <mbrugger@suse.com>

Define the OF early console for BCM2835 aux UART, which can be enabled
by passing "earlycon" on the boot command line. This UART is found on
BCM283x and BCM27xx SoCs, a.k.a. Raspberry Pi in its variants.

Signed-off-by: Matthias Brugger <mbrugger@suse.com>

---

 drivers/tty/serial/8250/8250_bcm2835aux.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/tty/serial/8250/8250_bcm2835aux.c b/drivers/tty/serial/8250/8250_bcm2835aux.c
index 8ce700c1a7fc..6769cea2964a 100644
--- a/drivers/tty/serial/8250/8250_bcm2835aux.c
+++ b/drivers/tty/serial/8250/8250_bcm2835aux.c
@@ -135,6 +135,24 @@ static struct platform_driver bcm2835aux_serial_driver = {
 };
 module_platform_driver(bcm2835aux_serial_driver);
 
+#ifdef CONFIG_SERIAL_8250_CONSOLE
+
+static int __init early_bcm2835aux_setup(struct earlycon_device *device,
+					const char *options)
+{
+	if (!device->port.membase)
+		return -ENODEV;
+
+	device->port.iotype = UPIO_MEM32;
+	device->port.regshift = 2;
+
+	return early_serial8250_setup(device, NULL);
+}
+
+OF_EARLYCON_DECLARE(bcm2835aux, "brcm,bcm2835-aux-uart",
+		    early_bcm2835aux_setup);
+#endif
+
 MODULE_DESCRIPTION("BCM2835 auxiliar UART driver");
 MODULE_AUTHOR("Martin Sperl <kernel@martin.sperl.org>");
 MODULE_LICENSE("GPL v2");
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
