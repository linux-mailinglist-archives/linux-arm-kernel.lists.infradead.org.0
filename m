Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42415F28F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 09:20:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K58gu4oFxDWEkwdOTTDeEDZu09wyy9VHUmnmhD1eBQM=; b=j+yeOtqi+ldQ97
	Efqq2KC0/UlgOVD8CXPeeOT56Ljo3Y5G2JeHCTZXTkj6y1lK7IM5hXrPuxYCwH/glr6XGKAnisq2R
	l0pWcEkPpiGe7W+VmqgeGMVQajHY1yuul4tyb6wGr8HZzXlBTN+fXMSP/3rRuwOhZ7tDQltl7dxy2
	utvOrjqKFQCc6KnPBnZhdiK59X+LtJkhsiTO43bjz8NzGonret+N3OgGjzOVWpr8Q9V4UPzT8BUQP
	vvw2Dtz3iuGwLxlqerM2X5ydvgLcBsa9itlzWzWWZpxChbRZcrpsqF2J/SjCl0brrVdWxvpTn/GlJ
	eyNwbJ+8sAljm8Pj3mMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSd1x-0007Zq-IA; Thu, 07 Nov 2019 08:20:37 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSd1o-0007ZP-NA
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 08:20:30 +0000
Received: by mail-lj1-x242.google.com with SMTP id q2so1211940ljg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 00:20:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DlF4imC2yuisAQo2SgUCy1P9SylqUN75hyqh76y3GuU=;
 b=aR0m+nKjgA8feFlTBlwL84cE9daL5eeq25n5+TiO9llQb9TsmGAwBzMrydUeOVpqcd
 G/NOnRqUmqV9FDnFABUvFStxGmc4lYiT1CO71XxvWX8QHiG+QuYeULshpCobKFsWAsYm
 tdhQ8t6991g/IUrvBhXPOW8BhPBS86zZJGQOc82tWlYl1GOQvr9MTGWvpPLFiIeR9lEr
 foMt76rS4g+F3J5BvZ1hmIknazOLP6jdC15sbiF4dtMlHzvLlDlwdEVWxYVkVYDLBy/H
 2YD/40djhB6z1791duVFLnjNJBICD/pXuSn9Wyozo1Bsi0Bqg8js/iowtRmXORd7WJzi
 n1iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DlF4imC2yuisAQo2SgUCy1P9SylqUN75hyqh76y3GuU=;
 b=YLpbLL+CFLyQuwo73tTADTRkgxFmbciNvfGci0luNS8Z3ESejeWZ+ggiUYiaQ3lUk6
 0IjoMn8k27lDUTY4mAIAK2rg6POcdk5pp3wdFjnpWqmK39qfqaKAbkfngdjLBGY6MHYf
 yIG4fqF0Vub4foJIkfodFBUUmhoBmTv9ka3Rw4YVDmsrAeGWloFz4rDnP9BLzsUzXMq0
 qdmhpe1jjWiZYxVCabyAySIk1H/QnrNz4adObmfh1xtL/6JxuUpWqPwB3GX2G/TAvInQ
 8J9gZwz/ZDrTlJ+m5SGLgyCRvL3m5S1ktjSmNt4ATtrcnjZoLu0ZcPelQFh5WlLUXxy0
 MmNg==
X-Gm-Message-State: APjAAAXt+shNEd40YnPMvzgreAl8OAU4+2+MSOPaSR0wR9fNOh/4H1sf
 SSyRSRK8t8yUmgAENfjF/R2jSVcDFBJQDs9JUErLkA==
X-Google-Smtp-Source: APXvYqxJbhcWq+G1f8Jk5lv3i720/gVAo6L3L+y4Wi2RhTUP1I1SjMgB/XswEKoQSm7d2gl5jZMd4ClfaG2HxTvfJoQ=
X-Received: by 2002:a05:651c:1202:: with SMTP id
 i2mr1417186lja.218.1573114826673; 
 Thu, 07 Nov 2019 00:20:26 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573029228.git.matti.vaittinen@fi.rohmeurope.com>
 <fcd51b067bafa571b3d9879a3afc31e8c764100d.1573029228.git.matti.vaittinen@fi.rohmeurope.com>
In-Reply-To: <fcd51b067bafa571b3d9879a3afc31e8c764100d.1573029228.git.matti.vaittinen@fi.rohmeurope.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 7 Nov 2019 09:20:15 +0100
Message-ID: <CACRpkdZm823gEkpw8hYfuLp99ssKtGQMcEcZHC34xd2kQPYH-A@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] gpio: Add definition for GPIO direction
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_002028_893881_85A7E7BB 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 David Daney <david.daney@cavium.com>,
 "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, Peter Tyser <ptyser@xes-inc.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Fabio Estevam <festevam@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Kevin Hilman <khilman@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, Marek Behun <marek.behun@nic.cz>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Joel Stanley <joel@jms.id.au>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Bamvor Jian Zhang <bamv2005@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-pwm@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 Matti Vaittinen <mazziesaccount@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, linux-tegra@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andrew Jeffery <andrew@aj.id.au>, "Enrico Weigelt,
 metux IT consult" <info@metux.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Thorsten Scherer <t.scherer@eckelmann.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, patches@opensource.cirrus.com,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 6, 2019 at 9:51 AM Matti Vaittinen
<matti.vaittinen@fi.rohmeurope.com> wrote:

> At least for me it is difficult to remember the meaning of GPIO
> direction values. Define GPIO_LINE_DIRECTION_IN and
> GPIO_LINE_DIRECTION_OUT so that occasional GPIO contributors would
> not need to always check the meaning of hard coded values 1 and 0.
>
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
