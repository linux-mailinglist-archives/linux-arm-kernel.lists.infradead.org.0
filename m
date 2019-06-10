Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2201E3B820
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 17:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAvTdYM0Jn19eD7e80+nwucyITTeA+yKcI5cVspTeYM=; b=udDV+/uNwmXGhh
	FkPCbdV5+5BOUeB5sTl2JABWMj0PfnT/nq69/fH2mM5QLQlgqZQ4GaAlB64vJjPGyMi7HTdaRG/TK
	vE5N6NNePPHBmavCD5I/uN++mveKj0LXzlkmZwWlk8wG8JXjeBBJcQrqSq0BSntFhnRSXZ5ZhNBQ1
	FGSSe6lVRvOeRHFlAwjgoNka6EhgjurDCoTu2PiGm3krdJ2OhaN181i292FaEq2xBYlXextl3bSos
	jOZuEeFSwsciVcvhvbsDEXkczud/BKZ7SXEmoW62Hbad/1BxJkp8xAi+VczGPEI0N8lcR9SmQ3snd
	fo1A3TpZoTWcCLSNCw2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haM0O-0003gR-HX; Mon, 10 Jun 2019 15:14:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haM0A-0003fw-BJ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 15:14:27 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D8139207E0;
 Mon, 10 Jun 2019 15:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560179666;
 bh=P0dkD9ENiSJ+hO8sohQ82M4kCSPlYg9QTn6ACh1pGBM=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=t/3aX0FvHhHEPaDvxLC/Zt72Z7M8KIX/RV4nCGE26f5wvCqRAHSDFsqqyMKDezdSK
 Xl2KSBSHTNZKMlEfsDGPkQTwOxV+jTJYQSxnTn5KPI5682IJHA0IEh2WBH09u9Pabp
 UNDXWvPZA+0vbsuahyuhEOhz5rGFaIGoHZHPVXOY=
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB391678C245944942EA2A7F62F5110@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190604015928.23157-1-Anson.Huang@nxp.com>
 <20190604015928.23157-3-Anson.Huang@nxp.com>
 <20190606162543.EFFB820645@mail.kernel.org>
 <DB3PR0402MB391625A0B3D838CE88C53E33F5100@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190607180039.611C7208C0@mail.kernel.org>
 <DB3PR0402MB391678C245944942EA2A7F62F5110@DB3PR0402MB3916.eurprd04.prod.outlook.com>
To: "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "olof@lixom.net" <olof@lixom.net>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "s.hauer@pengutronix
 .de" <s.hauer@pengutronix.de>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>, Abel Vesa <abel.vesa@nxp.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: RE: [PATCH V3 3/4] clk: imx: Add support for i.MX8MN clock driver
User-Agent: alot/0.8.1
Date: Mon, 10 Jun 2019 08:14:25 -0700
Message-Id: <20190610151425.D8139207E0@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_081426_427776_86CFF3AF 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2019-06-08 02:58:18)
> Hi, Stephen
> 
> > -----Original Message-----
> > From: Stephen Boyd <sboyd@kernel.org>
> > Sent: Saturday, June 8, 2019 2:01 AM
> > To: bjorn.andersson@linaro.org; catalin.marinas@arm.com;
> > devicetree@vger.kernel.org; dinguyen@kernel.org;
> > enric.balletbo@collabora.com; festevam@gmail.com;
> > horms+renesas@verge.net.au; jagan@amarulasolutions.com;
> > kernel@pengutronix.de; l.stach@pengutronix.de; linux-arm-
> > kernel@lists.infradead.org; linux-clk@vger.kernel.org; linux-
> > kernel@vger.kernel.org; mark.rutland@arm.com;
> > maxime.ripard@bootlin.com; mturquette@baylibre.com; olof@lixom.net;
> > robh+dt@kernel.org; s.hauer@pengutronix .de <s.hauer@pengutronix.de>;
> > shawnguo@kernel.org; will.deacon@arm.com; Abel Vesa
> > <abel.vesa@nxp.com>; Aisheng Dong <aisheng.dong@nxp.com>; Anson
> > Huang <anson.huang@nxp.com>; Jacky Bai <ping.bai@nxp.com>; Leonard
> > Crestez <leonard.crestez@nxp.com>
> > Cc: dl-linux-imx <linux-imx@nxp.com>
> > Subject: RE: [PATCH V3 3/4] clk: imx: Add support for i.MX8MN clock driver
> > 
> > Quoting Anson Huang (2019-06-06 17:50:28)
> > >
> > > I will use devm_platform_ioremap_resource() instead of ioremap(), and
> > > can you be more specific about devmified clk registration?
> > >
> > 
> > I mean using things like devm_clk_hw_register().
> 
> Sorry, I am still a little confused, all the clock register(clk_register()) are via each different
> clock types like imx_clk_gate4/imx_clk_pll14xx, if using clk_hw_register, means we need
> to re-write the clock driver using different clk register method, that will make the driver
> completely different from i.mx8mq/i.mx8mm, they are actually same series of SoC as i.mx8mn,
> it will introduce many confusion, is my understanding correct? And is it OK to just keep what
> it is and make them all aligned?
> 

Ok, the problem I'm trying to point out is that clk registrations need
to be undone, i.e. clk_unregister() needs to be called, when the driver
fails to probe. devm_*() is one way to do this, but if you have other
ways of removing all the registered clks then that works too. Makes
sense?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
