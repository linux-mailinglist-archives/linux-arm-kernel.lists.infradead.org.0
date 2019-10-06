Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C268CCF82
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 10:46:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x9H8zXX2a6DkqFxVFKM4PyTyQZENUnuPE8lORxDVDEk=; b=s28v9a89Dk+9aF
	cFzu3fAeebC8ydKmEurf/1lKwotADbuUS0XI9KyFA64yPPMcsMEAwBgIplhUVwk0RVk+NR3aOgDyI
	jdEX7KnreGQrwpqDcrx3bWwrLR/vFxBCFInJAHP0cpt+598OO8LBHB0fDss1uLcEmbNbfPQ3jGOYv
	QPVafa75fxG/ByCVOgCNEnK1QPHeh4aZKL+E8tUehyqCGG6U/oqWrf72qIA+tnStXIHCFOOYi2DsT
	mooiXMgf+/J8wIgc5nHhx49DJSM3WjPvqTXBP9hBH+lG3WRBT9Y1A42M8GqO65sxRILHlRw3JAd03
	WmfzeQ9efkOYsMbOaw0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH2BS-0004Cu-M0; Sun, 06 Oct 2019 08:46:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH2BI-0004CV-W7
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 08:46:22 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A61C82084B;
 Sun,  6 Oct 2019 08:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570351580;
 bh=hf30g4d8JZ11GzLvpR7H04sV2GMkhrx+p1kiP+B0azY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=2LJ+/zh5VABr02frYcHGE7Cc46uW0q0IKteroMEn73P2ECn2ICmzlgpsOFSLKctp2
 zLKV8U+y5hyjtjhfAb5xe5WQ2CmbBydYwZn974xqBBCx1dyM8g3HTy2EslMEloE7hK
 5zjQtRSWmcIia/Xlv4Zh5FcSjJvGPkn2HQfqJ5D8=
Date: Sun, 6 Oct 2019 09:46:15 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH] counter: stm32: clean up indentation issue
Message-ID: <20191006094615.5b798a42@archlinux>
In-Reply-To: <20191005173004.GA7431@icarus>
References: <20190925095126.20219-1-colin.king@canonical.com>
 <20191005173004.GA7431@icarus>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_014621_056744_0D3781D3 
X-CRM114-Status: GOOD (  16.94  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-iio@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Colin King <colin.king@canonical.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 5 Oct 2019 13:30:04 -0400
William Breathitt Gray <vilhelm.gray@gmail.com> wrote:

> On Wed, Sep 25, 2019 at 10:51:26AM +0100, Colin King wrote:
> > From: Colin Ian King <colin.king@canonical.com>
> > 
> > There is an if statement that is indented one level too deeply,
> > remove the extraneous tabs.
> > 
> > Signed-off-by: Colin Ian King <colin.king@canonical.com>
> > ---
> >  drivers/counter/stm32-timer-cnt.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/counter/stm32-timer-cnt.c b/drivers/counter/stm32-timer-cnt.c
> > index 644ba18a72ad..613dcccf79e1 100644
> > --- a/drivers/counter/stm32-timer-cnt.c
> > +++ b/drivers/counter/stm32-timer-cnt.c
> > @@ -219,8 +219,8 @@ static ssize_t stm32_count_enable_write(struct counter_device *counter,
> >  
> >  	if (enable) {
> >  		regmap_read(priv->regmap, TIM_CR1, &cr1);
> > -			if (!(cr1 & TIM_CR1_CEN))
> > -				clk_enable(priv->clk);
> > +		if (!(cr1 & TIM_CR1_CEN))
> > +			clk_enable(priv->clk);
> >  
> >  		regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN,
> >  				   TIM_CR1_CEN);
> > -- 
> > 2.20.1  
> 
> Acked-by: William Breathitt Gray <vilhelm.gray@gmail.com>
Applied to the togreg branch of iio.git and pushed out as testing
for the autobuilders to poke it.

Thanks,

Jonathan

> 
> Fabrice,
> 
> I noticed the TIM_CR1_CEN check is happening before the
> regmap_update_bits call for the enable path, while the disable path does
> the check after. Is this logic is correct.
> 
> William Breathitt Gray


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
