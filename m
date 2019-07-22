Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BEF70B48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 23:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCRA/5HWQ12/h+7Rb77eiYTM4HPLvRtLKbOLnJLt+YM=; b=KPP9v2MEID/DBX
	AZzucxGAYOyp2WscY8hefNKjcGVP36LQ/igrwv67PiSdYLYTvhvoLNf7+0aabm8vgMd7h5EqujIG4
	r/ejT3tFj6MNF/Wd1Juz3IBHOBKo7gzN/2m+B5dtgTsdODYvezZldmGjbMrFkH1rqcRP68rGEP8xr
	QQYFkabWixJG/VtnA0aqYDOVH6QFF7X+unAJSwI7thH+CwNiiDn/3L1uuerAFTbnuULDaI6Cp6uQm
	sH6L+efY8mz6/2i5+PQZveoq7ELsDqTAuMFjObAJGrYWEweHUzjLn+fTaqsWZgbbE//fzY+vNRUAk
	rl3ptCOL+1e8fe6RLMsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpfpD-0001qq-TV; Mon, 22 Jul 2019 21:26:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpfoR-0001ph-Dk
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 21:25:40 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41C9121900;
 Mon, 22 Jul 2019 21:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563830737;
 bh=NW7gQC4ICt0N9/M+RHMFx28ZJTSv9cMfIhpuZHQv35w=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=hXFwaRQ7UUiTJbf90j7UD6moPpoc9yC4DZo44EfNqlULb8ETuD8ZbrBhKjcTRo9FH
 WXY+++WosNX0wunwkISAfXn4J0IF5QHuIpIXi7rWY3UALHNiInmZCgheVowxDDs7NS
 FFBRu3zwZacwUg8LwJmhzAGevALVAy9s1XutzI1M=
MIME-Version: 1.0
In-Reply-To: <20190705085218.lvvqnqx6nfph2era@fsr-ub1664-175>
References: <1561453316-11481-1-git-send-email-abel.vesa@nxp.com>
 <20190625223223.3B8EC2053B@mail.kernel.org>
 <20190705085218.lvvqnqx6nfph2era@fsr-ub1664-175>
Subject: Re: [PATCH] clk: imx8mq: Mark AHB clock as critical
To: Abel Vesa <abel.vesa@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 22 Jul 2019 14:25:36 -0700
Message-Id: <20190722212537.41C9121900@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_142539_504493_A99A7B3F 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anson Huang <anson.huang@nxp.com>, Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Abel Vesa (2019-07-05 01:52:19)
> On 19-06-25 15:32:22, Stephen Boyd wrote:
> > Quoting Abel Vesa (2019-06-25 02:01:56)
> > > Keep the AHB clock always on since there is no driver to control it and
> > > all the other clocks that use it as parent rely on it being always enabled.
> > > 
> > > Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> > > ---
> > >  drivers/clk/imx/clk-imx8mq.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
> > > index 5fbc2a7..b48268b 100644
> > > --- a/drivers/clk/imx/clk-imx8mq.c
> > > +++ b/drivers/clk/imx/clk-imx8mq.c
> > > @@ -398,7 +398,7 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
> > >         clks[IMX8MQ_CLK_NOC_APB] = imx8m_clk_composite_critical("noc_apb", imx8mq_noc_apb_sels, base + 0x8d80);
> > >  
> > >         /* AHB */
> > > -       clks[IMX8MQ_CLK_AHB] = imx8m_clk_composite("ahb", imx8mq_ahb_sels, base + 0x9000);
> > > +       clks[IMX8MQ_CLK_AHB] = imx8m_clk_composite_critical("ahb", imx8mq_ahb_sels, base + 0x9000);
> > 
> > Please add a comment into the code why it's critical.
> 
> Comment explaining why the AHB bus clock is critical ?
> Isn't that self-explanatory ?

Nope, it isn't self-explanatory, because nothing on this line says "bus"
and it could be that someone reading this code isn't well versed in the
concepts of ARM world AHB to connect the two.

> 
> > 
> > >         clks[IMX8MQ_CLK_AUDIO_AHB] = imx8m_clk_composite("audio_ahb", imx8mq_audio_ahb_sels, base + 0x9100);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
