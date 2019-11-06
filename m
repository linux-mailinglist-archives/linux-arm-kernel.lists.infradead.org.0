Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8618F18E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:40:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=apXp+oQWcW6evAM6c0IHiM23t8P8Nt3E/rN6V1qWF5Q=; b=F8bjmpUF3rsP/X
	LFClxKzHSL0ZotIBrbAVtm/1/glSAAC35HHyLVEKCUffhjk0kYbtfgiSzKBEBsaR9udrOBNIcRZNy
	gIhS+mVulbWDNRi/GRWiY/Gzvz6QWTjk1rUNVJE+GnjjlosXOwyfgRkSbV52PEjaaIbTNwFfB4vQB
	/S5jWMOZgLZyuqoV3jsXpVEAdZwv4dOLr/13BbLwtNNn+1qYdSFh2C8bVRF24OS2CRM3TwERsGqhk
	s3pA3ZeTXC2mhVghj1NRuWWjTZ9WgvhjjTWl+nk0mtwDeWvon/liwwwx+vCbdrykQSx1KLBBA5Y/1
	CxpHEPu3WJpSUvVDtZtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSMTm-0006XP-CD; Wed, 06 Nov 2019 14:40:14 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSMTb-0005uY-Bi
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:40:05 +0000
Received: by mail-yw1-xc41.google.com with SMTP id g77so9627914ywb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 06:40:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BVrTVz8ui5Yp2HVcAdLi7rCx+++bQxsOlRhu0XjCdeM=;
 b=cuDum2cbx52NXdaDRZT0ieXihdO/5T2jtmSnDfsL0Mb1dBV+gPEZWE9lh5soiuJnet
 kGtI1/WLWkq3/cbSiBoQBYh6lF7B039WrABEFiM8HUcecIDO0zEHsSM8OcpejoIAjrqk
 Jtc9inj8ruXwB/yuQrGrneghTT1lUH2Zi6g0aVsI3XaALTO3YLa0gkq5b+aAoyTXKw6V
 C+E/1I4XbruPAgDdS7wAdmu/6I4Btz8ErUSqjJrsCJ1AT1v5dBif9DRG6TeUPEbukijF
 ApAFiWiH7OZ6xLADVOTR4xCfYA0GhkPiqUW99Sao2tVlGt3qFlUVd0vvA36ntMHvlSwS
 82XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BVrTVz8ui5Yp2HVcAdLi7rCx+++bQxsOlRhu0XjCdeM=;
 b=ansZHlgtFCCK0+qvPXXIArTkqAu6o2QidBuryDoM9PGP9Ym2+fhuHhyW0Y70+AiBuc
 nNuDOoC44YlLPM/KYeJz2om7Ss5TH9gVcEn/0kA1P9k56CyXJLCPFqUE+8JQgZquA0C2
 7eKRPPskRhXyIP/PBMWr+Lgt6ZB11vwarW18jWjlQK3bbWNuaOEQLeruNz7IM9aqWRY5
 laPw0wwMPbC0hINF0PmFFPS5KrrlaeXiwaec/Rt1Kj0xcXZVkiaO9UFSDhAWviEZJiBn
 81g3+ugD28xRpuZbdvxFFL+1ggG70N/1czOMx0xEcW3X/KnESmenF9T26fRzoo8OYkUv
 TaeQ==
X-Gm-Message-State: APjAAAXvwbZMbt3ving2XCEDGJKQhXT6j2ad0SHts4w1PHJ4uIcAPGpG
 IOPeCsc8s9rqWk0gmbctF2Q=
X-Google-Smtp-Source: APXvYqxRUPEr6QgHY++cmspAGCQjmvK0JdJGvaYm4sCFJmqo6EO5dj0fS8aHhdWeWgO5dcya5jh3Bg==
X-Received: by 2002:a81:784b:: with SMTP id t72mr1838127ywc.118.1573051201835; 
 Wed, 06 Nov 2019 06:40:01 -0800 (PST)
Received: from icarus (072-189-084-142.res.spectrum.com. [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id b199sm9542385ywh.23.2019.11.06.06.39.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 06:40:00 -0800 (PST)
Date: Wed, 6 Nov 2019 09:39:38 -0500
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Subject: Re: [PATCH v2 0/2] Add definition for GPIO direction
Message-ID: <20191106143938.GA3176@icarus>
References: <cover.1573029228.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1573029228.git.matti.vaittinen@fi.rohmeurope.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_064003_408478_385F2A10 
X-CRM114-Status: GOOD (  24.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Fabio Estevam <festevam@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Kevin Hilman <khilman@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, Marek Behun <marek.behun@nic.cz>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 bcm-kernel-feedback-list@broadcom.com, Joel Stanley <joel@jms.id.au>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Bamvor Jian Zhang <bamv2005@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-pwm@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-omap@vger.kernel.org,
 mazziesaccount@gmail.com, Ray Jui <rjui@broadcom.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-gpio@vger.kernel.org,
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

On Wed, Nov 06, 2019 at 10:51:06AM +0200, Matti Vaittinen wrote:
> The patch series adds definitions for GPIO line directions.
> 
> For occasional GPIO contributor like me it is always a pain to remember
> whether 1 or 0 was used for GPIO direction INPUT/OUTPUT. Judging the
> fact that I removed few comments like:
> 
> /* Return 0 if output, 1 if input */
> /* This means "out" */
> return 1; /* input */
> return 0; /* output */
> 
> it seems at least some others may find it hard to remember too. Adding
> defines for these values helps us who really have good - but short
> duration - memory :]
> 
> This idea comes from RFC series for ROHM BD71828 PMIC and was initially
> discussed with Linus Walleij here:
> https://lore.kernel.org/lkml/c06725c3dd34118a324907137758d8b85b3d4043.camel@fi.rohmeurope.com/
> but as this has no dependencies to BD71828 work (which probably takes a
> while) I decided to make it independent series.
> 
> Patches are compile-tested only. I have no HW to really test them. Thus I'd
> appreciate carefull review. This work is mainly about converting zeros
> and ones to the new defines but it wouldn't be first time I get it
> wrong.
> 
> Changelog v2:
>  - squashed patches 2-61 into patch 2.
>  - dropped patch 62 (can be applied later)
>  - rebased (cherry-picked) changes on top of GPIO devel branch.
> 
> Patch 1:
>  - adds the defines
> Patch 2:
>  - convert drivers to use new defines
> 
> This patch series is based on GPIO tree devel branch.

Just a tip for future patchsets in case you didn't know, you case
specify the base of your patchset by using the "--base" option:
https://git-scm.com/docs/git-format-patch#_base_tree_information

This will append a "base-commit" line with the commit hash at the end of
the first message so that it's unabiguous which base you're using
(useful in case the branch changes before your patch is reviewed).

William Breathitt Gray

> 
> ---
> 
> Matti Vaittinen (2):
>   gpio: Add definition for GPIO direction
>   gpio: Use new GPIO_LINE_DIRECTION
> 
>  drivers/gpio/gpio-104-dio-48e.c     |  5 ++++-
>  drivers/gpio/gpio-104-idi-48.c      |  2 +-
>  drivers/gpio/gpio-104-idio-16.c     |  4 ++--
>  drivers/gpio/gpio-74xx-mmio.c       |  5 ++++-
>  drivers/gpio/gpio-amd-fch.c         |  2 +-
>  drivers/gpio/gpio-aspeed.c          |  7 +++----
>  drivers/gpio/gpio-bcm-kona.c        |  6 +++---
>  drivers/gpio/gpio-bd70528.c         |  8 +++++---
>  drivers/gpio/gpio-bd9571mwv.c       |  4 +++-
>  drivers/gpio/gpio-dln2.c            |  6 +++---
>  drivers/gpio/gpio-exar.c            |  5 ++++-
>  drivers/gpio/gpio-f7188x.c          |  5 ++++-
>  drivers/gpio/gpio-gpio-mm.c         |  5 ++++-
>  drivers/gpio/gpio-htc-egpio.c       |  5 ++++-
>  drivers/gpio/gpio-ich.c             |  5 ++++-
>  drivers/gpio/gpio-kempld.c          |  5 ++++-
>  drivers/gpio/gpio-lp873x.c          |  2 +-
>  drivers/gpio/gpio-lp87565.c         |  5 ++++-
>  drivers/gpio/gpio-madera.c          |  5 ++++-
>  drivers/gpio/gpio-max3191x.c        |  2 +-
>  drivers/gpio/gpio-merrifield.c      |  5 ++++-
>  drivers/gpio/gpio-mmio.c            | 21 +++++++++++++++------
>  drivers/gpio/gpio-mockup.c          | 11 +++--------
>  drivers/gpio/gpio-moxtet.c          |  4 ++--
>  drivers/gpio/gpio-mvebu.c           |  5 ++++-
>  drivers/gpio/gpio-mxs.c             |  5 ++++-
>  drivers/gpio/gpio-omap.c            |  6 ++++--
>  drivers/gpio/gpio-pca953x.c         |  5 ++++-
>  drivers/gpio/gpio-pci-idio-16.c     |  4 ++--
>  drivers/gpio/gpio-pcie-idio-24.c    |  9 ++++++---
>  drivers/gpio/gpio-pisosr.c          |  2 +-
>  drivers/gpio/gpio-pl061.c           |  5 ++++-
>  drivers/gpio/gpio-raspberrypi-exp.c |  5 ++++-
>  drivers/gpio/gpio-rcar.c            |  5 ++++-
>  drivers/gpio/gpio-reg.c             |  3 ++-
>  drivers/gpio/gpio-sa1100.c          |  5 ++++-
>  drivers/gpio/gpio-sama5d2-piobu.c   |  7 ++++---
>  drivers/gpio/gpio-sch.c             |  5 ++++-
>  drivers/gpio/gpio-sch311x.c         |  5 ++++-
>  drivers/gpio/gpio-siox.c            |  4 ++--
>  drivers/gpio/gpio-stmpe.c           |  5 ++++-
>  drivers/gpio/gpio-tc3589x.c         |  5 ++++-
>  drivers/gpio/gpio-tegra.c           |  5 ++++-
>  drivers/gpio/gpio-tegra186.c        |  4 ++--
>  drivers/gpio/gpio-thunderx.c        |  5 ++++-
>  drivers/gpio/gpio-tpic2810.c        |  2 +-
>  drivers/gpio/gpio-tps65086.c        |  2 +-
>  drivers/gpio/gpio-tps65912.c        |  4 ++--
>  drivers/gpio/gpio-tps68470.c        |  6 +++---
>  drivers/gpio/gpio-tqmx86.c          |  5 ++++-
>  drivers/gpio/gpio-ts4900.c          |  5 ++++-
>  drivers/gpio/gpio-twl4030.c         | 10 +++++-----
>  drivers/gpio/gpio-twl6040.c         |  3 +--
>  drivers/gpio/gpio-uniphier.c        |  5 ++++-
>  drivers/gpio/gpio-wcove.c           |  7 +++++--
>  drivers/gpio/gpio-ws16c48.c         |  5 ++++-
>  drivers/gpio/gpio-xgene.c           |  5 ++++-
>  drivers/gpio/gpio-xra1403.c         |  5 ++++-
>  drivers/gpio/gpio-xtensa.c          |  4 ++--
>  drivers/gpio/gpio-zynq.c            |  7 +++++--
>  include/linux/gpio/driver.h         |  3 +++
>  61 files changed, 214 insertions(+), 102 deletions(-)
> 
> -- 
> 2.21.0
> 
> 
> -- 
> Matti Vaittinen, Linux device drivers
> ROHM Semiconductors, Finland SWDC
> Kiviharjunlenkki 1E
> 90220 OULU
> FINLAND
> 
> ~~~ "I don't think so," said Rene Descartes. Just then he vanished ~~~
> Simon says - in Latin please.
> ~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
> Thanks to Simon Glass for the translation =] 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
