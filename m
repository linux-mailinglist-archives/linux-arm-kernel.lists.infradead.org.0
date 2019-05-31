Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2A430D27
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 13:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4UTmdWtaDkIvEvzX+zfyOuWZmAkbZbTXhP/fcg5duWw=; b=PQTm2fHddpCzU3
	Ztvnc7TiHD0WiQwYx2t5loqzKXzYTO5UPMuTPpye998zTcnEGNpXw9YElkcoL0qr7Udr8ZSxnIe8d
	gg+QgPQFDvslh3FMEgsQZqGyLfhip54opzxmZRF+8NuHZYxQq7CWtHpC3q/s8I1YE6YyNIC0nWTRr
	qQmyWCOr4oRPgMOsnPzXMqspwE52OUTN66FjP9cofg4ZdxHSGz6+UCfflah/PKYjKKaMXCpsMTUA2
	FSdvQjwocl8utLEWYp1hnGUbATyUa2ntC3TbH3eIhai9y29GudUmwNcVEUPnZ6cagG4UzEFuOYTk0
	i1LI8c9T3hUUEjeanDAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWfUU-0002Go-UA; Fri, 31 May 2019 11:14:30 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWfU8-0001x8-E8
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 11:14:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/kzikQ15PIWXB4mHJpGrjLzRGjyFUcAPIzWetE5H09c=; b=LBxstYM2jUWJcOU2V8bJ2HlcHI
 4W10capyj8qPTRjbqvmSJNFnr7KK3+9bdLX7n7D9B27/ZS9oSL+mQ8kUni2Y8Qn/6Blu4xCIGmNqG
 EsKB5UFFWmJnGZ1W+9ZoYrFCg8foqazHypvSEQ3TsIbtXwh8GAfu/qYKtPDWdEjqMNkEzyHvJrkWU
 dxAtfjGxG7AcsfWuelCnFX50rirj8G9NpTnXW2b3Y3CecAVAhrlp9udSDYwIpQp5MXmrDwH2m57rz
 x7ik7dSIEMvwLo2lgoJVLBtLDk27pz3pygv+UHXBSu32XKL1ehNQgmj8DL/4nBZKyatkKL51+vwdc
 oXLRQiPw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:49058 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hWfTz-0000Ov-Ct; Fri, 31 May 2019 12:13:59 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hWfTy-0003fd-5R; Fri, 31 May 2019 12:13:58 +0100
In-Reply-To: <20190531111257.27hor6xgb3nsdghg@shell.armlinux.org.uk>
References: <20190531111257.27hor6xgb3nsdghg@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org,linux-serial@vger.kernel.org
Subject: [PATCH 3/6] ARM: sa1100/h3xxx: convert serial to gpiod APIs
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hWfTy-0003fd-5R@rmk-PC.armlinux.org.uk>
Date: Fri, 31 May 2019 12:13:58 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_041408_566884_8797BD11 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the iPAQ H3xxx serial modem control signals to use the gpiod
APIs rather than custom callbacks into platform code.

Acked-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/mach-sa1100/h3xxx.c | 64 ++++++++------------------------------------
 1 file changed, 11 insertions(+), 53 deletions(-)

diff --git a/arch/arm/mach-sa1100/h3xxx.c b/arch/arm/mach-sa1100/h3xxx.c
index 36a78b0c106f..e7362292612a 100644
--- a/arch/arm/mach-sa1100/h3xxx.c
+++ b/arch/arm/mach-sa1100/h3xxx.c
@@ -87,57 +87,6 @@ static struct resource h3xxx_flash_resource =
 /*
  * H3xxx uart support
  */
-static struct gpio h3xxx_uart_gpio[] = {
-	{ H3XXX_GPIO_COM_DCD,	GPIOF_IN,		"COM DCD" },
-	{ H3XXX_GPIO_COM_CTS,	GPIOF_IN,		"COM CTS" },
-	{ H3XXX_GPIO_COM_RTS,	GPIOF_OUT_INIT_LOW,	"COM RTS" },
-};
-
-static bool h3xxx_uart_request_gpios(void)
-{
-	static bool h3xxx_uart_gpio_ok;
-	int rc;
-
-	if (h3xxx_uart_gpio_ok)
-		return true;
-
-	rc = gpio_request_array(h3xxx_uart_gpio, ARRAY_SIZE(h3xxx_uart_gpio));
-	if (rc)
-		pr_err("h3xxx_uart_request_gpios: error %d\n", rc);
-	else
-		h3xxx_uart_gpio_ok = true;
-
-	return h3xxx_uart_gpio_ok;
-}
-
-static void h3xxx_uart_set_mctrl(struct uart_port *port, u_int mctrl)
-{
-	if (port->mapbase == _Ser3UTCR0) {
-		if (!h3xxx_uart_request_gpios())
-			return;
-		gpio_set_value(H3XXX_GPIO_COM_RTS, !(mctrl & TIOCM_RTS));
-	}
-}
-
-static u_int h3xxx_uart_get_mctrl(struct uart_port *port)
-{
-	u_int ret = TIOCM_CD | TIOCM_CTS | TIOCM_DSR;
-
-	if (port->mapbase == _Ser3UTCR0) {
-		if (!h3xxx_uart_request_gpios())
-			return ret;
-		/*
-		 * DCD and CTS bits are inverted in GPLR by RS232 transceiver
-		 */
-		if (gpio_get_value(H3XXX_GPIO_COM_DCD))
-			ret &= ~TIOCM_CD;
-		if (gpio_get_value(H3XXX_GPIO_COM_CTS))
-			ret &= ~TIOCM_CTS;
-	}
-
-	return ret;
-}
-
 static void h3xxx_uart_pm(struct uart_port *port, u_int state, u_int oldstate)
 {
 	if (port->mapbase == _Ser3UTCR0) {
@@ -170,12 +119,20 @@ static int h3xxx_uart_set_wake(struct uart_port *port, u_int enable)
 }
 
 static struct sa1100_port_fns h3xxx_port_fns __initdata = {
-	.set_mctrl	= h3xxx_uart_set_mctrl,
-	.get_mctrl	= h3xxx_uart_get_mctrl,
 	.pm		= h3xxx_uart_pm,
 	.set_wake	= h3xxx_uart_set_wake,
 };
 
+static struct gpiod_lookup_table h3xxx_uart3_gpio_table = {
+	.dev_id = "sa11x0-uart.3",
+	.table = {
+		GPIO_LOOKUP("gpio", H3XXX_GPIO_COM_DCD, "dcd", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("gpio", H3XXX_GPIO_COM_CTS, "cts", GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("gpio", H3XXX_GPIO_COM_RTS, "rts", GPIO_ACTIVE_LOW),
+		{ },
+	},
+};
+
 /*
  * EGPIO
  */
@@ -283,6 +240,7 @@ static struct gpiod_lookup_table h3xxx_pcmcia_gpio_table = {
 void __init h3xxx_mach_init(void)
 {
 	gpiod_add_lookup_table(&h3xxx_pcmcia_gpio_table);
+	gpiod_add_lookup_table(&h3xxx_uart3_gpio_table);
 	sa1100_register_uart_fns(&h3xxx_port_fns);
 	sa11x0_register_mtd(&h3xxx_flash_data, &h3xxx_flash_resource, 1);
 	platform_add_devices(h3xxx_devices, ARRAY_SIZE(h3xxx_devices));
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
