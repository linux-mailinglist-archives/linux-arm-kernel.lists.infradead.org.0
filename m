Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A368050E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 09:27:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8oVmuf4A+y6wDghkOxPiHoOQc3g5Khtx8yvL/9ZxvKk=; b=hX1x2XSauRUjq7
	0PSsRgx3Lf5uSjDA+Ld6zYCmZ/jySmpVB+h6eKmDiswVtGHeaNeWc21vQwV5zp0vszTABA+AQBXp6
	YR3B4zSYdwuaYKbpU/QmNO44jO1lnFNyQJZKn/IuZZRqMrw4LXyIEc8rSQs27Pa/gjDIqn8EM6sx4
	Q5h83d6Xg0bHCWmDqIN+XIrD9auJkkY9CxPU83RhmdadOImzljFN+/dsG8z564pxLcwCEOy9ID9hY
	n+vSx6X25GCPnPiiKqwhqzKriz2jqTT49/NqoySNYb7CPRBLh4G64N0UhrsXp2H01W6Ow+Ofr8nnr
	BCSX/vKtZm01WBQ3N1/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htoS6-0005uS-1t; Sat, 03 Aug 2019 07:27:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htoRv-0005u9-9O
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 07:27:32 +0000
Received: from X250 (cm-84.211.118.175.getinternet.no [84.211.118.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 590052073D;
 Sat,  3 Aug 2019 07:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564817251;
 bh=ISRX7+8TaI/SMx9RmJLbtByBVbP0icXdpWl2B0m8MZk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nulC3FIqa5lNy93JFklyXxDRF0TLm8KsjSGnLczzYa6JNpz21F9e+U4TDcA4Ekr1L
 HeEc+Ln5iATlOPAJuG17KDpo/kivCl8NyN2qczb/NwA1j3esT9XmPk3HefEbeESIZ3
 qT1yfmugnnlQzPVQvJOqtg+2ttJL9fuT5HUYfP2w=
Date: Sat, 3 Aug 2019 09:27:25 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: Re: [PATCH] clk: imx8mq: Mark AHB clock as critical
Message-ID: <20190803072723.GB7597@X250>
References: <1561453316-11481-1-git-send-email-abel.vesa@nxp.com>
 <20190625223223.3B8EC2053B@mail.kernel.org>
 <20190705085218.lvvqnqx6nfph2era@fsr-ub1664-175>
 <20190722212537.41C9121900@mail.kernel.org>
 <CAEnQRZAFdvSzh-pDJ-rsyaEJw83ymSVW0CC2+QZyWwAPeTOyBw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEnQRZAFdvSzh-pDJ-rsyaEJw83ymSVW0CC2+QZyWwAPeTOyBw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_002731_352754_1ED4D0C4 
X-CRM114-Status: GOOD (  23.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 27, 2019 at 09:30:57AM +0300, Daniel Baluta wrote:
> On Tue, Jul 23, 2019 at 6:17 AM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Abel Vesa (2019-07-05 01:52:19)
> > > On 19-06-25 15:32:22, Stephen Boyd wrote:
> > > > Quoting Abel Vesa (2019-06-25 02:01:56)
> > > > > Keep the AHB clock always on since there is no driver to control it and
> > > > > all the other clocks that use it as parent rely on it being always enabled.
> > > > >
> > > > > Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> > > > > ---
> > > > >  drivers/clk/imx/clk-imx8mq.c | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
> > > > > index 5fbc2a7..b48268b 100644
> > > > > --- a/drivers/clk/imx/clk-imx8mq.c
> > > > > +++ b/drivers/clk/imx/clk-imx8mq.c
> > > > > @@ -398,7 +398,7 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
> > > > >         clks[IMX8MQ_CLK_NOC_APB] = imx8m_clk_composite_critical("noc_apb", imx8mq_noc_apb_sels, base + 0x8d80);
> > > > >
> > > > >         /* AHB */
> > > > > -       clks[IMX8MQ_CLK_AHB] = imx8m_clk_composite("ahb", imx8mq_ahb_sels, base + 0x9000);
> > > > > +       clks[IMX8MQ_CLK_AHB] = imx8m_clk_composite_critical("ahb", imx8mq_ahb_sels, base + 0x9000);
> > > >
> > > > Please add a comment into the code why it's critical.
> > >
> > > Comment explaining why the AHB bus clock is critical ?
> > > Isn't that self-explanatory ?
> >
> > Nope, it isn't self-explanatory, because nothing on this line says "bus"
> > and it could be that someone reading this code isn't well versed in the
> > concepts of ARM world AHB to connect the two.
> 
> Agree with Stephen. Commit message should try to give as much details
> as possible
> also maybe educate the readers who might not have that much knowledge.
> 
> Abel, I understand that for someone who works daily with this part of the kernel
> this change might look trivial.
> 
> Also, without this patch linux-next hangs on imx8mq.

How does that happen?  Mainline is fine there?

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
