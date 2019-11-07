Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A539EF2901
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 09:23:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yk3UxqM9yzgolCqaE7h2AMrF70S7ewKQ713YcKRmsk0=; b=GhQF3bcL2JIh9b
	eMrIuRw0mrXQv3pkzoCU4uoNyEsjohnEMVgC4nV5JN0Amsa9bZD/PAiez6cHTPO6wYImtsVL+FxKj
	nY4CuBAJk5Ngp775qp95VhnEKDOeoiMJNY93Lek4vvC0H3bLlaeKdgsXJwxI3jMlTkZ4HG2dH+j7U
	JSIqoaO4X6zHuNxKjE9gn+nUZyPOdGnFgTeYC3lp06blhqU0G59E+qkKmWB+T96cFi0Zdnott/m4q
	/Us8n6E1h/tvzz+rlt6JGtg8HFNYU+iT2VsrEUP20WSGUUlB2a4KqUF1GWUjeq1Jmcy0pE8QdkESw
	JV0dL4lTdKJlPRO56Urg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSd4F-0008Dk-Th; Thu, 07 Nov 2019 08:22:59 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSd45-0008D1-HW
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 08:22:53 +0000
Received: by mail-lf1-x143.google.com with SMTP id 19so868001lft.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 00:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W1kMVjXy8TfTB/av4qsnw1G4ZHclSRdrlLtTCyTAB3g=;
 b=aihVYo6vGJcSeMzZA2gHQagzuZuVYL80Tl8HsV3o3LI/DBg/S5MVPTitfm7pDFAG6E
 KU7Z1uXIrrxA5+r3lGKAenb9vmOH8pAHta+z2HuVGSB9kZOdz5AgkNdvAbRde2xOvpoT
 UzS8yGbMFd4DKYtsb3RNUpUElWYw56B6yCUzHCngiVaTKGxNs8EmIs8SqB757Vwf7VCX
 fwVEWkW6ZJ96L32Zj0dhvc0ujr2loUfyfL3PJK2DRlar2WzaN4hH3/gqSQ4Ye2vE2W10
 yDUxaSTMoU4hyrN/yWNS9R4ldaKnokRAtrRVSfZzc1jrl3LQMW5QsT76aHAI4spwff8o
 FNFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W1kMVjXy8TfTB/av4qsnw1G4ZHclSRdrlLtTCyTAB3g=;
 b=gPszIDgfjy0ZtxfFghtlcO/kmRtQfq5DfAg1aa1kagYzOpqdCWwsA5Bkau0lX6cic/
 Pj19Pj4EYRHMB1/ppo9g8FYmWiGe3ZMqM2zW61jNpj7FSXkPBog+bAUNGApPYmKbWrEU
 GTo2lAILcP5G7YCOsgKMwlJJavmVuI8oxBjSnHDzSppP1UDKSDrcLZRzoTcM73GkKyke
 Xlgt9VNclNw1UlO9neeWljrF3bU5M2XEG7JtPAB982cl8hbAgAv8VpQJIHYSet+5TLxW
 04Ba1ZKA4y6VCChyyAiH6GCh5rGxFlBMqIaD6ZXbwVSnNspzAJfFkTkLJ8guBOY4Y60X
 DhWw==
X-Gm-Message-State: APjAAAVvJrhKxszZOgIG/6WlAagQqJO1b5S3q4P/ZQ/t5HEBd5Te8Cjb
 glkIEBA1X53gcFO9fZOgg5jKqAwtL+2nF1ji7fwpIw==
X-Google-Smtp-Source: APXvYqy/AiAWlfAU/KnMLcnvlDO6zbO8H2HQsF3Z0XznPUZPaxE+dGbrTI9u/vdRHxraIochQ2FKHYEfNic+fopaYJs=
X-Received: by 2002:a19:ca13:: with SMTP id a19mr1415050lfg.133.1573114966856; 
 Thu, 07 Nov 2019 00:22:46 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573029228.git.matti.vaittinen@fi.rohmeurope.com>
 <20191106120846.5bunrqj3uz4khih5@earth.universe>
 <ddcd02cc6c709837a28cae2cbfa672c506927659.camel@fi.rohmeurope.com>
In-Reply-To: <ddcd02cc6c709837a28cae2cbfa672c506927659.camel@fi.rohmeurope.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 7 Nov 2019 09:22:35 +0100
Message-ID: <CACRpkdbaRsv+cKz7yxKxvs+99GRK50-d_kpKcdVn3NVV9Qr6Ng@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add definition for GPIO direction
To: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_002252_185619_839C6C35 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "david.daney@cavium.com" <david.daney@cavium.com>,
 "sathyanarayanan.kuppuswamy@linux.intel.com"
 <sathyanarayanan.kuppuswamy@linux.intel.com>,
 "sre@kernel.org" <sre@kernel.org>, "ptyser@xes-inc.com" <ptyser@xes-inc.com>,
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
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 "bamv2005@gmail.com" <bamv2005@gmail.com>, "joel@jms.id.au" <joel@jms.id.au>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "grygorii.strashko@ti.com" <grygorii.strashko@ti.com>,
 "ckeepax@opensource.cirrus.com" <ckeepax@opensource.cirrus.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "vilhelm.gray@gmail.com" <vilhelm.gray@gmail.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "rf@opensource.cirrus.com" <rf@opensource.cirrus.com>,
 "ssantosh@kernel.org" <ssantosh@kernel.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "yamada.masahiro@socionext.com" <yamada.masahiro@socionext.com>,
 "andrew@aj.id.au" <andrew@aj.id.au>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "t.scherer@eckelmann.de" <t.scherer@eckelmann.de>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "patches@opensource.cirrus.com" <patches@opensource.cirrus.com>,
 "info@metux.net" <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 6, 2019 at 1:25 PM Vaittinen, Matti
<Matti.Vaittinen@fi.rohmeurope.com> wrote:
> On Wed, 2019-11-06 at 13:08 +0100, Sebastian Reichel wrote:
> > On Wed, Nov 06, 2019 at 10:51:06AM +0200, Matti Vaittinen wrote:
> > > The patch series adds definitions for GPIO line directions.
> > >
> > > For occasional GPIO contributor like me it is always a pain to
> > > remember
> > > whether 1 or 0 was used for GPIO direction INPUT/OUTPUT.
> >
> > Maybe also update the GPIO drivers in pinctrl?
(...)
> Ouch. I didn't check from pinctrl but I see those should be converted
> as well. I'm a bit short on time right now so if anyone else is
> interested I won't mind :)
>
> Luckily the value for IN and OUT is not changed - only the defines were
> added - so all of the drivers do not need to be done at once. If no one
> else will take the pinctrl part then I can probably do pinctrl patches
> for v5.6 cycle.

No hurry with that. This is a good start, we don't have to fix
the whole world at once.

Let's look at this for v5.6.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
