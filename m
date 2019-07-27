Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 544F677A92
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 18:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTFCXOep3lOvYsc6tqmvVwF4mjF0daGAA3kFz8oL9MM=; b=JpU2LkFKb69NRT
	nYpa5lHhgbTKpuQZIhbUxE22SppQ2SBQ2jWN+OVon7/AXi5DUgmZO6c5Hc/7QWqvjSq/WjY1kf2AZ
	fYQi30q+mIXXjHClqN57jVgoaeRDGH8kLA+zLTxzTHfEcD8i938U6u0UoQUqak9iNDK7W06XKauo6
	PWtKHQqWeSfd66BjRMCJTVT6RwBQJmz8RZOC81q33avJhRh2iS5TnXvTT8sUJxoWvLXmLU919/Rl7
	+OtXqugkE1Zfd4gLgqG4Na+yLyAcRLWG/LWEsPKEZunXRbK/COj+EL2WGukZ45C7KZlFelI3pSPpS
	XnNxhiNWZAnHNflM5Yaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrPON-000595-OM; Sat, 27 Jul 2019 16:17:55 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrPOA-000586-4r
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 16:17:44 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 67F36200E48;
 Sat, 27 Jul 2019 18:17:37 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 57CF2200E46;
 Sat, 27 Jul 2019 18:17:37 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 2D76220612;
 Sat, 27 Jul 2019 18:17:37 +0200 (CEST)
Date: Sat, 27 Jul 2019 19:17:36 +0300
From: Abel Vesa <abel.vesa@nxp.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: Re: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
 IMX8MQ_CLK_TMU_ROOT
Message-ID: <20190727161736.4dkfqgwftre67v56@fsr-ub1664-175>
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
 <20190705045612.27665-5-Anson.Huang@nxp.com>
 <CAEnQRZAZNMBx3ApVmRP8hYPw0XY_QgR-saE6WLcT8oZmHPCxSA@mail.gmail.com>
 <DB3PR0402MB3916233A56CF5DF778115716F5C30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAEnQRZCrZybzcy__u4p_Eq4zSVc2ESyfKLk5sPf1JYba1JSOiA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEnQRZCrZybzcy__u4p_Eq4zSVc2ESyfKLk5sPf1JYba1JSOiA@mail.gmail.com>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_091742_472575_378035A6 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Carlo Caione <ccaione@baylibre.com>,
 Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Anson Huang <anson.huang@nxp.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>, "rui.zhang@intel.com" <rui.zhang@intel.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "edubezval@gmail.com" <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-07-27 09:33:10, Daniel Baluta wrote:
> On Sat, Jul 27, 2019 at 9:19 AM Anson Huang <anson.huang@nxp.com> wrote:
> >
> > Hi, Daniel
> >
> > > Subject: Re: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
> > > IMX8MQ_CLK_TMU_ROOT
> > >
> > > Hi all,
> > >
> > > latest linux-next hangs at boot.
> > >
> > > commit fde50b96be821ac9673a7e00847cc4605bd88f34 (HEAD -> master, tag:
> > > next-20190726, origin/master, origin/HEAD)
> > > Author: Stephen Rothwell <sfr@canb.auug.org.au>
> > > Date:   Fri Jul 26 15:18:02 2019 +1000
> > >
> > >     Add linux-next specific files for 20190726
> > >
> > >     Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
> > >
> > >
> > > I know this is crazy but reverting commit:
> > >
> > > commit 431bdd1df48ee2896ea9980d9153e3aeaf0c81ef (refs/bisect/bad)
> > > Author: Anson Huang <Anson.Huang@nxp.com>
> > > Date:   Fri Jul 5 12:56:11 2019 +0800
> > >
> > >     clk: imx8mq: Remove CLK_IS_CRITICAL flag for IMX8MQ_CLK_TMU_ROOT
> > >
> > >     IMX8MQ_CLK_TMU_ROOT is ONLY used for thermal module, the driver
> > >     should manage this clock, so no need to have CLK_IS_CRITICAL flag
> > >     set.
> > >
> > >
> > >
> > > makes the boot work again.
> > >
> > > Any idea?
> >
> > I just found if disabling SDMA1, then kernel can boot up, it does NOT make sense
> > TMU clock is related to SDMA1, I will check with design and get back to you soon.
> >
> 
> Hi Anson,
> 
> Applying Abel's patch:
> 
> commit 8816c47db6a82f55bb4d64f62fd9dd3af680f0e4 (HEAD -> master)
> Author: Abel Vesa <abel.vesa@nxp.com>
> Date:   Tue Jun 25 12:01:56 2019 +0300
> 
>     clk: imx8mq: Mark AHB clock as critical
> 
>     Keep the AHB clock always on since there is no driver to control it and
>     all the other clocks that use it as parent rely on it being always enabled.
> 
> 
> 
> The kernel boots up again.
> 
> It make some sense. I don't understand though why having
> IMX8MQ_CLK_TMU_ROOT as critical also "unhangs" the kernel.
> 

OK, so this is how it works.

By removing the critical flag from TMU, the AHB doesn't stay always on.
With my patch the AHB is marked as critical and therefore stays on.

The sdma1_clk has as parent the ipg_root which in turn has as parent the
ahb clock. And I think what happens is some read from the sdma registers hangs
because, for whatever reason, enabling the sdma1_clk doesn't propagate to enable
the ahb clock. I might be wrong though.

> thanks,
> Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
