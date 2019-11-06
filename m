Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A42F1172
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 09:51:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5NFVbk8RXt6stj2uV94iIUDNaq50r0uKuv8cKe2yKjw=; b=EZSdrcrwYPpXJ8
	8JNR/mH/6g2ptA8DTHX4nIeRBAGidtjTDvj5Hg9y9C6DD+VXhfkv+KTskMm1RdKQ1GCo6q/d0KnfT
	n2ExFkHJp7fnK/Q+osR8tQlprh2n2bSsgWSnzXe/SUlRomMNvjg9xatttG6RGpuhJVlpbP4ZL3Xbb
	VJN5ecSTNW2ImoEcpBEcHIJYN87YQ68jr0upUOho/oeGPdjUinMCA0A4PurgrUZ62C0irLHm+Shlu
	DRo/c2G29aV6ZBMx9Kzg9x3mnPa90KdG+2uyPSXseJSqNxgiTmJOqlJb1zDWvL/W9vfB8QSsrIJHf
	9zDKuEDzjMQVYwCQsdSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSH2L-0006aH-An; Wed, 06 Nov 2019 08:51:33 +0000
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSH2B-0006YL-Bt
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 08:51:26 +0000
Received: by mail-lj1-f194.google.com with SMTP id y23so14200613ljh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 00:51:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=c3nnHozNVo33X9zO/QL+5QpZZS5/E8q0Yvon3W4ua40=;
 b=VclGV4+c/9snoXERF4lFZlHnMJl4goQpDbKH5261WdJMTWQZ2sivZ3ehmCnJkTZnXV
 KRBxahgeG6K2NKetGn2VTqHiE2JIK1tS/VymgsMEsJ6sA1sKjGnS6pg+GZSMFQdOpggF
 z8QAvGgIqGwU9yDq3d8Vb6wfq57weDwxEhNMJB7GGKjjOt7PbGMe9daWHAndMEl3kIUW
 smrJF/9e49QLgv+qf3R0AiJSJKdZsSAR/mzMsUfwKC5HdkREU30ZKlvbauu/aHFU2lTO
 MSmE8epgkbTnIuBM6eBLkBHYvJmhGkf8Ura4i0CT3/2IOwKoXLgbbCwgCDEhyYFE0VTh
 4PXQ==
X-Gm-Message-State: APjAAAXfd9e+67h8SoYyCk8s4574D2TM960oppLl7f6ShFt95/r0rrvc
 arqrauWoDFa7exkl+zljbYM=
X-Google-Smtp-Source: APXvYqy367nB+V0F1e2toQfvmNROyVnp/ORoMN537PDITKvukOhmV78ubJvC9dv5Gfr74RPoFLhXVg==
X-Received: by 2002:a2e:3e18:: with SMTP id l24mr1039173lja.48.1573030281406; 
 Wed, 06 Nov 2019 00:51:21 -0800 (PST)
Received: from localhost.localdomain ([213.255.186.46])
 by smtp.gmail.com with ESMTPSA id u12sm10608459lje.1.2019.11.06.00.51.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 00:51:20 -0800 (PST)
Date: Wed, 6 Nov 2019 10:51:06 +0200
From: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To: matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Subject: [PATCH v2 0/2] Add definition for GPIO direction
Message-ID: <cover.1573029228.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_005124_931618_ED92F8D6 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mazziesaccount[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
 linux-aspeed@lists.ozlabs.org, David Daney <david.daney@cavium.com>,
 Linus Walleij <linus.walleij@linaro.org>, alsa-devel@alsa-project.org,
 Peter Tyser <ptyser@xes-inc.com>, Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Fabio Estevam <festevam@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Kevin Hilman <khilman@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, Marek Behun <marek.behun@nic.cz>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 bcm-kernel-feedback-list@broadcom.com, Joel Stanley <joel@jms.id.au>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Bamvor Jian Zhang <bamv2005@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-pwm@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-omap@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>, Ray Jui <rjui@broadcom.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 William Breathitt Gray <vilhelm.gray@gmail.com>, linux-gpio@vger.kernel.org,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, linux-tegra@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andrew Jeffery <andrew@aj.id.au>, "Enrico Weigelt,
 metux IT consult" <info@metux.net>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Thorsten Scherer <t.scherer@eckelmann.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, patches@opensource.cirrus.com,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch series adds definitions for GPIO line directions.

For occasional GPIO contributor like me it is always a pain to remember
whether 1 or 0 was used for GPIO direction INPUT/OUTPUT. Judging the
fact that I removed few comments like:

/* Return 0 if output, 1 if input */
/* This means "out" */
return 1; /* input */
return 0; /* output */

it seems at least some others may find it hard to remember too. Adding
defines for these values helps us who really have good - but short
duration - memory :]

This idea comes from RFC series for ROHM BD71828 PMIC and was initially
discussed with Linus Walleij here:
https://lore.kernel.org/lkml/c06725c3dd34118a324907137758d8b85b3d4043.camel@fi.rohmeurope.com/
but as this has no dependencies to BD71828 work (which probably takes a
while) I decided to make it independent series.

Patches are compile-tested only. I have no HW to really test them. Thus I'd
appreciate carefull review. This work is mainly about converting zeros
and ones to the new defines but it wouldn't be first time I get it
wrong.

Changelog v2:
 - squashed patches 2-61 into patch 2.
 - dropped patch 62 (can be applied later)
 - rebased (cherry-picked) changes on top of GPIO devel branch.

Patch 1:
 - adds the defines
Patch 2:
 - convert drivers to use new defines

This patch series is based on GPIO tree devel branch.

---

Matti Vaittinen (2):
  gpio: Add definition for GPIO direction
  gpio: Use new GPIO_LINE_DIRECTION

 drivers/gpio/gpio-104-dio-48e.c     |  5 ++++-
 drivers/gpio/gpio-104-idi-48.c      |  2 +-
 drivers/gpio/gpio-104-idio-16.c     |  4 ++--
 drivers/gpio/gpio-74xx-mmio.c       |  5 ++++-
 drivers/gpio/gpio-amd-fch.c         |  2 +-
 drivers/gpio/gpio-aspeed.c          |  7 +++----
 drivers/gpio/gpio-bcm-kona.c        |  6 +++---
 drivers/gpio/gpio-bd70528.c         |  8 +++++---
 drivers/gpio/gpio-bd9571mwv.c       |  4 +++-
 drivers/gpio/gpio-dln2.c            |  6 +++---
 drivers/gpio/gpio-exar.c            |  5 ++++-
 drivers/gpio/gpio-f7188x.c          |  5 ++++-
 drivers/gpio/gpio-gpio-mm.c         |  5 ++++-
 drivers/gpio/gpio-htc-egpio.c       |  5 ++++-
 drivers/gpio/gpio-ich.c             |  5 ++++-
 drivers/gpio/gpio-kempld.c          |  5 ++++-
 drivers/gpio/gpio-lp873x.c          |  2 +-
 drivers/gpio/gpio-lp87565.c         |  5 ++++-
 drivers/gpio/gpio-madera.c          |  5 ++++-
 drivers/gpio/gpio-max3191x.c        |  2 +-
 drivers/gpio/gpio-merrifield.c      |  5 ++++-
 drivers/gpio/gpio-mmio.c            | 21 +++++++++++++++------
 drivers/gpio/gpio-mockup.c          | 11 +++--------
 drivers/gpio/gpio-moxtet.c          |  4 ++--
 drivers/gpio/gpio-mvebu.c           |  5 ++++-
 drivers/gpio/gpio-mxs.c             |  5 ++++-
 drivers/gpio/gpio-omap.c            |  6 ++++--
 drivers/gpio/gpio-pca953x.c         |  5 ++++-
 drivers/gpio/gpio-pci-idio-16.c     |  4 ++--
 drivers/gpio/gpio-pcie-idio-24.c    |  9 ++++++---
 drivers/gpio/gpio-pisosr.c          |  2 +-
 drivers/gpio/gpio-pl061.c           |  5 ++++-
 drivers/gpio/gpio-raspberrypi-exp.c |  5 ++++-
 drivers/gpio/gpio-rcar.c            |  5 ++++-
 drivers/gpio/gpio-reg.c             |  3 ++-
 drivers/gpio/gpio-sa1100.c          |  5 ++++-
 drivers/gpio/gpio-sama5d2-piobu.c   |  7 ++++---
 drivers/gpio/gpio-sch.c             |  5 ++++-
 drivers/gpio/gpio-sch311x.c         |  5 ++++-
 drivers/gpio/gpio-siox.c            |  4 ++--
 drivers/gpio/gpio-stmpe.c           |  5 ++++-
 drivers/gpio/gpio-tc3589x.c         |  5 ++++-
 drivers/gpio/gpio-tegra.c           |  5 ++++-
 drivers/gpio/gpio-tegra186.c        |  4 ++--
 drivers/gpio/gpio-thunderx.c        |  5 ++++-
 drivers/gpio/gpio-tpic2810.c        |  2 +-
 drivers/gpio/gpio-tps65086.c        |  2 +-
 drivers/gpio/gpio-tps65912.c        |  4 ++--
 drivers/gpio/gpio-tps68470.c        |  6 +++---
 drivers/gpio/gpio-tqmx86.c          |  5 ++++-
 drivers/gpio/gpio-ts4900.c          |  5 ++++-
 drivers/gpio/gpio-twl4030.c         | 10 +++++-----
 drivers/gpio/gpio-twl6040.c         |  3 +--
 drivers/gpio/gpio-uniphier.c        |  5 ++++-
 drivers/gpio/gpio-wcove.c           |  7 +++++--
 drivers/gpio/gpio-ws16c48.c         |  5 ++++-
 drivers/gpio/gpio-xgene.c           |  5 ++++-
 drivers/gpio/gpio-xra1403.c         |  5 ++++-
 drivers/gpio/gpio-xtensa.c          |  4 ++--
 drivers/gpio/gpio-zynq.c            |  7 +++++--
 include/linux/gpio/driver.h         |  3 +++
 61 files changed, 214 insertions(+), 102 deletions(-)

-- 
2.21.0


-- 
Matti Vaittinen, Linux device drivers
ROHM Semiconductors, Finland SWDC
Kiviharjunlenkki 1E
90220 OULU
FINLAND

~~~ "I don't think so," said Rene Descartes. Just then he vanished ~~~
Simon says - in Latin please.
~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
Thanks to Simon Glass for the translation =] 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
