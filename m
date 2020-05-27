Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F66B1E4406
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:41:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FG+LbiDf1Hti5IBIjGQsMdTb6AxsvIq2F/5aWCJU0I=; b=o7xnAVStzUVNdj
	VcwhZ1Wur4DnIpUyUUf4R89hrOIbCZ8Vmz5DQs40Jx3gtCIWkSY0NgBlFmlUpBlecU9E0hoxNGHxU
	UBlg0xnehFTkWT5z5mJMJ0lVPB/ElK/cEMtv8pwsXCefUtP7IFgsEqT2Nq2v8boOKW2fa1X0AugnO
	tIXQR08qXdr+ynEDJLI6w0Oo6wQ0Voje6ywnoOb7k/FJcH2RLPwi28edMiDDPjA/fMA9W8v0z52oW
	1K57IdgH/xIo19MExWovHBcd2rhn46MjSLmG9vKbdJYXFGCisGZtIp/O5IsDT2wM8aJVzqi+aRkEt
	iQ1JTxsrQT+pgFoWqctg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwJE-0006K1-Og; Wed, 27 May 2020 13:41:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwJ0-0006Iu-OG
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:41:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 163A755D;
 Wed, 27 May 2020 06:41:11 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ECA433F305;
 Wed, 27 May 2020 06:41:09 -0700 (PDT)
Date: Wed, 27 May 2020 14:41:04 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: arm64/acpi: NULL dereference reports from UBSAN at boot
Message-ID: <20200527134104.GA16115@e121166-lin.cambridge.arm.com>
References: <20200521100952.GA5360@willie-the-truck>
 <20200521173738.GA29590@e121166-lin.cambridge.arm.com>
 <20200526202157.GE2206@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526202157.GE2206@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_064114_834101_9545F2E4 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, rjw@rjwysocki.net, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 09:21:57PM +0100, Will Deacon wrote:
> Hi Lorenzo, Hanjun, [+Nick]
> 
> On Thu, May 21, 2020 at 06:37:38PM +0100, Lorenzo Pieralisi wrote:
> > On Thu, May 21, 2020 at 11:09:53AM +0100, Will Deacon wrote:
> > > Hi folks,
> > > 
> > > I just tried booting the arm64 for-kernelci branch under QEMU (version
> > > 4.2.50 (v4.2.0-779-g4354edb6dcc7)) with UBSAN enabled, and I see a
> > > couple of NULL pointer dereferences reported at boot. I think they're
> > > both GIC related (log below). I don't see a panic with UBSAN disabled,
> > > so something's fishy here.
> > 
> > May I ask you the QEMU command line please - just to make sure I can
> > replicate it.
> 
> As it turns out, I'm only able to reproduce this when building with Clang,
> but I don't know whether that's because GCC is missing something of Clang
> is signalling a false positive. You also don't need all of those whacky
> fuzzing options enabled.
> 
> Anyway, to reproduce:
> 
>  $ git checkout for-next/kernelci
>  $ make ARCH=arm64  CC=clang CROSS_COMPILE=aarch64-linux-gnu- defconfig
>  <then do a menuconfig and enable UBSAN>
>  $ make ARCH=arm64  CC=clang CROSS_COMPILE=aarch64-linux-gnu- Image
> 
> I throw that at QEMU using:
> 
> qemu-system-aarch64 -M virt -machine virtualization=true \
> 	-machine virt,gic-version=3 \
> 	-cpu max,sve=off -smp 2 -m 4096 \
> 	-drive if=pflash,format=raw,file=efi.img,readonly \
> 	-drive if=pflash,format=raw,file=varstore.img \
> 	-drive if=virtio,format=raw,file=disk.img \
> 	-device virtio-scsi-pci,id=scsi0 \
> 	-device virtio-rng-pci \
> 	-device virtio-net-pci,netdev=net0 \
> 	-netdev user,id=net0,hostfwd=tcp::8222-:22 \
> 	-nographic \
> 	-kernel ~/work/linux/arch/arm64/boot/Image \
> 	-append "earlycon root=/dev/vda2"
> 
> I built QEMU a while ago according to:
> 
> https://mirrors.edge.kernel.org/pub/linux/kernel/people/will/docs/qemu/qemu-arm64-howto.html
> 
> and its version 4.2.50 (v4.2.0-779-g4354edb6dcc7).
> 
> My clang is version 11.0.1.

Thanks a lot Will.

I *think* I was right - it is the ACPI_OFFSET() macro:

#define ACPI_OFFSET(d, f)  ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)

that triggers the warnings (I suspected it because at least in one of
the warnings I could not see any dereference of any dynamically
allocated data).

Now on what to do with it - thoughts welcome.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
