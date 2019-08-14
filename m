Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DDB8CF77
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:28:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HS6AB1fLMmlYXaWgBjvfo26PFxfwYW6xO78JDafHcg0=; b=RDC
	d5ynfqJbeRvZxpSI8GMiuRJCCjwp64ewsez6qeYzZzI8CG5S1YnQK4M0+7juUoTRDBTtfzN9/lOkt
	p+1dUUnEeM3/P0P+S7KaNL/lgv8Q0ThicZcdHZu297UAr2ki6K73XCLUJE3dcmCke9Z80b/qSgNW/
	SmCw35+f02PuRGUO0kEFuwupMmR+hQGmzE70fzDuiXk+aBXQTEocUrasK0E6LguAU5Mp3eVA1VYPT
	rncUFamq9JFuUDbESs7t0KVYxVOTP53Kn+JRtPRHUx4ctcyJd4APQ1SGjTECKPaFBpQ2c09bE3a30
	jAuEqTq+wC02qn2eQ0dcoScAAW/YP1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpa0-0002Qn-U6; Wed, 14 Aug 2019 09:28:28 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpZi-0002Pb-KE
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:28:12 +0000
Received: from ramsan ([84.194.98.4]) by albert.telenet-ops.be with bizsmtp
 id oxTy2001605gfCL06xTyTS; Wed, 14 Aug 2019 11:28:04 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hxpZW-0003Ul-P0; Wed, 14 Aug 2019 11:27:58 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hxpZW-0003aN-N5; Wed, 14 Aug 2019 11:27:58 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>
Subject: [PATCH 0/3] serial: Don't check for mctrl_gpio_to_gpiod() returning
 error
Date: Wed, 14 Aug 2019 11:27:54 +0200
Message-Id: <20190814092757.13726-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_022810_829789_6FE29620 
X-CRM114-Status: UNSURE (   6.64  )
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

	Hi Greg, Jiri,

Since commit 1d267ea6539f2663 ("serial: mctrl-gpio: simplify init
routine"), mctrl_gpio_init() returns failure if the assignment to any
member of the gpio array results in an error pointer.
Since commit c359522194593815 ("serial: mctrl_gpio: Avoid probe failures
in case of missing gpiolib"), mctrl_gpio_to_gpiod() returns NULL in the
!CONFIG_GPIOLIB case.
Hence there is no longer a need to check in serial drivers if
mctrl_gpio_to_gpiod() returns an error value.  A simple NULL check is
sufficient.

This series follows the spirit of commit 445df7ff3fd1a0a9 ("serial:
mctrl-gpio: drop usages of IS_ERR_OR_NULL") in the mctrl-gpio core.

Thanks!

Geert Uytterhoeven (3):
  serial: atmel: Don't check for mctrl_gpio_to_gpiod() returning error
  serial: mxs-auart: Don't check for mctrl_gpio_to_gpiod() returning
    error
  serial: sh-sci: Don't check for mctrl_gpio_to_gpiod() returning error

 drivers/tty/serial/atmel_serial.c | 12 ++++--------
 drivers/tty/serial/mxs-auart.c    |  6 ++----
 drivers/tty/serial/sh-sci.c       | 12 +++++-------
 3 files changed, 11 insertions(+), 19 deletions(-)

-- 
2.17.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
