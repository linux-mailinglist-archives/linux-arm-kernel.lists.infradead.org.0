Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D2B134057
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 12:23:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+H8WLbsyiGbRaqhOUJ+3LlkgrMCs63MciScaT9kJpM=; b=QtC+X7k+Hb1mFI
	3hzt+LtG/zxPWF61xHsSsV/XV8ewYk4Nw6GDuzVAlzvAnnWfeSixwEUaZyQm65rSDhevQbBzrq6iy
	V1TZCsrDxLt/gpAzGMpyFYeddkedPeeZW4sG25rW+FslXBdUYaZrGoyIEwZX1CfJiZqhfKsKzHmTh
	k5EWqZdg4MzJM0vkRVTdA1gXqNEFFm2q2Ea93mxdb4vVw5tqDU5Rl1cCY1XMGXnbjFXExA1AkSGxt
	bbMC0gb4usuKM3jrjZfjPi9IDiRDF4nCCD4mE3QKGsnVhpVfzpt97KCfhSTl9YjIx9RVSRMFAphe/
	vYMqPIbyIyOXtk0VcZfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip9Qu-0004WU-0u; Wed, 08 Jan 2020 11:23:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9Qm-0004Vu-6b
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 11:23:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ip9Qj-0005Qr-0q; Wed, 08 Jan 2020 12:23:17 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1ip9Qh-0005ET-Tl; Wed, 08 Jan 2020 12:23:15 +0100
Date: Wed, 8 Jan 2020 12:23:15 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Andy Duan <fugang.duan@nxp.com>
Subject: Re: [EXT] Re: iMX6/UART imprecise external abort
Message-ID: <20200108112315.kgbwrc7qcjcjcaxh@pengutronix.de>
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <FD3C2267-A9B8-45BB-B027-C85DB5E60829@designa-electronics.com>
 <VI1PR0402MB36003DBB288BC2B02A505ADCFF2C0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <CAOMZO5BXMdzTBVaM7xbetgDLB9Aycd=yrUe00weGgcQtgZZBXQ@mail.gmail.com>
 <VI1PR0402MB36007146C33D2B4F7F24FB46FF2E0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <20191223101627.p4a72y6ai5ns7pit@pengutronix.de>
 <20200107222406.vw7ewgm7uilu2x6e@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107222406.vw7ewgm7uilu2x6e@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_032320_245049_AF1FDFD2 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Andre Renaud <arenaud@designa-electronics.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, kernel@pengutronix.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Tue, Jan 07, 2020 at 11:24:06PM +0100, Uwe Kleine-K=F6nig wrote:
> I will look into this again tomorrow when I'm well rested and create a
> patch.

Here you go, for now without proper commit log etc.pp.

Please test if this fixes your problems.

I currently don't have the setup to trigger this bug, but normal console
usage still works for me.

Best regards
Uwe

-------->8--------
From 025a72c6de6df8b71414378a0297568df371bd73 Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Uwe=3D20Kleine-K=3DC3=3DB6nig?=3D <u.kleine-koenig@pengut=
ronix.de>
Date: Wed, 8 Jan 2020 09:47:20 +0100
Subject: [PATCH RFT] serial: imx: fix a race condition in receive path

---
 drivers/tty/serial/imx.c | 52 ++++++++++++++++++++++++++++++----------
 1 file changed, 39 insertions(+), 13 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index a9e20e6c63ad..679b2de27c4d 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -700,22 +700,33 @@ static void imx_uart_start_tx(struct uart_port *port)
 	}
 }
 =

-static irqreturn_t imx_uart_rtsint(int irq, void *dev_id)
+static irqreturn_t __imx_uart_rtsint(int irq, void *dev_id)
 {
 	struct imx_port *sport =3D dev_id;
 	u32 usr1;
 =

-	spin_lock(&sport->port.lock);
-
 	imx_uart_writel(sport, USR1_RTSD, USR1);
 	usr1 =3D imx_uart_readl(sport, USR1) & USR1_RTSS;
 	uart_handle_cts_change(&sport->port, !!usr1);
 	wake_up_interruptible(&sport->port.state->port.delta_msr_wait);
 =

-	spin_unlock(&sport->port.lock);
 	return IRQ_HANDLED;
 }
 =

+static irqreturn_t imx_uart_rtsint(int irq, void *dev_id)
+{
+	struct imx_port *sport =3D dev_id;
+	irqreturn_t ret;
+
+	spin_lock(&sport->port.lock);
+
+	ret =3D __imx_uart_rtsint(irq, dev_id);
+
+	spin_unlock(&sport->port.lock);
+
+	return ret;
+}
+
 static irqreturn_t imx_uart_txint(int irq, void *dev_id)
 {
 	struct imx_port *sport =3D dev_id;
@@ -726,14 +737,12 @@ static irqreturn_t imx_uart_txint(int irq, void *dev_=
id)
 	return IRQ_HANDLED;
 }
 =

-static irqreturn_t imx_uart_rxint(int irq, void *dev_id)
+static irqreturn_t __imx_uart_rxint(int irq, void *dev_id)
 {
 	struct imx_port *sport =3D dev_id;
 	unsigned int rx, flg, ignored =3D 0;
 	struct tty_port *port =3D &sport->port.state->port;
 =

-	spin_lock(&sport->port.lock);
-
 	while (imx_uart_readl(sport, USR2) & USR2_RDR) {
 		u32 usr2;
 =

@@ -792,11 +801,26 @@ static irqreturn_t imx_uart_rxint(int irq, void *dev_=
id)
 	}
 =

 out:
-	spin_unlock(&sport->port.lock);
 	tty_flip_buffer_push(port);
+
 	return IRQ_HANDLED;
 }
 =

+static irqreturn_t imx_uart_rxint(int irq, void *dev_id)
+{
+	struct imx_port *sport =3D dev_id;
+	struct tty_port *port =3D &sport->port.state->port;
+	irqreturn_t ret;
+
+	spin_lock(&sport->port.lock);
+
+	ret =3D __imx_uart_rxint(irq, dev_id);
+
+	spin_unlock(&sport->port.lock);
+
+	return ret;
+}
+
 static void imx_uart_clear_rx_errors(struct imx_port *sport);
 =

 /*
@@ -855,6 +879,8 @@ static irqreturn_t imx_uart_int(int irq, void *dev_id)
 	unsigned int usr1, usr2, ucr1, ucr2, ucr3, ucr4;
 	irqreturn_t ret =3D IRQ_NONE;
 =

+	spin_lock(&sport->port.lock);
+
 	usr1 =3D imx_uart_readl(sport, USR1);
 	usr2 =3D imx_uart_readl(sport, USR2);
 	ucr1 =3D imx_uart_readl(sport, UCR1);
@@ -888,27 +914,25 @@ static irqreturn_t imx_uart_int(int irq, void *dev_id)
 		usr2 &=3D ~USR2_ORE;
 =

 	if (usr1 & (USR1_RRDY | USR1_AGTIM)) {
-		imx_uart_rxint(irq, dev_id);
+		__imx_uart_rxint(irq, dev_id);
 		ret =3D IRQ_HANDLED;
 	}
 =

 	if ((usr1 & USR1_TRDY) || (usr2 & USR2_TXDC)) {
-		imx_uart_txint(irq, dev_id);
+		imx_uart_transmit_buffer(sport);
 		ret =3D IRQ_HANDLED;
 	}
 =

 	if (usr1 & USR1_DTRD) {
 		imx_uart_writel(sport, USR1_DTRD, USR1);
 =

-		spin_lock(&sport->port.lock);
 		imx_uart_mctrl_check(sport);
-		spin_unlock(&sport->port.lock);
 =

 		ret =3D IRQ_HANDLED;
 	}
 =

 	if (usr1 & USR1_RTSD) {
-		imx_uart_rtsint(irq, dev_id);
+		__imx_uart_rtsint(irq, dev_id);
 		ret =3D IRQ_HANDLED;
 	}
 =

@@ -923,6 +947,8 @@ static irqreturn_t imx_uart_int(int irq, void *dev_id)
 		ret =3D IRQ_HANDLED;
 	}
 =

+	spin_unlock(&sport->port.lock);
+
 	return ret;
 }
 =

-- =

2.24.0



-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
