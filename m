Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 636B51A5343
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 20:10:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hvm712BtBZTZAoPqblDyyyEgD6ddkELCDOAvxtGGQcI=; b=ul7OYUGOgQ8CjE
	C40oG9BqW4mf7sROugRIAZY14kkOIQImGg4dc0WTCxQ0poAy9Ze5+WT4KPLtF6KRgyD0vTGdp+Ymk
	2fLdXQf9HI0qy3K9pElgz9XspjEXUh32QxlBQV8UKKxIhnU1l9Ti4OrFF+Eu09ZIiq7VFTFsBYtDt
	sbCKkKP2rsNPX6Tufjkpt5yKxt+ydv6dXySubycGrYUEEyALiKYAQfO4CYTcDTCxvig/KcwKyDxZy
	6B1Jq4oQDd88/yQVsES8pvzxHnVifLybJxsi5pUDS//0ZcZ9YIXUJnJo/dgsP8826/me2eHNfzAWP
	z2B9iedl7r5Cb+l22oZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNKaJ-0003JW-UH; Sat, 11 Apr 2020 18:10:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNKaD-0003J4-G7; Sat, 11 Apr 2020 18:10:22 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1AE420732;
 Sat, 11 Apr 2020 18:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586628620;
 bh=cR0eHiEhVEU/CYCz8ttOIHBrqvYs0p6ey3Uw55qOSGo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dcNVzinV8moP+fO5RfqQizJEQ1Fo5MA/EWcPhgl3anCgpKoqChGaQQMh6g6lxD8Zu
 U4Uz5GI9QK6vrVpGwcn3HSXE+MfBDWSMFeD7yfpw5OsGv/2b1L7VjOahk8qLWPZWwn
 jvyrMweq0NnBZhQyYqoGjPPwE0zfMs2kGVTNuapw=
Date: Sat, 11 Apr 2020 21:10:15 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH] net/3com/3c515: Fix MODULE_ARCH_VERMAGIC redefinition
Message-ID: <20200411181015.GC200683@unreal>
References: <20200224085311.460338-1-leon@kernel.org>
 <20200224085311.460338-4-leon@kernel.org>
 <20200411155623.GA22175@zn.tnic> <20200411161156.GA200683@unreal>
 <20200411173504.GA11128@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200411173504.GA11128@zn.tnic>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_111021_580232_4395731F 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Thor Thayer <thor.thayer@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>,
 Igor Russkikh <irusskikh@marvell.com>, Andreas Larsson <andreas@gaisler.com>,
 Chris Snook <chris.snook@gmail.com>, David Dillow <dave@thedillows.org>,
 Jes Sorensen <jes@trained-monkey.org>,
 Iyappan Subramanian <iyappan@os.amperecomputing.com>,
 Quan Nguyen <quan@os.amperecomputing.com>, linux-acenic@sunsite.dk,
 Andy Gospodarek <andy@greyhouse.net>, Arthur Kiyanovski <akiyano@amazon.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Lino Sanfilippo <LinoSanfilippo@gmx.de>, Veaceslav Falico <vfalico@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Tom Lendacky <thomas.lendacky@amd.com>,
 Jay Cliburn <jcliburn@gmail.com>, Jay Vosburgh <j.vosburgh@gmail.com>,
 Keyur Chudgar <keyur@os.amperecomputing.com>,
 Maxime Ripard <mripard@kernel.org>, Don Fry <pcnet32@frontier.com>,
 nios2-dev@lists.rocketboards.org, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ion Badulescu <ionut@badula.org>, Netanel Belgazal <netanel@amazon.com>,
 Mark Einon <mark.einon@gmail.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 11, 2020 at 07:35:04PM +0200, Borislav Petkov wrote:
> On Sat, Apr 11, 2020 at 07:11:56PM +0300, Leon Romanovsky wrote:
> > Probably, this is the right change, but I have a feeling that the right
> > solution will be inside headers itself. It is a little bit strange that
> > both very common kernel headers like module.h and vermagic.h are location
> > dependant.
>
> Judging by how only a couple of net drivers include vermagic.h directly,
> doh, of course:
>
> diff --git a/drivers/net/ethernet/3com/3c509.c b/drivers/net/ethernet/3com/3c509.c
> index b762176a1406..139d0120f511 100644
> --- a/drivers/net/ethernet/3com/3c509.c
> +++ b/drivers/net/ethernet/3com/3c509.c
> @@ -85,7 +85,6 @@
>  #include <linux/device.h>
>  #include <linux/eisa.h>
>  #include <linux/bitops.h>
> -#include <linux/vermagic.h>
>
>  #include <linux/uaccess.h>
>  #include <asm/io.h>
> diff --git a/drivers/net/ethernet/3com/3c515.c b/drivers/net/ethernet/3com/3c515.c
> index 90312fcd6319..47b4215bb93b 100644
> --- a/drivers/net/ethernet/3com/3c515.c
> +++ b/drivers/net/ethernet/3com/3c515.c
> @@ -22,7 +22,6 @@
>
>  */
>
> -#include <linux/vermagic.h>
>  #define DRV_NAME		"3c515"
>
>  #define CORKSCREW 1
>
> ---
>
> Drivers include
>
> #include <linux/module.h>
>
> which includes
>
> #include <asm/module.h>
>
> which defines the arch-specific MODULE_ARCH_VERMAGIC.
>
> Why did you need to include vermagic.h directly? i386 builds fine with
> the vermagic.h includes removed or was it some other arches which needed
> it?

I want to think that it was an outcome of some 0-day kbuild report,
but I am not sure about that anymore [1].

Thanks

[1] https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/

>
> Thx.
>
> --
> Regards/Gruss,
>     Boris.
>
> https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
