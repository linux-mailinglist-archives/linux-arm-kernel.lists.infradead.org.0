Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DC9B52FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 18:32:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYGaHL1PL6swrZnsgGDtuTdNIqj8MxVbmkvzbAwzgMc=; b=tmqmaoYR+lZ7qE
	ui7xrSskGFgw6hFz3qDjprpkr3xVHZYda7e3ac8bzMk6QQx3ntANFOHs7602vVHsPMkywiru+esBS
	sm2fZEJ3AWkU1NAPZ4TbrNft8ep7hZgZZE0HssOwbIf1ePdUEw5RmyAcVx3jRCsEQHSbV1sjXDOtN
	JRD3zmrRGqgj94dZelFS9XAsSpBSztHH/L1jTR/dr61/Tp13KNTOw2Ah1HawJiQtgplheVEoX4UkG
	d1FD/BybEMBASNCIX33tVe8ulX6dj66HoqE+eOvvUg5ryIamwcuvkIVuPwZUccXmcccomC9IiqF6L
	dEnC7y+ZacL7fCPeayww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAGOy-00009f-UM; Tue, 17 Sep 2019 16:32:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAGOm-000090-Db
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 16:32:18 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A838020665;
 Tue, 17 Sep 2019 16:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568737935;
 bh=1806vm0d1S7XVNXelbimfQVWSh7JvueRU/sHh9YNbiw=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=0XD7CRx+1osBMA4zjT/8TmoJe0X55eMamczxKoCew4bKMLIk/41z5gZxyf9kX/2S8
 um24xOyvI1ebpkxiNyemF5ihma6sqIH+tEiT6/g0hnol6xPXVfJiIrm+YcUEM7rPHA
 /gboF+03MuWamm3fquJWhPiY4MIqH5gwyYz77DYY=
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB70239F26BE42AD5E6FC3639DEE8C0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1566315740.git.leonard.crestez@nxp.com>
 <90bfeebcb76e76d286ed7f022ea9e0d9a569ebe2.1566315740.git.leonard.crestez@nxp.com>
 <20190916203312.CF8D02067B@mail.kernel.org>
 <VI1PR04MB70239F26BE42AD5E6FC3639DEE8C0@VI1PR04MB7023.eurprd04.prod.outlook.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 1/7] clk: imx8m: Set CLK_GET_RATE_NOCACHE on
 dram_alt/apb
User-Agent: alot/0.8.1
Date: Tue, 17 Sep 2019 09:32:14 -0700
Message-Id: <20190917163215.A838020665@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_093216_500487_29D5B578 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Artur Świgoń <a.swigon@partner.samsung.com>, Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>, Michael Turquette <mturquette@baylibre.com>, Alexandre Bailon <abailon@baylibre.com>, "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>, Kyungmin Park <kyungmin.park@samsung.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Leonard Crestez (2019-09-16 16:03:53)
> On 2019-09-16 11:33 PM, Stephen Boyd wrote:
> > Quoting Leonard Crestez (2019-08-20 08:45:06)
> >> Dram frequency changes required modifying these clocks outside the
> >> control of clk framework. Mark them as CLK_GET_RATE_NOCACHE so that
> >> rates are always read back from registers.
> > 
> > Why can't we control the clks from the clk framework? Please add that
> > information in the commit text here.
> 
> OK, I will update commit message and comments
> 
> These clocks are only modified for DRAM frequency switches during which 
> DRAM is briefly inaccessible. The switch is performed with a SMC call to 
> by TF-A which runs from a SRAM area. Upon returning to linux several 
> clocks bits are modified and we need to update them.
> 
> For rate bits an easy solution is to just mark with 
> CLK_GET_RATE_NOCACHE, muxes are handled explicitly.

Is there any reason to expose or control these clks from Linux then? It
might be easier to just make any children clks of the DRAM frequency clk
"root" clks and then ignore any frequency that they might have.
Similarly, because the SMC call is used to change the frequency, it may
be simpler to handle that completely outside of the clk framework (it
may already be this way in this patch series but I haven't read
everything here).

> 
> Linux code performing the SMC call is also part of this series:
> 
>      https://patchwork.kernel.org/patch/11104145/
> 
> >> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> >> ---
> >>   drivers/clk/imx/clk-imx8mm.c | 6 ++++--
> >>   drivers/clk/imx/clk-imx8mn.c | 6 ++++--
> >>   drivers/clk/imx/clk-imx8mq.c | 7 ++++---
> >>   3 files changed, 12 insertions(+), 7 deletions(-)
> >>
> >> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> >> index 4ead3ea2713c..6cac80550f43 100644
> >> --- a/drivers/clk/imx/clk-imx8mm.c
> >> +++ b/drivers/clk/imx/clk-imx8mm.c
> >> @@ -526,12 +526,14 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
> >>          /* IPG */
> >>          clks[IMX8MM_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
> >>          clks[IMX8MM_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
> >>   
> >>          /* IP */
> >> -       clks[IMX8MM_CLK_DRAM_ALT] = imx8m_clk_composite("dram_alt", imx8mm_dram_alt_sels, base + 0xa000);
> >> -       clks[IMX8MM_CLK_DRAM_APB] = imx8m_clk_composite_critical("dram_apb", imx8mm_dram_apb_sels, base + 0xa080);
> >> +       clks[IMX8MM_CLK_DRAM_ALT] = __imx8m_clk_composite("dram_alt", imx8mm_dram_alt_sels, base + 0xa000,
> >> +                       CLK_GET_RATE_NOCACHE);
> >> +       clks[IMX8MM_CLK_DRAM_APB] = __imx8m_clk_composite("dram_apb", imx8mm_dram_apb_sels, base + 0xa080,
> >> +                       CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
> > 
> > Also, add a comment to this effect about why it can't be done from the
> > clk framework wherever the CLK_GET_RATE_NOCACHE flag is set. Basically
> > this flag is a hack and is an example of something that we need to fix.
> 
> DRAM freq switch requires multiple clk changes to be performed 
> atomically while DRAM itself is not accessible so it's not something to 
> "fix".

Ok. Fix may be the wrong word.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
