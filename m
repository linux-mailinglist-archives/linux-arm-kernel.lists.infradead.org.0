Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BDD77E89
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 10:00:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gcOaXuFFQbP2Whr4StbOUb74y9+rjbPVjYQ+Ca0mUZo=; b=N4qVqSwtCj/lq9
	2KXpfXOw0gsA/ly80ZQsi21Ob/XifEEZScSjW0heLdiR57tdawNVrJ9W2QfwSAYGKUE20qB6W3b2Y
	t+y852XaH0DHp+2aq7UVU+UVjN4tx6z5DaMctE2Q6gqwvP7BwxmDvYkqmfr3rsIfVVlmb4TDNhTzs
	14mi9ztF5lqh8H0udGAQljKluJsZJtVewd94aZr7Zf9hdig2eV7Ak8ylOOoWfupRQJbMXCK4a2jhg
	n7wIZpZuODDtrukJKTwI6KS/ag2cLDO33fSjp364RxR4H8knG0L1yfMdkJrQgR1//4aErO4GZzwxd
	9gSOAoBLfOYNQaLA2KHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hre5x-0003ai-5c; Sun, 28 Jul 2019 07:59:53 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hre59-0003a7-SS
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 07:59:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 41444FB03;
 Sun, 28 Jul 2019 09:59:00 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wyg7IDtmtuoB; Sun, 28 Jul 2019 09:58:59 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id BF96646B51; Sun, 28 Jul 2019 09:58:58 +0200 (CEST)
Date: Sun, 28 Jul 2019 09:58:58 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
 IMX8MQ_CLK_TMU_ROOT
Message-ID: <20190728075858.GA15144@bogon.m.sigxcpu.org>
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
 <20190705045612.27665-5-Anson.Huang@nxp.com>
 <CAEnQRZAZNMBx3ApVmRP8hYPw0XY_QgR-saE6WLcT8oZmHPCxSA@mail.gmail.com>
 <20190727182636.GA7170@bogon.m.sigxcpu.org>
 <CAOMZO5C_g5bO-yqhoLbb6geUcmzi4necjdQ_P2tROq2vzEPOqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5C_g5bO-yqhoLbb6geUcmzi4necjdQ_P2tROq2vzEPOqQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_005904_078642_9B21290E 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Carlo Caione <ccaione@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 linux-clk <linux-clk@vger.kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, dl-linux-imx <Linux-imx@nxp.com>,
 "rui.zhang" <rui.zhang@intel.com>,
 Devicetree List <devicetree@vger.kernel.org>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Daniel Baluta <daniel.baluta@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,
On Sat, Jul 27, 2019 at 05:17:50PM -0300, Fabio Estevam wrote:
> Hi Guido,
> =

> On Sat, Jul 27, 2019 at 3:26 PM Guido G=FCnther <agx@sigxcpu.org> wrote:
> =

> > I noticed a boot hang yesterday on next-20190726 when loading the
> > qoriq_thermal which I worked around by blacklisting it. The
> > fsl,imx8mq-tmu node specifies a clock (IMX8MQ_CLK_TMU_ROOT) but does not
> > seem to enable, shouldn't it do so?
> =

> Yes, I think you are right.
> =

> I don't have access to a imx8mq board at the moment, but something
> like below would probably help:
> http://code.bulix.org/pd88jp-812381
> =

> If it helps, I can send it as a formal patch.

Yes, this fixes it for me, thanks!
 -- Guido

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
