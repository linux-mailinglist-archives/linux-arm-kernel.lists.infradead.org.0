Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9C2F665
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 13:47:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dCl2fkDFvLnRblH5Aae85pv1N/2G5HXYdRh0jOEUh8o=; b=ihk9U9tgj/SBKz
	b+CjVrPuk1zY+LMZkvtoq9hQgLX9KDVmZur8aPtwv907VrbO8t0yv9NCbso+V/2LsTCvk+h3+ghaW
	m7ZtlQwjH20ZQOaxLzQ/uOx+op7miWVgcRwpaKXJ24BR9flCRHohpHSyJy43n88auvUkpJ4Jqloi5
	MMYRZ/Z9GnWeDtzS6/JpG7ddhwvEAsmNXrjWzAR3i0S2tR2NgPwtG25cdY6fZXWZ413K2kI6uUT2o
	JZ7tf9tvPRA+0VqULmmJWtrT/3mi2mvBTmRMd2AI8nZux0s0b9ohkR56WqIruuELJkUZF4IyJF+ij
	IPRECTckwmNkRXZ3xdNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLREF-0004bx-St; Tue, 30 Apr 2019 11:47:19 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLRE7-0004ah-Dj
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 11:47:13 +0000
X-Originating-IP: 109.213.14.175
Received: from localhost (alyon-652-1-31-175.w109-213.abo.wanadoo.fr
 [109.213.14.175])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 1D5E31C000C;
 Tue, 30 Apr 2019 11:47:02 +0000 (UTC)
Date: Tue, 30 Apr 2019 13:47:02 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Baruch Siach <baruch@tkos.co.il>
Subject: Re: [PATCH 2/4] rtc: digicolor: set range
Message-ID: <20190430114702.GD11339@piout.net>
References: <20190430093212.28425-1-alexandre.belloni@bootlin.com>
 <20190430093212.28425-2-alexandre.belloni@bootlin.com>
 <877ebbu3lz.fsf@tarshish>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877ebbu3lz.fsf@tarshish>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_044711_608175_CB565DEA 
X-CRM114-Status: GOOD (  18.19  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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

On 30/04/2019 14:36:24+0300, Baruch Siach wrote:
> Hi Alexandre,
> 
> On Tue, Apr 30 2019, Alexandre Belloni wrote:
> 
> > While the range of REFERENCE + TIME is actually 33 bits, the counter
> > itself (TIME) is a 32-bits seconds counter.
> >
> > Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > ---
> >  drivers/rtc/rtc-digicolor.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/rtc/rtc-digicolor.c b/drivers/rtc/rtc-digicolor.c
> > index 5bb14c56bc9a..e6e16aaac254 100644
> > --- a/drivers/rtc/rtc-digicolor.c
> > +++ b/drivers/rtc/rtc-digicolor.c
> > @@ -206,6 +206,7 @@ static int __init dc_rtc_probe(struct platform_device *pdev)
> >  	platform_set_drvdata(pdev, rtc);
> >  
> >  	rtc->rtc_dev->ops = &dc_rtc_ops;
> > +	rtc->rtc_dev->range_max = U32_MAX;
> 
> Where can I find documentation on the meaning and usage of the range_max
> value? I could not find anything in the kernel source.
> 

It should be set to the maximum UNIX timestamp the RTC can be set to
while keeping range_min to range_max contiguous.

In the digicolor case, you could go up to 8589934590 (Wed Mar 16
12:56:30 UTC 2242) but the driver only writes DC_RTC_REFERENCE and I'm
not sure it can also update DC_RTC_TIME safely.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
