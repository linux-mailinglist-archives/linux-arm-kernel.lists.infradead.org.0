Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE1B99298
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 13:51:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/keWQcooDYpRNL7aZ0Oguj2jCxm7imKkc1+VB7ctjg=; b=IqftD7V6U4aHJF
	YpQ+m1Opj55sJvgvSyHXQnezxNjZz9SM0H6KYRBJef81Z/MOdTW2WJ/i3AmS2Ag4vqkh/xBjtRk6x
	3H2fm2NswozDcQOilChcygTTqyQSnxJqLTVi0/UAmDFLS7mRKjvLK4AEe40SLpp/atBjzzBryVGfX
	/xGKDCKc1izfVrexRUntkbAhxRomcqiv9JNPDMT8rKujWc18QiNMzdPnItFZN5rVTBdPsVZ6no75m
	P1COgm1pTgvMLAR7r9OnNXD7B95nLMA3qYGhdNM7Ebh66Xx54dDujOYdMyvaO4s3Qx+NI09veYRjN
	DqjOKYj/cr8nOSDxVpeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lcB-00017T-Cn; Thu, 22 Aug 2019 11:50:51 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0lbe-000174-1m; Thu, 22 Aug 2019 11:50:19 +0000
X-UUID: 9c0636cb644941f0b6b591f9e3a3184e-20190822
X-UUID: 9c0636cb644941f0b6b591f9e3a3184e-20190822
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ran.bi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 724652295; Thu, 22 Aug 2019 03:50:10 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 04:50:11 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs07n2.mediatek.inc
 (172.21.101.141) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 22 Aug 2019 19:50:08 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 22 Aug 2019 19:50:06 +0800
Message-ID: <1566474611.12318.9.camel@mhfsdcap03>
Subject: Re: [PATCH v2 2/4] rtc: Add support for the MediaTek MT2712 RTC
From: Ran Bi <ran.bi@mediatek.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Date: Thu, 22 Aug 2019 19:50:11 +0800
In-Reply-To: <20190822092008.GR27031@piout.net>
References: <20190801110122.26834-1-ran.bi@mediatek.com>
 <20190801110122.26834-3-ran.bi@mediatek.com>
 <c4e8b041-4a35-578e-07a3-2ebc99848ee2@gmail.com>
 <20190822092008.GR27031@piout.net>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_045018_098451_C9B9C416 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Alessandro Zummo <a.zummo@towertech.it>, YT Shen <yt.shen@mediatek.com>, Flora
 Fu <flora.fu@mediatek.com>, srv_heupstream@mediatek.com,
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

On Thu, 2019-08-22 at 11:20 +0200, Alexandre Belloni wrote:
> On 22/08/2019 11:12:29+0200, Matthias Brugger wrote:
> > 
> > 
> > On 01/08/2019 13:01, Ran Bi wrote:
> > > This add support for the MediaTek MT2712 RTC. It was SoC based RTC, but
> > > had different architecture compared with MT7622 RTC.
> > > 
> > > Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> > > ---
> > >  drivers/rtc/Kconfig      |  10 +
> > >  drivers/rtc/Makefile     |   1 +
> > >  drivers/rtc/rtc-mt2712.c | 444 +++++++++++++++++++++++++++++++++++++++
> > 
> > Can't we just adjust rtc-mt7622.c (and rename it) to unify the source for both
> > devices. What is the difference that we need to write a driver of our own?
> > 
> 
> If they are compatible, this is the way to go but the file can't be
> renamed (and that is fine).
> 
> 

They are not compatible. Both registers and operating methods are
different.

Best Regards,
Ran


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
