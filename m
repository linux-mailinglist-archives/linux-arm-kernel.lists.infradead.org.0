Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A24499953A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 15:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=truiqItHJ0ljcoCZgaJQRYnwS+1yngL0Ob/1LAhjphU=; b=bobjV/WWYEU4wE
	CjuSs0Ae5vR4rk3ak+qMEFM4L21iJtiGZVuqQO57exGqtbhDHTFXTdH9m3sG+gGggk5UKele8Df3x
	lAlNcm7tDCVHgA1AgoS1M3NyNoaysoK0vAFB5MFPOFleteBtc9CT7bZQabQmiFB09ABjNaCihoYJR
	i+nZ1V8UiFQ6csUCviJLGA7u9twEZb0KK7+POhrWX9Y3tTmdQ1kX/TbhVXsQW1kjEbRevaFRX1a8z
	9fqAGWMI55b5GQNg5bqVP4MPZTzWMv3vQNG/mNN4rgepSw5W4xIcGCnGTxM7RJu8DPffIaXbbAVF+
	YVHfPbzn0HlJDELeZmVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0nH7-00061M-Va; Thu, 22 Aug 2019 13:37:13 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0nGu-00060O-Th; Thu, 22 Aug 2019 13:37:02 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id BDE321C000D;
 Thu, 22 Aug 2019 13:36:50 +0000 (UTC)
Date: Thu, 22 Aug 2019 15:36:49 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Ran Bi <ran.bi@mediatek.com>
Subject: Re: [PATCH v2 2/4] rtc: Add support for the MediaTek MT2712 RTC
Message-ID: <20190822133649.GT27031@piout.net>
References: <20190801110122.26834-1-ran.bi@mediatek.com>
 <20190801110122.26834-3-ran.bi@mediatek.com>
 <20190820201744.GZ3545@piout.net>
 <1566477254.12318.41.camel@mhfsdcap03>
 <20190822124628.GS27031@piout.net>
 <1566480361.12318.50.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566480361.12318.50.camel@mhfsdcap03>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_063701_111921_20CCF3AD 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, YT Shen <yt.shen@mediatek.com>,
 Flora Fu <flora.fu@mediatek.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Eddie Huang <eddie.huang@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/08/2019 21:26:01+0800, Ran Bi wrote:
> On Thu, 2019-08-22 at 14:46 +0200, Alexandre Belloni wrote:
> > On 22/08/2019 20:34:14+0800, Ran Bi wrote:
> > > > > +	/* RTC need POWERKEY1/2 match, then goto normal work mode */
> > > > > +	mt2712_writel(rtc, MT2712_POWERKEY1, MT2712_POWERKEY1_KEY);
> > > > > +	mt2712_writel(rtc, MT2712_POWERKEY2, MT2712_POWERKEY2_KEY);
> > > > 
> > > > This should be written when setting the time after power was lost.
> > > > 
> > > 
> > > I suppose we can move this into mt2712_rtc_read_time function's "if
> > > (p1 != MT2712_POWERKEY1_KEY || p2 != MT2712_POWERKEY2_KEY)" condition
> > > which will be added at next patch. We need additional flag to mark this
> > > condition or another if condition in mt2712_rtc_set_time fucntion if we
> > > put these code in mt2712_rtc_set_time function.
> > > 
> > 
> > It is fine to test both in read_time and in set_time.
> > 
> 
> Do you mean that we can test powerkey and then set powerkey both in
> read_time and in set_time?
> 

I mean that can test in read_time and test and set in set_time


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
