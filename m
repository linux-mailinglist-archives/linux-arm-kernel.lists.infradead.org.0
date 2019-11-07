Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F19F2DBE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 12:52:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1V3tnNq7VGkKrGwPtAx7iQPFF4iix+6EPEavQGWj6ic=; b=tQt8LPanb1FEqc
	h34HUYkKteP5N7QMhMb9FMbaScgPtWpS62CTIodJFtMtnMgjRM5AVZow/UcTcrVs3VN4/scRGo/pg
	avMVCIlGRzM4ao/k0zFmY1EMm1UZo8SXJRtw6EcALRpH0Tra00OsTOfZBeP1/1L7664i3BEAw6q7D
	Fb6c2ZhY/ftx0eNIuF1O2iqkz/lpOWKBAywyOc/NTUnps0jsx6zKlVvUf71In1d+jjen1N7xT2M8Y
	WyETkYXdIJf1/afTcTaY2VTftNDFKWUxX+37Jk7ksmW1S8vMNVcEzy6oEfpaImAB7Jnv18Ae/+FTT
	Zk0OiqXbO0DStPDoSCrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSgLM-0007wp-3T; Thu, 07 Nov 2019 11:52:52 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSgLD-0007vd-4M
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 11:52:44 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 07 Nov 2019 20:52:40 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 11A78605F8;
 Thu,  7 Nov 2019 20:52:40 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Thu, 7 Nov 2019 20:52:50 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id D23A61A04FC;
 Thu,  7 Nov 2019 20:52:39 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id A4AD7120C15;
 Thu,  7 Nov 2019 20:52:39 +0900 (JST)
Date: Thu, 07 Nov 2019 20:52:39 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH 2/2] PCI: uniphier: Add checking whether PERST# is
 deasserted
In-Reply-To: <20191107100207.GV9723@e119886-lin.cambridge.arm.com>
References: <1573102695-7018-2-git-send-email-hayashi.kunihiko@socionext.com>
 <20191107100207.GV9723@e119886-lin.cambridge.arm.com>
Message-Id: <20191107205239.65C1.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_035243_395568_658947EA 
X-CRM114-Status: GOOD (  22.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,
Thank you for your comments.

On Thu, 7 Nov 2019 10:02:08 +0000 <andrew.murray@arm.com> wrote:

> On Thu, Nov 07, 2019 at 01:58:15PM +0900, Kunihiko Hayashi wrote:
> > When PERST# is asserted once, EP configuration will be initialized.
> 
> I don't quite understand this - does the EP/RC mode depend on how often
> PERST# is toggled?

I think of connecting this RC controller and EP based on `Linux PCI
endpoint framework' in another machine.

While this RC driver is probing, the EP driver might be also probing and
configurating itself using configfs. If PERST# is toggled after the EP
has done its configuration, this configuration will be lost.

I expect that the EP configurates after RC has toggled PERST#, however,
there is no way to synchronize both of them.


> 
> > If PERST# has been already deasserted, it isn't necessary to assert
> > here.
> 
> What is the motativation for this patch? Is it to avoid a delay during
> boot, or to fix some bug? Isn't it nice to always reset the IP before
> use anyway?

Since EP device usually works without its configuration after PERST#,
deassering PERST# here is no problem. Since bus reset breaks configuration
of EP as shown above, bus reset should be done before EP has probed.
Maybe boot sequence in host machine will do.


>
> > 
> > This checks whether PERST# is deasserted using PCL_PINMON register,
> > and adds omit controlling PERST#.
> 
> Should this read 'and omits controlling PERST#'?

Yes, I'll fix it.


> 
> > 
> > Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> > ---
> >  drivers/pci/controller/dwc/pcie-uniphier.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/drivers/pci/controller/dwc/pcie-uniphier.c b/drivers/pci/controller/dwc/pcie-uniphier.c
> > index 8fd7bad..1ea4220 100644
> > --- a/drivers/pci/controller/dwc/pcie-uniphier.c
> > +++ b/drivers/pci/controller/dwc/pcie-uniphier.c
> > @@ -22,6 +22,9 @@
> >  
> >  #include "pcie-designware.h"
> >  
> > +#define PCL_PINMON			0x0028
> > +#define PCL_PINMON_PERST_OUT		BIT(16)
> > +
> >  #define PCL_PINCTRL0			0x002c
> >  #define PCL_PERST_PLDN_REGEN		BIT(12)
> >  #define PCL_PERST_NOE_REGEN		BIT(11)
> > @@ -100,6 +103,11 @@ static void uniphier_pcie_init_rc(struct uniphier_pcie_priv *priv)
> >  	val |= PCL_SYS_AUX_PWR_DET;
> >  	writel(val, priv->base + PCL_APP_PM0);
> >  
> > +	/* return if PERST# is already deasserted */
> 
> This comment just describes what the following line does which may be
> self-explanatory, perhaps a better comment would describe why we avoid
> a reset.

Indeed. I'll write the reason here.

Thank you,

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
