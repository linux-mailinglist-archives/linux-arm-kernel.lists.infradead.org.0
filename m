Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9651855B9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 13:27:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kzy841WcqFkTM1EzoF9Jb9auMGoGLhUzoR4x/eVBYO0=; b=Z6pPEdGdFFFWfz
	NqNP2eQrirQlALcC0/sn7sYNieMvC03Ni4cauUtt1kR+due+uV3CmtGV9B/YcLE/rCms587KeDCQK
	cK1L0LVxcJ33lidIo2UsgnzNzowBM4sOaMs7jZOYvJ1P3z6tnzHmwxCWTwYWuxRcelwOvvm/GC7dI
	St/BfXloXTdP0uDmIVUfvAECzCgjTMDyjZNg5XaCCW78bq2YjO7xLTNSI/K3rZ2GrAV3P7gqvlHs7
	Uzlf2B98kmoXD+Cth88ZTLwRdNa3k6V/qRy9qWAYC2Y52j9T7zx9/J1ozHpkdPBnPqJWWGYpvHoyB
	Z/8MBZ8SA4zqs0O0ZkkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD5sO-0003A4-HY; Sat, 14 Mar 2020 12:26:48 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD5sG-00039R-2S; Sat, 14 Mar 2020 12:26:42 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id C566A240009;
 Sat, 14 Mar 2020 12:24:55 +0000 (UTC)
Date: Sat, 14 Mar 2020 13:24:55 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Ran Bi <ran.bi@mediatek.com>
Subject: Re: [PATCH v3 0/4] Add Support for MediaTek MT2712 RTC
Message-ID: <20200314122455.GC4518@piout.net>
References: <20200226051303.22560-1-ran.bi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226051303.22560-1-ran.bi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_052640_251559_9F4B9375 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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

On 26/02/2020 13:12:59+0800, Ran Bi wrote:
> This patchset add support to MT2712 RTC. MT2712 RTC is a SoC based RTC
> with different architecture compared to MT7622 RTC.
> 
> Changes in V3:
> 1. change struct mt2712_rtc
> 2. use 100 as year offset
> 3. change irq handle thread
> 4. remove useless rtc time check
> 5. not modify struct rtc_time in set_time/set_alarm functions
> 6. modify rtc init function
> 7. add power lost flag for get_time/set_time functions
> 8. add .alarm_irq_enable callback
> 9. set rtc->range_min and rtc->range_max to do range checking
> 10. use fixed driver name
> 
> Changes in V2:
> 1. change minimum year from 1968 to 2000
> 2. fix lock usage
> 3. stop to calculate useless day of week
> 4. stop to set default date after init
> 5. change the prefix of functions
> 6. use devm_request_threaded_irq() to replace request_threaded_irq()
> 7. add mt2712 rtc related files into MAINTAINERS
> 
> Ran Bi (4):
>   bindings: rtc: add bindings for MT2712 RTC
>   rtc: add support for the MediaTek MT2712 RTC
>   arm64: dts: add RTC nodes for MT2712
>   MAINTAINERS: add MT2712 RTC files
> 

Applied 1,2 and 4, thanks!


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
