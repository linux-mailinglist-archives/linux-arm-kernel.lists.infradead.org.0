Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A65A112592
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 09:42:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kOND6ZdGmw0/GzjSax4K4k97t0JfqDd/sooxWXOwL0I=; b=UKNruyXcnt5Jab
	FGqT6gpemLNgxRXCSocTTwmDE2FqMzXEGmkcYnbRULkca9CGWvUJ/Q7vOgV/LVK1ffCGdDkJL4lHP
	nlF9ldMhQVBLjeJ7hvY9O4guIxc1NyIVyEg4LkL7Z1asM+U7hVA9VF1eUt3L2mFmCb122akGJdCpj
	yb96HBC6xg2woydKU8Wk5tYbdUuIypvNPhMws3Ma3K48qv6c/gqGT8CoAqrLCbjGCyyUzWxP+j9zo
	huxAmyEWJf/GjL3TYb3D8+EeSsbQiL49bibw4EJIAvX5yHIz3FgMBMqZJDN7EQ3JVDC4pNSG2x9qu
	NEsr/+BYovF5FKTPf7JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQFM-0005A0-Tk; Wed, 04 Dec 2019 08:42:56 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQFC-00059T-I5; Wed, 04 Dec 2019 08:42:48 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-1-1480-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 72CCAC0005;
 Wed,  4 Dec 2019 08:42:34 +0000 (UTC)
Date: Wed, 4 Dec 2019 09:42:33 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Mao Wenan <maowenan@huawei.com>
Subject: Re: [PATCH v2 -next] rtc: mt6397: drop free_irq of devm_xx allocated
 irq
Message-ID: <20191204084233.GL909634@piout.net>
References: <20191204063444.GF1765@kadam>
 <20191204072826.117432-1-maowenan@huawei.com>
 <20191204084036.GK909634@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204084036.GK909634@piout.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_004246_732657_C07D1E0A 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, a.zummo@towertech.it, sean.wang@mediatek.com,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Hulk Robot <hulkci@huawei.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, matthias.bgg@gmail.com,
 eddie.huang@mediatek.com, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/12/2019 09:40:38+0100, Alexandre Belloni wrote:
> On 04/12/2019 15:28:26+0800, Mao Wenan wrote:
> > rtc->irq is requested by devm_request_threaded_irq,
> > and request_threaded_irq. IRQs requested with this
> > function will be automatically freed on driver detach.
> > This patch remove unused error label as well.
> > 
> > Reported-by: Hulk Robot <hulkci@huawei.com>
> > Signed-off-by: Mao Wenan <maowenan@huawei.com>
> > ---
> >  v2: remove error label as Dan Carpenter suggest.
> >  drivers/rtc/rtc-mt6397.c | 7 -------
> >  1 file changed, 7 deletions(-)
> > 
> > diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> > index 5249fc99fd5f..14f3c4915260 100644
> > --- a/drivers/rtc/rtc-mt6397.c
> > +++ b/drivers/rtc/rtc-mt6397.c
> > @@ -287,13 +287,6 @@ static int mtk_rtc_probe(struct platform_device *pdev)
> >  	rtc->rtc_dev->ops = &mtk_rtc_ops;
> >  
> >  	ret = rtc_register_device(rtc->rtc_dev);
> > -	if (ret)
> > -		goto out_free_irq;
> > -
> > -	return 0;
> > -
> > -out_free_irq:
> > -	free_irq(rtc->irq, rtc);
> >  	return ret;
> 
> Maybe return rtc_register_device(rtc->rtc_dev); 
> 

By the way, this was already properly submitted here:
https://patchwork.ozlabs.org/patch/1193956/

So I'll apply this one once the merge window ends (it depends on the MFD
pull request, that is why I didn't apply it yet).


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
