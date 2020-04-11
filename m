Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 618CB1A58B5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 01:32:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xFX3cr18pUwTgOoySKM8cHUifxeo/YTWZjj/71Nzll0=; b=nV8zPN2WgHYCbu
	t72WMhBhHoLcqxAOhnU+mOsiUhjW+EX1gCejQu2wWjNCdGqrNPI6o1QPGjg6RvD4CXsS7dTs+iaKQ
	gWF2C5LV9R84hFul84nxPadSr9DkS6kEHmBebdADO0h005p3k0eCEcRPAjWODxdQ19SuaDJPvImCS
	xpaiv0RQtkMIvRZ8yOgaA4bU/cV2zDY+5fHCbS7RFB/blG44Uy0kj9BBWfFDJXnFfSrgj/16yusGs
	ThAMPeTDgvalo3bN0wBygZ1JOCz0HN4r+ou/+Qk6AGAPa4gIZzS7yzUxC2kbVIZnM/R5+DuW/BtmJ
	Vc2Vo8s8uqaAJ3OSJ2Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNPbU-00050M-Mx; Sat, 11 Apr 2020 23:32:00 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNPbM-0004yc-4j
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 23:31:54 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id C998520004;
 Sat, 11 Apr 2020 23:31:45 +0000 (UTC)
Date: Sun, 12 Apr 2020 01:31:45 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH 0/3] Introduce a counter inkernel API
Message-ID: <20200411233145.GC3628@piout.net>
References: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
 <20200411172259.GB95806@icarus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200411172259.GB95806@icarus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_163152_313832_3528B5A0 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 11/04/2020 13:22:59-0400, William Breathitt Gray wrote:
> I'm not inherently opposed to adding an in-kernel API for the Counter
> subsystem, but I'm not sure yet if it's necessary for this particular
> situation.
> 
> Is the purpose of this driver to allow users to poll on the rotary
> encoder position value? If so, perhaps instead of an in-kernel API, the
> polling functionality should be added as part of the Counter subsystem;
> I can see this being a useful feature for many counter devices, and
> it'll keep the code contained to a single subsystem.
> 
> By the way, I'm going to be submitting a major update to the Counter
> subsystem code in the next couple weeks that isolates the sysfs code
> from the rest of the subsystem -- it'll likely affect the interface and
> code here -- so I'll probably wait to decide for certain until that
> patch lands; I anticipate it making things easier for you here after
> it's merged.
> 
> For now, I want to get a better high-level understanding about how users
> would interact with this driver to use the device (input_setup_polling
> is a new call for me). That should help me understand whether an
> in-kernel API is the best choice here.
> 

Well, the goal is not really polling the counters but mainly exposing
the correct userspace interface for the rotary encoders that are
connected to quadrature decoders.

The input driver is using polling because this reduces the complexity of
the patches but the ultimate goal is to also have interrupts working.

I'm pretty sure the in-kernel interface can also have other usages like
for example iio triggers. I could envision having to read an ADC after x
turns of a motor to check for the torque.

I also think that having the sysfs code separate would help as it could
be considered as one of the in-kernel interface user.

BTW, do you have plans to add a character device interface?

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
