Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9515737873
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 17:46:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/qfRqgz5a8Z+L9ajzhBe/dbbv1nbewkJ8tyItrMbyA=; b=BAUDNqtK8qJbfM
	H8SLd4H+ekmbxCkMHqKOyzQlCHF41mFrm2mkLTyoK9V2JZeBAegMmKufIDlOUVjGsZ3wJr5SxbPho
	V5uyrj5r4TQtCgS3MrwdZ1uP3lgxL7zHHJuHcStWbg0LwXgrUewhmvFtQyX5dQrYB55gwY2LiwPLB
	KBMMIS/X89Itu+Ac1n+d2tXvMotiKjAXocDP94CslH6lGImZhkOnwUM1nb5zMAgmcw0RYmFASQ1lj
	keA8jEVJ13zsjdztsgXS4rkrTtXXn48MFf56AGKDLJULtLYzQCigvJnMELeu4I+h0qFG/9IbLznX7
	RX1ekQP+5RUlQNoFFW3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYubF-0002nD-Vg; Thu, 06 Jun 2019 15:46:45 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYub7-0002kF-KY; Thu, 06 Jun 2019 15:46:40 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 4D16868F10A3783AD570;
 Thu,  6 Jun 2019 23:46:18 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Thu, 6 Jun 2019
 23:46:14 +0800
Date: Thu, 6 Jun 2019 16:46:00 +0100
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Chun-Hung Wu <chun-hung.wu@mediatek.com>
Subject: Re: [PATCH 3/4] iio: adc: mediatek: SET_LATE_SYSTEM_SLEEP_PM_OPS
 support
Message-ID: <20190606164600.000060b3@huawei.com>
In-Reply-To: <1559041196.12867.3.camel@mtkswgap22>
References: <1557994247-16739-1-git-send-email-chun-hung.wu@mediatek.com>
 <1557994247-16739-4-git-send-email-chun-hung.wu@mediatek.com>
 <20190518113527.5210b0bf@archlinux>
 <1558332205.11080.6.camel@mtkswgap22>
 <7838dcae-8a69-0297-718b-a061b14a456d@gmail.com>
 <1559041196.12867.3.camel@mtkswgap22>
Organization: Huawei
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_084638_403384_346D8C9E 
X-CRM114-Status: GOOD (  22.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>, wsd_upstream@mediatek.com,
 linux-iio@vger.kernel.org, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, stanley.chu@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, jg_poxu@mediatek.com,
 Jonathan Cameron <jic23@kernel.org>, peter.wang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 18:59:56 +0800
Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:

> Hi Matthias:
> 
>   Thanks for your suggestion, I think device_links is a good way to
> make dependency of module's suspend/resume order.
> 
> Hi Jonathan:
> 
>   Is it ok to keep using late_suspend and early_resume, or do you think
> it's better to use device_links?
I think device links would be preferable as the reasoning becomes explicit.
As I understand them they are also a less fragile solution.

Thanks,

Jonathan

> 
> Thanks,
> Chun-Hung
> On Wed, 2019-05-22 at 18:28 +0200, Matthias Brugger wrote:
> > 
> > On 20/05/2019 08:03, Chun-Hung Wu wrote:  
> > > Hi Jonathan:
> > > 
> > >   Thanks for the prompt reply,
> > > 
> > > On Sat, 2019-05-18 at 11:35 +0100, Jonathan Cameron wrote:  
> > >> On Thu, 16 May 2019 16:10:46 +0800
> > >> Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:
> > >>  
> > >>>   Move suspend/resume to late_suspend and
> > >>> early_resume to gurantee users can use auxadc  
> > >> guarantee
> > >>  
> > > will fix it in next version.  
> > >>> driver at suspend/resume stage.  
> > >> No problem with the patch content, but we need a reason why they may
> > >> want to do so?  
> > > Our thermal drivers uses auxadc at suspend/resume stage.
> > > In order to avoid auxadc suspended prior to thermal driver,
> > > we move auxadc to late_suspend and early_resume.
> > >   
> > 
> > That sounds like a user of device_links [1] to me.
> > 
> > [1] https://www.kernel.org/doc/html/latest/driver-api/device_link.html
> >   
> > > Thanks,
> > > Chun-Hung  
> > >>
> > >> Thanks,
> > >>
> > >> Jonathan  
> > >>>
> > >>> Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> > >>> ---
> > >>>  drivers/iio/adc/mt6577_auxadc.c | 7 ++++---
> > >>>  1 file changed, 4 insertions(+), 3 deletions(-)
> > >>>
> > >>> diff --git a/drivers/iio/adc/mt6577_auxadc.c b/drivers/iio/adc/mt6577_auxadc.c
> > >>> index e1bdcc0..58d7cb2 100644
> > >>> --- a/drivers/iio/adc/mt6577_auxadc.c
> > >>> +++ b/drivers/iio/adc/mt6577_auxadc.c
> > >>> @@ -326,9 +326,10 @@ static int mt6577_auxadc_remove(struct platform_device *pdev)
> > >>>  	return 0;
> > >>>  }
> > >>>  
> > >>> -static SIMPLE_DEV_PM_OPS(mt6577_auxadc_pm_ops,
> > >>> -			 mt6577_auxadc_suspend,
> > >>> -			 mt6577_auxadc_resume);
> > >>> +static const struct dev_pm_ops mt6577_auxadc_pm_ops = {
> > >>> +	SET_LATE_SYSTEM_SLEEP_PM_OPS(mt6577_auxadc_suspend,
> > >>> +				     mt6577_auxadc_resume)
> > >>> +};
> > >>>  
> > >>>  static const struct of_device_id mt6577_auxadc_of_match[] = {
> > >>>  	{ .compatible = "mediatek,mt2701-auxadc", .data = &mt8173_compat},  
> > >>  
> > > 
> > >   
> 
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
