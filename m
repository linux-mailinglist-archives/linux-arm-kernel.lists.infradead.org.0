Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D574A1E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ngkU/5rPnCTjDZtUK4D4SHvXpUMscFbs0loP1WdWWOk=; b=a4RO//zftoQO0/
	Tv1cRXvbLK5c0nprw+ZX4oMpkGkO9F1he1sga8LfMT64bFjMU8VqTc3q/nrCmpIC3bMiSfyLXxZ4q
	ciTiYCpjcnzC+8bqzHdpCGkDL1+kWYa3gF1DTr9c7BakUDa/DQM+K61nGDHTd7h6z0P7LagbmtCHi
	oFK57URSatlWSCt4UkFi9YBV1dcw/GoUKs0arwBdG51O4oHd3SnWsYAYCRs+Nk+4ARfJ2ONUgT743
	ZulcRV5q2FB4/vSLxNH72VRrxw/ABOFUNRfpfUcdFp9yIXi1/9Q5JzF3Dx77SNgLsfcVX9V5y16NA
	9Uryie4Tz0QaeB5qZeWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdE0U-0002Ud-2S; Tue, 18 Jun 2019 13:18:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDiT-0003oZ-VS
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:00:05 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F1BB20665;
 Tue, 18 Jun 2019 12:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560862800;
 bh=DH5P8RwITKpz+5OhRwTGjbtFNcshKGlhFZA5nFAj+Vk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TAtwl7Y9Crn3H8eqFQgpO4Eq5xocFt2+9mo8ybrrJC4ZXOmFfJe+DMHRNMgEpGMZC
 h1wFukzt45WpJPXhKlf8S4rGt1yM1Z/9g0E60cm0+JyLY/FMLrU5QLW8wWCuzwwgT+
 Fvf95vBbtGzs1imPvLn/aG6GTU6QHzoKwhRxlds0=
Date: Tue, 18 Jun 2019 20:59:09 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] soc: imx: Add i.MX8MN SoC driver support
Message-ID: <20190618125902.GN29881@dragon>
References: <20190611013125.3434-1-Anson.Huang@nxp.com>
 <20190618070334.GD29881@dragon>
 <DB3PR0402MB391691EEF083BA6BEF445235F5EA0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB391691EEF083BA6BEF445235F5EA0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_060003_084906_33B01BF5 
X-CRM114-Status: GOOD (  21.77  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Abel Vesa <abel.vesa@nxp.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 08:24:59AM +0000, Anson Huang wrote:
> Hi, Shawn
> 
> > -----Original Message-----
> > From: Shawn Guo <shawnguo@kernel.org>
> > Sent: Tuesday, June 18, 2019 3:04 PM
> > To: Anson Huang <anson.huang@nxp.com>
> > Cc: s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> > Leonard Crestez <leonard.crestez@nxp.com>; viresh.kumar@linaro.org;
> > Abel Vesa <abel.vesa@nxp.com>; linux-arm-kernel@lists.infradead.org;
> > linux-kernel@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> > Subject: Re: [PATCH] soc: imx: Add i.MX8MN SoC driver support
> > 
> > On Tue, Jun 11, 2019 at 09:31:25AM +0800, Anson.Huang@nxp.com wrote:
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > >
> > > This patch adds i.MX8MN SoC driver support:
> > >
> > > root@imx8mnevk:~# cat /sys/devices/soc0/family Freescale i.MX
> > >
> > > root@imx8mnevk:~# cat /sys/devices/soc0/machine NXP i.MX8MNano
> > DDR4
> > > EVK board
> > >
> > > root@imx8mnevk:~# cat /sys/devices/soc0/soc_id i.MX8MN
> > >
> > > root@imx8mnevk:~# cat /sys/devices/soc0/revision
> > > 1.0
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > >  drivers/soc/imx/soc-imx8.c | 13 ++++++++++++-
> > >  1 file changed, 12 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
> > > index 3842d09..02309a2 100644
> > > --- a/drivers/soc/imx/soc-imx8.c
> > > +++ b/drivers/soc/imx/soc-imx8.c
> > > @@ -55,7 +55,12 @@ static u32 __init imx8mm_soc_revision(void)
> > >  	void __iomem *anatop_base;
> > >  	u32 rev;
> > >
> > > -	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-anatop");
> > > +	if (of_machine_is_compatible("fsl,imx8mm"))
> > > +		np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-
> > anatop");
> > > +	else if (of_machine_is_compatible("fsl,imx8mn"))
> > > +		np = of_find_compatible_node(NULL, NULL, "fsl,imx8mn-
> > anatop");
> > 
> > Can we have this anatop compatible in imx8_soc_data, so that we may save
> > the call to of_machine_is_compatible()?
> 
> Do you mean adding a variable like " const char *anatop_compat " in imx8_soc_date structure,
> then initialize it according to SoC type, and in imx8mm_soc_revision(), get to soc_data's anatio_compat to
> find the anatop node? If yes, we have to add some code to get the soc_data in this function, or maybe
> we can pass anatop compatible name as .soc_revision's parameter?
> 
> static const struct imx8_soc_data imx8mn_soc_data = {
>          .name = "i.MX8MN",
>          .soc_revision = imx8mm_soc_revision,
>          .anatop_compat = "fsl,imx8mn-anatop",
> };

Okay, just realized that we only want to handle imx8mn with imx8mm
function.  It makes less sense to add anatop compatible into
imx8_soc_data just for that.

So it looks like that imx8mn is highly compatible with imx8mm, including
anatop block?  If that's the case, maybe we can have compatible of
imx8mn anatop like below, so that we can save above changes?

	compatible = "fsl,imx8mn-anatop", "fsl,imx8mm-anatop";

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
