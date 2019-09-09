Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3D5ADEBA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:18:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SyDENuuY8qSrUfC7mp3pwlUMJBhLd28QvSK01Ea/h/Y=; b=fYT
	Ne5eNxOkEhFpAzLFsWjikSPsLWFEQcg9OSUhT0l1CFO7oiM2CR7qCOI2ZWtzL0dCG8cCxIZd3WS/u
	l8a3wEh018Y4FrZVuRHOiUUpN9qwEouA9qx17EgHRyakeD7bIQM0Oq5kGj6F2+YgKH41/4tmhmppz
	DpzXb5CqwAu/RcWwcNU1ELAeBFzyYu9rPdWJsXLnPyBLsAbolA4igG55QhDM+Yuo3bdqIGjX1qPkm
	8D2FHW6IjNFPe7XbJXFHebPbThaBCO9OmA7rDLXvXxC7WBOHZqY1ydJ6Nj3+8iXO3OeB5/WbG4UbD
	Q6eN8oz236flP2XvMtH2uUdjbpxlW9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OF7-00074l-2K; Mon, 09 Sep 2019 18:18:25 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7OCx-0004yW-IA
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:16:13 +0000
Received: by mail-io1-xd43.google.com with SMTP id f12so30893122iog.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=PSMQMbxitE7iZMZIdTcxyMk16rdIPq1y8jl6zYsbyBs=;
 b=f+iA0FHNHVvHJ5PbFfzUO7vN6C76lcTg1zlu/eSOlzEh/76FS5ezQGGY+F7Gw/NCU4
 ubFIOOkwjzmvEDWnsQTVB+ODplqB6/EFlFBhdEznXcaazJEwnKVL6h6nD+2N5EoctwnJ
 g89pmYNiRfibuGka9ytJPiyLBepuxk5YFpH52EGOIqgybABllwng6PXp54nbbJHb0pRz
 qMVCOVy2tXlTNfjahhJW4Ip5t2YDwEta6xEd8CcNJgUD9LhZXGBriMkGfcZCRzArV272
 nj714ebMerjh2Skf5wy5n0j+gXYW3OJYhyNfCP2ZYRXT2Ul0ZvnKlwk4GcEyGtfF2fpl
 5KFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=PSMQMbxitE7iZMZIdTcxyMk16rdIPq1y8jl6zYsbyBs=;
 b=NwLe9MbMr+YxIf40PiyfMwrGqiUPGMuY9iERyXruZ3+Qtep5tNIYHmFuy810Yh706U
 7jyDajiU3YaLoFc37rFF2fbBNYBYvXKNwpWylm+nODXVznwvxXa1XAzqjJTT6skM3gsv
 6q92fs9HhRMtUUt/3M8tN3kTUpkk9yvl8oxit3rC14eVYJOzidHazrcR6PRukVXmdIxn
 AkoBZr6xFQAtSbR5xvrw/M3j38rtJTwVj0HBd0v7aGg0ms7LdXTioFQt/KAw8H6EKmKi
 AxyDANN+jx9S6HrZtLJmEf5xHd/Lxqau0FWUWCkN38zzk4hfWFCb5fzSimfc0y/NXS9J
 zh2A==
X-Gm-Message-State: APjAAAVHa90TQyyd6tF539aS/4iQT4pj9IHZw9yi43NG7AIBFQEi/jkH
 6o+4bAm8ME3mqD3CPTqOm0xYdvtw5vYna1eCblS2Lej0
X-Google-Smtp-Source: APXvYqw+RA07UIRct+K1DLcYi8PFVMnPfWZ6i/5dz23P1TBIZekrvxgewkGPWcFphxpOP/emkwy5Iz8Iyn+f4ubLG20=
X-Received: by 2002:a02:a909:: with SMTP id n9mr26574628jam.57.1568052970014; 
 Mon, 09 Sep 2019 11:16:10 -0700 (PDT)
MIME-Version: 1.0
From: Aggelis Aggelis <aggelis@gmail.com>
Date: Mon, 9 Sep 2019 21:15:58 +0300
Message-ID: <CAKUkA50BOqpW7ZCQc9nGGE8ceYZuZMsPk-2rfq1txu3R9114TA@mail.gmail.com>
Subject: kexec broken on later 4 series arm kernels ?
To: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111611_648574_FB99E1CE 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aggelis[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I use MitySOM-5CSX dev kit (cyclone v)and i would like to boot to a
different kernel using kexec.

In my configuration:

KERNEL : https://github.com/altera-opensource/linux-socfpga/archive/socfpga-4.9.76-ltsi-rt.zip
COMPILER : https://releases.linaro.org/archive/14.04/components/toolchain/binaries/gcc-linaro-arm-linux-gnueabihf-4.8-2014.04_linux.tar.bz2

In the kernel configuration kexec is enabled

zcat /proc/config.gz |grep KEXEC
CONFIG_KEXEC_CORE=y
CONFIG_KEXEC=y

and the default kernel cmdline is

# cat /proc/cmdline
root=/dev/mmcblk0p3 rootwait rw earlycon

First we load kernel with

#./kexec --version
kexec-tools 2.0.19

# kexec  -d -l zImagebkx --dtb=socfpga_cyclone5_mitysom5csx_devkit.dtb
--command-line="root=/dev/mmcblk0p3 rootwait rw earlycon"
syscall kexec_file_load not available.
kernel: 0xb6a9d008 kernel_size: 0x4a55c8
MEMORY RANGES
0000000000000000-000000003fffffff (0)
zImage header: 0x016f2818 0x00000000 0x004a55c8
zImage size 0x4a55c8, file size 0x4a55c8
zImage requires 0x004b65c8 bytes
Kernel: address=0x00008000 size=0x0178fce8
DT    : address=0x01799000 size=0x00007cf4
kexec_load: entry = 0x8000 flags = 0x280000
nr_segments = 2
segment[0].buf   = 0xb6a9d008kernel
segment[0].bufsz = 0x4a55cc
segment[0].mem   = 0x8000
segment[0].memsz = 0x4a6000
segment[1].buf   = 0x8e610
segment[1].bufsz = 0x7cf4
segment[1].mem   = 0x1799000
segment[1].memsz = 0x8000

and kexec  kernel with

# kexec  -e
[  134.110855] kexec_core: Starting new kernel
[  134.115064] Disabling non-boot CPUs ...
[  134.176961] CPU1: shutdown
[  134.180624] Bye!
Uncompressing Linux... done, booting the kernel.

and then nothing  no messages on console.

The same kernel boots successfully with U-Boot

Using kernel 4.1.22 from https://github.com/dlaut/linux-socfpga and
applying the patch described in https://patchwork.kernel.org/patch/6504321/
i  successfully kexeced 4.9.76 kernel from 4.1.22 using the same
kexec-tools 2.0.19.

root@node1:/mnt/test#uname -a Linux node1 4.1.22-ltsi-altera #2 SMP
PREEMPT Mon Jul 29 12:38:06 EEST 2019 armv7l GNU/L
root@node1:/mnt/test# kexec -d -e
[   46.306102] kexec: Starting new kernel
[   46.309928] Disabling non-boot CPUs ...
[   46.306102] kexec: Starting new kernel
[   46.378053] CPU1: shutdown
[   46.381875] Bye!
Uncompressing Linux... done, booting the kernel.
[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Linux version 4.9.76-rt61-ltsi-altera (aggelis@corei5)
(gcc version 4.8.3 20140401 (prerelease) (crosstool-NG l9
[    0.000000] CPU: ARMv7 Processor [413fc090] revision 0 (ARMv7), cr=10c5387d
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing
instruction cache
[    0.000000] OF: fdt:Machine model: MitySOM-5CSX Altera SOCFPGA Cyclone V
[    0.000000] cma: Reserved 16 MiB at 0x3f000000
[    0.000000] Memory policy: Data cache writealloc
[    0.000000] percpu: Embedded 15 pages/cpu @ef6bf000 s29184 r8192
d24064 u61440
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.
Total pages: 260416
[    0.000000] Kernel command line: root=/dev/mmcblk0p3 rootwait
[    0.000000] PID hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Dentry cache hash table entries: 131072 (order: 8, 1048576 bytes)
[    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
[    0.000000] allocated 1048576 bytes of page_ext
...
...
Angstrom v2017.12 - Kernel 4.9.76-rt61-ltsi-altera
node1 login:

The kexec patch applied on the 4.1.22 kernel (enabling kexec on
socfpga) is already present in 4.9.76 kernel.

Since the same  kexec 2.0.19 userland tool runs successfully  in the
older 4.1.22
but not in 4.9.76  kernel did something break in kexec implementation
in later 4 series kernels?

Aggelis Aggelis

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
