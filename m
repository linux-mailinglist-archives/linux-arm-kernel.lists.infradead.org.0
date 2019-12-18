Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A32124E83
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ts8ySy1yjw9mxtuZmN7G/U7O48mHAznJtwGmYodrsSs=; b=J4xZFBoVyq+eZB
	Rh5k48UIMdvsjlvdXDNn65sjqWUSB/GCtsnWuwW0gLYJDn/GffZFK68WSGiMMPBaPawSVAFoIb5OW
	TcseEy/RGwDTgt5zjG/vD9EHC5S5Hl7XZxlGQEKeSCa7B7qxrJJTB2nakC/pOqqIFztdaSMxh+9aZ
	BKE7DSCowSKkCPCHsqg6ES80s/FlKk6you0n1s4mhxTdb6Jufoo2gKCS55kMWruEJhGzeyt0LgB/E
	y3XZfTWuiA5EYIoffQn/UYwVLeHseN/6DN+sIJqc7MG8OdZRLal31cx/N4UykkpIHTHdIoJLUz7va
	c2CwKcoSd91xIsX4n44g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcep-0004ip-8E; Wed, 18 Dec 2019 16:58:43 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihceg-0004iK-8e
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:58:35 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id A3939C000E;
 Wed, 18 Dec 2019 16:58:31 +0000 (UTC)
Date: Wed, 18 Dec 2019 17:58:31 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH 04/10] rtc: at91rm9200: use of_platform_populate as
 return value
Message-ID: <20191218165831.GO695889@piout.net>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
 <1576686157-11939-5-git-send-email-eugen.hristev@microchip.com>
 <20191218164348.GN695889@piout.net>
 <04264cb0-61a9-aba3-82ad-e7d12fd8441e@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <04264cb0-61a9-aba3-82ad-e7d12fd8441e@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_085834_445662_F511369C 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, a.zummo@towertech.it,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/12/2019 16:52:21+0000, Eugen.Hristev@microchip.com wrote:
> 
> 
> On 18.12.2019 18:43, Alexandre Belloni wrote:
> 
> > Hi,
> > 
> > On 18/12/2019 16:24:00+0000, Eugen.Hristev@microchip.com wrote:
> >> From: Eugen Hristev <eugen.hristev@microchip.com>
> >>
> >> This allows the RTC node to have child nodes in DT.
> >> This allows subnodes to be probed.
> >>
> >> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> >> ---
> >>   drivers/rtc/rtc-at91rm9200.c | 2 +-
> >>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/rtc/rtc-at91rm9200.c b/drivers/rtc/rtc-at91rm9200.c
> >> index 3b833e0..f1b5b3d 100644
> >> --- a/drivers/rtc/rtc-at91rm9200.c
> >> +++ b/drivers/rtc/rtc-at91rm9200.c
> >> @@ -421,7 +421,7 @@ static int __init at91_rtc_probe(struct platform_device *pdev)
> >>        at91_rtc_write_ier(AT91_RTC_SECEV);
> >>
> >>        dev_info(&pdev->dev, "AT91 Real Time Clock driver.\n");
> >> -     return 0;
> >> +     return of_platform_populate(pdev->dev.of_node, NULL, NULL, &pdev->dev);
> >>
> > 
> > You can avoid the DT binding change and DT parsing by using
> > platform_add_device here. I don't think there is any point describing
> > the trigger as a child node (a watchdog functionality wouldn't be
> > described for example).
> > 
> 
> Hi,
> 
> It's needed because the ADC needs a link to the trigger device. This is 
> a hardware link inside the SoC, so I thought the best way is to describe 
> this hardware is in the Device Tree.
> Otherwise the ADC node is unaware of the RTC triggering possibility.
> If we just assign the RTC trigger device to the ADC through the sysfs, 
> the ADC cannot distinguish between the RTC trigger and other various 
> triggers which can be attached.
> 

I'm not sure this links is required but I will let Jonathan review. Even
if it is needed, you can still use the rtc node to describe that link.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
