Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7038D1A0EA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 15:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysTCcoBSQnxZIj8KuRoFW+pU1iWLHPRWNMYBF4mwDFM=; b=IEhHi8ZyQb9/o+
	Vx2AajLTmKwX94QedVi4ulQPLunQLnbdiQugcj9eI7FuhKwrcWH+nB9V+6mTI9e+TaFpiayCL5nby
	U07flu3GSISucP8rVIpnv2YXhkt0CD//Tp/JEeSMX/nZdmo/Zjf4ivwCTkS89SBeAeMUX6md7P+6z
	2r9lD6CrOsmZB8VbPpjaIkKUfAldyru/KaAR3OkEp1CPNYeUoY8yh/wwCwibRdcV90dkXD3z0iofv
	HjQkmD25CoCs7m20qBJaGp7VPG0517tamkwlDeMhN9R2QlXpTow8+tcmSkPdfJPbMBSaRH561FLCZ
	eyDlBQvb1sA+MsxFIa7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLobG-0000Ma-SM; Tue, 07 Apr 2020 13:49:10 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLoaz-0000GD-Vl; Tue, 07 Apr 2020 13:48:56 +0000
Received: by mail-wr1-x442.google.com with SMTP id 31so3988248wre.5;
 Tue, 07 Apr 2020 06:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Tau7eGpNRdEbUNv1rUjJpojaKrmHXRZB7+scJRqxupc=;
 b=VaEbztF/zZcU3pEJw44Py53mixuLQ9Kb+2TZbV23J/jVwaiTu/te+2lw7gNauW1nFv
 Iyx2e3HmCbJUfcheE5KYE/2ccfb8MW0QIDaSvzyuYPUyQHNma/3d5U6XxpXF32lnb6Xr
 iEUIrjZwU97ONr9UeqtUlSQi8y6ZsOtaoniUUYDfUQbG6DdCh14oIdPihqLijpaEi0UB
 V4ZCF6fIrH9a3sVKe1ZM54Ra6hwdhDUlwpFKFoJxd3x6QuYCjuVL61ZxDboAevP5+9dR
 4c/0fC2RqwWy2Xc3Zxlr53TFBAxjfszPc8kux+NhC9tM8psiqDd2yZHPNCN0+IWrgP+k
 ePCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Tau7eGpNRdEbUNv1rUjJpojaKrmHXRZB7+scJRqxupc=;
 b=OktHSGmvTJQAGLKC9S421CvPy/oGEHUv9YMnV5ZpIYUdd1aS8J1RdzKDfTS7bSGCZT
 VsVreQMynjT17pOLZ3pc1sW2V068YKuUx8rwBrEPVKc4P1xU9o0A6w0/mBrvM3juEWPC
 ZTqS4n71Y+fGzbrFaa7BrW5bCv2TbvLa1eG1PB5EkUtpsWyCMEl12hy7V/XyPtIJ8367
 5fe1H4d+PFyvpHKAXSMsJT6FJPKgQr6lqxIuNwpz1xYnkXwFldiwxeMnyAjPm8+LqE55
 G553hmC20uH4E1a4CD2jVdIYXJuGYbaXwKXXv9Fkl+yDDyTqtzbSz6jUcUGTlrxjcQMZ
 rXTQ==
X-Gm-Message-State: AGi0Pua9avW8yC5XM9lNB+r4sAn0TCLV74ZrKoCm0Pksmg77D68az4F9
 ASrFNhLiWizsaLgovLRomFA=
X-Google-Smtp-Source: APiQypIcUFE8mGmPD3SxTN01jQ7fcRkhyDleJF6FHlNXZFcezpajkCpXuBCByTfjpeZpOEGHwXQLPw==
X-Received: by 2002:a05:6000:e:: with SMTP id
 h14mr3073537wrx.128.1586267331913; 
 Tue, 07 Apr 2020 06:48:51 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id b11sm30930209wrq.26.2020.04.07.06.48.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 06:48:50 -0700 (PDT)
Date: Tue, 7 Apr 2020 15:48:49 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: Trying to kexec on Allwinner A80
Message-ID: <20200407134849.GC457@Red>
References: <20200406082720.GA31279@Red>
 <20200407100203.GK25745@shell.armlinux.org.uk>
 <20200407101912.GL25745@shell.armlinux.org.uk>
 <20200407113454.GA457@Red>
 <20200407122243.GN25745@shell.armlinux.org.uk>
 <20200407130559.GB457@Red>
 <20200407132602.GO25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407132602.GO25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_064854_087639_45AAE2C2 
X-CRM114-Status: GOOD (  38.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

On Tue, Apr 07, 2020 at 02:26:02PM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Apr 07, 2020 at 03:05:59PM +0200, Corentin Labbe wrote:
> > On Tue, Apr 07, 2020 at 01:22:43PM +0100, Russell King - ARM Linux admin wrote:
> > > On Tue, Apr 07, 2020 at 01:34:54PM +0200, Corentin Labbe wrote:
> > > > On Tue, Apr 07, 2020 at 11:19:12AM +0100, Russell King - ARM Linux admin wrote:
> > > > > On Tue, Apr 07, 2020 at 11:02:03AM +0100, Russell King - ARM Linux admin wrote:
> > > > > > On Mon, Apr 06, 2020 at 10:27:20AM +0200, Corentin Labbe wrote:
> > > > > > > Hello
> > > > > > > 
> > > > > > > I am trying to add the last missing Allwinner Soc in kernelci: the A80.
> > > > > > > But this SoC does not have any way to be used in kernelci, no USB nor network in uboot.
> > > > > > > So I have tried to fake uboot since the kernel has network support and run the new kernel via kexec.
> > > > > > > 
> > > > > > > But kexec 2.0.18 fail to work:
> > > > > > > kexec --force /tmp/kernel --initrd /tmp/ramdisk --dtb /tmp/dtb --command-line='console=ttyS0,115200n8 root=/dev/ram0 earlycon=uart,mmio32,0x7000000 ip=dhcp'
> > > > > > 
> > > > > > As I mentioned in my other reply, this apparent "kexec" command line
> > > > > > does not seem to reflect the arguments you actually used to invoke
> > > > > > the kexec output below.
> > > > > > 
> > > > > > > syscall kexec_file_load not available.
> > > > > > 
> > > > > > This message is produced by do_kexec_file_load().  This function is only
> > > > > > invoked if the do_kexec_file_syscall flag in main() is set.  This flag
> > > > > > is only set if one of:
> > > > > > 
> > > > > > 	--kexec-file-syscall
> > > > > > 	--kexec-syscall
> > > > > > 	--kexec-syscall-auto
> > > > > > 	-s
> > > > > > 	-c
> > > > > > 	-a
> > > > > > 
> > > > > > are provided on the kexec command line.  Your command line above does
> > > > > > not contain any of those arguments, so either the command line is not
> > > > > > what you used, or you are using a patched kexec, or your compiler is
> > > > > > grossly miscompiling kexec.
> > > > > > 
> > > > > > > Try gzip decompression.
> > > > > > > kernel: 0xb6535008 kernel_size: 0x853200
> > > > > > > MEMORY RANGES
> > > > > > > 0000000020000000-000000009fffffff (0)
> > > > > > 
> > > > > > Then there's the debug output, which is only produced if the
> > > > > > kexec_debug global is set, which in turn is only set if --debug or -d
> > > > > > is supplied on the kexec command line - which again, your kexec
> > > > > > command line does not contain this.
> > > > > > 
> > > > > > > zImage header: 0x016f2818 0x00000000 0x00853200
> > > > > > > zImage size 0x853200, file size 0x853200
> > > > > > > zImage requires 0x00864200 bytes
> > > > > > >   offset 0x0000bae4 tag 0x5a534c4b size 8
> > > > > > > Decompressed kernel sizes:
> > > > > > >  text+data 0x0158b3a0 bss 0x000632f0 total 0x015ee690
> > > > > > > Resulting kernel space: 0x01def5a0
> > > > > > > Kernel: address=0x20008000 size=0x01def5a0
> > > > > > > Initrd: address=0x21df8000 size=0x0090b6fa
> > > > > > > DT    : address=0x22704000 size=0x00005c09
> > > > > > > kexec_load: entry = 0x20008000 flags = 0x280000
> > > > > > > nr_segments = 3
> > > > > > > segment[0].buf   = 0xb6535008
> > > > > > > segment[0].bufsz = 0x853204
> > > > > > > segment[0].mem   = 0x20008000
> > > > > > > segment[0].memsz = 0x854000
> > > > > > > segment[1].buf   = 0xb5c29008
> > > > > > > segment[1].bufsz = 0x90b6fa
> > > > > > > segment[1].mem   = 0x21df8000
> > > > > > > segment[1].memsz = 0x90c000
> > > > > > > segment[2].buf   = 0x4db50
> > > > > > > segment[2].bufsz = 0x5c09
> > > > > > > segm[   71.039126] kexec_core: Starting new kernel
> > > > > > > ent[2].mem   = 0[   71.044712] Disabling non-boot CPUs ...
> > > > > > > x22704000
> > > > > > > segment[2].memsz = 0x6000
> > > > > > > [   71.489070] Bye!
> > > > > > > 
> > > > > > > 
> > > > > > > I have tried also kexec-2.0.20
> > > > > > > Try gzip decompression.
> > > > > > > zImage header: 0x00000000 0x000019b4 0x00001000
> > > > > > > zImage requires 0x008641c0 bytes
> > > > > > > Could not find a free area of memory of 0x86c1c0 bytes...
> > > > > > > Cannot load /tmp/kernel
> > > > > > 
> > > > > > kexec 2.0.20 doesn't appear to have changed anything to do with how
> > > > > > allocations are done.  The above output looks even more strange and
> > > > > > confusing.  "zImage header" is produced by debugging prints, which
> > > > > > imply that kexec_debug was set.
> > > > > > 
> > > > > > However, the "MEMORY RANGES" output is missing - this has not gone
> > > > > > away with kexec 2.0.20, it's still there, and works for me (I've
> > > > > > just built and tested kexec 2.0.20).
> > > > > > 
> > > > > > Also, the values on the "zImage header" line are completely messed
> > > > > > up; the first should be the zImage magic value and it is not - that
> > > > > > suggests that the file being loaded is not a zImage file, or is
> > > > > > corrupted.
> > > > > 
> > > > > Under a VM (the kernel doesn't have kexec support - but that's not a
> > > > > problem, because the initial loading stages are the relevant parts
> > > > > which all happen in userspace):
> > > > > 
> > > > > # build/sbin/kexec --version
> > > > > kexec-tools 2.0.20
> > > > > # build/sbin/kexec --debug --load virt-vmlinuz-5.4.0+
> > > > > Try gzip decompression.
> > > > > kernel: 0xb6a6c008 kernel_size: 0x407358
> > > > > MEMORY RANGES
> > > > > 0000000040000000-000000007fffffff (0)
> > > > > zImage header: 0x016f2818 0x00000000 0x00407358
> > > > > zImage size 0x407358, file size 0x407358
> > > > > zImage requires 0x00418358 bytes
> > > > >   offset 0x00007178 tag 0x5a534c4b size 12
> > > > > Decompressed kernel sizes:
> > > > >  text+data 0x00c2ed24 bss 0x000319ec total 0x00c60710
> > > > > Resulting kernel space: 0x0104707c
> > > > > Kernel: address=0x40008000 size=0x0104707c
> > > > > DT    : address=0x41051000 size=0x00100000
> > > > > kexec_load: entry = 0x40008000 flags = 0x280000
> > > > > nr_segments = 2
> > > > > segment[0].buf   = 0xb6a6c008
> > > > > segment[0].bufsz = 0x40735c
> > > > > segment[0].mem   = 0x40008000
> > > > > segment[0].memsz = 0x408000
> > > > > segment[1].buf   = 0xb696b008
> > > > > segment[1].bufsz = 0x100000
> > > > > segment[1].mem   = 0x41051000
> > > > > segment[1].memsz = 0x100000
> > > > > kexec_load failed: Function not implemented
> > > > > entry       = 0x40008000 flags = 0x280000
> > > > > nr_segments = 2
> > > > > segment[0].buf   = 0xb6aa0008
> > > > > segment[0].bufsz = 0x40735c
> > > > > segment[0].mem   = 0x40008000
> > > > > segment[0].memsz = 0x408000
> > > > > segment[1].buf   = 0xb699f008
> > > > > segment[1].bufsz = 0x100000
> > > > > segment[1].mem   = 0x41051000
> > > > > segment[1].memsz = 0x100000
> > > > > #
> > > > > 
> > > > > On a SolidRun Hummingboard2 (iMX6 based, which has kexec support, same
> > > > > kexec binary, first without an initrd, and then with):
> > > > > 
> > > > > # build/sbin/kexec --version
> > > > > kexec-tools 2.0.20
> > > > > # build/sbin/kexec --debug --load multi-vmlinuz-5.6.0+
> > > > > Try gzip decompression.
> > > > > kernel: 0xb6763008 kernel_size: 0x7273a8
> > > > > MEMORY RANGES
> > > > > 0000000010000000-000000004fffffff (0)
> > > > > zImage header: 0x016f2818 0x00000000 0x007273a8
> > > > > zImage size 0x7273a8, file size 0x7273a8
> > > > > zImage requires 0x007383a8 bytes
> > > > >   offset 0x00004da8 tag 0x5a534c4b size 12
> > > > > Decompressed kernel sizes:
> > > > >  text+data 0x00dbedb8 bss 0x007489f8 total 0x015077b0
> > > > > Resulting kernel space: 0x015077b0
> > > > > Kernel: address=0x10008000 size=0x015077b0
> > > > > DT    : address=0x11511000 size=0x0000b000
> > > > > kexec_load: entry = 0x10008000 flags = 0x280000
> > > > > nr_segments = 2
> > > > > segment[0].buf   = 0xb6763008
> > > > > segment[0].bufsz = 0x7273ac
> > > > > segment[0].mem   = 0x10008000
> > > > > segment[0].memsz = 0x728000
> > > > > segment[1].buf   = 0x1207cb0
> > > > > segment[1].bufsz = 0xb000
> > > > > segment[1].mem   = 0x11511000
> > > > > segment[1].memsz = 0xb000
> > > > > # build/sbin/kexec --unload
> > > > > # build/sbin/kexec --debug --load multi-vmlinuz-5.6.0+ --initrd /boot/initrd.img-5.4.0+
> > > > > Try gzip decompression.
> > > > > kernel: 0xb65d8008 kernel_size: 0x7273a8
> > > > > MEMORY RANGES
> > > > > 0000000010000000-000000004fffffff (0)
> > > > > zImage header: 0x016f2818 0x00000000 0x007273a8
> > > > > zImage size 0x7273a8, file size 0x7273a8
> > > > > zImage requires 0x007383a8 bytes
> > > > >   offset 0x00004da8 tag 0x5a534c4b size 12
> > > > > Decompressed kernel sizes:
> > > > >  text+data 0x00dbedb8 bss 0x007489f8 total 0x015077b0
> > > > > Resulting kernel space: 0x015077b0
> > > > > Kernel: address=0x10008000 size=0x015077b0
> > > > > Initrd: address=0x11510000 size=0x0053f46a
> > > > > DT    : address=0x11a50000 size=0x0000b044
> > > > > kexec_load: entry = 0x10008000 flags = 0x280000
> > > > > nr_segments = 3
> > > > > segment[0].buf   = 0xb65d8008
> > > > > segment[0].bufsz = 0x7273ac
> > > > > segment[0].mem   = 0x10008000
> > > > > segment[0].memsz = 0x728000
> > > > > segment[1].buf   = 0xb6098008
> > > > > segment[1].bufsz = 0x53f46a
> > > > > segment[1].mem   = 0x11510000
> > > > > segment[1].memsz = 0x540000
> > > > > segment[2].buf   = 0x993cf0
> > > > > segment[2].bufsz = 0xb044
> > > > > segment[2].mem   = 0x11a50000
> > > > > segment[2].memsz = 0xc000
> > > > > 
> > > > > On clearfog (Armada 388):
> > > > > 
> > > > > # build/sbin/kexec --debug --load multi-vmlinuz-5.6.0+
> > > > > Try gzip decompression.
> > > > > kernel: 0xb6745008 kernel_size: 0x7273a8
> > > > > MEMORY RANGES
> > > > > 0000000000000000-000000003fffffff (0)
> > > > > zImage header: 0x016f2818 0x00000000 0x007273a8
> > > > > zImage size 0x7273a8, file size 0x7273a8
> > > > > zImage requires 0x007383a8 bytes
> > > > >   offset 0x00004da8 tag 0x5a534c4b size 12
> > > > > Decompressed kernel sizes:
> > > > >  text+data 0x00dbedb8 bss 0x007489f8 total 0x015077b0
> > > > > Resulting kernel space: 0x015077b0
> > > > > Kernel: address=0x00008000 size=0x015077b0
> > > > > DT    : address=0x01511000 size=0x00007be3
> > > > > kexec_load: entry = 0x8000 flags = 0x280000
> > > > > nr_segments = 2
> > > > > segment[0].buf   = 0xb6745008
> > > > > segment[0].bufsz = 0x7273ac
> > > > > segment[0].mem   = 0x8000
> > > > > segment[0].memsz = 0x728000
> > > > > segment[1].buf   = 0x1be7f68
> > > > > segment[1].bufsz = 0x7be3
> > > > > segment[1].mem   = 0x1511000
> > > > > segment[1].memsz = 0x8000
> > > > > 
> > > > > All appears to work fine.
> > > > > 
> > > > 
> > > > I have found a part of my problem, kexec-tool seems to always use the OPT_KEXEC_FILE_SYSCALL.
> > > > Even if I set --kexec-syscall.
> > > 
> > > You mention below that you're using buildroot.  Does buildroot have
> > > patches on top of the reference kexec-tools codebase as found at
> > > git://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools.git ?
> > > 
> > > Looking at the 2.0.20 code, there's no way for that to be happening;
> > > the only way that _could_ happen is if getopt_long() always returns
> > > 's' when we get to the last argument, which is highly unlikely.
> > > 
> > > > On my early tries I got "syscall kexec_file_load not available."
> > > > When I did a full rebuild of my buildroot to go back to kexec-tool 2.0.18, this syscall become availlable.
> > > 
> > > 32-bit kernels have no support for kexec_file_load(), although the
> > > syscall is reserved.
> > > 
> > > Irrespective of that, presence of the syscall number allocation is
> > > not sufficient to tell whether the syscall is implemented by the
> > > kernel; that is controlled by the kernel's CONFIG_KEXEC_FILE symbol.
> > > This symbol is never offered for 32-bit ARM kernels.
> > > 
> > > > The get_memory_ranges seems to be called only from my_load() which is executed when !do_kexec_file_syscall.
> > > > 
> > > > Since kexec-tool always set do_kexec_file_syscall, it is never called.
> > > > I have added a print for each syscal option, and it seems that OPT_KEXEC_SYSCALL_AUTO is called after the handling of OPT_KEXEC_SYSCALL.
> > > > 
> > > > So I have hack to always set do_kexec_file_syscall=0
> > > 
> > > It sounds like buildroot is patching kexec-tools in ways that break
> > > 32-bit ARM, and it sounds like this needs to be reported as a bug to
> > > buildroot.
> > > 
> > > That said, I think there's a weakness in the ARM support in
> > > kexec-tools, which this patch should address for 2.0.20.  Things have
> > > changed in the merged patches since 2.0.20, so the return needs to be
> > > EFALLBACK not ENOSYS, so please pay attention to exactly which version
> > > of kexec-tools you have (whether it's the 2.0.20 tagged version or has
> > > further patches from kexec-tools on top.)
> > > 
> > > diff --git a/kexec/arch/arm/kexec-zImage-arm.c b/kexec/arch/arm/kexec-zImage-arm.c
> > > index 9a67b8a4db98..ca4e35382ea1 100644
> > > --- a/kexec/arch/arm/kexec-zImage-arm.c
> > > +++ b/kexec/arch/arm/kexec-zImage-arm.c
> > > @@ -421,6 +421,12 @@ int zImage_arm_load(int argc, char **argv, const char *buf, off_t len,
> > >  	};
> > >  	static const char short_options[] = KEXEC_ARCH_OPT_STR "a:r:";
> > >  
> > > +	/* We do not support file mode */
> > > +	if (info->file_mode) {
> > > +		fprintf(stderr, "syscall kexec_file_load not implemented.\n");
> > > +		return -ENOSYS;
> > > +	}
> > > +
> > >  	/*
> > >  	 * Parse the command line arguments
> > >  	 */
> > > 
> > > > So now my test go further, but the final kernel crash.
> > > > DEBUG: bootz: run kexec with /tmp/kernel --debug --kexec-syscall --force --initrd /tmp/ramdisk --dtb /tmp/dtb --command-line='console=ttyS0,115200n8 root=/dev/ram0 earlycon=uart,mmio32,0x7000000 ip=dhcp'
> > > > Set DEBUG!
> > > > main:1417 OPT_KEXEC_SYSCALL
> > > > main:1422 OPT_KEXEC_SYSCALL_AUTO
> > > > arch_process_options:119
> > > > main:1500
> > > > main:1517 res=0 do_load=1
> > > > main:1519 res=0 do_kexec_file_syscall=0
> > > > my_load:713
> > > > Try gzip decompression.
> > > > kernel: 0xb693b008 kernel_size: 0x443ac0
> > > > get_memory_ranges:36
> > > > MEMORY RANGES
> > > > 0000000020000000-000000009fffffff (0)
> > > > DEBUG: my_load:737 memory_ranges=1
> > > > zImage_arm_load:423
> > > > zImage header: 0x016f2818 0x00000000 0x00443ac0
> > > > zImage size 0x443ac0, file size 0x443ac0
> > > > zImage requires 0x00454ac0 bytes
> > > >   offset 0x00006678 tag 0x5a534c4b size 8
> > > > Decompressed kernel sizes:
> > > >  text+data 0x00b78080 bss 0x0003d3c0 total 0x00bb5440
> > > > Resulting kernel space: 0x00fccb40
> > > > DEBUG: locate_hole:237 memory_ranges=1
> > > > Check 0/1 536870912 0 type=-1610612737
> > > > Check 0/1 536870912 0
> > > > Kernel: address=0x20008000 size=0x00fccb40
> > > > DEBUG: locate_hole:237 memory_ranges=1
> > > > Check 0/1 536870912 0 type=-1610612737
> > > > Check 0/1 536870912 0
> > > > Initrd: address=0x20fd5000 size=0x0167213d
> > > > DEBUG: locate_hole:237 memory_ranges=1
> > > > Check 0/1 536870912 0 type=-1610612737
> > > > Check 0/2 536870912 0
> > > > Check 1/2 577011712 0
> > > > DT    : address=0x22648000 size=0x00006043
> > > > kexec_load: entry = 0x20008000 flags = 0x280000
> > > > nr_segments = 3
> > > > segment[0].buf   = 0xb693b008
> > > > segment[0].bufsz = 0x443ac4
> > > > segment[0].mem   = 0x20008000
> > > > segment[0].memsz = 0x444000
> > > > segment[1].buf   = 0xb52c8008
> > > > segment[1].bufsz = 0x167213d
> > > > segment[1].mem   = 0x20fd5000
> > > > segment[1].memsz = 0x1673000
> > > > segment[2].buf   = 0x4ef88
> > > > segment[2].bufsz = 0x6043
> > > > segment[2].mem   = 0x2[   31.265096] sun7i-dwmac 830000.ethernet eth0: Link is Down
> > > > 2648000
> > > > segment[2].memsz = 0x7000
> > > > main:1568 res=0
> > > > main:1582 res=0 do_exec=1
> > > > [   31.277297] kexec_core: Starting new kernel
> > > > [   31.282700] Disabling non-boot CPUs ...
> > > > [   31.692085] Bye!
> > > > C:0x200080C0-0x2044BAC0->0x20B80B00-0x20FC4500
> > > 
> > > This line shows that we entered the new kernel, which was located
> > > (correctly) at 0x200080C0-0x2044BAC0, and it has decided to relocate
> > > itself to 0x20B80B00-0x20FC4500.
> > > 
> > > The lack of further output suggests that the decompressor itself
> > > wasn't able to run after being relocated higher in memory.
> > > 
> > > It may be worth booting the same kernel image and see what the C:
> > > line comes out as there.
> > > 
> > 
> > I have checked and some CONFIG was missing, now I get one line further:
> > [   32.903765] kexec_core: Starting new kernel
> > [   32.907958] Disabling non-boot CPUs ...
> > [   33.392056] Bye!
> > C:0x200080C0-0x2044AE80->0x20B80300-0x20FC30C0
> > Uncompressing Linux... done, booting the kernel.
> > 
> > So the uncompressor seems ok.
> > 
> > As you said, I have started the same kernel, but I dont see any C:
> > Starting kernel ...
> > Uncompressing Linux... done, booting the kernel.
> > [    0.000000] Booting Linux on physical CPU 0x0
> > [    0.000000] Linux version 5.6.0-10890-gc27180b13770-dirty (compile@Red) (gcc version 8.3.0 (Gentoo 8.3.0-r1 p1.1)) #78 SMP Tue Apr 7 14:55:53 CEST 2020
> > [    0.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=10c5387d
> > [    0.000000] CPU: div instructions available: patching division code
> 
> Hmm, are you sure you booted the same zImage file?  The
> "Uncompressing Linux..." messages will be using the same output
> functions as the C: line, so it shouldn't be missing.
> 
> In any case, please try adding this patch so we can see what was
> passed in r1/r2 to the kernel (not build tested here, sorry).
> 
> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> index e05af1cb3ed4..56dd01c1bae3 100644
> --- a/arch/arm/boot/compressed/head.S
> +++ b/arch/arm/boot/compressed/head.S
> @@ -136,6 +136,27 @@
>  #endif
>  		.endm
>  
> +		.macro	dbgent, id, ptr
> +#ifdef DEBUG
> +		kputc   #'\n'
> +		kputc	#'I'
> +		kputc	#'D'
> +		kputc	#':'
> +		kputc   #'0'
> +		kputc   #'x'
> +		kphex	\id, 8
> +		kputc	#' '
> +		kputc	#'D'
> +		kputc	#'T'
> +		kputc	#':'
> +		kputc   #'0'
> +		kputc   #'x'
> +		kphex	\ptr, 8
> +		kputc	#'\n'
> +		kputc	#'\r'
> +#endif
> +		.endm
> +
>  		.macro	enable_cp15_barriers, reg
>  		mrc	p15, 0, \reg, c1, c0, 0	@ read SCTLR
>  		tst	\reg, #(1 << 5)		@ CP15BEN bit set?
> @@ -289,7 +310,9 @@
>  		orrcc	r4, r4, #1		@ remember we skipped cache_on
>  		blcs	cache_on
>  
> -restart:	adr	r0, LC0
> +
> +restart:	dbgent	r7, r8
> +		adr	r0, LC0
>  		ldmia	r0, {r1, r2, r3, r6, r11, r12}
>  		ldr	sp, [r0, #24]
>  

I use the same kernel for both the initial and the kexec-ed one

The first kernel give:
Starting kernel ...
ID:0x00000000 DT:0x2984E000
Uncompressing Linux... done, booting the kernel.

[   32.113191] kexec_core: Starting new kernel
[   32.460412] Bye!
ID:0xFFFFFFFF DT:0x2267D000
C:0x200080C0-0x2044CFE0->0x20B80500-0x20FC5420
ID:0xFFFFFFFF DT:0x2267D000
Uncompressing Linux... done, booting the kernel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
