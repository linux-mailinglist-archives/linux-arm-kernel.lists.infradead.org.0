Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 746B810AC9C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 10:27:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94xymAxCpQj4NDfUfbgmoJ52o8+48XHmhNw2DP7sKQ0=; b=Pu/89W+//5+0vG
	gnsMeWo6ELlPCLyXjHyswUU/Ng38keUs3W2f4oRAqhTJ6eZFjLkbRZszxPeHWdYSMnLtJCqR91ZzD
	0mEUABUl5rMVxQIzcx/WLO029FQPWn+aikSnCZ85TSDBlHL7WWcyFmXS0ULCFJFikfG66t1YrX/Yl
	qq+pkkiSPZNn0t9y7tIDH0b/i7AEZlbrEIbhURkFNbI1mwPesuoekF2WiirpMBeH4khCj2zdNfPDH
	KAhECjn0JPThT4Vjqm9Vc3PmrGBpQmm0jhVUoPSHXHckJR2knktL/stBItg1rNaEH16jsT31qjB2Y
	J2xh2K+TfRQDShiWdTfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZtbc-0007uf-Qo; Wed, 27 Nov 2019 09:27:28 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZtbT-0007sy-HV
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 09:27:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WL2xugN3zLl6MEv/64tLFVBoLomlA97rbI+DD/ncxaE=; b=ns2KqnvIsWsHiQh5zycTk52WD
 n+xo83KAzcTMiK7L8THjSsqDPcrAjzesXxjI1wykLdLpEHcmjdwyaDchfPBXYkzehbNR55Rr+BqQ/
 wHWH4emtAAvAveeUUmTPMztlGQEn3druLqyS5f1gVQzoKbSPq69ZP8yGWB3LGEzEgSIRCIo132PUh
 0Xxei0N9FSWMW+1AB97sNVIj/XFpVm3y5G5CLMY2MCY+nDH/S4ldWk1DCEWej8sPtdA0V21/GxxW0
 b3zMdFpIgIEFmoS1Jp04VfvtqiVjUlZ6SeNMOSIbyvp6Wf3wGHgdFxAXLGuBT6FyETA2bwFOMPjY8
 JB9gNtS0g==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:45254)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iZtak-0002TV-55; Wed, 27 Nov 2019 09:26:34 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iZtaR-0000A2-QR; Wed, 27 Nov 2019 09:26:15 +0000
Date: Wed, 27 Nov 2019 09:26:15 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
Subject: Re: ARM expections for location of kernel, ramdisk and dtb
Message-ID: <20191127092615.GC25745@shell.armlinux.org.uk>
References: <e1f7cca54843abcef0c2703a5f7071c045b99baa.camel@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e1f7cca54843abcef0c2703a5f7071c045b99baa.camel@alliedtelesis.co.nz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_012719_579694_DBB356B0 
X-CRM114-Status: GOOD (  22.74  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Hamish Martin <Hamish.Martin@alliedtelesis.co.nz>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "nico@fluxnic.net" <nico@fluxnic.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>,
 "natechancellor@gmail.com" <natechancellor@gmail.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 08:20:12AM +0000, Chris Packham wrote:
> Hi All,
> 
> We're updating our systems to use the latest kernel. For many of them
> this is a fairly large leap. One problem we've hit is that durng boot
> the dtb is clobbered by the uncompressed kernel.
> 
> Here's a snippet of output from u-boot
> 
> ## Loading kernel from FIT Image at 62000000 ...
>    Using 'XS916MXS@2' configuration
>    Trying 'kernel@1' kernel subimage
>      Description:  linux
>      Created:      2019-11-27   6:53:48 UTC
>      Type:         Kernel Image
>      Compression:  uncompressed
>      Data Start:   0x62000174
>      Data Size:    3495432 Bytes = 3.3 MiB
>      Architecture: ARM
>      OS:           Linux
>      Load Address: 0x00800000
>      Entry Point:  0x60800000
>    ...
>    Booting using the fdt blob at 0x63b90f6c
>    Loading Kernel Image ... OK
>    Loading Ramdisk to 6e7c6000, end 70000000 ... OK
>    Loading Device Tree to 607fb000, end 607fffd8 ... OK
> 
> Starting kernel ...
> 
> Uncompressing Linux... done, booting the kernel.
> 
> Error: invalid dtb and unrecognized/unsupported machine ID
>   r1=0x0000206e, r2=0x00000000
> 
> Between old and new the location of the devicetree hasn't actually
> changed. But what has changed is the size of the kernel the self
> extracting kernel unpacks to 0x60008000 and with our current
> configuration extends into where the dtb is located.
> 
> Documentation/arm/booting.rst says that "The dtb must be placed in a
> region of memory where the kernel decompressor will not overwrite it". 
> 
> This suggests that the problem is with our u-boot configuration, but
> how is u-boot supposed to know where the self-extracting kernel is
> going to place things? As far as I can tell u-boot is doing a
> reasonable job of finding a place to put the dtb which it thinks is
> unused. I'm not sure why it's picked 0x607fb000 instead of putting it
> just under the ramdisk but regardless with the information u-boot has
> that address is up for grabs.
> 
> Has this come up before? The self-extraction code is fairly careful not
> to overwrite itself but doesn't seem to pay any attention to the dtb
> which surprised me. So I wonder if I'm missing something?

The self-extraction hasn't changed much over the years, and basically
follows the same method which has worked for the vast majority of
platforms.

Where things fall down is where things are placed too close, and yes,
as the kernel grows, what was reasonable years ago becomes too close
with modern kernels.

The problem has been compounded by the various different compression
algorithms that can now be used for the compressed kernel.

kexec also ran into this problem, and there is now enough information
in a modern kernel to calculate how much space the decompressor is
going to require.  Have a look at the current kexec sources for how
it is done.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
