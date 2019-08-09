Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AF98756D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDdUe6HHXMsXdCxORMO5H5jaeJWj8UhnJ6nOCUr28/U=; b=u/cWH81cQO9Fto
	1sfk8KvHN874Dd6+ZnLC0PdWNh0Nf5IhbNIGzoUJKPhLYLHb/3cQrzpmvsYBWcE+VCfaSfBeTJ+q2
	72dO1D5gB+FFAPTVIGQD0FkLBqrg2QlP0QGPnQ47RMVTmIpcqNTfMcDo11qHHFZGF5Ia4LWu13BDs
	iOQaMJ6TdOqMCiZl0zdvzqha/ByKGJEHIk4HYA6D0e7ZyqgwxTTQXR165iLxZu7cVOYD1iytTG+Ha
	ChGuoYCd+iccDWwLo6qsgl2xCHwXdyfIcU8elb6cXEkhVQbo11AVskt6nFP8eL24Icr9tzpunBzT5
	xcKv8WLuS9wDx99QAFqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw11Y-0005Td-8e; Fri, 09 Aug 2019 09:17:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw11J-0005SV-QD
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:17:12 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75F9921743;
 Fri,  9 Aug 2019 09:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565342228;
 bh=iCwSBaFSrhA+3xI7pt6j7vr1dV0x/b9m0YaE7bBEmiM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A3aMkzQZyHXmK3y7x0EgKM/jLva+WnTVoJtAno+shZMBuATwEVyz5Ghwx6KVNHyRB
 kxKiAyDuDDdfgyIDHU26X/seVyS3NoMtcGVY9npfINnxLttPzH5ap9DhcYhBku+BhB
 U6KfwoNEmivrp0BMjMUrMatHUECod1tOWkkVeHJA=
Date: Fri, 9 Aug 2019 07:38:13 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 10/22] usb: omap: avoid mach/*.h headers
Message-ID: <20190809053813.GA29036@kroah.com>
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-11-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808212234.2213262-11-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_021709_874639_B0DEC86B 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -3.9 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Felipe Balbi <balbi@kernel.org>, linux-usb@vger.kernel.org,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-kernel@vger.kernel.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Alan Stern <stern@rowland.harvard.edu>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 11:22:19PM +0200, Arnd Bergmann wrote:
> The omap usb drivers still rely on mach/*.h headers that
> are explicitly or implicitly included, but all the required
> definitions are now in include/linux/soc/ti/, so use those
> instead and allow compile-testing on other architectures.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/usb/gadget/udc/Kconfig     | 2 +-
>  drivers/usb/gadget/udc/omap_udc.c  | 2 ++
>  drivers/usb/host/Kconfig           | 2 +-
>  drivers/usb/host/ohci-omap.c       | 7 +++----
>  drivers/usb/phy/Kconfig            | 3 ++-
>  drivers/usb/phy/phy-isp1301-omap.c | 4 ++--
>  6 files changed, 11 insertions(+), 9 deletions(-)

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
