Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8301222BD6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 08:06:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zP97BSUz3UELH9jj6XNd5sPcttfBwCQOZMByMNZVJ90=; b=ccSOXDuepcjNgG
	DOCIibPwe4rveWEw7GYLb8g5cMxQhyTfUNe7VtZfrY7XdKeYntPYXeK/8OBbAHzdBeY6cmxENlW0L
	1WHajqv3ggKnWC98mNPU866WxAv/Uw2yFZhHhns7njxeEweIy6yDR1MHnkGNVrc86BgBccBIF6X/c
	pikJR0JwPlcul9avVhO4vGlL5JSh8PbXc1auCTz3P8ciGgPslGhK8egoETJMHilael/yhSTecla34
	UbfJfAUD180c0GWezoRh6XxxrNgreus5Rnqa/yxHkIgkAHNWCvP3zAlYXzY9zkCMFHNfiuji6MroG
	YlQ//4cXSNFL2soWD1Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSbRm-0005FD-Gc; Mon, 20 May 2019 06:06:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSbRe-00058S-Kv; Mon, 20 May 2019 06:06:47 +0000
X-UUID: b6ea6b9fce964c7cac7254bb2ba854f8-20190519
X-UUID: b6ea6b9fce964c7cac7254bb2ba854f8-20190519
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 46756079; Sun, 19 May 2019 22:06:42 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 May 2019 23:06:40 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 14:06:38 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 20 May 2019 14:06:38 +0800
Message-ID: <1558332398.11080.9.camel@mtkswgap22>
Subject: Re: [PATCH 4/4] iio: auxadc: mediatek: change to subsys_initcall
From: Chun-Hung Wu <chun-hung.wu@mediatek.com>
To: Jonathan Cameron <jic23@kernel.org>
Date: Mon, 20 May 2019 14:06:38 +0800
In-Reply-To: <20190518113643.53a42976@archlinux>
References: <1557994247-16739-1-git-send-email-chun-hung.wu@mediatek.com>
 <1557994247-16739-5-git-send-email-chun-hung.wu@mediatek.com>
 <20190518113643.53a42976@archlinux>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2F0B7CBF20F89F7C6C59579E9C4CCAF43409E6EB9A5EC6F37009CE4AC58C707A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_230646_690938_ADBDF70B 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, jg_poxu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jonathan,

On Sat, 2019-05-18 at 11:36 +0100, Jonathan Cameron wrote:
> On Thu, 16 May 2019 16:10:47 +0800
> Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:
> 
> >   Move auxadc platform_driver_register() from module_init
> > to subsys_initcall because auxadc user drivers
> > are all moudle drivers, need to gurantee
> > auxadc driver ready before module_init.
> > 
> Is it not possible to make them use deferred handling to come
> back later if this isn't yet available?
> 
> subsys_initcall often ends up being a more fragile approach.

Agreed, I will ask auxadc driver users to add deferred handling
instead of moving auxadc platform_driver_register() from module_init
to subsys_initcall.

Thanks,
Chun-hung

> 
> Thanks,
> 
> Jonathan
> 
> > Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> > ---
> >  drivers/iio/adc/mt6577_auxadc.c | 14 +++++++++++++-
> >  1 file changed, 13 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/iio/adc/mt6577_auxadc.c b/drivers/iio/adc/mt6577_auxadc.c
> > index 58d7cb2..cb8e3dd 100644
> > --- a/drivers/iio/adc/mt6577_auxadc.c
> > +++ b/drivers/iio/adc/mt6577_auxadc.c
> > @@ -350,7 +350,19 @@ static int mt6577_auxadc_remove(struct platform_device *pdev)
> >  	.probe	= mt6577_auxadc_probe,
> >  	.remove	= mt6577_auxadc_remove,
> >  };
> > -module_platform_driver(mt6577_auxadc_driver);
> > +
> > +static int __init mt6577_auxadc_init(void)
> > +{
> > +	return platform_driver_register(&mt6577_auxadc_driver);
> > +}
> > +
> > +static void __exit mt6577_auxadc_exit(void)
> > +{
> > +	platform_driver_unregister(&mt6577_auxadc_driver);
> > +}
> > +
> > +subsys_initcall(mt6577_auxadc_init);
> > +module_exit(mt6577_auxadc_exit);
> >  
> >  MODULE_AUTHOR("Zhiyong Tao <zhiyong.tao@mediatek.com>");
> >  MODULE_DESCRIPTION("MTK AUXADC Device Driver");
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
