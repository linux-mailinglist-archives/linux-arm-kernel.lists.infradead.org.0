Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07655136D00
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 13:25:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3h78GQNpkW4LEfO1UnsIcpVCx2q0kbc4gp3QFwjkDs8=; b=Tyc//5VBt98Pxj
	etU0LRLxde0Li0Nvds9hR0fUt2jTuBWpkv432Awwwrr16l002+Av7djYJi238BVadxX0qmlDXQn49
	+r/8db2M1pAg7bKtbqpdXmRkdJR84qzvqYqMGnVr4wn/k3OEw1ebnlyfGWgOsZNKqU8nY2+qg+28k
	B8js8yApZ/pEeztgHFLn8JPd2Lp7Apd1HjKvFRgtnEf1Goi1zU7R/TBc9He6BqVKaDdWXt+I1duFa
	eWzJTujETfYOabptzENtKPDw9+b81Zv4EV90UEOVTKOjueFC5+sQc2c5xhAwUi4D1YmtvwKsmKU33
	pdsuYyw5YOKZVtFk5nxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iptLS-0007ER-NI; Fri, 10 Jan 2020 12:24:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iptLD-000782-5d; Fri, 10 Jan 2020 12:24:41 +0000
Received: from localhost (83-84-126-242.cable.dynamic.v4.ziggo.nl
 [83.84.126.242])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F1C52077C;
 Fri, 10 Jan 2020 12:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578659077;
 bh=HCvJP+UdwCX6Q2crGVwKn7N7yPIf75Fk5SPzBBin100=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kk0BBdWnW5aZ1JZ6Bcv8/vIsAgIMssATKbTDPONtWkM/Cgi7cxGtGWEXBOoieyrvg
 Zj1aE3c6SqAmUSHHkXwNZOhcnMGRVV0iBdWd/cnqUR4lKSjCL5Ko79R7x32ydPB4U7
 Ee8QKutkNtOIosejv/SM5hQu39TB3vjjFxTzbWxw=
Date: Fri, 10 Jan 2020 13:19:51 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH] staging: vc04_service: remove unused header include path
Message-ID: <20200110121951.GA1047840@kroah.com>
References: <20200104162829.20400-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200104162829.20400-1-masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_042439_332224_E3A6CFDE 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 05, 2020 at 01:28:29AM +0900, Masahiro Yamada wrote:
> I can build drivers/staging/vc04_services without this.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  drivers/staging/vc04_services/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vc04_services/Makefile b/drivers/staging/vc04_services/Makefile
> index afe43fa5a6d7..54d9e2f31916 100644
> --- a/drivers/staging/vc04_services/Makefile
> +++ b/drivers/staging/vc04_services/Makefile
> @@ -13,5 +13,5 @@ vchiq-objs := \
>  obj-$(CONFIG_SND_BCM2835)	+= bcm2835-audio/
>  obj-$(CONFIG_VIDEO_BCM2835)	+= bcm2835-camera/
>  
> -ccflags-y += -Idrivers/staging/vc04_services -D__VCCOREVER__=0x04000000
> +ccflags-y += -D__VCCOREVER__=0x04000000
>  
> -- 

This patch breaks the build for me:
drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c:6:10: fatal error: interface/vchi/vchi.h: No such file or directory
    6 | #include "interface/vchi/vchi.h"
      |          ^~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.

So maybe you did't select all of the modules to build?

Sorry, I can't take this as-is :(

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
