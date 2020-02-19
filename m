Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BFC163E35
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sIrgToRYFPCCthpV6gSr45ZsUwyh/kG1hJfr34H1W10=; b=COb7PsW2O0dLZe
	D4V+FsQmnW/o96jvHHfUNEIB4S4dUGP18s98isKoGgjieQwJc32T5ZroYBAZEjLQFyQXY9802CJpE
	Gf5P4NFHEcgch5AsTR6pzyePeLN9avvKgbrfdBfTtGLbVmcI7lIWIqAC8vqEDlaFMr1dElC52KLyb
	hl9hUFEtWA4o49PkMVeFpdDdvefbpiIYGGfSNycO28KXqzl+xfnaKRCcyNX/M8X+m7Bv8CwNm/Eah
	JgL+MrtjKk7iR9gpRBs6gUmbNtmdFyoQ1SPdC+8ANf1EGlIDV015r40UhCWg4YQShfUnaP8h5XMKu
	MzrzWidrIOJ/Rv4Tgj1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4KAL-0004MD-RV; Wed, 19 Feb 2020 07:53:05 +0000
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KA9-0004KM-Uv
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:52:55 +0000
Received: by mail-lf1-f65.google.com with SMTP id n25so16657023lfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 23:52:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pBcXvYpVbcpOivBpwH+KxMjwUZ99WUPQa/e/GZdQhGI=;
 b=agviuQGWm5rFhWEx/71ZfZ7evM4xonxxrNVSrhuiJtnIidKCFeJmWELD4HYDkQFGiS
 dtNZ4Vlq9eNIHyH3DKlykp1tZ/VD+JG5Tc2d3foFRLEY3VYMQIu4fPalCBcw3c84jh40
 iwhVqhyrDIoTB4Cc73IZD4NlUpoqDrXk6AEvT9wVWCzxiRebvbTwjokTjzyygX5T16fm
 preZ8/+ZZfEECVQ+PdZzoytZML2yeCHvBiR4USLQghnjWwI+0WxyKFdwNZlUdbRoKOCx
 CMcXiDR96sjWgxjacjDdOQ6x2euoWx4/oAhVVqObB1yjXMl270yh1AYN/R/r69w0iTw4
 7hqw==
X-Gm-Message-State: APjAAAW7BQwqTiKreWzp+/w+6EMDFdjX0e1KxZlZ/58yBUAXbLi1LFGx
 F7Tkdt3maSOGZXJ1WgDdFQI=
X-Google-Smtp-Source: APXvYqxniWWWPPX2NX94mAjgrd5J+QVhCrkvaxE78uLY29DmvxjPj+m2MiISPdQ1Ugvp3CjlSMrY2w==
X-Received: by 2002:ac2:58fa:: with SMTP id v26mr12695059lfo.84.1582098771710; 
 Tue, 18 Feb 2020 23:52:51 -0800 (PST)
Received: from xi.terra (c-12aae455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.170.18])
 by smtp.gmail.com with ESMTPSA id u25sm682904ljj.70.2020.02.18.23.52.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 23:52:50 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1j4KA3-00080g-E8; Wed, 19 Feb 2020 08:52:47 +0100
Date: Wed, 19 Feb 2020 08:52:47 +0100
From: Johan Hovold <johan@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH 00/20] usb: remove useless cast for driver.name
Message-ID: <20200219075247.GE2090@localhost>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_235253_999773_7791CA46 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jhovold[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: balbi@kernel.org, alexandre.belloni@bootlin.com, mathias.nyman@intel.com,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, vz@mleia.com,
 ludovic.desroches@microchip.com, stern@rowland.harvard.edu,
 linux-arm-kernel@lists.infradead.org, slemieux.tyco@gmail.com, b-liu@ti.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 07:32:43PM +0000, Corentin Labbe wrote:
> This serie remove a useless (char*) cast for some xxx_driver.name.
> pci_driver, device_driver, usb_composite_driver structures have a "name"
> member which is const char * and all the driver patched assigned to it a
> const char[] name, so the cast was bad and unnecessary.
> 
> Corentin Labbe (20):
>   usb: gadget: legacy: gmidi: remove useless cast for driver.name
>   usb: gadget: legacy: inode: remove useless cast for driver.name
>   usb: gadget: udc: amd5536udc_pci: remove useless cast for driver.name
>   usb: gadget: at91_udc: remove useless cast for driver.name
>   usb: gadget: dummy_hcd: remove useless cast for driver.name
>   usb: gadget: fotg210-udc: remove useless cast for driver.name
>   usb: gadget: fusb300_udc: remove useless cast for driver.name
>   usb: gadget: goku_udc: remove useless cast for driver.name
>   usb: gadget: lpc32xx_udc: remove useless cast for driver.name
>   usb: gadget: m66592-udc: remove useless cast for driver.name
>   usb: gadget: net2280: remove useless cast for driver.name
>   usb: gadget: omap_udc: remove useless cast for driver.name
>   usb: gadget: r8a66597-udc: remove useless cast for driver.name
>   usb: gadget: renesas_usb3: remove useless cast for driver.name
>   usb: host: ehci-pci: remove useless cast for driver.name
>   usb: host: ohci-pci: remove useless cast for driver.name
>   usb: host: sl811-hcd: remove useless cast for driver.name
>   usb: host: uhci-pci: remove useless cast for driver.name
>   usb: host: xhci-pci: remove useless cast for driver.name
>   usb: musb: core: remove useless cast for driver.name

Please do trivial conversions like this one in one patch per subsystem
(e.g. all of USB) instead of 20 one-line patches.

You may also want to refer to commit 8d790d740858 ("[PATCH] make
driver's name be const char *") for the historical background for this
in the commit message.

>  drivers/usb/gadget/legacy/gmidi.c       | 2 +-
>  drivers/usb/gadget/legacy/inode.c       | 2 +-
>  drivers/usb/gadget/udc/amd5536udc_pci.c | 2 +-
>  drivers/usb/gadget/udc/at91_udc.c       | 2 +-
>  drivers/usb/gadget/udc/dummy_hcd.c      | 4 ++--
>  drivers/usb/gadget/udc/fotg210-udc.c    | 2 +-
>  drivers/usb/gadget/udc/fusb300_udc.c    | 2 +-
>  drivers/usb/gadget/udc/goku_udc.c       | 2 +-
>  drivers/usb/gadget/udc/lpc32xx_udc.c    | 2 +-
>  drivers/usb/gadget/udc/m66592-udc.c     | 2 +-
>  drivers/usb/gadget/udc/net2280.c        | 2 +-
>  drivers/usb/gadget/udc/omap_udc.c       | 2 +-
>  drivers/usb/gadget/udc/r8a66597-udc.c   | 2 +-
>  drivers/usb/gadget/udc/renesas_usb3.c   | 2 +-
>  drivers/usb/host/ehci-pci.c             | 2 +-
>  drivers/usb/host/ohci-pci.c             | 2 +-
>  drivers/usb/host/sl811-hcd.c            | 2 +-
>  drivers/usb/host/uhci-pci.c             | 2 +-
>  drivers/usb/host/xhci-pci.c             | 2 +-
>  drivers/usb/musb/musb_core.c            | 2 +-
>  20 files changed, 21 insertions(+), 21 deletions(-)

Thanks,
Johan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
