Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98E564F22
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 01:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DjRwJi4rZ1+vs1A1K043hIrc58gFh3jbs6vUipblO9o=; b=ND5GtcRpN3IsQE
	8PcWGOId3bm9iKTguZ6oL1NWHAMGkc1D3Z+9PjCnXKLrt+dulf8OEoxmeS1/WySf068SS/7Wa3kIa
	dKpV1ifd6H8k7ZvAjJmHqXp7BwS2m1ztrP5Z+H8NwgqZHeIFokB/Y6IyVvYjzU5DgCZLN9rQfrQqF
	ocADCO7rX0hvIjMrUp7o4I0oZgZpnHR7zM9H64dnGAQTF7QeJXPyNnwfitFZRGo4AJODsrLcgjoh7
	a6N8Ub5lYN5OZqKjTQ1lRag6j6CpBJAXp7AzSe4crghxCgeKglGWGKRqaPW152daFr7BXorNIxXxQ
	NIaUIvk08XyqOjWuiRBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlLnJ-0003Yl-At; Wed, 10 Jul 2019 23:14:37 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlLmz-0003YL-02
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 23:14:18 +0000
Received: by mail-pf1-x443.google.com with SMTP id c73so1781279pfb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 16:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a0p78zfQtjvJ1wF9CI2kxfV/rizr8mz4VHJbrq5kTXI=;
 b=Z4afU9NpR/Pq3NNfpP2I3waBswgwVswI5yPPZvXZfOPqJwmA+BYnJxq85Qm0o1cvJ2
 YncnTJOmseS+x+9nr88TRHtZcykdgY0rLde/5j4t4Uu/DgKDZ2y80imMT50nT3plJ3yq
 OXe0oX/JPPnz+DG+lPT8SWxolXCQBpFzlqpR1VHXOSLuEQiQSlgnx0XRPv4OX5UPUkIu
 DfEYL02fNv+TMaKUkC2nbhUdqzLcD0mxMAWTiSpSgBcBlVWigibD1YB3SDDrbvndMA2u
 lP/asfHItGVbBBBhHBAY3Df/C0s1EwKprQAdJ2R45DXhTc8+Rv8d7MIUKFXrI8BX6nG4
 2Z3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a0p78zfQtjvJ1wF9CI2kxfV/rizr8mz4VHJbrq5kTXI=;
 b=O3HWTIiT8h/law7tTha7UFm+1Zhg1qpnJ/SPhAsWNndoNYK7/MA0974uzkDAwBio74
 bFXBr2Rr0fIE0fBKZOX3vPNYsrMtGuWLprQWmnNOdeeVu2iMGzU2br82XxmBHMR1qVKZ
 UM7zoIKqLPS6fDIOs0+xhtQ17yn18KrHWJsi9DOx3jpoaUj7jquFgFqNsgzl8rQNUA9Y
 MlVRywxEhhZDelMFGBjxpOzlu2T142CkE734kv+zqadZLnm4hvGdhK35YAH5fuc7mpxQ
 YLsvFf9l4R2JXD+spIJJr9wP1HE+tSR2UYAKGLc1OD/TOq8aceiXwkTrjhIHKPDyUmzI
 dD5Q==
X-Gm-Message-State: APjAAAVIxhXBYreAGhOjx8fsK2U0EbeT1zc/oqA87iY4mlBvbaXzgZxV
 S5pD8a1/HO0UOR3MLmSP3nowAGScYG/YlJ8Y05k1kg==
X-Google-Smtp-Source: APXvYqyCChS1AVQpee8vXHkXCPkgMsVN6E29Hl9y+RoMb7Bjbd7EEa3m2FtFhTmHMe29nAjH0hZQlNepkxJAmiWVLMk=
X-Received: by 2002:a63:52:: with SMTP id 79mr794264pga.381.1562800452174;
 Wed, 10 Jul 2019 16:14:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190705080231.123522-1-pcc@google.com>
In-Reply-To: <20190705080231.123522-1-pcc@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 10 Jul 2019 16:14:00 -0700
Message-ID: <CAKwvOd=z4CTN9g7noKJxwF8Y4rp6knynxmkX+yEFF6dwCCj3ew@mail.gmail.com>
Subject: Re: [PATCH] arm64: Add support for relocating the kernel with RELR
 relocations
To: Peter Collingbourne <pcc@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_161417_065542_A64F8059 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -14.4 (--------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-14.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

On Fri, Jul 5, 2019 at 1:03 AM 'Peter Collingbourne' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> RELR is a relocation packing format for relative relocations.
> The format is described in a generic-abi proposal:
> https://groups.google.com/d/topic/generic-abi/bX460iggiKg/discussion
>
> The LLD linker can be instructed to pack relocations in the RELR
> format by passing the flag --pack-dyn-relocs=relr.
>
> This patch adds a new config option, CONFIG_RELR. Enabling this option
> instructs the linker to pack vmlinux's relative relocations in the RELR
> format, and causes the kernel to apply the relocations at startup along
> with the RELA relocations. RELA relocations still need to be applied
> because the linker will emit RELA relative relocations if they are
> unrepresentable in the RELR format (i.e. address not a multiple of 2).
>
> Enabling CONFIG_RELR reduces the size of a defconfig kernel image
> with CONFIG_RANDOMIZE_BASE by 3.5MB/16% uncompressed, or 550KB/5%
> compressed (lz4).
>
> Signed-off-by: Peter Collingbourne <pcc@google.com>

Tested with:
ToT llvm r365583
mainline linux commit 5ad18b2e60b7

pre-patch application:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang LD=ld.lld
NM=llvm-nm OBJCOPY=llvm-objcopy -j71 defconfig
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang LD=ld.lld
NM=llvm-nm OBJCOPY=llvm-objcopy -j71
$ du -h vmlinux
227M vmlinux
$ du -h arch/arm64/boot/Image
25M arch/arm64/boot/Image
$ du -h arch/arm64/boot/Image.gz
9.0M arch/arm64/boot/Image.gz
$ find . -name \*.ko | xargs du -ch | tail -n 1
437M total
$ qemu-system-aarch64 -kernel arch/arm64/boot/Image.gz -machine virt
-cpu cortex-a57 -nographic --append "console=ttyAMA0 root=/dev/ram0"
-m 2048 -initrd /android1/buildroot/output/images/rootfs.cpio
...
# cat /proc/version
Linux version 5.2.0-00915-g5ad18b2e60b7
(ndesaulniers@ndesaulniers1.mtv.corp.google.com) (clang version 9.0.0
(https://github.com/llvm/llvm-project.git
b1843e130ad9c4269ece5d08718b33566a41d919)) #66 SMP PREEMPT Tue Jul 9
16:50:18 PDT 2019
(qemu) q

post-patch application:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang LD=ld.lld
NM=llvm-nm OBJCOPY=llvm-objcopy -j71 clean
$ git am /tmp/relr.eml
Applying: arm64: Add support for relocating the kernel with RELR relocations
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang LD=ld.lld
NM=llvm-nm OBJCOPY=llvm-objcopy -j71
...
Use RELR relocation packing (RELR) [N/y/?] (NEW) y
...
$ du -h vmlinux
224M vmlinux
$ du -h arch/arm64/boot/Image
21M arch/arm64/boot/Image
$ du -h arch/arm64/boot/Image.gz
8.7M arch/arm64/boot/Image.gz
$ find . -name \*.ko | xargs du -ch | tail -n 1
424M total
$ qemu-system-aarch64 -kernel arch/arm64/boot/Image.gz -machine virt
-cpu cortex-a57 -nographic --append "console=ttyAMA0 root=/dev/ram0"
-m 2048 -initrd /android1/buildroot/output/images/rootfs.cpio
...
# cat /proc/version
Linux version 5.2.0-00916-g3798f5948201
(ndesaulniers@ndesaulniers1.mtv.corp.google.com) (clang version 9.0.0
(https://github.com/llvm/llvm-project.git
b1843e130ad9c4269ece5d08718b33566a41d919)) #67 SMP PREEMPT Wed Jul 10
09:37:10 PDT 2019
(qemu) q

So for an arm64 defconfig, looks like roughly 1.32% savings on vmlinux
size, 16% savings on Image size, 3.33% savings on compressed image
size (when gzipping), and 2.97% savings in loadable kernel module
size. (this is off the rounded value from `du -h` which isn't very
precise).

Moving on to an actual device kernel (we plan on shipping a device
with an LLD linked kernel soon):

pre-patch application:
$ du -h vmlinux
361M vmlinux
$ du -h arch/arm64/boot/Image
44M arch/arm64/boot/Image
$ du -h arch/arm64/boot/Image.lz4
20M arch/arm64/boot/Image.lz4
$ find . -name \*.ko | xargs du -ch | tail -n 1
37M total

post patch application:
$ du -h vmlinux
359M vmlinux
$ du -h arch/arm64/boot/Image
42M arch/arm64/boot/Image
$ du -h arch/arm64/boot/Image.lz4
19M arch/arm64/boot/Image.lz4
$ find . -name \*.ko | xargs du -ch | tail -n 1
37M total

0.55% savings on vmlinux, 4.5% savings on Image, 5% savings on
compressed Image w/ LZ4 compression, no or very small savings on
kernel modules.  For kernel modules, this could be because of my
rounding with `du -h` or a bug in our kernel version scripts not
applying these relocations to kernel modules.

What should I grep for the relocation type in an ELF object to verify
that RELR relocations exist?
$ llvm-objdump -r *.ko| grep RELR
?
$ llvm-readelf -S vmlinux } grep relr
<doesn't show anything>
I'd have assumed by your patches change to the linker script a section
called .relr.dyn to be listed.
Are the tools not interpreting the section name and need to be fixed,
or is your change to the linker script not necessary?
Maybe both of those tools need to be updated to know about such a new
relocation type?
+ Jordan for heads up.

Either way, I've confirmed the claimed 16% reduction in image size for
the defconfig, and 5% savings in compressed images size w/ LZ4.

Finally, I confirmed that this patch boots on a device.  I had to
backport https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git/commit/?id=e9e08a07385e08f1a7f85c5d1e345c21c9564963
for llvm-objcopy support.

Then I ran 30 boot time measurements with 60s wait intervals in
between test runs:
prepatch:
mean: 3049ms
median: 3281ms
stddev: 330ms

postpatch:
mean: 3091ms
median: 3260ms
stddev: 290ms

While decompressing the kernel image quickly depends on its size, I
assume processing these types of relocations and the volume of them
takes longer?

Finally, I boot tested mainline with CONFIG_RANDOMIZE_BASE disabled
and this patch applied (it worked).

Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
