Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F92E1B4546
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 14:39:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnAxpXwtb52KnUXtaDZDFiGjUgS0cPg+3/0uXyunNq4=; b=lO0XeI6dP4liMs
	3Z0861UNauVLQv+w8YUYdFlKbTPCIeBToEyyr79qsE16qDoA8Z2ri9awac26AEKL/D1jyixrOVRbh
	0ZqSLh+Cc36/N060PaEVhxsP6h0KMWt1TiR+YW6T6kVRDU67xi0h181WIFl7cvAAB/YNFSxL5iBQF
	mHyZf0o3HsBpFGeUcv69UqYz8RydCFm+ZoDLfeQcUKn+3ADjCOL0XzzxOirNgrG1SCVMqHAXYdIT7
	5G5lbN05F2CVAqL00O89E2pQf0+X0lB2P3r4yhFJAO3ng43dUm+rMKrYlxhDwtHaXsRojoLyUS671
	0eF+fxGIHsu1yuCpZACQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jREeZ-00044l-4U; Wed, 22 Apr 2020 12:38:59 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jREeO-0003zw-OG
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 12:38:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s3e/ImNCbheG0gCPqmXlxXQLvDBT5TzvXq/PHODmRsE=; b=u8k5H/L1ZmB7X7Z0TwRQmmncU
 gjOVYAybqT27s1vpVgKPKzqKI+s1hhA1ciP3GhCbDFatI/J04eb1M96uR9kB6Lj6y5p4am+9WzZWR
 s+U/3KmKz/UUH6jR5/+9BTLW1fe3GMRaGSSK1Cu72DTlPfq10gfaIrEfoL+i+jO1mMcqEgsr2S6QV
 RJchU/knLRtBtz85KrlUsqLHPuF0RB65IsFlhpn58TwDq1A+eA61BOfPGYCKdC5xRV9QFfFAZS0aT
 cunygnQmQVm/296yppRUwScRoRVs99rUnwmTuWUsvzeWVbKqgbfbPUv8MLUzNLLi9IXqrq/PH35XU
 et7+7NqJA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:49598)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jREdr-0008CC-SK; Wed, 22 Apr 2020 13:38:20 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jREdl-00089l-R0; Wed, 22 Apr 2020 13:38:09 +0100
Date: Wed, 22 Apr 2020 13:38:09 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH v4] ARM: decompressor: simplify libfdt builds
Message-ID: <20200422123809.GO25745@shell.armlinux.org.uk>
References: <20200419191958.208600-1-masahiroy@kernel.org>
 <CAMuHMdXmJ3gfYzubQRbN6Bx0A=p8TodidmoeaZkJVtYjhDcQnw@mail.gmail.com>
 <CAK7LNAQ+3Jgf9sNUju3gTJvvRxUn6bM1r1A6j9HCTNmeOWXFzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNAQ+3Jgf9sNUju3gTJvvRxUn6bM1r1A6j9HCTNmeOWXFzQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_053848_788943_4334E662 
X-CRM114-Status: GOOD (  26.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 09:30:58PM +0900, Masahiro Yamada wrote:
> On Wed, Apr 22, 2020 at 4:44 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> >
> > Hi Yamada-san, Kees, Russell,
> >
> > -CC RMK's patch system
> > +CC lakml
> >
> > On Sun, Apr 19, 2020 at 9:26 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > Copying source files during the build time may not end up with
> > > as clean code as expected.
> > >
> > > lib/fdt*.c simply wrap scripts/dtc/libfdt/fdt*.c, and it works
> > > nicely. Let's follow this approach for the arm decompressor, too.
> > >
> > > Add four wrappers, arch/arm/boot/compressed/fdt*.c and remove
> > > the Makefile messes. Another nice thing is we no longer need to
> > > maintain the own libfdt_env.h because the decompressor can include
> > > <linux/libfdt_env.h>.
> > >
> > > There is a subtle problem when generated files are turned into
> > > check-in files.
> > >
> > > When you are doing a rebuild of an existing object tree with O=
> > > option, there exists stale "shipped" copies that the old Makefile
> > > implementation created. The build system ends up with compiling the
> > > stale generated files because Make searches for prerequisites in the
> > > current directory, i.e. $(objtree) first, and then the directory
> > > listed in VPATH, i.e. $(srctree).
> > >
> > > To mend this issue, I added the following code:
> > >
> > >   ifdef building_out_of_srctree
> > >   $(shell rm -f $(addprefix $(obj)/, fdt_rw.c fdt_ro.c fdt_wip.c fdt.c))
> > >   endif
> > >
> > > This will need to stay for a while because "git bisect" crossing this
> > > commit, otherwise, would result in a build error.
> > >
> > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> >
> > This is now commit 365a6327cd643eed ("ARM: 8968/1: decompressor:
> > simplify libfdt builds") in arm/for-next.
> >
> > In light of reworking "[PATCH v5] ARM: boot: Obtain start of physical
> > memory from DTB"[1] on top of this, which would conditionally add
> > another source file to libfdt_objs, I have a few questions.
> >
> > > --- a/arch/arm/boot/compressed/Makefile
> > > +++ b/arch/arm/boot/compressed/Makefile
> > > @@ -76,29 +76,31 @@ compress-$(CONFIG_KERNEL_LZMA) = lzma
> > >  compress-$(CONFIG_KERNEL_XZ)   = xzkern
> > >  compress-$(CONFIG_KERNEL_LZ4)  = lz4
> > >
> > > -# Borrowed libfdt files for the ATAG compatibility mode
> > > -
> > > -libfdt         := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c
> > > -libfdt_hdrs    := fdt.h libfdt.h libfdt_internal.h
> > > -
> > > -libfdt_objs    := $(addsuffix .o, $(basename $(libfdt)))
> > > +ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
> > > +libfdt_objs = fdt_rw.o fdt_ro.o fdt_wip.o fdt.o atags_to_fdt.o
> > >
> >
> > I guess the code below can be moved out of the ifeq block, as it doesn't
> > really do anything if CONFIG_ARM_ATAG_DTB_COMPAT=n, and $(libfdt_objs)
> > becomes empty?
> > If not, I think I'll have to add a new Kconfig symbol ARM_BOOT_LIBFDT,
> > to be selected by ARM_ATAG_DTB_COMPAT and USE_OF.
> 
> 
> 
> Right. We can narrow the ifeq block.
> I did not know your on-going work.
> 
> 
> If I had known your work adding one more file here,
> I would have written this part as follows:
> 
> 
> ------------------------------>8----------------------------------
> libfdt_objs := fdt_rw.o fdt_ro.o fdt_wip.o fdt.o
> 
> ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
> OBJS += $(libfdt_objs) atags_to_fdt.o
> endif
> 
> # -fstack-protector-strong triggers protection checks in this code,
> # but it is being used too early to link to meaningful stack_chk logic.
> nossp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
> $(foreach o, $(libfdt_objs) atags_to_fdt.o, \
> $(eval CFLAGS_$(o) := -I $(srctree)/scripts/dtc/libfdt $(nossp-flags-y)))
> 
> # These were previously generated C files. When you are building the kernel
> # with O=, make sure to remove the stale files in the output tree. Otherwise,
> # the build system wrongly compiles the stale ones.
> ifdef building_out_of_srctree
> $(shell rm -f $(addprefix $(obj)/, fdt_rw.c fdt_ro.c fdt_wip.c fdt.c))
> endif
> -------------------------------------->8-----------------------------
> 
> 
> 
> 
> So, how shall we move forward?
> 
> Leave the necessary Makefile change to Geert?
> 
> If Geert and Russell want to replace my patch,
> I can send v5 with the code above.

I've no problem with replacing your patch...

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
