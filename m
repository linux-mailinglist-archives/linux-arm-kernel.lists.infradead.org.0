Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFBC1BF50E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mJUYeOlkwuuctp7ysDlS9/Qpnej7YM5F/eNMoo4mrFk=; b=eiAcLkXl9mWEjg
	6lawU+fGh2Q+W/w31qw1E3rO9r+3WyYhY2VspNaXbzL1LY1th76HO185/+BQX6h2vC7jEd8kFA5GJ
	hfk/sJH0LwDnqcWOT31OwiezIkyDeIajzqo9fu83Rp+UKrCO1av02M6W3CfO6cGUxW8RgoxLEmech
	lWhsqmAsEZ4kyon96DQaAbW7GIpBQ5rtRtUuEGR3a1OpYOhNTgr2dlGGflHSIAzgsyM9FL91AmfOV
	1ot74fz6xVL4hF4Lksbz0UHENHjTwJ7Bi9wpulF+m8uRx4lXfAhaGyjwjNtOBxCHPJJo7wMJMKLnP
	R6o8+ioiXo9W43o3q8Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU6A5-00046M-J3; Thu, 30 Apr 2020 10:11:21 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU69w-00044S-9o
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 10:11:13 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 711EB1A075C;
 Thu, 30 Apr 2020 12:11:07 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 64EBE1A0759;
 Thu, 30 Apr 2020 12:11:07 +0200 (CEST)
Received: from localhost (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 4D226203C1;
 Thu, 30 Apr 2020 12:11:07 +0200 (CEST)
Date: Thu, 30 Apr 2020 13:11:07 +0300
From: Abel Vesa <abel.vesa@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH] clk: imx8mp: Set the correct parent for audio_root_clk
Message-ID: <20200430101107.t76727jwwkyhlkvd@fsr-ub1664-175>
References: <1588000281-6594-1-git-send-email-abel.vesa@nxp.com>
 <AM6PR04MB49663A072F56397BE55FF3C480AC0@AM6PR04MB4966.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM6PR04MB49663A072F56397BE55FF3C480AC0@AM6PR04MB4966.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_031112_480744_178F72FF 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-04-28 08:15:51, Aisheng Dong wrote:
> > From: Abel Vesa <abel.vesa@nxp.com>
> > Sent: Monday, April 27, 2020 11:11 PM
> > 
> > Instead of ipg_root, the parent needs to be ipg_audio_root.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> 
> I have a few doubts about this patch:
> 1. From latest RM, it seems CCGR101 (0x4650) is a shared gate for many audio instances.
> 2. If this patch is about AUDIO_AHB_CLK_ROOT, then it's parent is AHB[POST_PODF] from the clock tree in RM.
> Not quite understand why this patch changes to IPG[POST_PODF]. Is this RM incorrect issue?
> 
> BTW, if this patch is taken from someone else, we usually better keep the original author if not fundamental changes.
> 

I made this change at the suggestion from S.j. Wang.
I'm the original author in linux-nxp (internal tree).

> Regards
> Aisheng
> 
> > ---
> >  drivers/clk/imx/clk-imx8mp.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c index
> > 41469e2..dcdfc9d 100644
> > --- a/drivers/clk/imx/clk-imx8mp.c
> > +++ b/drivers/clk/imx/clk-imx8mp.c
> > @@ -727,7 +727,7 @@ static int imx8mp_clocks_probe(struct platform_device
> > *pdev)
> >  	hws[IMX8MP_CLK_HDMI_ROOT] = imx_clk_hw_gate4("hdmi_root_clk",
> > "hdmi_axi", ccm_base + 0x45f0, 0);
> >  	hws[IMX8MP_CLK_TSENSOR_ROOT] =
> > imx_clk_hw_gate4("tsensor_root_clk", "ipg_root", ccm_base + 0x4620, 0);
> >  	hws[IMX8MP_CLK_VPU_ROOT] = imx_clk_hw_gate4("vpu_root_clk",
> > "vpu_bus", ccm_base + 0x4630, 0);
> > -	hws[IMX8MP_CLK_AUDIO_ROOT] = imx_clk_hw_gate4("audio_root_clk",
> > "ipg_root", ccm_base + 0x4650, 0);
> > +	hws[IMX8MP_CLK_AUDIO_ROOT] = imx_clk_hw_gate4("audio_root_clk",
> > +"ipg_audio_root", ccm_base + 0x4650, 0);
> > 
> >  	hws[IMX8MP_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_core",
> >  					     hws[IMX8MP_CLK_A53_CORE]->clk,
> > --
> > 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
