Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CE617BCB1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 13:29:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hs1B26lesMIvUN7diRFTW8MNAQxVMhc+eSkculzEwgs=; b=GMkemgKKRnyG92
	jCKWqHd6hUDKlcUwW1K9qQ7D4lfM1r/Yys7g0DT6iEkv4FhwKlfjXgI8fSiU38m1qjC3Jpa1SRguw
	plvQahNNSiPLcGxMBIJGG/pyFhafNsaAMDL0rzIv1KnKjOwP1vr6z4e3Gz6i8wwSgn4ITwzGYYxFb
	9ZhhkteOK9vUeUlb9vzuhmdBcx+eNfSYHsYZFU198Hzq3m8hFUByCPmnEm3d8Hank0UY7/Msphr67
	2wOPBDtsUaFHxY34zclNYYPEpREnjgMhU1iL49XFfg1/03C8VGEMKvzOqi/fpuStL0WLRltXdqhoN
	2/AX3OiYdqDD5gRXVi1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAC6S-0007MB-Lk; Fri, 06 Mar 2020 12:29:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAC6K-0007LY-VB
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 12:29:14 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BAB152072A;
 Fri,  6 Mar 2020 12:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583497752;
 bh=d17V1gYzsp+fRg5i888PyT+fPs0MnH0tdgO0t6VHh5c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t8BQ8YdbCK8NYU8ae8N+ekQAjgvaSQzA7GVKOg+FTl8RTt2VhDRHXrOS8WVRJe5Qs
 VKqUVw49sgIRfZ+yXYduMabcWYcoW/+Z16RanU9qF4gjAdeZ9POw8jLj/Nyaw+lLN1
 d+jW+ooS7YNAzqqMGQgAS8GB1DZJ+4fEGz9EpTWY=
Date: Fri, 6 Mar 2020 11:36:52 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] Revert "tty: serial: samsung_tty: build it for any
 platform"
Message-ID: <20200306103652.GA3634389@kroah.com>
References: <20200306102301.16870-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306102301.16870-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_042913_029707_333D5F31 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 11:23:01AM +0100, Geert Uytterhoeven wrote:
> This reverts commit 175b558d0efb8b4f33aa7bd2c1b5389b912d3019.
> 
> When the user configures a kernel without support for Samsung SoCs, it
> makes no sense to ask the user about enabling "Samsung SoC serial
> support", as Samsung serial ports can only be found on Samsung SoCs.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  drivers/tty/serial/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> index 880b962015302dca..932ad51099deae7d 100644
> --- a/drivers/tty/serial/Kconfig
> +++ b/drivers/tty/serial/Kconfig
> @@ -237,6 +237,7 @@ config SERIAL_CLPS711X_CONSOLE
>  
>  config SERIAL_SAMSUNG
>  	tristate "Samsung SoC serial support"
> +	depends on PLAT_SAMSUNG || ARCH_EXYNOS || COMPILE_TEST
>  	select SERIAL_CORE
>  	help
>  	  Support for the on-chip UARTs on the Samsung S3C24XX series CPUs,

{sigh}

No, I don't want this.  My "goal" is to be able to get rid of all of the
crazy "PLAT_*" symbols as they make it impossible to build a single
kernel that supports multiple ARM64 systems.

As an example of just such a system, see the 5.4 tree here:
	https://android.googlesource.com/kernel/common/+/refs/heads/android-5.4
it is now building and booting on multiple SoCs.

But yes, it still does have to enable some PLAT_* config options, but
the goal is to not have to do that eventually.

There is no reason that we need vendor-specific config options just to
lump random drivers into, like serial drivers.  If the hardware is not
present, the driver will just not bind to the hardware, and all is fine.

Just like x86, we don't have this issue there, and ARM64 should also not
have this.

Sorry for delay in writing this back to the original thread where you
objected to the original patch, it's still in my review queue along with
a ton of other serial patches.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
