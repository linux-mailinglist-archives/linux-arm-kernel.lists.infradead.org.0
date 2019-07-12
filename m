Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC09767579
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 21:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZPxzXSzw8HQSco2mWOL6msKenHpZVtiSRyMv3Mci0a0=; b=FrQEBUVMGp0Gft
	JpT6xNtn4rka1kkwLv1abOAxTd4P9DsRUTayZdHmsyrooJGYxE9Acg6qFnokQqqp0ZOCoOiFPg8vi
	pHNUS2jJ+lPx8U2XjpNC+1Lj95OUkK7oCYeCD+Pg9T/ruHcAcg+33X/WsPH73QOlTv5bnO3RFaWBi
	HtwNKcaHXrgHVAtLPvPH00Nm6DD9XvbXHGTFZznFGZ6rFqeE5lYxSXYdkGMCQ7tzqGsNS/qu1uczu
	JeKtGC7xJ1IH9ztrqg/XHCIP3ISEWGyu4wJTyN4FVXkp50kYdw7P3WZXO8oC/QjfSRyGQq0bPwIUV
	gy6MYAvYLJ0uNiDo0+NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm1Q0-0003ts-Dd; Fri, 12 Jul 2019 19:41:20 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm1PM-0003Y2-Uw
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 19:40:43 +0000
Received: by mail-vs1-xe44.google.com with SMTP id 190so7403308vsf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 12:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eSJHhjnqpxlpjqudgvY+/f+IIowRee5apo91jjc62PU=;
 b=X2Z5Iil0onr4vznRFqN/jgDbMrkzfjbCnWJe3/LQ/5GHlPWnPInBk2+WC4Cs+A/LGS
 Ye1HYvQ0RDiEK/fXAueBcI7kEEahJTlVfsnHlhWowZiQWpytpcEA3v/tDNQR18iV9del
 CMs8A+j1ibeReACBqdZDFEr5xDmmXH/uYO/5egIAakKxeI0briCmkQ8MNtcDdLzzNT6R
 TdbWHR36Wr9Ik/PR9iqt4YpT4iNaypP0Co1ynxFmskhkpxrUIbhED8ybAzJxIkEr+4aL
 0vLxpXsINPA36mh4DykdzKwfBczD1F5I1DpuDWPb3FuoPJ1lWfOA/pF+zxjGfE+gtB1l
 EDpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eSJHhjnqpxlpjqudgvY+/f+IIowRee5apo91jjc62PU=;
 b=itOq1ecf6Q041XJcxfEOxoqxbr+isjFHZb90VoUh2r0g8DJzWYex5K7xoZVM+/2zCP
 mltugv2c2C/OLoTx1TP+qbhhDkR0/BllAjgNb1WOHkIziH2umC2anXo99X8m0dRcUAwJ
 /Pa0q/zaCSiJLaD0MCiNH+i8SBvKUXzXtMRj5HiVh1CKVb9PcbdFyXda8mAJqdw9JDTE
 haZhE+fp0vQQfiiR+rUoBiHHcNGUXKf8R5O9IhFE8WNYUAph99zJZXY9++EsN5yz1oSc
 rXXJ7zqanxEVLkevWSwf26lxBNY7K1jy4ob9pqQPcAQeQrhEwOgkGnfj8jaR860XcYku
 n+5A==
X-Gm-Message-State: APjAAAUvxFuxzNA8KUobwNIj0DkmCr9UzAdNU5xuR/Zm9j7wu24w9/Zi
 +42IAbI1bfgc+mPT5Btc1GUwrsVLezg2d3kpvWQb5w==
X-Google-Smtp-Source: APXvYqwTDmxvBZ2ijMcIxu+NfLdqr1LxksZK9xDvOAzLnJSKpRhYpqS7Vp4f6gGigzP6rnz6WwKlUNQPs5mMsAW03qo=
X-Received: by 2002:a67:fd88:: with SMTP id k8mr9378882vsq.41.1562960438352;
 Fri, 12 Jul 2019 12:40:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190705080231.123522-1-pcc@google.com>
 <CAKwvOd=z4CTN9g7noKJxwF8Y4rp6knynxmkX+yEFF6dwCCj3ew@mail.gmail.com>
In-Reply-To: <CAKwvOd=z4CTN9g7noKJxwF8Y4rp6knynxmkX+yEFF6dwCCj3ew@mail.gmail.com>
From: Peter Collingbourne <pcc@google.com>
Date: Fri, 12 Jul 2019 12:40:26 -0700
Message-ID: <CAMn1gO62MDvm3HRQjOvrcb4MkQtyX+HGC8CGe5K30+KiKHwc1w@mail.gmail.com>
Subject: Re: [PATCH] arm64: Add support for relocating the kernel with RELR
 relocations
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_124041_212509_A611C4CC 
X-CRM114-Status: GOOD (  28.34  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Jordan Rupprecht <rupprecht@google.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 4:14 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Jul 5, 2019 at 1:03 AM 'Peter Collingbourne' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > RELR is a relocation packing format for relative relocations.
> > The format is described in a generic-abi proposal:
> > https://groups.google.com/d/topic/generic-abi/bX460iggiKg/discussion
> >
> > The LLD linker can be instructed to pack relocations in the RELR
> > format by passing the flag --pack-dyn-relocs=relr.
> >
> > This patch adds a new config option, CONFIG_RELR. Enabling this option
> > instructs the linker to pack vmlinux's relative relocations in the RELR
> > format, and causes the kernel to apply the relocations at startup along
> > with the RELA relocations. RELA relocations still need to be applied
> > because the linker will emit RELA relative relocations if they are
> > unrepresentable in the RELR format (i.e. address not a multiple of 2).
> >
> > Enabling CONFIG_RELR reduces the size of a defconfig kernel image
> > with CONFIG_RANDOMIZE_BASE by 3.5MB/16% uncompressed, or 550KB/5%
> > compressed (lz4).
> >
> > Signed-off-by: Peter Collingbourne <pcc@google.com>
>
> Tested with:
> ToT llvm r365583
> mainline linux commit 5ad18b2e60b7
>
> pre-patch application:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang LD=ld.lld
> NM=llvm-nm OBJCOPY=llvm-objcopy -j71 defconfig
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang LD=ld.lld
> NM=llvm-nm OBJCOPY=llvm-objcopy -j71
> $ du -h vmlinux
> 227M vmlinux
> $ du -h arch/arm64/boot/Image
> 25M arch/arm64/boot/Image
> $ du -h arch/arm64/boot/Image.gz
> 9.0M arch/arm64/boot/Image.gz
> $ find . -name \*.ko | xargs du -ch | tail -n 1
> 437M total
> $ qemu-system-aarch64 -kernel arch/arm64/boot/Image.gz -machine virt
> -cpu cortex-a57 -nographic --append "console=ttyAMA0 root=/dev/ram0"
> -m 2048 -initrd /android1/buildroot/output/images/rootfs.cpio
> ...
> # cat /proc/version
> Linux version 5.2.0-00915-g5ad18b2e60b7
> (ndesaulniers@ndesaulniers1.mtv.corp.google.com) (clang version 9.0.0
> (https://github.com/llvm/llvm-project.git
> b1843e130ad9c4269ece5d08718b33566a41d919)) #66 SMP PREEMPT Tue Jul 9
> 16:50:18 PDT 2019
> (qemu) q
>
> post-patch application:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang LD=ld.lld
> NM=llvm-nm OBJCOPY=llvm-objcopy -j71 clean
> $ git am /tmp/relr.eml
> Applying: arm64: Add support for relocating the kernel with RELR relocations
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang LD=ld.lld
> NM=llvm-nm OBJCOPY=llvm-objcopy -j71
> ...
> Use RELR relocation packing (RELR) [N/y/?] (NEW) y
> ...
> $ du -h vmlinux
> 224M vmlinux
> $ du -h arch/arm64/boot/Image
> 21M arch/arm64/boot/Image
> $ du -h arch/arm64/boot/Image.gz
> 8.7M arch/arm64/boot/Image.gz
> $ find . -name \*.ko | xargs du -ch | tail -n 1
> 424M total
> $ qemu-system-aarch64 -kernel arch/arm64/boot/Image.gz -machine virt
> -cpu cortex-a57 -nographic --append "console=ttyAMA0 root=/dev/ram0"
> -m 2048 -initrd /android1/buildroot/output/images/rootfs.cpio
> ...
> # cat /proc/version
> Linux version 5.2.0-00916-g3798f5948201
> (ndesaulniers@ndesaulniers1.mtv.corp.google.com) (clang version 9.0.0
> (https://github.com/llvm/llvm-project.git
> b1843e130ad9c4269ece5d08718b33566a41d919)) #67 SMP PREEMPT Wed Jul 10
> 09:37:10 PDT 2019
> (qemu) q
>
> So for an arm64 defconfig, looks like roughly 1.32% savings on vmlinux
> size, 16% savings on Image size, 3.33% savings on compressed image
> size (when gzipping), and 2.97% savings in loadable kernel module
> size. (this is off the rounded value from `du -h` which isn't very
> precise).
>
> Moving on to an actual device kernel (we plan on shipping a device
> with an LLD linked kernel soon):
>
> pre-patch application:
> $ du -h vmlinux
> 361M vmlinux
> $ du -h arch/arm64/boot/Image
> 44M arch/arm64/boot/Image
> $ du -h arch/arm64/boot/Image.lz4
> 20M arch/arm64/boot/Image.lz4
> $ find . -name \*.ko | xargs du -ch | tail -n 1
> 37M total
>
> post patch application:
> $ du -h vmlinux
> 359M vmlinux
> $ du -h arch/arm64/boot/Image
> 42M arch/arm64/boot/Image
> $ du -h arch/arm64/boot/Image.lz4
> 19M arch/arm64/boot/Image.lz4
> $ find . -name \*.ko | xargs du -ch | tail -n 1
> 37M total
>
> 0.55% savings on vmlinux, 4.5% savings on Image, 5% savings on
> compressed Image w/ LZ4 compression, no or very small savings on
> kernel modules.  For kernel modules, this could be because of my
> rounding with `du -h` or a bug in our kernel version scripts not
> applying these relocations to kernel modules.

Kernel modules are linked separately from the kernel itself, and are
linked as relocatable object files rather than shared objects. The
linker does not support RELR packing for object files, and it's not
really clear whether that's feasible because virtual addresses are not
fixed within object files. So there should be no effect on kernel
modules. (I'm not sure how to explain your observed 2.97% savings
above, then.) If we did switch kernel modules over to being linked as
shared objects, that would allow for RELR relocations in the modules.

> What should I grep for the relocation type in an ELF object to verify
> that RELR relocations exist?
> $ llvm-objdump -r *.ko| grep RELR
> ?

That's expected as mentioned above.

> $ llvm-readelf -S vmlinux } grep relr
> <doesn't show anything>

Assuming that you mean s/}/|/, that's correct. I get:

$ ~/l/ra/bin/llvm-readelf -S vmlinux | grep relr
  [33] .relr.dyn         RELR            ffff0000113ddd98 135dd98
00fb08 08   A  0   0  8

Are you sure that you were looking at the right file?

> I'd have assumed by your patches change to the linker script a section
> called .relr.dyn to be listed.
> Are the tools not interpreting the section name and need to be fixed,
> or is your change to the linker script not necessary?
> Maybe both of those tools need to be updated to know about such a new
> relocation type?
> + Jordan for heads up.
>
> Either way, I've confirmed the claimed 16% reduction in image size for
> the defconfig, and 5% savings in compressed images size w/ LZ4.
>
> Finally, I confirmed that this patch boots on a device.  I had to
> backport https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git/commit/?id=e9e08a07385e08f1a7f85c5d1e345c21c9564963
> for llvm-objcopy support.
>
> Then I ran 30 boot time measurements with 60s wait intervals in
> between test runs:
> prepatch:
> mean: 3049ms
> median: 3281ms
> stddev: 330ms
>
> postpatch:
> mean: 3091ms
> median: 3260ms
> stddev: 290ms
>
> While decompressing the kernel image quickly depends on its size, I
> assume processing these types of relocations and the volume of them
> takes longer?

It depends. On the one hand there will be fewer cache misses coming
from the relocation section, but on the other there will be more
misses coming from the relocated data because we now need to load from
it and it probably won't be as compact as the relocation section. I
would expect the overall effect to be an improvement though due to
less time spent decompressing.

I generally look at the median when taking performance measurements
rather than the mean as this ignores outliers, and your median figures
do seem to show an improvement. In my own boot time measurements I
observed a 100 run median boot time decrease of around 10ms, although
this was on qemu and not real hardware.

> Finally, I boot tested mainline with CONFIG_RANDOMIZE_BASE disabled
> and this patch applied (it worked).
>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks.


Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
