Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E39A16305C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:41:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UBwUq/PbGIFaI+xstEJuEI/5a9E6QCkIrvLW8gpSPc=; b=qh/DvKHS4fFiCl
	OxNwWvOZJVMDdpNHbdIOrkfz0IIAn1rUzTLpDR6FAcamlM5nUvdCWZviQIGsCt/XaNivy4YA9MmHc
	dHfUAZLa8kfhvPFQtwgkPMB8cwcUyoFJjBXwRdUN10JwElntMBM/XY1r0XfobmZeLS5xWnZgsQ5uo
	jBV8J0GKJJOSbuw1Se19nw1v4h+H2R3ajiPsZaccSpFyBxilB/Lyd3cWCplF07G+d1mlFVDtSWNPY
	BVZ75R3m+YzoBojZcVfKRaSioKZi0ixknR5R+Vnc3LSylxa0JZtfBsI3TGHcx4W0W+pO1jpGyuVLR
	1snvVuIoJVmHayS079eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48kB-0007Fi-Hm; Tue, 18 Feb 2020 19:41:19 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48k1-0007FG-3C
 for linux-arm-kernel@bombadil.infradead.org; Tue, 18 Feb 2020 19:41:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=WgVx7Z3SJnKQ9jiXEo2MRBfbqGjzcEl59HCd0jA5AlI=; b=FjHn6QxwRG3N5sKMETnF/VvOpJ
 9KUpmgEXbY1cMtGWDRzpisyoZ0NZnCDksU3oL3dmdhRnQQ6jsaNLtUBbSzSDdE0lB2w/mB3O/lXRU
 XiqqOW5N/Or1kPjMPXcl88mMkObqxeYZ28SQ9Cy65Hl1acOAKHTY0qKXw8dfGD9zIoIo0k+yDDYVs
 XbMtZ0GQ24foeX392nRoPO3eFFXXJCcj+ObiM4DEQOt8bQrakoLK/W/PSPGJheYvGTCNBEvsedg6N
 kPB/VEF/H8P8ta/6zNcbER7WBJ5vlYRGMY8ImEZlTj11D2Hap4qNLt057Ylw4RVitY1ll2MnKfveA
 UlY9GkbA==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48jv-0005Yh-Vt
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:41:06 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id BE37440005;
 Tue, 18 Feb 2020 19:40:24 +0000 (UTC)
Date: Tue, 18 Feb 2020 20:40:24 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH 04/20] usb: gadget: at91_udc: remove useless cast for
 driver.name
Message-ID: <20200218194024.GD3385@piout.net>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
 <1582054383-35760-5-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582054383-35760-5-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_194104_205272_DCE92E15 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: balbi@kernel.org, linux-kernel@vger.kernel.org, mathias.nyman@intel.com,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, vz@mleia.com,
 ludovic.desroches@microchip.com, stern@rowland.harvard.edu,
 slemieux.tyco@gmail.com, b-liu@ti.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/02/2020 19:32:47+0000, Corentin Labbe wrote:
> device_driver name is const char pointer, so it not useful to cast
> driver_name (which is already const char).
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  drivers/usb/gadget/udc/at91_udc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/gadget/udc/at91_udc.c b/drivers/usb/gadget/udc/at91_udc.c
> index 1b2b548c59a0..eede5cedacb4 100644
> --- a/drivers/usb/gadget/udc/at91_udc.c
> +++ b/drivers/usb/gadget/udc/at91_udc.c
> @@ -2021,7 +2021,7 @@ static struct platform_driver at91_udc_driver = {
>  	.suspend	= at91udc_suspend,
>  	.resume		= at91udc_resume,
>  	.driver		= {
> -		.name	= (char *) driver_name,
> +		.name	= driver_name,
>  		.of_match_table	= at91_udc_dt_ids,
>  	},
>  };
> -- 
> 2.24.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
