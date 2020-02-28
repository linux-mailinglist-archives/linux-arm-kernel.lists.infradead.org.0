Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F32B173750
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 13:40:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoeAmfQmA9BNcFWgiih2Zq846pAaueDKBgTfjcWhM2A=; b=NPielFyjQmvff8
	lZ6BeOFppPwodGC6o95xA7sPzPIBzKxSY6LtYEdSJE8AMIWlf8zZc2b66nQxkwYoG3OloLjzS3jlb
	LAlz9wEXE+iQaNwXpbbDTScRe+4yzW9E4vuW/PgwkMHoPH2xfD7MQyggfzeXgq6Vr5JvVEmChVxB6
	gKptWNG/tzdPVRdrGiwJmU9PHgcS4sukBm2YF4j2uY6fB5CLsEeKdBfm2kvGg+YQSktOXSRFlGbyy
	mKweglKAgmcL/TA7YGRiWnjfwR5xhwjp9VyJe9vdOGaxXtMg9XK+lLYsjuJkb4LQMe5SM+HPgSN+c
	4hxeKH3jehuOSXOzHRyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ewB-0006K9-1u; Fri, 28 Feb 2020 12:40:15 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7evy-0005UU-In
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 12:40:05 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: CmTboWtx5gdf1rZKZ4Z34EE+eP06E01r9yI6xLPQL9PdnB6KJJA631PV1floXrxOSjsRYSvuNf
 +sM89EjCfI1HvfSa0h5Rm3e/2tZGclRip92ymIRyToHCz+8vjNdBs+H/c9OxxVoRS0H42Yrh4U
 +YdRFj7jRPL/v3M3zlKifMEJFtyr79zMK6FMBXafhHOvdy9XZvSLyeK3IOqb5ijXMRrgT1LeE0
 EDRWu+1SvMfP+jp2nYiOgcaQKW7rVKs72U/W4GGfQWBNwe2z7f6YkbiFvVDxVPkGOm4W2q5Lc1
 iE0=
X-IronPort-AV: E=Sophos;i="5.70,496,1574146800"; d="scan'208";a="68335100"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 Feb 2020 05:39:51 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 28 Feb 2020 05:40:04 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 28 Feb 2020 05:40:04 -0700
Date: Fri, 28 Feb 2020 13:39:10 +0100
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Romain Izard <romain.izard.pro@gmail.com>
Subject: Re: GPIOs not correctly exported via sysfs on ATSAMA5D2
Message-ID: <20200228123910.hbf2bnk3w2dbishr@M43218.corp.atmel.com>
Mail-Followup-To: Romain Izard <romain.izard.pro@gmail.com>,
 Linux GPIO List <linux-gpio@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
References: <CAMiSF3BULWkyWTytTBcFfch9YaV_QzuBiawk-ZqEcQnsuGdUiQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMiSF3BULWkyWTytTBcFfch9YaV_QzuBiawk-ZqEcQnsuGdUiQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_044002_634030_20A00777 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: Linux GPIO List <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Romain,

On Fri, Feb 28, 2020 at 11:58:21AM +0100, Romain Izard wrote:
> 
> Hello,
> 
> While experimenting with a new chip, I connected it on the SDIO
> interface on my board based on a SAMA5D2 SoC. For a first step, I need
> to drive the pins on the SDIO bus at a given level to program this new
> chip. To do so, I tried to control the GPIO lines manually by unbinding
> the SDHCI controller, and using /sys/class/gpio/export to control the
> pins, with the following code:
> 
> echo a0000000.sdio-host > /sys/bus/platform/drivers/sdhci-at91/unbind
> echo 4 > /sys/class/gpio/export
> echo low > /sys/class/gpio/PA4/direction
> 
> Unfortunately, the state of the pin does not change and it remains
> driven to 1. I checked the configuration register with devmem2, and it
> appeared that the selected function remains the SDIO function even after
> calling export.
> 
> The issue does not appear when I use a GPIO in a driver with an explicit
> pinctrl configuration in the device tree, which explains why I did not
> see it until now.
> 
> The kernel version used is Linux 5.4.22
> 
> Is this a user error from my part, or is there something missing in the
> AT91 PIO4 pinctrl driver ?

This is a known issue.

The AT91 PIO4 pinctrl driver doesn't implement gpio_request_enable()
contrary to the AT91 PIO pinctrl driver. If we implement it, then you
would be able to change the pin muxing and configuration from the sysfs.
The issue is nothing prevent you do this and so to possibly break a
device.

There is the strict pinmux_ops property which prevents from this
situation. The side effect is that we must not declare a pinmux/conf for
a GPIO so all the DT files have to been updated. That's not a big deal,
the problem is, at that time, the GPIO subsystem didn't allow to set the
bias for instance. It may have changed but not sure it covers all the
possible configurations we have from the pinmuxing subsystem.

Regards

Ludovic

> 
> Best regards,
> --
> Romain Izard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
