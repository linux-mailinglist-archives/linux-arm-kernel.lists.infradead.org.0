Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E27DE30D32
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 13:15:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/DkN9h/DpNUYjN0IYuFRqtOk0WiBIKqRbOvB/MVwVc=; b=SHizQniP4NUqAZ
	ayDWGwlNLzEo2fBBOUr7pKJb4kUEBLDF/3nvcT5OcoB0FpHCtT0cLs1h8YjnUFmMyhillZBrITWXt
	bdqwj0RmAhataK1+x+IVTHDpHvjOVGJ4igBiEf27J946JjperBCMWPXGoO+I+lbZU1E0Xx09TZ6cC
	DQdxK5l7efnFhfpJ3PKLYP4UAZowsFcRxus1WFlAK2+wP7zFJd8qOTG3e/VcEuNP266PexhMp3Y6V
	wm8hT6k0mnf2BIGo4EJbpkXV/zG4KssXnNN9f0uHt72VlvSI1VoVmWtrJGXQBlM7ZSto3PcJ86/0O
	K95bFRNQYONFaYqxznWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWfV6-0002pH-Uf; Fri, 31 May 2019 11:15:08 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWfUP-0002GT-JZ
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 11:14:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sEApIaqlXAgNfqtUPcWBB7YpvkDyHM3SN5uqZlRAsYo=; b=fkkbJs4Oi5jsy0SQIGVC/6dIqx
 q5p/8I6Z95onuyyCUWbn28DwQgzYUGQkild6jOwRLzBnod0VR4O6IS0qdqUwFvILkP6HkXTALo6nr
 RrZxhx86059zw6+2C2NoLsEoI9zG2v9f2ISLhoPA9rPZp3ZWOjdaj1oj3KOtPMaRMzmtvV0+OEFJ+
 dUMuD7Qtc9LyfKx3Bm+TtMDtVxIAeVzBjpLua6kbpHsQavQGZaG5eWh2VRE7e6EC90ORvyQqLT+Jl
 qC0jUbrwk+MGXU5GfMGqF+2Non0Z9XstKCJ7oFcgKv1HrA/XXc9evOgIuo5/SGmGcUcXv+3KWHltt
 1jGI+1SQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:39632 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hWfUA-0000PF-9O; Fri, 31 May 2019 12:14:10 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hWfU8-0003fr-DP; Fri, 31 May 2019 12:14:08 +0100
In-Reply-To: <20190531111257.27hor6xgb3nsdghg@shell.armlinux.org.uk>
References: <20190531111257.27hor6xgb3nsdghg@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org,linux-serial@vger.kernel.org
Subject: [PATCH 5/6] ARM: sa1100/hackkit: remove empty serial mctrl functions
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hWfU8-0003fr-DP@rmk-PC.armlinux.org.uk>
Date: Fri, 31 May 2019 12:14:08 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_041426_358681_8A599EE0 
X-CRM114-Status: GOOD (  11.83  )
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

Remove the empty serial modem control signal functions from hackkit
as these are unnecessary - the core code can copes fine without
these.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/mach-sa1100/hackkit.c | 48 ------------------------------------------
 1 file changed, 48 deletions(-)

diff --git a/arch/arm/mach-sa1100/hackkit.c b/arch/arm/mach-sa1100/hackkit.c
index 643d5f2d9af9..9faf602666cf 100644
--- a/arch/arm/mach-sa1100/hackkit.c
+++ b/arch/arm/mach-sa1100/hackkit.c
@@ -49,8 +49,6 @@
 /* init funcs */
 static void __init hackkit_map_io(void);
 
-static u_int hackkit_get_mctrl(struct uart_port *port);
-static void hackkit_set_mctrl(struct uart_port *port, u_int mctrl);
 static void hackkit_uart_pm(struct uart_port *port, u_int state, u_int oldstate);
 
 /**********************************************************************
@@ -71,8 +69,6 @@ static struct map_desc hackkit_io_desc[] __initdata = {
 };
 
 static struct sa1100_port_fns hackkit_port_fns __initdata = {
-	.set_mctrl	= hackkit_set_mctrl,
-	.get_mctrl	= hackkit_get_mctrl,
 	.pm		= hackkit_uart_pm,
 };
 
@@ -105,50 +101,6 @@ static void hackkit_uart_pm(struct uart_port *port, u_int state, u_int oldstate)
 	/* TODO: switch on/off uart in powersave mode */
 }
 
-/*
- * Note! this can be called from IRQ context.
- * FIXME: No modem ctrl lines yet.
- */
-static void hackkit_set_mctrl(struct uart_port *port, u_int mctrl)
-{
-#if 0
-	if (port->mapbase == _Ser1UTCR0) {
-		u_int set = 0, clear = 0;
-
-		if (mctrl & TIOCM_RTS)
-			set |= PT_CTRL2_RS1_RTS;
-		else
-			clear |= PT_CTRL2_RS1_RTS;
-
-		if (mctrl & TIOCM_DTR)
-			set |= PT_CTRL2_RS1_DTR;
-		else
-			clear |= PT_CTRL2_RS1_DTR;
-
-		PTCTRL2_clear(clear);
-		PTCTRL2_set(set);
-	}
-#endif
-}
-
-static u_int hackkit_get_mctrl(struct uart_port *port)
-{
-	u_int ret = 0;
-#if 0
-	u_int irqsr = PT_IRQSR;
-
-	/* need 2 reads to read current value */
-	irqsr = PT_IRQSR;
-
-	/* TODO: check IRQ source register for modem/com
-	 status lines and set them correctly. */
-#endif
-
-	ret = TIOCM_CD | TIOCM_CTS | TIOCM_DSR;
-
-	return ret;
-}
-
 static struct mtd_partition hackkit_partitions[] = {
 	{
 		.name		= "BLOB",
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
