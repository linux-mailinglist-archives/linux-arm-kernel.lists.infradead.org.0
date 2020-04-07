Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B1A1A0852
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 09:31:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5fvwdBtc7lL2olAIj3Gx8tYxfUcHQF2bnJtsiIgY/e8=; b=G8zOTy4Yj32IYU
	2VbwtlOKDb8cVo04zvIXgUnVTq/s3aaytqJWU9aS+A0MDi/GLn/heAKtd6RNL29yBipfrUjhwfRMf
	rrGT0OEmDEm2yJZRIcc68Fst5qXaZQfkd8FlFS5j82JqFiW0WwrIhxLZndYA4M+Ao/pHHXkK/qVCW
	Mx/2teD0TWK7OvZIkT2KuWJ33Hg4c7/5PxogJKW8Er7UI+VLuEjaUfU7KB5aKZR7n77QDkmPxdYGx
	FEu3Vy1ucnxNsDYJLjvmA8IWCF2XPju+BgORFq1lXLGTLYAnqrNg4GHtfoO/1o5NRzBQ4toLK5IFf
	IGErINkyX3uHoTyoWHKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLiht-0006AB-1h; Tue, 07 Apr 2020 07:31:37 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLihl-000691-4N; Tue, 07 Apr 2020 07:31:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rWh8rrEPIkDMv4VbQykebA3zv8/SWd0dZcFoD4kPIuI=; b=WE+MMrJ/4QBFfcAKqCx0/lyS8
 2aK+1lxsxR+r4wSUKpm06kagEuskFZA3GFBe+D2vT/jRALfufrBtc6c0dQkmdwLxnYlpH58ycehIq
 2cIxeAMIbUNNoKn8Knaj/rkrCn7DyD9Gr/U21BLsxgpoqK6DH5MD9mJT0vYuAsTvAdRXjqeXA5Z6q
 TnPcSOy3w28B6pWguwIt2vIzUhCpq880ySmVj0Sa329Uz2mGU7nrRWZOYDsjPi1GCwfX9IeG5rdaC
 8hTEpDtOlOEGHbUh2TWk7yO5sWRFPfmAuNXAP+nGnppfoiMT+XD3e1YO2F7rJE+MrzMegzdGgl6CZ
 DXWFYLIqA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:42612)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jLihc-0006a5-1h; Tue, 07 Apr 2020 08:31:20 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jLihZ-00070T-KM; Tue, 07 Apr 2020 08:31:17 +0100
Date: Tue, 7 Apr 2020 08:31:17 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: Trying to kexec on Allwinner A80
Message-ID: <20200407073117.GH25745@shell.armlinux.org.uk>
References: <20200406082720.GA31279@Red>
 <20200406091600.GF25745@shell.armlinux.org.uk>
 <20200406092540.GB31279@Red>
 <20200406093729.GG25745@shell.armlinux.org.uk>
 <20200406201053.GA10931@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406201053.GA10931@Red>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_003129_311750_ADA89916 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kexec@lists.infradead.org, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, ebiederm@xmission.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 06, 2020 at 10:10:53PM +0200, Corentin Labbe wrote:
> On Mon, Apr 06, 2020 at 10:37:29AM +0100, Russell King - ARM Linux admin wrote:
> > On Mon, Apr 06, 2020 at 11:25:40AM +0200, Corentin Labbe wrote:
> > > On Mon, Apr 06, 2020 at 10:16:00AM +0100, Russell King - ARM Linux admin wrote:
> > > > On Mon, Apr 06, 2020 at 10:27:20AM +0200, Corentin Labbe wrote:
> > > > > Hello
> > > > > 
> > > > > I am trying to add the last missing Allwinner Soc in kernelci: the A80.
> > > > > But this SoC does not have any way to be used in kernelci, no USB nor network in uboot.
> > > > > So I have tried to fake uboot since the kernel has network support and run the new kernel via kexec.
> > > > > 
> > > > > But kexec 2.0.18 fail to work:
> > > > > kexec --force /tmp/kernel --initrd /tmp/ramdisk --dtb /tmp/dtb --command-line='console=ttyS0,115200n8 root=/dev/ram0 earlycon=uart,mmio32,0x7000000 ip=dhcp'
> > > > 
> > > > What happens if you omit the dtb argument?
> > > > 
> > > 
> > > No change without dtb
> > > 
> > > I have also tried to add --mem-mim and --mem-max without any change.
> > > I given mem according to what I saw in /proc/iomem
> > > 20000000-9fffffff : System RAM
> > >   20008000-207fffff : Kernel code
> > >   20900000-209a0c87 : Kernel data
> > > So I gave --mem-min 0x30000000 --mem-max 0x9fffffff
> > > Anyway, the result is always the same.
> > 
> > The next step is to enable the early debugging - first in the
> > decompressor - add #define DEBUG to the top of
> > arch/arm/boot/compressed/head.S
> > 
> > Also enable DEBUG_LL in the kernel and use earlyprintk to see if you can
> > get anything from the new kernel.
> > 
> 
> I dont know what happened, but now I always get "Could not find a free area of memory of 0x86c1c0 bytes..." (even with kexec 2.0.18)
> Furthermore, I have added crashkernel=128M to the cmdlist
> I have verified that the reservation is working:
> 20000000-9fffffff : System RAM
>   20008000-207fffff : Kernel code
>   20900000-209a0c87 : Kernel data
>   40000000-47ffffff : Crash kernel
> But even with this reservation, no change.

crashkernel is only necessary if you're loading a kenrel image to be
booted when the existing one has crashed. For the problem you're
seeing, it's an unnecessary additional change; please drop that.

You could try running kexec with debug enabled to see more information.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
