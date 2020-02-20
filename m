Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2523165CC3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 12:27:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMZQrpn6a0fxVsEdpTOzEfJlFcmB9jEjz5j/tEUCRMw=; b=EVktEJWp5PSN6f
	DceS2F5Q+qqQqlkvP89PxsmhGrYOdrXji7nHlUdml+1J42x3tXtKi8jmk5kOBvgUObC5rKSdqbMj8
	GlIFzIJ3ph9lz93RR5WW3+M0GdFuorCbouav/KK8BVrJVSTmABYrfBHdhy8MTn11GlRnEUgf5PP8H
	OtoOm+QSBW7lUuS89rcV8hEoyLxciW+2PUk9JQhkQfepR6zYvdL7BH21lNDu7Y4llEVh/bhhczCsk
	YnpqOUeqnAEODlLmvYsi/GBDAmQqXuWJyRHraXZdpBYLjgcd3eSWGNLp67DDtg+hZOPgShp+fmFz9
	GhMg3/Cqnqh9kBbPhrWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4jz7-0005Ao-Um; Thu, 20 Feb 2020 11:27:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4jyx-0005AM-I4
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 11:27:04 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 562672071E;
 Thu, 20 Feb 2020 11:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582198022;
 bh=CEk8idDaWnhSZHqSnOYyFDbQj7mAiD4KIa+YtxoO+74=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oE+5vMySvi9PlHim4VNQTDn1Xdu7+jIng8by5DrKHwUmBtzXw/q+D0OuuFw31GjU4
 yHpVgEeeT6CivTYmiMgnaDHlu3RUlPRKIhCtsoiuGP3u+Ue25jjAbYnbS4K/6wxndy
 y8gXHMTIT/7Tpmh5Whdg6Z7BHDpWfN4N9ktjeA3g=
Date: Thu, 20 Feb 2020 12:27:00 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [RESEND RFC PATCH v3] clk: Use new helper in managed functions
Message-ID: <20200220112700.GJ3374196@kroah.com>
References: <f48d1df3-fc1f-ac5c-b11e-330f18aad539@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f48d1df3-fc1f-ac5c-b11e-330f18aad539@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_032703_621662_B3EDE847 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-clk <linux-clk@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Suzuki Poulose <suzuki.poulose@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, Russell King <linux@armlinux.org.uk>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 11:04:58AM +0100, Marc Gonzalez wrote:
> Introduce devm_add() to wrap devres_alloc() / devres_add() calls.
> 
> Using that helper produces simpler code, and smaller object size.
> E.g. with gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu:
> 
>     text	   data	    bss	    dec	    hex	filename
> -   1708	     80	      0	   1788	    6fc	drivers/clk/clk-devres.o
> +   1524	     80	      0	   1604	    644	drivers/clk/clk-devres.o
> 
> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> ---
> Differences from v2 to v3
> x Make devm_add() return an error-code rather than the raw data pointer
>   (in case devres_alloc ever returns an ERR_PTR) as suggested by Geert
> x Provide a variadic version devm_vadd() to work with structs as suggested
>   by Geert
> x Don't use nested ifs in clk_devm* implementations (hopefully simpler
>   code logic to follow) as suggested by Geert
> 
> Questions:
> x This patch might need to be split in two? (Introduce the new API, then use it)
> x Convert other subsystems to show the value of this proposal?
> x Maybe comment the API usage somewhere
> ---
>  drivers/base/devres.c    | 15 ++++++
>  drivers/clk/clk-devres.c | 99 ++++++++++++++--------------------------
>  include/linux/device.h   |  3 ++
>  3 files changed, 53 insertions(+), 64 deletions(-)
> 
> diff --git a/drivers/base/devres.c b/drivers/base/devres.c
> index 0bbb328bd17f..b2603789755b 100644
> --- a/drivers/base/devres.c
> +++ b/drivers/base/devres.c
> @@ -685,6 +685,21 @@ int devres_release_group(struct device *dev, void *id)
>  }
>  EXPORT_SYMBOL_GPL(devres_release_group);
>  
> +int devm_add(struct device *dev, dr_release_t func, void *arg, size_t size)

Please add a bunch of kerneldoc here, as I have no idea what this
function does just by looking at the name of it :(

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
