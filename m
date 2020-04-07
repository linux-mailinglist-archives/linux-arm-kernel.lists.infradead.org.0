Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BBE1A0CF6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 13:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dKTzCDz32t3UgCeHNMBZFl3BLwbgVgCyA79sAcyesmE=; b=I/7lijJlPCHnSL
	0PjMQ9VNRBpyRwK+zxcxbP7QRUty6RHXA/EpSTR8f7BUjNqt5/XffOo0YpBdzOHgIe8zcUGQxL6wB
	SgLFWnirPU4JdVdxHHpLWZbbij9rDkj86yAbUPMGvkIPAbgu9JjwUMD4FU4GPgeFZ7LikE0niHy3A
	r/M6rX1cevRWC9HQGM6LjuaEKXalw2hoQitX8XJnWx8QfBH3yCf282EdVa/mYd2AuTs+T/+BtA254
	GjdnotBB+OR2VJGVt2GqPjAfyEPC94/IbW1iniEYoPaKv5Za6GvLg0qZy5k6x52lNSVuURwt6m3dU
	w4fLg3uQkXg5xdHAGpwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLmVk-0000lN-4k; Tue, 07 Apr 2020 11:35:20 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLmVS-0007oO-2d; Tue, 07 Apr 2020 11:35:04 +0000
Received: by mail-wr1-x443.google.com with SMTP id v5so3419111wrp.12;
 Tue, 07 Apr 2020 04:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=il8xBtLW16WXNK+wuzc/LJBVTLop6QSkf7DLUFmwyOc=;
 b=gbix+h57+voX+m2naQYsbc2VTqDGxqJIJtfDRAdMEjQWNj+6xdbub1evgEdBKIjy4l
 NJDlhMZNBF7Dq22ylAC8bUOHhU1R7IBosudCpqYfuHKuSzfxyTGQFtvLMTMB8aKFMv+l
 fvFuUzu1W9uTUfHTlOKXUr/HpouS1PpVWD5oj99zc5YAcFeMk7ygHNrBrB7+VewFRrFn
 mspajw5z2zycifmDOhwYgJ8cRqd6xiUclH0M1S4z4pTrVnLFxPlRPZ0vGsK49Jo0gqb5
 xt9tt+gzswAEtNUi5Me4TtZtHEGCfjOCfCvW/T+gXLKHDHpSI9rUZ7JA8/TKpdMBMKSQ
 TTww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=il8xBtLW16WXNK+wuzc/LJBVTLop6QSkf7DLUFmwyOc=;
 b=LjFLm48orsaghbHjEUZmjcyYraFO79u1oECDaz/SmZGv0pYLHH3nDsWsWeIPIQxIrv
 jS2ksJkW2m7kHcnM7xW+WkoNjErPjia5vc3QFMvMg1xoxSx6IWmZov4liTdyAaK6xsJU
 dblXobw+TFwqCIEMjFPac4TPhfOLCQwOPxFBlYGAv4f1TuhfZBJ0qF0dnumjsITxC/9B
 M8gFHhy16LLvB55DIgQX7EZkKys7LTouSot5mbiRI0HJyiROZTgdzwAyL5j85SMrLGoP
 /Al5/i9pggkmJ8ppocE0ccrEtd5UXvTZfy5QBFLV7zHYoZOFdOIIehTxK8QQ1Kt/S+fs
 CKDg==
X-Gm-Message-State: AGi0Pua8z2X37/yvwz2xpYek8uskpRkUBG4vV46AuceWd/R3c5Caco5e
 6Mjsz8eQs4wc4SJLkLyp6iM=
X-Google-Smtp-Source: APiQypKQcY0oEFBY3G0p5BZU3XbBHc15vggSpsP6EgED1KHiHq8d+uNyKaSQtS/3IAs9ZBpYW6dJ6g==
X-Received: by 2002:a05:6000:120a:: with SMTP id
 e10mr2438433wrx.188.1586259297309; 
 Tue, 07 Apr 2020 04:34:57 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id u17sm2035588wmu.31.2020.04.07.04.34.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 04:34:56 -0700 (PDT)
Date: Tue, 7 Apr 2020 13:34:54 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: Trying to kexec on Allwinner A80
Message-ID: <20200407113454.GA457@Red>
References: <20200406082720.GA31279@Red>
 <20200407100203.GK25745@shell.armlinux.org.uk>
 <20200407101912.GL25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407101912.GL25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_043502_167818_2349B489 
X-CRM114-Status: GOOD (  29.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Tue, Apr 07, 2020 at 11:19:12AM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Apr 07, 2020 at 11:02:03AM +0100, Russell King - ARM Linux admin wrote:
> > On Mon, Apr 06, 2020 at 10:27:20AM +0200, Corentin Labbe wrote:
> > > Hello
> > > 
> > > I am trying to add the last missing Allwinner Soc in kernelci: the A80.
> > > But this SoC does not have any way to be used in kernelci, no USB nor network in uboot.
> > > So I have tried to fake uboot since the kernel has network support and run the new kernel via kexec.
> > > 
> > > But kexec 2.0.18 fail to work:
> > > kexec --force /tmp/kernel --initrd /tmp/ramdisk --dtb /tmp/dtb --command-line='console=ttyS0,115200n8 root=/dev/ram0 earlycon=uart,mmio32,0x7000000 ip=dhcp'
> > 
> > As I mentioned in my other reply, this apparent "kexec" command line
> > does not seem to reflect the arguments you actually used to invoke
> > the kexec output below.
> > 
> > > syscall kexec_file_load not available.
> > 
> > This message is produced by do_kexec_file_load().  This function is only
> > invoked if the do_kexec_file_syscall flag in main() is set.  This flag
> > is only set if one of:
> > 
> > 	--kexec-file-syscall
> > 	--kexec-syscall
> > 	--kexec-syscall-auto
> > 	-s
> > 	-c
> > 	-a
> > 
> > are provided on the kexec command line.  Your command line above does
> > not contain any of those arguments, so either the command line is not
> > what you used, or you are using a patched kexec, or your compiler is
> > grossly miscompiling kexec.
> > 
> > > Try gzip decompression.
> > > kernel: 0xb6535008 kernel_size: 0x853200
> > > MEMORY RANGES
> > > 0000000020000000-000000009fffffff (0)
> > 
> > Then there's the debug output, which is only produced if the
> > kexec_debug global is set, which in turn is only set if --debug or -d
> > is supplied on the kexec command line - which again, your kexec
> > command line does not contain this.
> > 
> > > zImage header: 0x016f2818 0x00000000 0x00853200
> > > zImage size 0x853200, file size 0x853200
> > > zImage requires 0x00864200 bytes
> > >   offset 0x0000bae4 tag 0x5a534c4b size 8
> > > Decompressed kernel sizes:
> > >  text+data 0x0158b3a0 bss 0x000632f0 total 0x015ee690
> > > Resulting kernel space: 0x01def5a0
> > > Kernel: address=0x20008000 size=0x01def5a0
> > > Initrd: address=0x21df8000 size=0x0090b6fa
> > > DT    : address=0x22704000 size=0x00005c09
> > > kexec_load: entry = 0x20008000 flags = 0x280000
> > > nr_segments = 3
> > > segment[0].buf   = 0xb6535008
> > > segment[0].bufsz = 0x853204
> > > segment[0].mem   = 0x20008000
> > > segment[0].memsz = 0x854000
> > > segment[1].buf   = 0xb5c29008
> > > segment[1].bufsz = 0x90b6fa
> > > segment[1].mem   = 0x21df8000
> > > segment[1].memsz = 0x90c000
> > > segment[2].buf   = 0x4db50
> > > segment[2].bufsz = 0x5c09
> > > segm[   71.039126] kexec_core: Starting new kernel
> > > ent[2].mem   = 0[   71.044712] Disabling non-boot CPUs ...
> > > x22704000
> > > segment[2].memsz = 0x6000
> > > [   71.489070] Bye!
> > > 
> > > 
> > > I have tried also kexec-2.0.20
> > > Try gzip decompression.
> > > zImage header: 0x00000000 0x000019b4 0x00001000
> > > zImage requires 0x008641c0 bytes
> > > Could not find a free area of memory of 0x86c1c0 bytes...
> > > Cannot load /tmp/kernel
> > 
> > kexec 2.0.20 doesn't appear to have changed anything to do with how
> > allocations are done.  The above output looks even more strange and
> > confusing.  "zImage header" is produced by debugging prints, which
> > imply that kexec_debug was set.
> > 
> > However, the "MEMORY RANGES" output is missing - this has not gone
> > away with kexec 2.0.20, it's still there, and works for me (I've
> > just built and tested kexec 2.0.20).
> > 
> > Also, the values on the "zImage header" line are completely messed
> > up; the first should be the zImage magic value and it is not - that
> > suggests that the file being loaded is not a zImage file, or is
> > corrupted.
> 
> Under a VM (the kernel doesn't have kexec support - but that's not a
> problem, because the initial loading stages are the relevant parts
> which all happen in userspace):
> 
> # build/sbin/kexec --version
> kexec-tools 2.0.20
> # build/sbin/kexec --debug --load virt-vmlinuz-5.4.0+
> Try gzip decompression.
> kernel: 0xb6a6c008 kernel_size: 0x407358
> MEMORY RANGES
> 0000000040000000-000000007fffffff (0)
> zImage header: 0x016f2818 0x00000000 0x00407358
> zImage size 0x407358, file size 0x407358
> zImage requires 0x00418358 bytes
>   offset 0x00007178 tag 0x5a534c4b size 12
> Decompressed kernel sizes:
>  text+data 0x00c2ed24 bss 0x000319ec total 0x00c60710
> Resulting kernel space: 0x0104707c
> Kernel: address=0x40008000 size=0x0104707c
> DT    : address=0x41051000 size=0x00100000
> kexec_load: entry = 0x40008000 flags = 0x280000
> nr_segments = 2
> segment[0].buf   = 0xb6a6c008
> segment[0].bufsz = 0x40735c
> segment[0].mem   = 0x40008000
> segment[0].memsz = 0x408000
> segment[1].buf   = 0xb696b008
> segment[1].bufsz = 0x100000
> segment[1].mem   = 0x41051000
> segment[1].memsz = 0x100000
> kexec_load failed: Function not implemented
> entry       = 0x40008000 flags = 0x280000
> nr_segments = 2
> segment[0].buf   = 0xb6aa0008
> segment[0].bufsz = 0x40735c
> segment[0].mem   = 0x40008000
> segment[0].memsz = 0x408000
> segment[1].buf   = 0xb699f008
> segment[1].bufsz = 0x100000
> segment[1].mem   = 0x41051000
> segment[1].memsz = 0x100000
> #
> 
> On a SolidRun Hummingboard2 (iMX6 based, which has kexec support, same
> kexec binary, first without an initrd, and then with):
> 
> # build/sbin/kexec --version
> kexec-tools 2.0.20
> # build/sbin/kexec --debug --load multi-vmlinuz-5.6.0+
> Try gzip decompression.
> kernel: 0xb6763008 kernel_size: 0x7273a8
> MEMORY RANGES
> 0000000010000000-000000004fffffff (0)
> zImage header: 0x016f2818 0x00000000 0x007273a8
> zImage size 0x7273a8, file size 0x7273a8
> zImage requires 0x007383a8 bytes
>   offset 0x00004da8 tag 0x5a534c4b size 12
> Decompressed kernel sizes:
>  text+data 0x00dbedb8 bss 0x007489f8 total 0x015077b0
> Resulting kernel space: 0x015077b0
> Kernel: address=0x10008000 size=0x015077b0
> DT    : address=0x11511000 size=0x0000b000
> kexec_load: entry = 0x10008000 flags = 0x280000
> nr_segments = 2
> segment[0].buf   = 0xb6763008
> segment[0].bufsz = 0x7273ac
> segment[0].mem   = 0x10008000
> segment[0].memsz = 0x728000
> segment[1].buf   = 0x1207cb0
> segment[1].bufsz = 0xb000
> segment[1].mem   = 0x11511000
> segment[1].memsz = 0xb000
> # build/sbin/kexec --unload
> # build/sbin/kexec --debug --load multi-vmlinuz-5.6.0+ --initrd /boot/initrd.img-5.4.0+
> Try gzip decompression.
> kernel: 0xb65d8008 kernel_size: 0x7273a8
> MEMORY RANGES
> 0000000010000000-000000004fffffff (0)
> zImage header: 0x016f2818 0x00000000 0x007273a8
> zImage size 0x7273a8, file size 0x7273a8
> zImage requires 0x007383a8 bytes
>   offset 0x00004da8 tag 0x5a534c4b size 12
> Decompressed kernel sizes:
>  text+data 0x00dbedb8 bss 0x007489f8 total 0x015077b0
> Resulting kernel space: 0x015077b0
> Kernel: address=0x10008000 size=0x015077b0
> Initrd: address=0x11510000 size=0x0053f46a
> DT    : address=0x11a50000 size=0x0000b044
> kexec_load: entry = 0x10008000 flags = 0x280000
> nr_segments = 3
> segment[0].buf   = 0xb65d8008
> segment[0].bufsz = 0x7273ac
> segment[0].mem   = 0x10008000
> segment[0].memsz = 0x728000
> segment[1].buf   = 0xb6098008
> segment[1].bufsz = 0x53f46a
> segment[1].mem   = 0x11510000
> segment[1].memsz = 0x540000
> segment[2].buf   = 0x993cf0
> segment[2].bufsz = 0xb044
> segment[2].mem   = 0x11a50000
> segment[2].memsz = 0xc000
> 
> On clearfog (Armada 388):
> 
> # build/sbin/kexec --debug --load multi-vmlinuz-5.6.0+
> Try gzip decompression.
> kernel: 0xb6745008 kernel_size: 0x7273a8
> MEMORY RANGES
> 0000000000000000-000000003fffffff (0)
> zImage header: 0x016f2818 0x00000000 0x007273a8
> zImage size 0x7273a8, file size 0x7273a8
> zImage requires 0x007383a8 bytes
>   offset 0x00004da8 tag 0x5a534c4b size 12
> Decompressed kernel sizes:
>  text+data 0x00dbedb8 bss 0x007489f8 total 0x015077b0
> Resulting kernel space: 0x015077b0
> Kernel: address=0x00008000 size=0x015077b0
> DT    : address=0x01511000 size=0x00007be3
> kexec_load: entry = 0x8000 flags = 0x280000
> nr_segments = 2
> segment[0].buf   = 0xb6745008
> segment[0].bufsz = 0x7273ac
> segment[0].mem   = 0x8000
> segment[0].memsz = 0x728000
> segment[1].buf   = 0x1be7f68
> segment[1].bufsz = 0x7be3
> segment[1].mem   = 0x1511000
> segment[1].memsz = 0x8000
> 
> All appears to work fine.
> 

I have found a part of my problem, kexec-tool seems to always use the OPT_KEXEC_FILE_SYSCALL.
Even if I set --kexec-syscall.

On my early tries I got "syscall kexec_file_load not available."
When I did a full rebuild of my buildroot to go back to kexec-tool 2.0.18, this syscall become availlable.
The get_memory_ranges seems to be called only from my_load() which is executed when !do_kexec_file_syscall.

Since kexec-tool always set do_kexec_file_syscall, it is never called.
I have added a print for each syscal option, and it seems that OPT_KEXEC_SYSCALL_AUTO is called after the handling of OPT_KEXEC_SYSCALL.

So I have hack to always set do_kexec_file_syscall=0

So now my test go further, but the final kernel crash.
DEBUG: bootz: run kexec with /tmp/kernel --debug --kexec-syscall --force --initrd /tmp/ramdisk --dtb /tmp/dtb --command-line='console=ttyS0,115200n8 root=/dev/ram0 earlycon=uart,mmio32,0x7000000 ip=dhcp'
Set DEBUG!
main:1417 OPT_KEXEC_SYSCALL
main:1422 OPT_KEXEC_SYSCALL_AUTO
arch_process_options:119
main:1500
main:1517 res=0 do_load=1
main:1519 res=0 do_kexec_file_syscall=0
my_load:713
Try gzip decompression.
kernel: 0xb693b008 kernel_size: 0x443ac0
get_memory_ranges:36
MEMORY RANGES
0000000020000000-000000009fffffff (0)
DEBUG: my_load:737 memory_ranges=1
zImage_arm_load:423
zImage header: 0x016f2818 0x00000000 0x00443ac0
zImage size 0x443ac0, file size 0x443ac0
zImage requires 0x00454ac0 bytes
  offset 0x00006678 tag 0x5a534c4b size 8
Decompressed kernel sizes:
 text+data 0x00b78080 bss 0x0003d3c0 total 0x00bb5440
Resulting kernel space: 0x00fccb40
DEBUG: locate_hole:237 memory_ranges=1
Check 0/1 536870912 0 type=-1610612737
Check 0/1 536870912 0
Kernel: address=0x20008000 size=0x00fccb40
DEBUG: locate_hole:237 memory_ranges=1
Check 0/1 536870912 0 type=-1610612737
Check 0/1 536870912 0
Initrd: address=0x20fd5000 size=0x0167213d
DEBUG: locate_hole:237 memory_ranges=1
Check 0/1 536870912 0 type=-1610612737
Check 0/2 536870912 0
Check 1/2 577011712 0
DT    : address=0x22648000 size=0x00006043
kexec_load: entry = 0x20008000 flags = 0x280000
nr_segments = 3
segment[0].buf   = 0xb693b008
segment[0].bufsz = 0x443ac4
segment[0].mem   = 0x20008000
segment[0].memsz = 0x444000
segment[1].buf   = 0xb52c8008
segment[1].bufsz = 0x167213d
segment[1].mem   = 0x20fd5000
segment[1].memsz = 0x1673000
segment[2].buf   = 0x4ef88
segment[2].bufsz = 0x6043
segment[2].mem   = 0x2[   31.265096] sun7i-dwmac 830000.ethernet eth0: Link is Down
2648000
segment[2].memsz = 0x7000
main:1568 res=0
main:1582 res=0 do_exec=1
[   31.277297] kexec_core: Starting new kernel
[   31.282700] Disabling non-boot CPUs ...
[   31.692085] Bye!
C:0x200080C0-0x2044BAC0->0x20B80B00-0x20FC4500

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
