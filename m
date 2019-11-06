Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C34FF1175
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 09:52:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zv0rP2l8ojA+86h1lM96s5l7H6dfAa39WEKrOFGXtrw=; b=sEE6dPq8ApHH4/
	N2Y9PIEvQu4btkZfJe1MxAvgSqqsftBiaEsDo47jMxq3DaYGid6N49liMfiJ/MorNd2eUUhDTUaZR
	tlWPD/ecv/QkauTAu8RRX7xqywisJ6VT2BnXrj5wT3NzqvC2SX3fq3+/npgq6DxmQli7DXWxlOktQ
	iG3r4pVSbyM9whLzh9NK0/dGxRoMm7OaS7/4abxQsuinPrJtI460Nse0CYHTbbnpT8T1jtySNLmV2
	dkcFgQUYFmHhz0JuXL9ze2dVsEMFOM5ZRNpsLBuqGG1YpsGKrNu7hFVadGMUVjkC9hPmDnD3nmnHn
	cGbRoYOkL75fWOCB67Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSH2r-0006uL-Kc; Wed, 06 Nov 2019 08:52:05 +0000
Received: from mail-lf1-f68.google.com ([209.85.167.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSH2j-0006tK-De
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 08:51:59 +0000
Received: by mail-lf1-f68.google.com with SMTP id f4so17398160lfk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 00:51:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=S0olsl6U+J7JDQ22nIhebd59focLW5rDuobD1hUdq5I=;
 b=U/j3b1d+kxTPaYs8a6fXAyN82jnBHO0S/KKCdOBXzaPt/Y3J8fiSgYZwGlDBNeotKl
 DVP9ESh2fSmVjaGsraME0IHBh3Fdmd6YcOAXDmMrTs3jGJQGV0g2WpK0R7hXe6CIFqJv
 /GM+nh/RFYO2qp7IOx2TDOTBXtaVKrPU2m54zEuMB5AxPy4sjLLoZns5DIQ1qoNY34U+
 uF3z/s9DIoHLds5VVZi/KPAggPGe+7CMGu5prCPpKMiM9/CfXxW+7xbjXRH3BpBX4cvm
 S6EC6pgGMcsOG1L6eAvWeViOHdJflnbndMKh+H7sTB7t08dYQFTVW54KjNFzKVK1mbj5
 hLuA==
X-Gm-Message-State: APjAAAWd6nF2iQKGPkLxv+iSl7DliXgg/Pj+mfG+xILV8K/jYanwOX0X
 M6Zrj8O1Z6yL5nRw3dFiaIQ=
X-Google-Smtp-Source: APXvYqzDio4qZlOISjr6MeUpYA9Mauudh6cLHNIHVHIEV0v296IjktNY6fM6+w+eUpFaURqfUCi8NA==
X-Received: by 2002:a19:c790:: with SMTP id x138mr23827081lff.61.1573030315542; 
 Wed, 06 Nov 2019 00:51:55 -0800 (PST)
Received: from localhost.localdomain ([213.255.186.46])
 by smtp.gmail.com with ESMTPSA id v203sm10763661lfa.25.2019.11.06.00.51.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 00:51:55 -0800 (PST)
Date: Wed, 6 Nov 2019 10:51:47 +0200
From: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To: matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Subject: [PATCH v2 1/2] gpio: Add definition for GPIO direction
Message-ID: <fcd51b067bafa571b3d9879a3afc31e8c764100d.1573029228.git.matti.vaittinen@fi.rohmeurope.com>
References: <cover.1573029228.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1573029228.git.matti.vaittinen@fi.rohmeurope.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_005157_650920_0B5EB228 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mazziesaccount[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.68 listed in wl.mailspike.net]
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

At least for me it is difficult to remember the meaning of GPIO
direction values. Define GPIO_LINE_DIRECTION_IN and
GPIO_LINE_DIRECTION_OUT so that occasional GPIO contributors would
not need to always check the meaning of hard coded values 1 and 0.

Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
---

Changes from v1: No changes.

 include/linux/gpio/driver.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/gpio/driver.h b/include/linux/gpio/driver.h
index 5dd9c982e2cb..cc9ade4552d9 100644
--- a/include/linux/gpio/driver.h
+++ b/include/linux/gpio/driver.h
@@ -22,6 +22,9 @@ enum gpio_lookup_flags;
 
 struct gpio_chip;
 
+#define GPIO_LINE_DIRECTION_IN	1
+#define GPIO_LINE_DIRECTION_OUT	0
+
 /**
  * struct gpio_irq_chip - GPIO interrupt controller
  */
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
