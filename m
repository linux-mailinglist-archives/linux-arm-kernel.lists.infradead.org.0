Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC78B4083
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 20:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kh40Va9poKZYihG/KErM4Mjcejiq3Aw3poIfiwVs0H4=; b=sDVVuvTMBK7QPh
	jpAdsV3U8IkdUoa0FNgeCLBsMGvzqCkUWWRV3am57Ua2RapEysj5bc46/jiH9M+b+s/H81PGoU1EP
	ugPr5RV+AUXZ5aJ33GHl5+N58f+8MPVb7xcFtXSvX2UjcJ1dkKnjKdDerMs9rby5Vj3SRQZwYs+Zs
	svIQ5SPyboQHfyzHN7BgscOfYJpqLj7kaD4PCFbFUlsNnJi11seJX6uS6L9M80vUSuX7WyLesuGJ9
	s/zSSRn7AMzcjagKtT+kUO1FT02afyRh2fT8pUvKzi9X8cvD5rLAoEb+JMW/OufdAlwsEQonl4RtH
	7fv3PGQwckL/BzPUCwFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9vzZ-00073x-HB; Mon, 16 Sep 2019 18:44:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9vys-00073O-3p
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 18:44:15 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A55720665;
 Mon, 16 Sep 2019 18:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568659448;
 bh=pbTap0qQESXbY2wcTrAFWEhhJ5izJs0ygVfo35DBPjU=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=Kqn8UbqrH9ON5pkKL491zhG6FHe75och86calYcDDJgBJ/X2G5zDTwrKELX8cWyDB
 WUS8YJcmp3lwhIx3pMhqptM5YaixggRIAI0Oziezj6/dwBYvWT5eHyrQJxBvZ8rUKS
 a9Lc6TsCVa9nw62xHdj6fWNtvE+PLFHTo+mqyK2Y=
MIME-Version: 1.0
In-Reply-To: <CAA+hA=QoZFFb_EVfxcDuJB-9VobVd-1-RyhWeNTSePxW50P8Eg@mail.gmail.com>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-4-git-send-email-aisheng.dong@nxp.com>
 <20190906170643.B310F20578@mail.kernel.org>
 <CAA+hA=QoZFFb_EVfxcDuJB-9VobVd-1-RyhWeNTSePxW50P8Eg@mail.gmail.com>
To: Dong Aisheng <dongas86@gmail.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH V4 03/11] clk: imx: scu: add two cells binding support
User-Agent: alot/0.8.1
Date: Mon, 16 Sep 2019 11:44:07 -0700
Message-Id: <20190916184408.8A55720665@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_114410_184223_65D51EFA 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Dong Aisheng (2019-09-09 03:23:25)
> Hi Stephen,
> 
> Thanks for the review.
> 
> On Sat, Sep 7, 2019 at 5:29 PM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Dong Aisheng (2019-08-20 04:13:17)
> > > diff --git a/drivers/clk/imx/clk-imx8qxp.c b/drivers/clk/imx/clk-imx8qxp.c
> > > index 5e2903e..1ad3f2a 100644
> > > --- a/drivers/clk/imx/clk-imx8qxp.c
> > > +++ b/drivers/clk/imx/clk-imx8qxp.c
> > > @@ -134,7 +134,12 @@ static int imx8qxp_clk_probe(struct platform_device *pdev)
> > >                                 i, PTR_ERR(clks[i]));
> > >         }
> > >
> > > -       return of_clk_add_hw_provider(ccm_node, of_clk_hw_onecell_get, clk_data);
> > > +       if (clock_cells == 2)
> >
> > Can you just read this from the DT node again instead of having a global
> > variable called "clock_cells" for this?
> >
> 
> I tried thinking about it.
> One problem is that we also need this information in the exist clk
> registration API to
> keep the backwards compatibility:
> e.g.
>  static inline struct clk_hw *imx_clk_scu(const char *name, u32 rsrc_id,
>                                          u8 clk_type)
>  {
> -       return __imx_clk_scu(name, NULL, 0, rsrc_id, clk_type);
> +       if (clock_cells == 2)
> +               return imx_clk_scu_alloc_dev(name, NULL, 0, rsrc_id, clk_type);
> +       else
> +               return __imx_clk_scu(name, NULL, 0, rsrc_id, clk_type);
>  }
> 
> Parsing it for all clocks seems not good.

Can you parse it once for the clock controller and then pass it to the
registration function as the number of cells? I dislike the global and
the name of the global.

> 
> In the future, i planned to totally remove the legacy binding support which
> is a premature one and missing continued support.
> Then we will also remove this unneeded clock_cells.

Ok sure.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
