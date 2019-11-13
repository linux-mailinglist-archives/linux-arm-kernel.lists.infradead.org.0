Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAF8FAEA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:39:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDtR4dcsEKWpylAqIECNCZ9DuRsyf0B4zIP/7ON3OMI=; b=QA8gycDinQah3X
	4PcSlP2RIy6XSntjqJY5EKKBIME2u5fDWmr3G+rGd8uAnGorPli1RqiD5it0X6RNHEF2kaArtepEh
	sKibIunrCNbx8c0iovEU8aTPSAaGP53e3BBLZpHF+nzLm1gpUPWfS2PFT4GMjiywGJLLU2KdfjYAK
	Xu9aXdPzjTFK/H2Qy0aYxP0IlFo2JkEtoYj/I0tH1EMgLMyOgJppCL3apNXGaRR4AmvoTnxFsKIg+
	4Er89XvTBdm0l0konjO5cHOQJ3LJKJyCqnlLsiGEuLCCCi2gGJKMTn5M5oV9Nm0OG+aNeoKKViPcq
	/JBUXGIMqRUMvptxX7qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUq3x-0002TK-RA; Wed, 13 Nov 2019 10:39:49 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUq3q-0002Sk-CR
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:39:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7WKOt0PU1d3nL/CCCTgJgokym6dAZxK4zFfjfXkPRJw=; b=isF6o5VXck6A2W28IBRVYOlkl
 Vak7XScn5Sx2IAnHQtN6A00WUoEsEVwaQ//2q4YOaZcowM0E0/t0fQLA415Q1d/tcI163ypTRwkVs
 FR4mdozBxCtJzUn1HN5RYLi3LCPXXcQGHlnWIZkD0lZjHtTsgu18nXygZ+lTJPG/BTUTJIHtgyKJw
 f4QXifIa9KBESKFQ53cTIu6NX4YLC3SPlR0EgxjoUyXTdy0gRkHkKIsu/0wsO7d5GnQs1Uz0940Ta
 Z37l6uIlCF7+2VOIaoWJuAGMaH2B1wgk++6fqfVEVLrLHiVlCIhz71nw8z79GkIuq072QdfB7MYJH
 lrzGi8t2g==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:55632)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iUq3X-0003a3-NZ; Wed, 13 Nov 2019 10:39:23 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iUq3T-0002ON-If; Wed, 13 Nov 2019 10:39:19 +0000
Date: Wed, 13 Nov 2019 10:39:19 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH/RFC] ARM: boot: Relax kernel image alignment for RZ/A
 with CS3 SDRAM
Message-ID: <20191113103919.GM25745@shell.armlinux.org.uk>
References: <20191113102729.29303-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113102729.29303-1-geert+renesas@glider.be>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_023942_423171_909BCFEE 
X-CRM114-Status: GOOD (  24.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 linux-renesas-soc@vger.kernel.org, Chris Brandt <chris.brandt@renesas.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 11:27:29AM +0100, Geert Uytterhoeven wrote:
> The RZA2MEVB sub board has 64 MiB of SDRAM at 0x0C000000 (CS3 space).
> Hence the mask for CONFIG_AUTO_ZRELADDR needs to be changed, otherwise
> the system will crash because it will try to decompress a zImage or
> uImage to a non-RAM garbage address.
> 
> Based on a patch in the BSP by Chris Brandt <chris.brandt@renesas.com>.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> No idea what to do with the rest of the comment, or if this breaks
> existing platforms.

We occasionally have discussions about this - the last one was a big
one in Edinburgh, and the answer is we can't change this in mainline.
They've also come up on the mailing lists as well.

I'm not going to rehash this old argument yet again - the comment
details the reason for it, and is there to prevent exactly this.

If someone is silly enough to come up with a platform that violates
the documented 32-bit ARM booting protocol, then they can't expect
the kernel to bend to their platform's requirements at the expense of
already merged platforms.

Sorry.

> 
> Thanks for your comments!
> ---
>  arch/arm/boot/compressed/head.S | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> index 93dffed0ac6e02b4..cfee6bd1e7a0a582 100644
> --- a/arch/arm/boot/compressed/head.S
> +++ b/arch/arm/boot/compressed/head.S
> @@ -231,10 +231,10 @@ not_angel:
>  		 * address.
>  		 *
>  		 * This alignment is a balance between the requirements of
> -		 * different platforms - we have chosen 128MB to allow
> +		 * different platforms - we have chosen 64MB to allow
>  		 * platforms which align the start of their physical memory
> -		 * to 128MB to use this feature, while allowing the zImage
> -		 * to be placed within the first 128MB of memory on other
> +		 * to 64MB to use this feature, while allowing the zImage
> +		 * to be placed within the first 64MB of memory on other
>  		 * platforms.  Increasing the alignment means we place
>  		 * stricter alignment requirements on the start of physical
>  		 * memory, but relaxing it means that we break people who
> @@ -242,7 +242,7 @@ not_angel:
>  		 * of this range.
>  		 */
>  		mov	r4, pc
> -		and	r4, r4, #0xf8000000
> +		and	r4, r4, #0xfc000000
>  		/* Determine final kernel image address. */
>  		add	r4, r4, #TEXT_OFFSET
>  #else
> -- 
> 2.17.1
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
