Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8CA1A1E15
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 11:34:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PFpCWxEDzd+LdB7cizmx9luG9fnfS8a2SEOiQfUZRUQ=; b=ba881bIn/mWcsO
	qGRrRpGdbLpB6L4r43JwvN5xI6gJZgb8p1XHwpBFKLoRSkG/RdowVp6rIvOVx651XHvcRDDOiagy/
	eR6k9I/6rdPe6YXayoivXbd5BGSug2wrLvGVtkTL20lZF6s+cUwz3m/hYeUYDnj5lgfnfXGzBjFdF
	EgARdrhc02i9cJOqJ+z9tQq/fO5iNoCJhGCcgvw2XsLILsoVE/F++eLZh4jSd0s1Xk9McxptJJTOH
	wNXwVXFN7Trws7USrAgm2JansNrliQNsrIQMf0Dxs//Pq/GJyrCS+KViCcnZrO7tMnrfQJ71V1soI
	9hRlxC+sJNqZSst8mCuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM75t-0002J5-UI; Wed, 08 Apr 2020 09:34:01 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM75g-0002HY-EJ; Wed, 08 Apr 2020 09:33:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OzKOw5tqu/qdAWbnxRQAo6XuWQMK869GaiC39ndeWQg=; b=XpuYlTu+C3cJnD8BsUPD2NyKI
 4Ek+6sWOLeEcrASs6OYMPRSHOUkY9VPsIFrgM6kRB9zV6qA3asxWTFaX2cFU7fwQac+ehHg6OeHcU
 T++yXKOQnQxyZeBaq3+69oVC65q12Zf+mxxmVMJXMtsD31gUydhGlt/T4uQRiR7wzv8rMUWCBdJe1
 26svZtTJFgNjIP3JWfyh8x/IF0ixRINlWIWqPosRkmHjISJi7aKop6h0rBoeB0ULfxX/7nloYUBTa
 dKZMjzjHUZXYCotDpxNWfSQ3cTpDLnuKHIG49G25kVMm6LdLMoJM5cJObMJBoI2ZRIDepW8jIPp2s
 gryUieyow==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:43106)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jM75T-00052p-Dd; Wed, 08 Apr 2020 10:33:35 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jM75E-0001il-5Z; Wed, 08 Apr 2020 10:33:20 +0100
Date: Wed, 8 Apr 2020 10:33:20 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: Trying to kexec on Allwinner A80
Message-ID: <20200408093320.GQ25745@shell.armlinux.org.uk>
References: <20200406082720.GA31279@Red>
 <20200407100203.GK25745@shell.armlinux.org.uk>
 <20200407101912.GL25745@shell.armlinux.org.uk>
 <20200407113454.GA457@Red>
 <20200407122243.GN25745@shell.armlinux.org.uk>
 <20200407130559.GB457@Red>
 <20200407132602.GO25745@shell.armlinux.org.uk>
 <20200407134849.GC457@Red>
 <20200407181740.GP25745@shell.armlinux.org.uk>
 <20200408084029.GA1859@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408084029.GA1859@Red>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_023349_591900_1FBC1C04 
X-CRM114-Status: GOOD (  11.07  )
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

On Wed, Apr 08, 2020 at 10:40:29AM +0200, Corentin Labbe wrote:
> This is the last boot:
> ## Loading init Ramdisk from Legacy Image at 2a000000 ...
>    Image Name:   
>    Image Type:   ARM Linux RAMDisk Image (uncompressed)
>    Data Size:    8031928 Bytes = 7.7 MiB
>    Load Address: 00000000
>    Entry Point:  00000000
>    Verifying Checksum ... OK
> ## Flattened Device Tree blob at 23000000
>    Booting using the fdt blob at 0x23000000
>    Loading Ramdisk to 29857000, end 29fffeb8 ... OK
>    Loading Device Tree to 2984e000, end 29856fd1 ... OK
> Starting kernel ...
> ID:0x00000000 DT:0x2984E000
> Uncompressing Linux... done, booting the kernel.
> [...]
> fake uboot stuff
> [...]
> DEBUG: bootz: run kexec with --debug --kexec-syscall --force --initrd /tmp/ramdisk --dtb /tmp/dtb --command-line='console=ttyS0,115200n8 root=/dev/ram0 earlycon=uart,mmio32,0x7000000 earlyprintk ip=dhcp'
> Set DEBUG!
> main:1417 OPT_KEXEC_SYSCALL
> main:1422 OPT_KEXEC_SYSCALL_AUTO
> arch_process_options:119
> main:1500
> main:1517 res=0 do_load=1
> main:1519 res=0 do_kexec_file_syscall=0
> my_load:713
> Try gzip decompression.
> kernel: 0xb6931008 kernel_size: 0x444fc8
> get_memory_ranges:36
> MEMORY RANGES
> 0000000020000000-000000009fffffff (0)
> zImage_arm_load:423
> zImage header: 0x016f2818 0x00000000 0x00444fc8
> zImage size 0x444fc8, file size 0x444fc8
> zImage requires 0x00455fc8 bytes
>   offset 0x00006738 tag 0x5a534c4b size 8
> Decompressed kernel sizes:
>  text+data 0x00b77958 bss 0x0003d428 total 0x00bb4d80
> Resulting kernel space: 0x00fcd920
> Kernel: address=0x20008000 size=0x00fcd920
> Initrd: address=0x20fd6000 size=0x016a6b97
> DT    : address=0x2267d000 size=0x00006043
> kexec_load: entry = 0x20008000 flags = 0x280000
> nr_segments = 3
> segment[0].buf   = 0xb6931008
> segment[0].bufsz = 0x444fcc
> segment[0].mem   = 0x20008000
> segment[0].memsz = 0x445000
> segment[1].buf   = 0xb528a008
> segment[1].bufsz = 0x16a6b97
> segment[1].mem   = 0x20fd6000
> segment[1].memsz = 0x16a7000
> segment[2].buf   = 0x4ef88
> segment[2].bufsz = 0x6043
> segment[2].mem   = 0x2267d000
> segment[2].memsz = 0x7000
> main:1568 res=0[   32.098439] sun7i-dwmac 830000.ethernet eth0: Link is Down
> main:1582 res=0 do_exec=1
> [   32.113191] kexec_core: Starting new kernel
> [   32.460412] Bye!
> ID:0xFFFFFFFF DT:0x2267D000
> C:0x200080C0-0x2044CFE0->0x20B80500-0x20FC5420
> ID:0xFFFFFFFF DT:0x2267D000
> Uncompressing Linux... done, booting the kernel.

Okay, that looks fine:
- the DT is out of the way, so shouldn't be corrupted by the
  decompression process.
- the decompressor writes the kernel image to 0x20008000 to 0x20b7f958
  which is clear of the decompressor itself (which relocated itself
  to 0x20b80500).
- the ID doesn't matter for DT booting purposes.

I see you've gone back to using your own dtb rather than one derived
from the booting kernel. I strongly recommend against giving your own
dtb to kexec as if the boot loader modifies the DTB when calling the
first kernel (such as adding memory region information, adding MAC
addresses, enabling or disabling various devices) those modifications
will be lost if you supply your own DTB to kexec.

Please drop "--dtb /tmp/dtb".

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
