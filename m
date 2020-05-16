Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D55361D62AE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 18:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGW+WzRabACDs/XFQ5TcbGIDk86t2SLcjPplDc5cUH4=; b=OLVdMQgxJaGmaS
	9oKFVbe4WSHNZtaNZMSBpu/bxZuQb8Fp1CosSuqHYpwEoTTg6WcbGsyvAdwya3hSvzGaZfNV7oCtt
	Pw+ZoSYTDUKJMt7QPxnp4g2fyrS5Di2pcLlAsqcgWsMxyGLaG1IOQ0uwbheAUzzZ9Bzy00IDhYcmc
	vY+2GGCbBsroI8H2mP8Xu9M7JDA6TaT36yymQ2tGrwWMZrlNYwgc8bgsiLl0IRxsjVvbJ5fFzLT5U
	xcbeQFAO+gV3g40sLwIop6VXfY9SRYi6yxUzTpnFy/oHT5nLAD96PGS8DJzWHcp/5xpCzN9Y/24VN
	nbjo/T+JOzL+3N4klyQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZzpC-0004n2-8n; Sat, 16 May 2020 16:38:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZzp3-0004mf-1e
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 16:38:02 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 98535206D4;
 Sat, 16 May 2020 16:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589647080;
 bh=pbJEkTsR5rZqT6w3UvXcgntFessnxR6qlEIS6uOhmmw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kY50VS7EwjdDATTzjCFc6sF9nBArlTI/SFSWXia74Y9iHa2Gxz0Zr0Jk+tqspo0TK
 J9KB0jTDaRbI9YTxoyVJoYVY390OrgGd2LxGCMlzygLgY3nfkBaxIe1pW0SDf+wYmY
 PXe00W/UTwuPNLRV7QOyyX3e97wd6p4o+BZYVcBM=
Date: Sat, 16 May 2020 17:37:55 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: "Alim Akhtar" <alim.akhtar@samsung.com>
Subject: Re: [PATCH] iio: adc: exynos: Simplify Exynos7-specific init
Message-ID: <20200516173755.2b759618@archlinux>
In-Reply-To: <037501d627b8$56f06870$04d13950$@samsung.com>
References: <CGME20200511083406epcas5p18e835634e60f362dc408d73886aa5563@epcas5p1.samsung.com>
 <20200511083348.7577-1-krzk@kernel.org>
 <037501d627b8$56f06870$04d13950$@samsung.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_093801_105422_D1923D2D 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: 'Lars-Peter Clausen' <lars@metafoo.de>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, 'Krzysztof Kozlowski' <krzk@kernel.org>,
 linux-samsung-soc@vger.kernel.org, 'Kukjin Kim' <kgene@kernel.org>, 'Peter
 Meerwald-Stadler' <pmeerw@pmeerw.net>, 'Hartmut Knaack' <knaack.h@gmx.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 11 May 2020 22:49:28 +0530
"Alim Akhtar" <alim.akhtar@samsung.com> wrote:

> Hello Krzysztof,
> Thanks for the patch.
> 
> > -----Original Message-----
> > From: Krzysztof Kozlowski <krzk@kernel.org>
> > Sent: 11 May 2020 14:04
> > To: Jonathan Cameron <jic23@kernel.org>; Hartmut Knaack
> > <knaack.h@gmx.de>; Lars-Peter Clausen <lars@metafoo.de>; Peter Meerwald-
> > Stadler <pmeerw@pmeerw.net>; Kukjin Kim <kgene@kernel.org>; Krzysztof
> > Kozlowski <krzk@kernel.org>; linux-iio@vger.kernel.org; linux-arm-
> > kernel@lists.infradead.org; linux-samsung-soc@vger.kernel.org; linux-
> > kernel@vger.kernel.org
> > Cc: Alim Akhtar <alim.akhtar@samsung.com>
> > Subject: [PATCH] iio: adc: exynos: Simplify Exynos7-specific init
> > 
> > The Exynos7-specific code bits in ADC driver do not play with PHY:
> > the field exynos_adc_data.needs_adc_phy is not set in exynos7_adc_data
> > instance.  Therefore the initialization code does not have to check if it  
> is true.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> >   
> Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
> Tested on exynos7-espresso board so,
> Tested-by:  Alim Akhtar <alim.akhtar@samsung.com>

Applied to the togreg branch of iio.git and pushed out as testing for
the autobuilders to play with it.

Thanks,

Jonathan

> 
> > ---
> > 
> > Only build tested.
> > ---
> >  drivers/iio/adc/exynos_adc.c | 3 ---
> >  1 file changed, 3 deletions(-)
> > 
> > diff --git a/drivers/iio/adc/exynos_adc.c b/drivers/iio/adc/exynos_adc.c  
> index
> > 22131a677445..219c8eb32d16 100644
> > --- a/drivers/iio/adc/exynos_adc.c
> > +++ b/drivers/iio/adc/exynos_adc.c
> > @@ -449,9 +449,6 @@ static void exynos_adc_exynos7_init_hw(struct
> > exynos_adc *info)  {
> >  	u32 con1, con2;
> > 
> > -	if (info->data->needs_adc_phy)
> > -		regmap_write(info->pmu_map, info->data->phy_offset, 1);
> > -
> >  	con1 = ADC_V2_CON1_SOFT_RESET;
> >  	writel(con1, ADC_V2_CON1(info->regs));
> > 
> > --
> > 2.17.1  
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
