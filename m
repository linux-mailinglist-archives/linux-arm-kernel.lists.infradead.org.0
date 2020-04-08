Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F331A2511
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 17:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMiTtGKa7nQCzSB2hkFRfcjz0mImeSSooc2fMHgJMIw=; b=rqPQXBx4WcCz+c
	5b7XTSNrKWNHPGtgAdlZVsD42/7iJEzyn4+ueqDnqMCe1xIr+xQpGoyfZ5ePMYrtVdiiHuhuqWxo3
	TD9GZZLb/WbpYgGBAzWttoPodHyY8Y0GGJCbqMqpZ16Buz30eMDWWp74jj9d0otJcebVFJatLJ1+U
	6TJrYNPK+4EE+rOAsI8EyUZ1o1Hk5jrLmdlQO+11v0fnEtMp4K/D3EFvMIMUq5f3f55T86lafp/3D
	6WzaXun72S6MSS2pujqOdaetLAp9tp/8c0kSHiLTHZDi36H9R4tuK9uQhJwyGzb7kOzFLWOjRhye3
	LDMnSLbT1D0aX9O9ICeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMCYy-0004Ua-NG; Wed, 08 Apr 2020 15:24:24 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMCYp-0004TC-VJ; Wed, 08 Apr 2020 15:24:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id k1so8294773wrm.3;
 Wed, 08 Apr 2020 08:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VS45I5JryTy6gPLmg//8OHhKmPoCHc7JEw279etnSwI=;
 b=UE4+gfLlBPdTZ88IssRzPc8/BBA0W1v6WoxqTugC89pv8n6/oaDEaiUjz+t5zwQnUn
 1Ag1m4F50OUnw5qrYzDxxhRJK5Mvsm8eV02l/7BhdLZPRzSc6+Y1DGfRQTz4sn6A5YlV
 YbjZy1sN6R7hqYA/O9/kS8wlIlKa3gZYk3whVCExKS8o6myHK2RUY9hseGdKWk+G4msH
 PSZ46/gbjCz6EO/ZNSa2p+4CbmQRS3muvmYhDBXfwaJmejjX0/q+8honiNToFPZkRliA
 vJH1NbvU854AhwsH3ld1nPuGy39ljuCIYXFzF6un7n3fcOmjm47keP60O6Sqq2Ih0UQS
 kGuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VS45I5JryTy6gPLmg//8OHhKmPoCHc7JEw279etnSwI=;
 b=IMTvI5gG+3Bqf6Wkkic9qpnLOQImoPX5DUDYnuC9QYQ1b7eW+kbN+w2lXvygvl9n71
 BHU9sbc+mDac6Sk0RHx1jLMZhf8BfeCr/Gcu36jf7YVG0mFunjGzrzPhqhRHwmAMbJoQ
 N1pTKT7VAFTz8nn8kTw6ha2gDkAxe08Q/HZlr7/7kPP6tFPyYlPe3dgmcrFK1NF0dcY4
 MFmlFPWE5RvnpzNEPfbAECUcgIkGSjNCUHpskE8JxwmlWeiIvnIEg3IcCLPEzZxxJyVF
 MzMEKbBsoNOtYuCCszXD2tV+0HnTCqNpb/nzkUaMc61hGaaTCSae3cKKgdnEY+zZgdiO
 uTpA==
X-Gm-Message-State: AGi0PuZVlslbum0sZTomvquM79xJCNAxrkFoLY8VDaubSmj/ZfDP7HMq
 lm7prRFlFU5HOUD2py0bcvQ=
X-Google-Smtp-Source: APiQypKYtSlEoaruFsAq0fVU+3+ulWKUMGKAHDwwzV7LgGzHarBw/AkttQfcsuTgGPzsZZ852cus+Q==
X-Received: by 2002:a5d:6310:: with SMTP id i16mr8811623wru.244.1586359454449; 
 Wed, 08 Apr 2020 08:24:14 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id q19sm31925948wra.38.2020.04.08.08.24.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 08:24:13 -0700 (PDT)
Date: Wed, 8 Apr 2020 17:24:12 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: Trying to kexec on Allwinner A80
Message-ID: <20200408152412.GA3621@Red>
References: <20200407100203.GK25745@shell.armlinux.org.uk>
 <20200407101912.GL25745@shell.armlinux.org.uk>
 <20200407113454.GA457@Red>
 <20200407122243.GN25745@shell.armlinux.org.uk>
 <20200407130559.GB457@Red>
 <20200407132602.GO25745@shell.armlinux.org.uk>
 <20200407134849.GC457@Red>
 <20200407181740.GP25745@shell.armlinux.org.uk>
 <20200408084029.GA1859@Red>
 <20200408093320.GQ25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408093320.GQ25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_082416_032751_81AFA4B3 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, Apr 08, 2020 at 10:33:20AM +0100, Russell King - ARM Linux admin wrote:
> On Wed, Apr 08, 2020 at 10:40:29AM +0200, Corentin Labbe wrote:
> > This is the last boot:
> > ## Loading init Ramdisk from Legacy Image at 2a000000 ...
> >    Image Name:   
> >    Image Type:   ARM Linux RAMDisk Image (uncompressed)
> >    Data Size:    8031928 Bytes = 7.7 MiB
> >    Load Address: 00000000
> >    Entry Point:  00000000
> >    Verifying Checksum ... OK
> > ## Flattened Device Tree blob at 23000000
> >    Booting using the fdt blob at 0x23000000
> >    Loading Ramdisk to 29857000, end 29fffeb8 ... OK
> >    Loading Device Tree to 2984e000, end 29856fd1 ... OK
> > Starting kernel ...
> > ID:0x00000000 DT:0x2984E000
> > Uncompressing Linux... done, booting the kernel.
> > [...]
> > fake uboot stuff
> > [...]
> > DEBUG: bootz: run kexec with --debug --kexec-syscall --force --initrd /tmp/ramdisk --dtb /tmp/dtb --command-line='console=ttyS0,115200n8 root=/dev/ram0 earlycon=uart,mmio32,0x7000000 earlyprintk ip=dhcp'
> > Set DEBUG!
> > main:1417 OPT_KEXEC_SYSCALL
> > main:1422 OPT_KEXEC_SYSCALL_AUTO
> > arch_process_options:119
> > main:1500
> > main:1517 res=0 do_load=1
> > main:1519 res=0 do_kexec_file_syscall=0
> > my_load:713
> > Try gzip decompression.
> > kernel: 0xb6931008 kernel_size: 0x444fc8
> > get_memory_ranges:36
> > MEMORY RANGES
> > 0000000020000000-000000009fffffff (0)
> > zImage_arm_load:423
> > zImage header: 0x016f2818 0x00000000 0x00444fc8
> > zImage size 0x444fc8, file size 0x444fc8
> > zImage requires 0x00455fc8 bytes
> >   offset 0x00006738 tag 0x5a534c4b size 8
> > Decompressed kernel sizes:
> >  text+data 0x00b77958 bss 0x0003d428 total 0x00bb4d80
> > Resulting kernel space: 0x00fcd920
> > Kernel: address=0x20008000 size=0x00fcd920
> > Initrd: address=0x20fd6000 size=0x016a6b97
> > DT    : address=0x2267d000 size=0x00006043
> > kexec_load: entry = 0x20008000 flags = 0x280000
> > nr_segments = 3
> > segment[0].buf   = 0xb6931008
> > segment[0].bufsz = 0x444fcc
> > segment[0].mem   = 0x20008000
> > segment[0].memsz = 0x445000
> > segment[1].buf   = 0xb528a008
> > segment[1].bufsz = 0x16a6b97
> > segment[1].mem   = 0x20fd6000
> > segment[1].memsz = 0x16a7000
> > segment[2].buf   = 0x4ef88
> > segment[2].bufsz = 0x6043
> > segment[2].mem   = 0x2267d000
> > segment[2].memsz = 0x7000
> > main:1568 res=0[   32.098439] sun7i-dwmac 830000.ethernet eth0: Link is Down
> > main:1582 res=0 do_exec=1
> > [   32.113191] kexec_core: Starting new kernel
> > [   32.460412] Bye!
> > ID:0xFFFFFFFF DT:0x2267D000
> > C:0x200080C0-0x2044CFE0->0x20B80500-0x20FC5420
> > ID:0xFFFFFFFF DT:0x2267D000
> > Uncompressing Linux... done, booting the kernel.
> 
> Okay, that looks fine:
> - the DT is out of the way, so shouldn't be corrupted by the
>   decompression process.
> - the decompressor writes the kernel image to 0x20008000 to 0x20b7f958
>   which is clear of the decompressor itself (which relocated itself
>   to 0x20b80500).
> - the ID doesn't matter for DT booting purposes.
> 
> I see you've gone back to using your own dtb rather than one derived
> from the booting kernel. I strongly recommend against giving your own
> dtb to kexec as if the boot loader modifies the DTB when calling the
> first kernel (such as adding memory region information, adding MAC
> addresses, enabling or disabling various devices) those modifications
> will be lost if you supply your own DTB to kexec.
> 
> Please drop "--dtb /tmp/dtb".
> 

Thanks it works now.

With a working setup I diffed dtb and the one given by uboot and it seems the missing node for booting was /memory.
So now I am able to boot the same kernel as the "fake uboot".

For booting a different kernel, I fdtput the dtb (for memory and bootargs), and it works until it try to mount the roofs which it find corrupt.
Since the rootfs I get by the fakeuboot is a "uboot legacy image" (rootfs.cpio.gz modified by mkimage), I drop the first 64bytes but it seems not sufficiant. (even if file say it is a good rootfs.cpio.gz)
Or perhaps the kernel get an invalid initrd address.

Anyway the main issue is fixed.
Thanks for your help

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
