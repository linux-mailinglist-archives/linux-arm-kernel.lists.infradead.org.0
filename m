Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44A110C015
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 23:16:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxbmVDJ++MKbC3lmDV/R3AN5FFAeddgpePv2m8bKhDE=; b=Ww57m58P9jhElK
	HxkJBo08i5xSJHLEjXev2s9p+TkkkVtA4Q/969ezoxExDP7Xi4t+dHlxLyiFjIJzbE5NGXMXrYmPc
	LZ+19Pj4Ur0BQZRsOzbJ1bEK/qR5eQ0UQLESQGtQxARbjMio5T9K5Xq8tVrFM2EDsjU8p00a8rhNF
	4sEEjq1hTYp0R3RSIy9PYrHjzR26yBBj7eiEVtk2S5rHIjHybygFKxxvihIvCG57aRnYAh0ASlEkR
	t3gnRb175akB8FyMqR3VbyS0sBSg5Ovm0S9SfLySKMpcvl5B1pFjzPhcB5dYmIGZho1Rv86QHHq5q
	d7aMdX2I05q4WI4NHf5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia5bY-0003rb-L5; Wed, 27 Nov 2019 22:16:12 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia5bP-0003qX-6P
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 22:16:05 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 6EFE18066C;
 Thu, 28 Nov 2019 11:15:58 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1574892958;
 bh=86ybmKdYyEAkqXJW6P1i+HtVhRLKuKTGrNJP3O0OTt0=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=oloirGvbZeDI3GCNcCzHjc9f4YDAIskYhn4+yxdPlh87uR5k/lxFHo5zWD0wnK+9m
 fLSVlMxwX+cEbdhJenCTLNTHfPHhOt0mP6w57OCFX2SaVePYTAd/5Ew31u/p5hj+Yk
 Omg/slvybJ2YhtQOou4WN5bGdtpuxwx0UoE9Q8kGKOjE0PcOGRMdHfitV2ji1m+NrC
 V+HkIzThlEnj8ApuDUL9/y8OjfBtU0L6mMJHyh+eMhsjfjA2Dz5kiDlZUdyK269/i7
 cVtCjpJ+D+Q/a9FdztlW1z6cLw/t4xiqZZo6nEe3xyzA5msxvML75klbzkVIwsVTgQ
 xeEg+JJWopfhw==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5ddef59d0000>; Thu, 28 Nov 2019 11:15:57 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1156.6; Thu, 28 Nov 2019 11:15:58 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Thu, 28 Nov 2019 11:15:58 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "linux@armlinux.org.uk" <linux@armlinux.org.uk>
Subject: Re: ARM expections for location of kernel, ramdisk and dtb
Thread-Topic: ARM expections for location of kernel, ramdisk and dtb
Thread-Index: AQHVpPt9nOgyqufu70+hpQyr7hZevaed5YmAgADXDYA=
Date: Wed, 27 Nov 2019 22:15:57 +0000
Message-ID: <c108d58e3ee511040bb99edb28c893b27b238bdb.camel@alliedtelesis.co.nz>
References: <e1f7cca54843abcef0c2703a5f7071c045b99baa.camel@alliedtelesis.co.nz>
 <20191127092615.GC25745@shell.armlinux.org.uk>
In-Reply-To: <20191127092615.GC25745@shell.armlinux.org.uk>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:f928:a51e:370a:f684]
Content-ID: <A49DAC3587DCC445BBE48480D9222B57@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_141603_765138_3B5AC605 
X-CRM114-Status: GOOD (  29.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Hamish Martin <Hamish.Martin@alliedtelesis.co.nz>,
 "nico@fluxnic.net" <nico@fluxnic.net>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "natechancellor@gmail.com" <natechancellor@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Wed, 2019-11-27 at 09:26 +0000, Russell King - ARM Linux admin
wrote:
> On Wed, Nov 27, 2019 at 08:20:12AM +0000, Chris Packham wrote:
> > Hi All,
> > 
> > We're updating our systems to use the latest kernel. For many of them
> > this is a fairly large leap. One problem we've hit is that durng boot
> > the dtb is clobbered by the uncompressed kernel.
> > 
> > Here's a snippet of output from u-boot
> > 
> > ## Loading kernel from FIT Image at 62000000 ...
> >    Using 'XS916MXS@2' configuration
> >    Trying 'kernel@1' kernel subimage
> >      Description:  linux
> >      Created:      2019-11-27   6:53:48 UTC
> >      Type:         Kernel Image
> >      Compression:  uncompressed
> >      Data Start:   0x62000174
> >      Data Size:    3495432 Bytes = 3.3 MiB
> >      Architecture: ARM
> >      OS:           Linux
> >      Load Address: 0x00800000
> >      Entry Point:  0x60800000
> >    ...
> >    Booting using the fdt blob at 0x63b90f6c
> >    Loading Kernel Image ... OK
> >    Loading Ramdisk to 6e7c6000, end 70000000 ... OK
> >    Loading Device Tree to 607fb000, end 607fffd8 ... OK
> > 
> > Starting kernel ...
> > 
> > Uncompressing Linux... done, booting the kernel.
> > 
> > Error: invalid dtb and unrecognized/unsupported machine ID
> >   r1=0x0000206e, r2=0x00000000
> > 
> > Between old and new the location of the devicetree hasn't actually
> > changed. But what has changed is the size of the kernel the self
> > extracting kernel unpacks to 0x60008000 and with our current
> > configuration extends into where the dtb is located.
> > 
> > Documentation/arm/booting.rst says that "The dtb must be placed in a
> > region of memory where the kernel decompressor will not overwrite it". 
> > 
> > This suggests that the problem is with our u-boot configuration, but
> > how is u-boot supposed to know where the self-extracting kernel is
> > going to place things? As far as I can tell u-boot is doing a
> > reasonable job of finding a place to put the dtb which it thinks is
> > unused. I'm not sure why it's picked 0x607fb000 instead of putting it
> > just under the ramdisk but regardless with the information u-boot has
> > that address is up for grabs.
> > 
> > Has this come up before? The self-extraction code is fairly careful not
> > to overwrite itself but doesn't seem to pay any attention to the dtb
> > which surprised me. So I wonder if I'm missing something?
> 
> The self-extraction hasn't changed much over the years, and basically
> follows the same method which has worked for the vast majority of
> platforms.
> 
> Where things fall down is where things are placed too close, and yes,
> as the kernel grows, what was reasonable years ago becomes too close
> with modern kernels.
> 
> The problem has been compounded by the various different compression
> algorithms that can now be used for the compressed kernel.
> 

I don't think it's that we don't know how big the extracted kernel will
be. It's just that we aren't doing anything with that information w.r.t
the dtb.

> kexec also ran into this problem, and there is now enough information
> in a modern kernel to calculate how much space the decompressor is
> going to require.  Have a look at the current kexec sources for how
> it is done.
> 

Thanks will do. If we get something suitable we'll post a patch.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
