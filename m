Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE971B3985
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 09:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKCCQZvbnhEw+j7TpiSDUF3/jxFCeRKVRuPEpDr7wFk=; b=hAF3fLzBwG3lej
	eE46UbdxOmN3EBXepgho30aTKtGGHL6b6ThHXvL3gL9o936sMOr0dS5yFpBJ8NzbH4U6d6pHTLdru
	JSH5521FcLWFvRtVTpvJiXkYs6bF9TijB11TwFoFxGtVj+L2XJbrCzVTDlMM4I9FPoDIqHZzp/Iha
	KPXhYbQZkboANtZ3XjLr1vhDLnFHBu8JT3ZiOsv/wQQMF7OdpG6H4tY/USvg1oH0GIQCLqGUdM72F
	UCPOoXbreq3jF1defHEWaGz7k1M270M8auyPw72CrT+8y0S5cj8Vz+gFovhRGFsQgjKK2a6aQ3wt0
	pVlWmBdFOEgOToJNzdCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRAHt-0007Hm-P1; Wed, 22 Apr 2020 07:59:17 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRAHi-0007Fr-AE
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 07:59:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y8zwg/4nYCbTWpF0JCDU3rnEy9NBEw0BuwpBupWprWA=; b=PuUhW6L30ovlK0ErliYvZNjvE
 pmENsbjXK4bGEascDh/yz5T/4KfMUs3bzS5LVIOKqCkdNAJvN5JlffNTUX/PnZszHT4wyaByLW5MW
 YeJkVlGAftAguunBzmeal1yit+Oifw7Pb+ntH3JZ2oU/zS1M1FrIn5RDMtQcz8GCmrFZOW/25OHnD
 LuJ4CuTTIrD9K2zHAXL0Gs5na12PDkZa4fi+6qH7vVt56cT5GdgN3ErdGzIJ0rSIjzXqtKPGpbepw
 x0lO+PCJVGxnqaAB4p7Gp+4Fe9BAJlMB0TrAE2iF4L7/OakxIiPKg7V63N4O/Flxrv1N2GFQeU/Jy
 YtZb/+3hQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:42000)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jRAHX-0006mq-VF; Wed, 22 Apr 2020 08:58:56 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jRAHW-0007ya-6v; Wed, 22 Apr 2020 08:58:54 +0100
Date: Wed, 22 Apr 2020 08:58:54 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v4] ARM: decompressor: simplify libfdt builds
Message-ID: <20200422075854.GK25745@shell.armlinux.org.uk>
References: <20200419191958.208600-1-masahiroy@kernel.org>
 <CAMuHMdXmJ3gfYzubQRbN6Bx0A=p8TodidmoeaZkJVtYjhDcQnw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXmJ3gfYzubQRbN6Bx0A=p8TodidmoeaZkJVtYjhDcQnw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_005906_363771_5AD77D05 
X-CRM114-Status: GOOD (  24.26  )
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Kees Cook <keescook@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 09:44:38AM +0200, Geert Uytterhoeven wrote:
> Hi Yamada-san, Kees, Russell,
> 
> -CC RMK's patch system
> +CC lakml
> 
> On Sun, Apr 19, 2020 at 9:26 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > Copying source files during the build time may not end up with
> > as clean code as expected.
> >
> > lib/fdt*.c simply wrap scripts/dtc/libfdt/fdt*.c, and it works
> > nicely. Let's follow this approach for the arm decompressor, too.
> >
> > Add four wrappers, arch/arm/boot/compressed/fdt*.c and remove
> > the Makefile messes. Another nice thing is we no longer need to
> > maintain the own libfdt_env.h because the decompressor can include
> > <linux/libfdt_env.h>.
> >
> > There is a subtle problem when generated files are turned into
> > check-in files.
> >
> > When you are doing a rebuild of an existing object tree with O=
> > option, there exists stale "shipped" copies that the old Makefile
> > implementation created. The build system ends up with compiling the
> > stale generated files because Make searches for prerequisites in the
> > current directory, i.e. $(objtree) first, and then the directory
> > listed in VPATH, i.e. $(srctree).
> >
> > To mend this issue, I added the following code:
> >
> >   ifdef building_out_of_srctree
> >   $(shell rm -f $(addprefix $(obj)/, fdt_rw.c fdt_ro.c fdt_wip.c fdt.c))
> >   endif
> >
> > This will need to stay for a while because "git bisect" crossing this
> > commit, otherwise, would result in a build error.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> 
> This is now commit 365a6327cd643eed ("ARM: 8968/1: decompressor:
> simplify libfdt builds") in arm/for-next.
> 
> In light of reworking "[PATCH v5] ARM: boot: Obtain start of physical
> memory from DTB"[1] on top of this, which would conditionally add
> another source file to libfdt_objs, I have a few questions.
> 
> > --- a/arch/arm/boot/compressed/Makefile
> > +++ b/arch/arm/boot/compressed/Makefile
> > @@ -76,29 +76,31 @@ compress-$(CONFIG_KERNEL_LZMA) = lzma
> >  compress-$(CONFIG_KERNEL_XZ)   = xzkern
> >  compress-$(CONFIG_KERNEL_LZ4)  = lz4
> >
> > -# Borrowed libfdt files for the ATAG compatibility mode
> > -
> > -libfdt         := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c
> > -libfdt_hdrs    := fdt.h libfdt.h libfdt_internal.h
> > -
> > -libfdt_objs    := $(addsuffix .o, $(basename $(libfdt)))
> > +ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
> > +libfdt_objs = fdt_rw.o fdt_ro.o fdt_wip.o fdt.o atags_to_fdt.o
> >
> 
> I guess the code below can be moved out of the ifeq block, as it doesn't
> really do anything if CONFIG_ARM_ATAG_DTB_COMPAT=n, and $(libfdt_objs)
> becomes empty?
> If not, I think I'll have to add a new Kconfig symbol ARM_BOOT_LIBFDT,
> to be selected by ARM_ATAG_DTB_COMPAT and USE_OF.
> 
> > -$(addprefix $(obj)/,$(libfdt) $(libfdt_hdrs)): $(obj)/%: $(srctree)/scripts/dtc/libfdt/%
> > -       $(call cmd,shipped)
> > +OBJS   += $(libfdt_objs)
> >
> > -$(addprefix $(obj)/,$(libfdt_objs) atags_to_fdt.o): \
> > -       $(addprefix $(obj)/,$(libfdt_hdrs))
> > +# -fstack-protector-strong triggers protection checks in this code,
> > +# but it is being used too early to link to meaningful stack_chk logic.
> > +nossp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
> > +$(foreach o, $(libfdt_objs), \
> > +       $(eval CFLAGS_$(o) := -I $(srctree)/scripts/dtc/libfdt $(nossp-flags-y)))
> 
> Is there a real reason this is only applied to a subset of the C object
> files, and not to all of them? Or have we been lucky so far, by not
> triggering the issue in decompressed.c, misc.c, and string.c (yet)?

I don't remember the details. See commit 7f66cd3f5420, which came from
Kees which introduced this.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
