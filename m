Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D72EF10C0D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 00:54:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tH62z+7yl/hYqMasIPvTIZ1aLislQmSOwxgCdWglYMU=; b=lAmVqF3kNMBc4Y
	rC6RyiCpXBj11e8RfFO5xNhnt+zoHylTKGEEzkVhM3SivagaC/DMLBvJh6wn8AQZlUJqb9XGQio/t
	Sz9TnTKlA9DSTS7xfTGVLStTWOaiYC7M3MQ6KlvLKeBmVBPURz5oGZeBQ3hAgA9ivZ5a6O/y+Wmkp
	+L7f4ScN47HtTZ/3nVDrq6Ko7+AkuHpxaanltD9INAuOkiB7bt3W6Opdwho8cuRZHpyly6Ww76wbJ
	L8pIYkGouBw7a848ka+oJCfQb44ErOtLFSEpXHZMDyMlXuWbgCFlts2nV6FOJyjeDNwcZYlA2sAeV
	QvkMw4S4bjNrUJjXv7Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia78R-0006uK-EP; Wed, 27 Nov 2019 23:54:15 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia78F-0006tX-79
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 23:54:05 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 493DA5C2380;
 Thu, 28 Nov 2019 00:53:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1574898838;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zCWmxTU7r5PTGYiMdP1UCFnkot7yHiMDj+IRHD0KQvU=;
 b=lqNITnBV2pn45c8vR8YPYNmK7/kCf7TkqPqVEggtIfE9XCvvWc02agVM7kMEIT1zA0H8MN
 u7dzXHfRnVGXtMihTgdqYHZlKYQguULafioeBZXnek9JdzGTLiRpb+7iWqj66OaWb8E5aM
 s/KzNGOtiKAp3e/x4sTYErlnsuF2fAI=
MIME-Version: 1.0
Date: Thu, 28 Nov 2019 00:53:57 +0100
From: Stefan Agner <stefan@agner.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>, Chris Packham
 <Chris.Packham@alliedtelesis.co.nz>
Subject: Re: ARM expections for location of kernel, ramdisk and dtb
In-Reply-To: <20191127231900.GG25745@shell.armlinux.org.uk>
References: <e1f7cca54843abcef0c2703a5f7071c045b99baa.camel@alliedtelesis.co.nz>
 <20191127092615.GC25745@shell.armlinux.org.uk>
 <c108d58e3ee511040bb99edb28c893b27b238bdb.camel@alliedtelesis.co.nz>
 <20191127231900.GG25745@shell.armlinux.org.uk>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <8420e6283a7bc3a0d33d2af5010729d6@agner.ch>
X-Sender: stefan@agner.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_155403_705053_2E5DD1A4 
X-CRM114-Status: GOOD (  28.90  )
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
 ard.biesheuvel@linaro.org, linus.walleij@linaro.org, nico@fluxnic.net,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, natechancellor@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-28 00:19, Russell King - ARM Linux admin wrote:
> On Wed, Nov 27, 2019 at 10:15:57PM +0000, Chris Packham wrote:
>> Hi Russell,
>>
>> On Wed, 2019-11-27 at 09:26 +0000, Russell King - ARM Linux admin
>> wrote:
>> > On Wed, Nov 27, 2019 at 08:20:12AM +0000, Chris Packham wrote:
>> > > Hi All,
>> > >
>> > > We're updating our systems to use the latest kernel. For many of them
>> > > this is a fairly large leap. One problem we've hit is that durng boot
>> > > the dtb is clobbered by the uncompressed kernel.
>> > >
>> > > Here's a snippet of output from u-boot
>> > >
>> > > ## Loading kernel from FIT Image at 62000000 ...
>> > >    Using 'XS916MXS@2' configuration
>> > >    Trying 'kernel@1' kernel subimage
>> > >      Description:  linux
>> > >      Created:      2019-11-27   6:53:48 UTC
>> > >      Type:         Kernel Image
>> > >      Compression:  uncompressed
>> > >      Data Start:   0x62000174
>> > >      Data Size:    3495432 Bytes = 3.3 MiB
>> > >      Architecture: ARM
>> > >      OS:           Linux
>> > >      Load Address: 0x00800000
>> > >      Entry Point:  0x60800000
>> > >    ...
>> > >    Booting using the fdt blob at 0x63b90f6c
>> > >    Loading Kernel Image ... OK
>> > >    Loading Ramdisk to 6e7c6000, end 70000000 ... OK
>> > >    Loading Device Tree to 607fb000, end 607fffd8 ... OK
>> > >
>> > > Starting kernel ...
>> > >
>> > > Uncompressing Linux... done, booting the kernel.
>> > >
>> > > Error: invalid dtb and unrecognized/unsupported machine ID
>> > >   r1=0x0000206e, r2=0x00000000
>> > >
>> > > Between old and new the location of the devicetree hasn't actually
>> > > changed. But what has changed is the size of the kernel the self
>> > > extracting kernel unpacks to 0x60008000 and with our current
>> > > configuration extends into where the dtb is located.
>> > >
>> > > Documentation/arm/booting.rst says that "The dtb must be placed in a
>> > > region of memory where the kernel decompressor will not overwrite it".
>> > >
>> > > This suggests that the problem is with our u-boot configuration, but
>> > > how is u-boot supposed to know where the self-extracting kernel is
>> > > going to place things? As far as I can tell u-boot is doing a
>> > > reasonable job of finding a place to put the dtb which it thinks is
>> > > unused. I'm not sure why it's picked 0x607fb000 instead of putting it
>> > > just under the ramdisk but regardless with the information u-boot has
>> > > that address is up for grabs.
>> > >
>> > > Has this come up before? The self-extraction code is fairly careful not
>> > > to overwrite itself but doesn't seem to pay any attention to the dtb
>> > > which surprised me. So I wonder if I'm missing something?
>> >
>> > The self-extraction hasn't changed much over the years, and basically
>> > follows the same method which has worked for the vast majority of
>> > platforms.
>> >
>> > Where things fall down is where things are placed too close, and yes,
>> > as the kernel grows, what was reasonable years ago becomes too close
>> > with modern kernels.
>> >
>> > The problem has been compounded by the various different compression
>> > algorithms that can now be used for the compressed kernel.
>> >
>>
>> I don't think it's that we don't know how big the extracted kernel will
>> be. It's just that we aren't doing anything with that information w.r.t
>> the dtb.
> 
> I believe u-boot tried at one point to instigate some kind of standard
> placement of the kernel / dtb with respect to the available RAM, but
> vendors tried hard to ignore u-boot and go their own way - resulting
> in systems that didn't boot without customising various u-boot
> environment variables.  It's very annoying when vendors ignore the
> community...

Indeed, there are too many board setting fdt_high by default to
0xffffffff which disables device tree relocation... Not sure why vendors
are doing this, maybe because they want to save the extra copy. Often
the very same boards have a kernel load address which conflicts with the
TEXT_OFFSET address requiring the kernel to relocate before decompress,
which certainly takes longer then relocating a device tree...

Disabling relocation is also problematic when storing device tree close
by to a initrd. I remember I had an issue when using FIT images without
relocation:
https://lists.denx.de/pipermail/u-boot/2016-August/263689.html

From what I remember I tracked down the exact issue. It was due to the
fact that Linux is freeing (and poisoning) the memory of the initrd page
aligned. This then corrupted the device tree.
https://elixir.bootlin.com/linux/latest/source/arch/arm/mm/init.c#L315

--
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
