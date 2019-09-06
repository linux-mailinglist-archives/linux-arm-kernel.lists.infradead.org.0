Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE06BAB44D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 10:46:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0H2FeaImL7URqrTCnrRB4AEq6D5WOsxEhlqnXRRpe6M=; b=nbB
	W5fVkPfUsHIO6iGA2uxjZuewhdHzsl0vHB0gnvVRmzfx9Ovuluf1U66U3MDS4Q02NCDdwGrtPhqBq
	rsqPszM5rd1F96bk9mmQDxAXqAJph0l+Y7GDkK4u4aRJddyfqtopekvm9XXtgqycn8tDN3CbLhUHZ
	k/YcFJBAoE861snSeF9Crk17DiLbW/iXHV+ixsoCce9iZxuHuCA2p4wxpvEkRBnVcWeFSKdP1IGhA
	igUkrKN5El/iweX/LjfD4312/rfVDy8fo6gOWAP12jxabXEXjL9bKXEhykcINWafVtPIuYklCOcHa
	u9ShanJyxZsbNCbHUtRCLdWdiZ3YYEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i69tJ-0006Dl-M8; Fri, 06 Sep 2019 08:46:50 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i69sO-0005kd-KD
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 08:45:56 +0000
Received: from ramsan ([84.194.98.4]) by baptiste.telenet-ops.be with bizsmtp
 id y8lg2000x05gfCL018lhml; Fri, 06 Sep 2019 10:45:42 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i69sC-0003Mz-T2; Fri, 06 Sep 2019 10:45:40 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i69sC-0005h1-QK; Fri, 06 Sep 2019 10:45:40 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH 0/4] gpio: API boundary cleanups
Date: Fri,  6 Sep 2019 10:45:35 +0200
Message-Id: <20190906084539.21838-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_014552_819950_95BEEF7F 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi Linus, Bartosz,

This patch series contains various API boundary cleanups for gpiolib:
  - The first two patches make two functions private,
  - The last two patches switch the remaining gpiolib exported functions
    from EXPORT_SYMBOL() to EXPORT_SYMBOL_GPL().

After this there is only a single GPIO driver function exported with
EXPORT_SYMBOL();

    drivers/gpio/gpio-htc-egpio.c:EXPORT_SYMBOL(htc_egpio_get_wakeup_irq);

I believe this symbol was never used upstream, and may be a relic of the
original out-of-tree code the htc-egpio was based on.  I don't know if
there (still) exist out-of-tree users of the symbol.

Thanks for your comments!

Geert Uytterhoeven (4):
  gpio: of: Make of_get_named_gpiod_flags() private
  gpio: of: Make of_gpio_simple_xlate() private
  gpio: of: Switch to EXPORT_SYMBOL_GPL()
  gpio: devres: Switch to EXPORT_SYMBOL_GPL()

 drivers/gpio/gpiolib-devres.c | 28 ++++++++++++++--------------
 drivers/gpio/gpiolib-of.c     | 16 ++++++++--------
 drivers/gpio/gpiolib-of.h     |  7 -------
 include/linux/of_gpio.h       | 11 -----------
 4 files changed, 22 insertions(+), 40 deletions(-)

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
