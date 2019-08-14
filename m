Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9688CF7B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:29:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lc1W/eeNbwNp4JpJHTlPZBTAt4+UnDN8cmH7CnBVZQw=; b=maFO7dAqmt8heAePonW/5nqDwq
	Y5XsrcBC3VVS63jr/BcGRqARh77boSc/zTSx8kHMTSKV835Ie4wzS9CblmSZMAfvpx4B2M+yS8h2W
	ec26rVfYuDZVywx3dfa3YXARC+eQaomYRbFJ93i1HRxzeZsfYmTo+SE1o2akUviKipyjj6X6Y1gZw
	K82yoiskzhdtwwvSOgfu+VtQaiPnx6tm5omwssqKandM1YKp0Xob1x0YqUpEWwWVemdTjx+sn23UY
	h517K4SkBo5/c/BKSggQIe4REwIKfXlxflRrbz1NBdQ1fMFCuEiTHMOvHHMu/LKH+j2/KDSbSeOy4
	Kn/CKuiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpae-00031n-V7; Wed, 14 Aug 2019 09:29:09 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpZi-0002Pc-KF
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:28:13 +0000
Received: from ramsan ([84.194.98.4]) by albert.telenet-ops.be with bizsmtp
 id oxTy2001705gfCL06xTyTT; Wed, 14 Aug 2019 11:28:04 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hxpZW-0003Up-QA; Wed, 14 Aug 2019 11:27:58 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hxpZW-0003aS-P4; Wed, 14 Aug 2019 11:27:58 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>
Subject: [PATCH 2/3] serial: mxs-auart: Don't check for mctrl_gpio_to_gpiod()
 returning error
Date: Wed, 14 Aug 2019 11:27:56 +0200
Message-Id: <20190814092757.13726-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190814092757.13726-1-geert+renesas@glider.be>
References: <20190814092757.13726-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_022810_841929_9F0ABEB6 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-serial@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Richard Genoud <richard.genoud@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-renesas-soc@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit 1d267ea6539f2663 ("serial: mctrl-gpio: simplify init
routine"), mctrl_gpio_init() returns failure if the assignment to any
member of the gpio array results in an error pointer.
Since commit c359522194593815 ("serial: mctrl_gpio: Avoid probe failures
in case of missing gpiolib"), mctrl_gpio_to_gpiod() returns NULL in the
!CONFIG_GPIOLIB case.
Hence there is no longer a need to check for mctrl_gpio_to_gpiod()
returning an error value.  A simple NULL check is sufficient.

This follows the spirit of commit 445df7ff3fd1a0a9 ("serial: mctrl-gpio:
drop usages of IS_ERR_OR_NULL") in the mctrl-gpio core.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/tty/serial/mxs-auart.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/tty/serial/mxs-auart.c b/drivers/tty/serial/mxs-auart.c
index 4c188f4079b3ea68..e3452597068292f9 100644
--- a/drivers/tty/serial/mxs-auart.c
+++ b/drivers/tty/serial/mxs-auart.c
@@ -969,10 +969,8 @@ static int mxs_auart_dma_init(struct mxs_auart_port *s)
 
 }
 
-#define RTS_AT_AUART()	IS_ERR_OR_NULL(mctrl_gpio_to_gpiod(s->gpios,	\
-							UART_GPIO_RTS))
-#define CTS_AT_AUART()	IS_ERR_OR_NULL(mctrl_gpio_to_gpiod(s->gpios,	\
-							UART_GPIO_CTS))
+#define RTS_AT_AUART()	!mctrl_gpio_to_gpiod(s->gpios, UART_GPIO_RTS)
+#define CTS_AT_AUART()	!mctrl_gpio_to_gpiod(s->gpios, UART_GPIO_CTS)
 static void mxs_auart_settermios(struct uart_port *u,
 				 struct ktermios *termios,
 				 struct ktermios *old)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
