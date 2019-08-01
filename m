Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 749CF7D528
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 07:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BdU6ohCJEg1g7cY1ocxVAvyKA3JMko0TG87nGRo/MvA=; b=X276Nr+zLZuuOr
	spsgCekyOlFyRKV+kEG+HgGE9ezb128nIkBlDNPyQm+BCoMcfjB0eEVL00HbFot9OZcw21Fx1t3JB
	g6RN7Mf8pVfDyabGfLHKnq3+BcY72CQcLG8eHRAmGwIbukZuUwGXbG/imOm9Xyzs1dc3Tw1C7+3Ec
	WlQAwI2FLbH3XI7WqtGXFg3yZY0qsZmIgWPv1Uq/cOCbk5OiyiRR5iHNzwm5tsUK8aaov0vkQchsj
	Lt7G8COeYBvGj9iLy5UffrjzMVissUqdZzBPz4x55kJb5z89hJ0iff7Q/BjuOnURLx3127ayiBnwc
	AfWn9sy8+T73XRsYQicA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht47P-0003K4-HI; Thu, 01 Aug 2019 05:59:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht47J-0003Ji-6x
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 05:59:10 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65BE2206A2;
 Thu,  1 Aug 2019 05:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564639148;
 bh=7BxA1dkTb2aGHMGDFxjJqWn0Px1o18m+epr8o6ediEs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ia9p6X0H5Gl724ivQ6InCtcROAEFe8rQVFaNOvVlq5Rh882/tha4kHGaeDXQjwprA
 eZDwMIAXb/VUsYV132SJ2N7N/VRdKwBfE+UTEWWt8varYy8gV1JcvGWclfkmx6iU/4
 N6oPuU82l/c8qVTzrHI0kmAiVPJ5Ek6s3dj+ApoA=
Date: Thu, 1 Aug 2019 07:59:06 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 09/14] serial: lpc32xx: allow compile testing
Message-ID: <20190801055906.GD24607@kroah.com>
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731195713.3150463-10-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731195713.3150463-10-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_225909_269771_AF82648C 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>, linux-usb@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Vladimir Zapolskiy <vz@mleia.com>,
 linux-gpio@vger.kernel.org, soc@kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, Guenter Roeck <linux@roeck-us.net>,
 linux-serial@vger.kernel.org, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Jiri Slaby <jslaby@suse.com>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 09:56:51PM +0200, Arnd Bergmann wrote:
> The lpc32xx_loopback_set() function in hte lpc32xx_hs driver is the
> one thing that relies on platform header files. Move that into the
> core platform code so we only need a variable declaration for it,
> and enable COMPILE_TEST building.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-lpc32xx/serial.c       | 30 ++++++++++++++++++++++++
>  drivers/tty/serial/lpc32xx_hs.c      | 35 ++++------------------------
>  include/linux/soc/nxp/lpc32xx-misc.h |  4 ++++
>  3 files changed, 38 insertions(+), 31 deletions(-)

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
