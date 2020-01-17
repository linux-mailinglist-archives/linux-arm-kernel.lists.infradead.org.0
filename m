Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E9D1413F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 23:16:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQmumC7c0CeFW3Gz88Ppr4sRNhr3OYhoPtq1qIrDkeo=; b=J2hzMxiAxNsSob
	4HUOYcF0D6i7BvGRbNeBLGCvpIR9B39I0GEuSERBXHTZfBFhnweb/3H1gK8cIb5DUL8NXJ+cMxS8r
	5H+3zlm6IcTSQX1VEZ2JD1CngUT1qzQBU6JnHsH7wOhBFLKtmn4kF2oieHBsJHllVhEgUD4K1P6LI
	hpiPorJKpwtfflV6jXDnoLV4+f4dJCRrpJxlqimVV8DuhzfDWys6opTUPDnJb2CSb2isZ6ShmA0y8
	g+EjtwFp9cKMUG+Ue3Pdu1Z8xZU2f34mF1wWcbbECDD966iazTD8JVugY+bocM8OHBsBAqJwHWHIZ
	iV9UCu37Qzn8JOYlsOcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isZuC-0001iP-Gr; Fri, 17 Jan 2020 22:15:52 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isZu2-0001gj-Dq
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 22:15:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eGbeLShYBFze0BFyl9HvFPBcRsq2hFH3v1vnvbZGBS8=; b=HrGcXzA+vGtQr7pTY354ehCLR
 mDJ0CUxFNz2mlYmqQkpBFfcND+lFVBjsU3+24ZEyE4H3cl1PPCap0CQGVWnk3qM6R0+taJtygGo4G
 sRZLqGryrqJCh+sDbR84k2HnTsgVeddnR9vX1mUSo0CoEAHtUybT56ujKYxJrv3/AGTXF5HJxKi0N
 7vsi1JUtjWwod2UY3CMFaRfalAsDprBGoKkGfP0DtvZ7i3FjvMDPhjCOATIPqya4yHee9OQP+hnmH
 HvioeyhrlXniSlX7wC2FdzIkh/tNGO4De451s3RUievbiZpywCOheAicyp+brbD3sBOJjE6UxhFCm
 9hymS0nbg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:56288)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1isZtu-0007Mw-UI; Fri, 17 Jan 2020 22:15:35 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1isZtu-0000Ep-A5; Fri, 17 Jan 2020 22:15:34 +0000
Date: Fri, 17 Jan 2020 22:15:34 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH] ARM: decompressor: simplify libfdt builds
Message-ID: <20200117221534.GR25745@shell.armlinux.org.uk>
References: <20191204044950.10418-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204044950.10418-1-masahiroy@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_141542_608195_0DDF4EA9 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 01:49:50PM +0900, Masahiro Yamada wrote:
> Copying source files during the build time may not end up with
> as clean code as expected.
> 
> lib/fdt*.c simply wrap scripts/dtc/libfdt/fdt*.c, and it works
> nicely. Let's follow that approach for the arm decompressor, too.
> 
> Add four wrappers, arch/arm/boot/compressed/fdt*.c and remove
> the Makefile messes. Another nice thing is we no longer need to
> maintain the own libfdt_env.h because the decompressor can include
> <linux/libfdt_env.h>.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
> KernelVersion: v5.5-rc1
> 
> 
>  arch/arm/boot/compressed/.gitignore     |  9 -------
>  arch/arm/boot/compressed/Makefile       | 33 +++++++------------------
>  arch/arm/boot/compressed/atags_to_fdt.c |  1 +
>  arch/arm/boot/compressed/fdt.c          |  1 +
>  arch/arm/boot/compressed/fdt_ro.c       |  1 +
>  arch/arm/boot/compressed/fdt_rw.c       |  1 +
>  arch/arm/boot/compressed/fdt_wip.c      |  1 +
>  arch/arm/boot/compressed/libfdt_env.h   | 24 ------------------
>  8 files changed, 14 insertions(+), 57 deletions(-)
>  create mode 100644 arch/arm/boot/compressed/fdt.c
>  create mode 100644 arch/arm/boot/compressed/fdt_ro.c
>  create mode 100644 arch/arm/boot/compressed/fdt_rw.c
>  create mode 100644 arch/arm/boot/compressed/fdt_wip.c
>  delete mode 100644 arch/arm/boot/compressed/libfdt_env.h
> 
> diff --git a/arch/arm/boot/compressed/.gitignore b/arch/arm/boot/compressed/.gitignore
> index 86b2f5d28240..2fdb4885846b 100644
> --- a/arch/arm/boot/compressed/.gitignore
> +++ b/arch/arm/boot/compressed/.gitignore
> @@ -6,12 +6,3 @@ hyp-stub.S
>  piggy_data
>  vmlinux
>  vmlinux.lds
> -
> -# borrowed libfdt files
> -fdt.c
> -fdt.h
> -fdt_ro.c
> -fdt_rw.c
> -fdt_wip.c
> -libfdt.h
> -libfdt_internal.h
> diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
> index da599c3a1193..d01ce71afac6 100644
> --- a/arch/arm/boot/compressed/Makefile
> +++ b/arch/arm/boot/compressed/Makefile
> @@ -76,29 +76,23 @@ compress-$(CONFIG_KERNEL_LZMA) = lzma
>  compress-$(CONFIG_KERNEL_XZ)   = xzkern
>  compress-$(CONFIG_KERNEL_LZ4)  = lz4
>  
> -# Borrowed libfdt files for the ATAG compatibility mode
> -
> -libfdt		:= fdt_rw.c fdt_ro.c fdt_wip.c fdt.c
> -libfdt_hdrs	:= fdt.h libfdt.h libfdt_internal.h
> -
> -libfdt_objs	:= $(addsuffix .o, $(basename $(libfdt)))
> -
> -$(addprefix $(obj)/,$(libfdt) $(libfdt_hdrs)): $(obj)/%: $(srctree)/scripts/dtc/libfdt/%
> -	$(call cmd,shipped)
> +ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
> +libfdt_objs = fdt_rw.o fdt_ro.o fdt_wip.o fdt.o atags_to_fdt.o
>  
> -$(addprefix $(obj)/,$(libfdt_objs) atags_to_fdt.o): \
> -	$(addprefix $(obj)/,$(libfdt_hdrs))
> +OBJS	+= $(libfdt_objs)
>  
> -ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
> -OBJS	+= $(libfdt_objs) atags_to_fdt.o
> +# -fstack-protector-strong triggers protection checks in this code,
> +# but it is being used too early to link to meaningful stack_chk logic.
> +nossp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
> +$(foreach o, $(libfdt_objs), \
> +	$(eval CFLAGS_$(o) := -I $(srctree)/scripts/dtc/libfdt) $(nossp-flags-y))

The above change causes build breakage over a number of ARM builds,
which unfortunately doesn't result in emails from any build system
containing the cause of the failure.

See
https://kernelci.org/build/rmk/branch/for-next/kernel/v5.5-rc1-12-g9a6545e2fc83/

where the failures are reported as:

../arch/arm/boot/compressed/Makefile:87: *** missing separator. Stop.

Thanks.  Patch dropped.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
