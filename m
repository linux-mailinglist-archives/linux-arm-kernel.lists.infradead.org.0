Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC797F980
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=voHQxGs0/QtzA1oRmcwVOfWstOSaTDEmSw3mIwkBvr8=; b=nY2G/oH2QAvLlZ
	ZTSKiHb78G6/uWSqstI3eCC7GeD5XSzr5TrnMRDPxk1pnVG2sIPo0FVRbaeiEpuJ1DhrXa4YoG0jH
	XowrtV0cWRhek43DMouhk6TQPTqaD/ocYxe6adOOHoK8W9vKLXATppUZHYzT9ZDOuablNazfgo5ES
	LVdM203TS2LBRuj0CeZORWUyMP8W5X0x0AAs1BzkPQpJFs/RDBORv1Z2NiTFJDrrS40gVJvG/Qwi0
	QdnKRtvlcMt1opUFz02Dku6PhXap64g7048Jip512JMoel4zgmlPNWGTBhMg2QlRxSWRU90kvfhAr
	B+6PQMN2Fh6QCkoGdiHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSSU-0001Lf-9M; Tue, 30 Apr 2019 13:06:06 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSSI-0001KX-Vr
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:06:01 +0000
X-Originating-IP: 109.213.14.175
Received: from localhost (alyon-652-1-31-175.w109-213.abo.wanadoo.fr
 [109.213.14.175])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 97BEC60006;
 Tue, 30 Apr 2019 13:05:44 +0000 (UTC)
Date: Tue, 30 Apr 2019 15:05:44 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Baruch Siach <baruch@tkos.co.il>
Subject: Re: [PATCH 2/4] rtc: digicolor: set range
Message-ID: <20190430130544.GF11339@piout.net>
References: <20190430093212.28425-1-alexandre.belloni@bootlin.com>
 <20190430093212.28425-2-alexandre.belloni@bootlin.com>
 <877ebbu3lz.fsf@tarshish> <20190430114702.GD11339@piout.net>
 <875zqvu1l3.fsf@tarshish>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <875zqvu1l3.fsf@tarshish>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_060557_110277_AA0BC471 
X-CRM114-Status: GOOD (  24.46  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: linux-rtc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/04/2019 15:20:08+0300, Baruch Siach wrote:
> Hi Alexandre,
> 
> On Tue, Apr 30 2019, Alexandre Belloni wrote:
> > On 30/04/2019 14:36:24+0300, Baruch Siach wrote:
> >> Hi Alexandre,
> >>
> >> On Tue, Apr 30 2019, Alexandre Belloni wrote:
> >>
> >> > While the range of REFERENCE + TIME is actually 33 bits, the counter
> >> > itself (TIME) is a 32-bits seconds counter.
> >> >
> >> > Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> >> > ---
> >> >  drivers/rtc/rtc-digicolor.c | 1 +
> >> >  1 file changed, 1 insertion(+)
> >> >
> >> > diff --git a/drivers/rtc/rtc-digicolor.c b/drivers/rtc/rtc-digicolor.c
> >> > index 5bb14c56bc9a..e6e16aaac254 100644
> >> > --- a/drivers/rtc/rtc-digicolor.c
> >> > +++ b/drivers/rtc/rtc-digicolor.c
> >> > @@ -206,6 +206,7 @@ static int __init dc_rtc_probe(struct platform_device *pdev)
> >> >  	platform_set_drvdata(pdev, rtc);
> >> >
> >> >  	rtc->rtc_dev->ops = &dc_rtc_ops;
> >> > +	rtc->rtc_dev->range_max = U32_MAX;
> >>
> >> Where can I find documentation on the meaning and usage of the range_max
> >> value? I could not find anything in the kernel source.
> >
> > It should be set to the maximum UNIX timestamp the RTC can be set to
> > while keeping range_min to range_max contiguous.
> >
> > In the digicolor case, you could go up to 8589934590 (Wed Mar 16
> > 12:56:30 UTC 2242) but the driver only writes DC_RTC_REFERENCE and I'm
> > not sure it can also update DC_RTC_TIME safely.
> 
> DC_RTC_TIME resets to zero whenever dc_rtc_write writes CMD_RESET to the
> DC_RTC_CONTROL register. DC_RTC_REFERENCE keeps the value that
> dc_rtc_write stores there. So the driver will return values larger than
> U32_MAX if you happen to cross this point in time between dc_rtc_write
> and dc_rtc_read. But you can't store a value larger than U32_MAX in
> DC_RTC_REFERENCE.
> 
> Will the core RTC code handle the U32_MAX cross correctly?
> 

Yes, this is ok to return a valid value that is higher than range_max.
However, at that time, you will not be able to set any alarms anymore as
the core doesn't allow to set alarms after range_max.

I would think that this is fine because this will happen in 2106 and we
have a way to offset the time (the whole goal of setting the range)
using device tree.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
