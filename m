Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8FF10329E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 05:53:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nG5bvu5+Ytb9h/jXuXYAXcWWBLDtDJB1SlPIFxD1aFI=; b=uiUwqfe+vVrDgaod04G5w3tgeg
	gjrpHCQ1GbSywrSWqqw+IU+w+gdUIuK20f9FSBvjlZbRBVe4vKjl26+9fugPrpDv0rHHHTbmf/sPv
	4iwsIANL759+1xs7uhJdNBVyq+di9RappzL4FMzI0wazDQTc7KF9HfVdiR6lTjI45L3WOV8jQtZYN
	1je0pVFsS1gkU6neKLxWEyB/D6gb3ZEigW0TC3BkmvPOJRy20y91Kjd4F2W6C4+lh1NNQUNYKDxvn
	0Igu1eV0sNoL+ssVHD3I2tZitWj8t77EJAj4d8NcIvrRaQ3POGyIvjqevHn2jhnkAYyt3+SzIIr9G
	brusbdEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXHzA-0006k2-R1; Wed, 20 Nov 2019 04:53:00 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXHz0-0006jf-Bi; Wed, 20 Nov 2019 04:52:52 +0000
Received: from tarshish (unknown [10.0.8.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 0C5144407C6;
 Wed, 20 Nov 2019 06:52:48 +0200 (IST)
References: <20191120031622.88949-1-stephen@brennan.io>
 <20191120031622.88949-3-stephen@brennan.io>
User-agent: mu4e 1.2.0; emacs 26.1
From: Baruch Siach <baruch@tkos.co.il>
To: Stephen Brennan <stephen@brennan.io>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 2/4] hwrng: iproc-rng200: Add support for BCM2711
In-reply-to: <20191120031622.88949-3-stephen@brennan.io>
Date: Wed, 20 Nov 2019 06:52:47 +0200
Message-ID: <87eey3gnds.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_205250_634973_46B0398A 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, Stefan Wahren <wahrenst@gmx.net>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-crypto@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Matthias Brugger <mbrugger@suse.com>, bcm-kernel-feedback-list@broadcom.com,
 stephen@brennan.io, Ray Jui <rjui@broadcom.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen, Stefan,

On Wed, Nov 20 2019, Stephen Brennan wrote:
> From: Stefan Wahren <wahrenst@gmx.net>
>
> BCM2711 features a RNG200 hardware random number generator block.
> So make the driver available.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Signed-off-by: Stephen Brennan <stephen@brennan.io>
> Reviewed-by: Matthias Brugger <mbrugger@suse.com>
> ---
>  drivers/char/hw_random/Kconfig        | 2 +-
>  drivers/char/hw_random/iproc-rng200.c | 1 +
>  2 files changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/char/hw_random/Kconfig b/drivers/char/hw_random/Kconfig
> index 7c7fecfa2fb2..77e848fca531 100644
> --- a/drivers/char/hw_random/Kconfig
> +++ b/drivers/char/hw_random/Kconfig
> @@ -90,7 +90,7 @@ config HW_RANDOM_BCM2835
>  
>  config HW_RANDOM_IPROC_RNG200
>  	tristate "Broadcom iProc/STB RNG200 support"
> -	depends on ARCH_BCM_IPROC || ARCH_BRCMSTB
> +	depends on ARCH_BCM_IPROC || ARCH_BCM2835 || ARCH_BRCMSTB
>  	default HW_RANDOM
>  	---help---
>  	  This driver provides kernel-side support for the RNG200
> diff --git a/drivers/char/hw_random/iproc-rng200.c b/drivers/char/hw_random/iproc-rng200.c
> index 899ff25f4f28..32d9fe61a225 100644
> --- a/drivers/char/hw_random/iproc-rng200.c
> +++ b/drivers/char/hw_random/iproc-rng200.c
> @@ -213,6 +213,7 @@ static int iproc_rng200_probe(struct platform_device *pdev)
>  }
>  
>  static const struct of_device_id iproc_rng200_of_match[] = {
> +	{ .compatible = "brcm,bcm2711-rng200", },
>  	{ .compatible = "brcm,bcm7211-rng200", },

Again, duplicate of commit 1fa6d053b2a5.

>  	{ .compatible = "brcm,bcm7278-rng200", },
>  	{ .compatible = "brcm,iproc-rng200", },

baruch

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
