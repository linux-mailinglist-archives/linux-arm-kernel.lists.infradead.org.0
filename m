Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F05ADE4E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 19:59:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=W47y7xQQ6l1C8QjtPGyxVteuPDkEI54aLJULoNVaLJA=; b=H/F
	2yBhnptbrgMeyUqTGNlMKU2cAg2BUBZa6MsiKwStB/aR6nIHCLN/cUJAJ7jLcwYc2GYBtwujO896C
	ezcSLHJA/fXkHsDdyO4an3pdZBB0aE67+1WiFzc3d0imEtmXMefQZAyNWhLEllvXKr4ddZ2whSpuv
	u6wDxO1YHcWmJcTG+AWT99hbazBwQ/UZlL1Kjfwbd6w0IpBNowJjB0HK9Vqwy9zxwmEee4ss4d4Vf
	l6xupXlplyNPVGZ1QGIl44saGi39TaUkdZoxPWYyhiaQUXQ0rYT3ftea/k/Kx/69vLkRYbm4R36/T
	8KkiuVH02/iS/Rwe9A6b9EuC+Vq1v9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Nwg-0002tI-6S; Mon, 09 Sep 2019 17:59:22 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7NwW-0002st-PY
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 17:59:14 +0000
Received: by mail-vs1-xe43.google.com with SMTP id b123so9384734vsb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 10:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=fHauaQVMUS6y4g4wuL3pm8RE2C/JvCI6MFQUxyi5ROo=;
 b=LG1mzf/izSM2XYrgF3xVBIuX5Xn0GRm8m0SuCxxFNbPYq6II/blOhXs2TCdHR/YgyY
 BLW5JkQV/+yHFAWUWZgLq5302TyaSZ7HWfMx12pF5+KFjWDJLRNMRWPUaJOczEsY4k6u
 7La/G75xdnRCt2RYI6V1Q3xfmdy5rWABxuSiymHG0hr58ZWw62vYgI8gRzoG1Ohnd3Fb
 tfUTt8tf4nGh+Fnj7aoUagIvBC6ujj0DuubiRQJbTkLc/qYZEcWfWTsn8aW2rt0q+0Dv
 Zc6/w2UQZWxpISz4wt0a959TI+i74cMpTGclw1siA/KV8AXfQqRxiqS/1vvlbp2CQFC+
 dRPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=fHauaQVMUS6y4g4wuL3pm8RE2C/JvCI6MFQUxyi5ROo=;
 b=UfgaSEK6XK5WlfP/+Lb9MRNdwNV4hDTMqw4jgou4JTCo166Bynndq/18Tul9GshEN5
 DQ8ZuZ4tspM16cjgpnoTvbFhlfwYkl+uM62pR6NAA50ms6MbOQn4gSgZ92xcZ+f9/6hC
 VvoNSmDuMbWiZKrr9Ju4si+poVDgPxLJ/I8rXDQn9ElfVl/hDOTlWiIImDQJqD44Ee+a
 tHdd++7v+v+82yizWRLYLdeoV3bqiKAui7Zib/yFI48pwmP4dOe6c2e/IBMBc0yVoIi6
 Amxxc2k95wTk2mKQM+Qim5harZfWNZy6615N9oglDZJfnXHVlLzEo1Wj3ZQ7JsXECdgb
 oF3A==
X-Gm-Message-State: APjAAAWvTflFE+Ps7rGrzqstCMjcCC4k0Ss7vKVZ1DJn+M1vOWrannjC
 zb5WmXJVSNbSLhOYh/mp1cZzJK1fM9b1Yc63PpBL7Ybj
X-Google-Smtp-Source: APXvYqzlYgNVB2D4nFuRW7AAqQqbzFo2+ELH20hTuXfpV1XJZAA1FuCJkeAyGt8dpuIvjJHdrkq8/ZoB4Mggzzc/4Gg=
X-Received: by 2002:a67:e886:: with SMTP id x6mr13581604vsn.117.1568051949888; 
 Mon, 09 Sep 2019 10:59:09 -0700 (PDT)
MIME-Version: 1.0
From: Aggelis Aggelis <aggelis@gmail.com>
Date: Mon, 9 Sep 2019 20:58:58 +0300
Message-ID: <CAKUkA52n+g4=G8r47P4Jt1LpUaPStEkLUNmU6szSCW9sYhW4Mw@mail.gmail.com>
Subject: kexec arm support
To: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_105912_857328_13A672A1 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
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

kexec  -d -l zImagebkx --dtb=socfpga_cyclone5_mitysom5csx_devkit.dtb
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
segment[0].buf   = 0xb6a9d008
segment[0].bufsz = 0x4a55cc
segment[0].mem   = 0x8000
segment[0].memsz = 0x4a6000
segment[1].buf   = 0x8e610
segment[1].bufsz = 0x7cf4
segment[1].mem   = 0x1799000
segment[1].memsz = 0x8000


and kexec  kernel with


kexec  -e
[  134.110855] kexec_core: Starting new kernel
[  134.115064] Disabling non-boot CPUs ...
[  134.176961] CPU1: shutdown
[  134.180624] Bye!
Uncompressing Linux... done, booting the kernel.

and then nothing  no messages on console. The same kernel boots
successfully with U-Boot

using kernel 4.1.22 from https://github.com/dlaut/linux-socfpga and
applying the patch described in
https://patchwork.kernel.org/patch/6504321/
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

Did something break in kexec implementation in later 4 series kernels?

Aggelis Aggelis

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
