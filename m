Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C381B0861
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 13:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=El19+FFM48rG0JNhNScXl4kyaRGQACfMZowlZKMDYE4=; b=rAbTNLHAve7wc4
	wavVrz9x+ziX6omZK+wt8kBWiz263MRJK8EaxEIGp7A8I9oauyu8QbQ6kbuTc3xb9ftEhDi6VGuJb
	J9neDzpJd0BTOT0Jp9aJ3sVFyRz1q9785imw2RgUq7HHc508x4mcPW2I6UYZttKgEN9o1A0qSUh5p
	cp4kGeGnQnOqrQELZmguzSXD4GCef0AwkIKetjTKcuG2n76LS7lJOkg53A0rTe10Om2y9HxtdCWiz
	mqEUxTZ7pbFIgxij1YoTIJUn88y+2ffoEUhVWCqFg5t1m3qLpc044b+JOX/dAuIQYEapiLCHcVBLZ
	atcpSFNCVQCWUvPCy4yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQV1W-0008PF-Mq; Mon, 20 Apr 2020 11:55:38 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQV1D-0008Ia-8P; Mon, 20 Apr 2020 11:55:21 +0000
X-UUID: 97b3bfd2cbab49faaa6f7114f10f5b66-20200420
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=G75ycipgYh3BzGzGfO3AsO2FJWOZiqx83AQbRPGl/w4=; 
 b=pUpj7RGRHo0+2d+oeurDqicS/a96s2FPh9P1dlZTQXYtqyUv0kPkeH7WY+y07nN3YFFTH7dnxsRfIZvs57xX0LWDEFusWbvj4tVxZZ7SlzKfohNyfQ/OLAwgKlhm/IWAe3NWhbkopgrEvDhWqWFaU0SHmjyol6zWapFBEarHpko=;
X-UUID: 97b3bfd2cbab49faaa6f7114f10f5b66-20200420
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1617397956; Mon, 20 Apr 2020 03:55:10 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 20 Apr 2020 04:55:11 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 20 Apr 2020 19:55:11 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 20 Apr 2020 19:55:11 +0800
Message-ID: <1587383712.11642.0.camel@mtksdaap41>
Subject: Re: [PATCH v12 1/6] mfd: mt6397: Modify suspend/resume behavior
From: Hsin-hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>
Date: Mon, 20 Apr 2020 19:55:12 +0800
In-Reply-To: <20200420111522.GB3612@dell>
References: <1586333531-21641-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1586333531-21641-2-git-send-email-hsin-hsiung.wang@mediatek.com>
 <20200416084910.GX2167633@dell> <1587379959.6297.2.camel@mtksdaap41>
 <20200420111522.GB3612@dell>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_045519_320573_1D6DAC8F 
X-CRM114-Status: GOOD (  22.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sebastian Reichel <sre@kernel.org>, Richard
 Fontana <rfontana@redhat.com>, linux-rtc@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>,
 Frank Wunderlich <frank-w@public-files.de>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias
 Brugger <matthias.bgg@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 Alessandro Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, 2020-04-20 at 12:15 +0100, Lee Jones wrote:
> On Mon, 20 Apr 2020, Hsin-hsiung Wang wrote:
> 
> > Hi,
> > 
> > On Thu, 2020-04-16 at 09:49 +0100, Lee Jones wrote:
> > > On Wed, 08 Apr 2020, Hsin-Hsiung Wang wrote:
> > > 
> > > > Some pmics don't need backup interrupt settings, so we change to use
> > > > pm notifier for the pmics which are necessary to store settings.
> > > > 
> > > > Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> > > > ---
> > > >  drivers/mfd/mt6397-core.c       | 30 ------------------------------
> > > >  drivers/mfd/mt6397-irq.c        | 35 ++++++++++++++++++++++++++++++++++-
> > > >  include/linux/mfd/mt6397/core.h |  2 ++
> > > >  3 files changed, 36 insertions(+), 31 deletions(-)
> > > > 
> > > > diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
> > > > index 0437c85..d2e70d8 100644
> > > > --- a/drivers/mfd/mt6397-core.c
> > > > +++ b/drivers/mfd/mt6397-core.c
> > > > @@ -100,35 +100,6 @@ static const struct mfd_cell mt6397_devs[] = {
> > > >  	}
> > > >  };
> > > >  
> > > > -#ifdef CONFIG_PM_SLEEP
> > > > -static int mt6397_irq_suspend(struct device *dev)
> > > > -{
> > > > -	struct mt6397_chip *chip = dev_get_drvdata(dev);
> > > > -
> > > > -	regmap_write(chip->regmap, chip->int_con[0], chip->wake_mask[0]);
> > > > -	regmap_write(chip->regmap, chip->int_con[1], chip->wake_mask[1]);
> > > > -
> > > > -	enable_irq_wake(chip->irq);
> > > > -
> > > > -	return 0;
> > > > -}
> > > > -
> > > > -static int mt6397_irq_resume(struct device *dev)
> > > > -{
> > > > -	struct mt6397_chip *chip = dev_get_drvdata(dev);
> > > > -
> > > > -	regmap_write(chip->regmap, chip->int_con[0], chip->irq_masks_cur[0]);
> > > > -	regmap_write(chip->regmap, chip->int_con[1], chip->irq_masks_cur[1]);
> > > > -
> > > > -	disable_irq_wake(chip->irq);
> > > > -
> > > > -	return 0;
> > > > -}
> > > > -#endif
> > > > -
> > > > -static SIMPLE_DEV_PM_OPS(mt6397_pm_ops, mt6397_irq_suspend,
> > > > -			mt6397_irq_resume);
> > > > -
> > > >  struct chip_data {
> > > >  	u32 cid_addr;
> > > >  	u32 cid_shift;
> > > > @@ -238,7 +209,6 @@ static struct platform_driver mt6397_driver = {
> > > >  	.driver = {
> > > >  		.name = "mt6397",
> > > >  		.of_match_table = of_match_ptr(mt6397_of_match),
> > > > -		.pm = &mt6397_pm_ops,
> > > >  	},
> > > >  	.id_table = mt6397_id,
> > > >  };
> > > > diff --git a/drivers/mfd/mt6397-irq.c b/drivers/mfd/mt6397-irq.c
> > > > index b2d3ce1..2924919 100644
> > > > --- a/drivers/mfd/mt6397-irq.c
> > > > +++ b/drivers/mfd/mt6397-irq.c
> > > > @@ -9,6 +9,7 @@
> > > >  #include <linux/of_irq.h>
> > > >  #include <linux/platform_device.h>
> > > >  #include <linux/regmap.h>
> > > > +#include <linux/suspend.h>
> > > >  #include <linux/mfd/mt6323/core.h>
> > > >  #include <linux/mfd/mt6323/registers.h>
> > > >  #include <linux/mfd/mt6397/core.h>
> > > > @@ -81,7 +82,7 @@ static struct irq_chip mt6397_irq_chip = {
> > > >  static void mt6397_irq_handle_reg(struct mt6397_chip *mt6397, int reg,
> > > >  				  int irqbase)
> > > >  {
> > > > -	unsigned int status;
> > > > +	unsigned int status = 0;
> > > 
> > > This looks like an unrelated change, no?
> > > 
> > 
> > It is to fix the coverity defect.
> 
> Which isn't mentioned in the commit log and doesn't have anything to
> do with this patch.  Thus it should be in a separate patch, but I'm
> not going to lose any sleep over it.
> 

Could I just add it to the commit message?
Thanks.

> > > >  	int i, irq, ret;
> > > >  
> > > >  	ret = regmap_read(mt6397->regmap, reg, &status);
> > > > @@ -128,6 +129,36 @@ static const struct irq_domain_ops mt6397_irq_domain_ops = {
> > > >  	.map = mt6397_irq_domain_map,
> > > >  };
> > > 
> > > Other than that.
> > > 
> > > For my own reference:
> > >   Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
> > > 
> > Thanks for your review. I will add it in the next version.
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
