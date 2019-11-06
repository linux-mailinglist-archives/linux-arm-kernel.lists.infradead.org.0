Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F129FF1C7B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 18:29:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pPlN8r0lEHa5Ka3AKv5mI2yyxKMchIGlONRH+qa9a9I=; b=KqRoEoL5X7U2ZU
	h/mwxYjYoT/jntVOHAWdQaxVYP+V88Oh1TMVL5cbVaQ3qtnwaMlbCrTHSzLrJQieMFg6UbawtRDkU
	t1i/Ix0EC3sBubtPD7ag6hpRlB07/eNf+vWLqJYXLvikdcnb9IqQTp7ABEgqV/a1W19H3ulV4HkjU
	trDgK1oGURRPkctvc12mKZF9WKjrslbQ0Ou1Oeup2qCUQMEArST8pAwsQJS1qhJ2SjYSqSA7DeRFH
	MD6NHjK3/UnvE2c6vVyXYijOVYLNfEHEfdJNV6LIrqLpdlKzRGrOwLL7KlWuYnLL+5RWwXdENEC7b
	Pwcak7YW4VHLsZNc188g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSP7D-0003jt-3c; Wed, 06 Nov 2019 17:29:07 +0000
Received: from mailgate1.rohmeurope.com ([178.15.145.194])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSP74-0003jI-Hj
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 17:29:00 +0000
X-AuditID: c0a8fbf4-183ff70000001fa6-4b-5dc302d46b4a
Received: from smtp.reu.rohmeu.com (will-cas002.reu.rohmeu.com
 [192.168.251.178])
 by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id
 47.2E.08102.4D203CD5; Wed,  6 Nov 2019 18:28:52 +0100 (CET)
Received: from WILL-MAIL002.REu.RohmEu.com ([fe80::e0c3:e88c:5f22:d174]) by
 WILL-CAS002.REu.RohmEu.com ([fe80::fc24:4cbc:e287:8659%12]) with mapi id
 14.03.0439.000; Wed, 6 Nov 2019 18:28:51 +0100
From: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
To: "vilhelm.gray@gmail.com" <vilhelm.gray@gmail.com>
Subject: Re: [PATCH v2 0/2] Add definition for GPIO direction
Thread-Topic: [PATCH v2 0/2] Add definition for GPIO direction
Thread-Index: AQHVlLAQU8xb+K9L/ECQSPwnZdt/+qd+VSuA
Date: Wed, 6 Nov 2019 17:28:51 +0000
Message-ID: <c333eb18eec9adf333e1b3cca2ff7ccacb2a863b.camel@fi.rohmeurope.com>
References: <cover.1573029228.git.matti.vaittinen@fi.rohmeurope.com>
 <20191106143938.GA3176@icarus>
In-Reply-To: <20191106143938.GA3176@icarus>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [176.93.194.151]
Content-ID: <18FFF0DF279DD94B9327FC374E716AF8@de.rohmeurope.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01TbUxTZxTee+/t7eWj41KBvsIkoWFZHJng5pbzwxGzX3dZwkYWk2UB2VWu
 lACFtGVTfyg41AGWlQEDOygfATcKOGg1SHEBiwq6YGV8TCcd6ajDmggOMKjI2L3tFH69zznP
 85zn/DgvQyqLmWgmW2sQdFo+V00HU4M/rdremiCG0pOqPbHQ4/0VwcSYkwDHOAPG47UElD+q
 JaHLeJWC5YYbFEycsCEYMA6R8Gz+ihw8kx9DezUFd4r7CVh1rZFQYm6hwFrTR8E9+ywB1c9/
 JMA2OyWDrztukmBvfI6g7Fk7CeOOehp+aP2WArfbiuCCb56AsimvDEqXzTTc7/pdBiOtjxF4
 2uspqG8bocCy1iWDed9nsLQwIIPLcw8pGKtzkXDvjJ2GtV4bBafaJ0RFhxfB/fMqmLbbZVDX
 2Y/gqcNCwd3KKgTGhTYafvlzCe1J4iZPOeRc99Jxmlu4fULOmWdGaa5utYXiHIPRXJ/ZLefG
 /rlGcjZrKc1NT12iOcv1VM7eeoxz1TUjzvToodh+0oY42/g0+iTm85Dd+3nDl59mZ2kTk78I
 0ZT3jtEFf4UeKplboovQxdAyFMRgdhdutjSRZSiYUbKTCBc7a+SBYhjhkxduiQXD0OxuXHZH
 Lhki2HdxsWPRryHZ5ki8WnSXlIgt7Pt4tMdLBETJeKSjlgrgt/HNkWEkYYqNx52VPX6Ngk3B
 XaYK/1AlexC7ykdpCQexCdj6h9GvR+w2XFo079eTrArb/l6RBbZmceslFxnAkdg3++//fTVe
 GjET0s4kux3/7EgMWPfgym4rHcBxuLrcIw+sEI6vn/FSJhRl3pRg3nCbN7nNm9zmTe4mJLMi
 nMdn52bxBmHnDp1QuEOXr8kTnwP5eTYUOOnli2jd+aETEQxyoq0MoY5UvON0pitf3Z+feVjD
 6zUZusJcQe9EmCHVEYq0isvpSkUmf/iIoMt/QcUwlFqleMNTma5kpawcQSgQdC/Y1xhGjRUm
 NJSuDNcJWcKhg9m5hg2aYIKk4cHREXpBmyno+EKDJkO6jwy9eCASFSrm9kp2hb6AzxO7AesN
 lMCYfA0tJHOloa2FVFLafK0QrVI0vyJKWUmqKdS+DHqAVAxSb1HMSYNCxX/9cs4DMYIQI5Ju
 O6UIA79BRRehXVGde3OGkxNqwob7Pccaf/sqKi5+Zb16MCfYQ7i8KTOhW9Nc79ERqStPmvZ+
 15dm8iV3xgxs1906fTW2KvXs6W7ftQP7Yh8fPdkYnniuNzguLP6IsjbsaYVsVav66Py6MkWt
 f30xPMwSX3L0+6Lcs9vWhtwhdsWM8RtT06JbVtX+gZrSa/idb5I6Pf8fqswH+ZQEAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_092858_733752_A76E1ED9 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.15.145.194 listed in list.dnswl.org]
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "david.daney@cavium.com" <david.daney@cavium.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "sathyanarayanan.kuppuswamy@linux.intel.com"
 <sathyanarayanan.kuppuswamy@linux.intel.com>,
 "ptyser@xes-inc.com" <ptyser@xes-inc.com>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "marek.behun@nic.cz" <marek.behun@nic.cz>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "marek.vasut+renesas@gmail.com" <marek.vasut+renesas@gmail.com>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "khilman@kernel.org" <khilman@kernel.org>,
 "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
 "jonathanh@nvidia.com" <jonathanh@nvidia.com>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "bamv2005@gmail.com" <bamv2005@gmail.com>, "joel@jms.id.au" <joel@jms.id.au>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "grygorii.strashko@ti.com" <grygorii.strashko@ti.com>,
 "ckeepax@opensource.cirrus.com" <ckeepax@opensource.cirrus.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "rf@opensource.cirrus.com" <rf@opensource.cirrus.com>,
 "ssantosh@kernel.org" <ssantosh@kernel.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "yamada.masahiro@socionext.com" <yamada.masahiro@socionext.com>,
 "andrew@aj.id.au" <andrew@aj.id.au>, "info@metux.net" <info@metux.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "t.scherer@eckelmann.de" <t.scherer@eckelmann.de>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "patches@opensource.cirrus.com" <patches@opensource.cirrus.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Wed, 2019-11-06 at 09:39 -0500, William Breathitt Gray wrote:
> On Wed, Nov 06, 2019 at 10:51:06AM +0200, Matti Vaittinen wrote:
> > The patch series adds definitions for GPIO line directions.

...snip...

> > This patch series is based on GPIO tree devel branch.
> 
> Just a tip for future patchsets in case you didn't know, you case
> specify the base of your patchset by using the "--base" option:
> https://git-scm.com/docs/git-format-patch#_base_tree_information
> 
> This will append a "base-commit" line with the commit hash at the end
> of
> the first message so that it's unabiguous which base you're using
> (useful in case the branch changes before your patch is reviewed).

Tanks William! I didn't know about the --base. It's nice to learn
something new every day :]

> > -- 
> > Matti Vaittinen, Linux device drivers
> > ROHM Semiconductors, Finland SWDC
> > Kiviharjunlenkki 1E
> > 90220 OULU
> > FINLAND
> > 
> > ~~~ "I don't think so," said Rene Descartes. Just then he vanished
> > ~~~
> > Simon says - in Latin please.
> > ~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
> > Thanks to Simon Glass for the translation =] 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
