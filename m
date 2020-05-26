Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C5D1E2FE3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 22:22:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PzUVSUBcHTfFoWDTNJQ1eMSO/nd1+hVLBw0jIiAdrwY=; b=n4OBH/Ccquys9p
	gXv32XaaYd1dH7N0RO4DlMQnUv9++q1OBsqTkTLf2qC9mLj+TT6Xa/JeKi3tHTgXkedxPsbFWkZD2
	VwRUnRXtzAQ1CbprIPRPDee1LQV9VOfhoM9TUf2ZyHJswVHvL3UtKAeWLAYquB+SqoITEQaz3yunr
	k405iMsFc179P+Zt6m05WenC+/Hp1b6n2NkhEuWXJPa/4HpTdEmRvtC0Vnc42Zt8efCLvrhUnfgru
	WJvrpHlE9+Xz7SPOHRC5ZvYXw0dMn/o5Op2mJmjBdgks6ENB/1IOFr29X3N22mHZQK5BQgx696qur
	isoUx5c3I1xTUL2dz6Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdg5U-0001u1-Lp; Tue, 26 May 2020 20:22:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdg5K-0001tK-Cr
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 20:22:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7945207D8;
 Tue, 26 May 2020 20:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590524522;
 bh=nqEQAKe1E02EN8Nj+D8tTjNZWIBlnWbZha/PR+697TY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W6NNzQlrklzzDSURv+i0A0/DJQCLA2gJcnFHYjDcxivIImAite7Y8Jqcsh2Lc9ust
 IE8ABMrPoL1vEEWDrMXExFBkqQBy7TluD4WiVrLvWgV60Mucrf5dmERtWu104Oglgf
 PSfaoBByOs8cF59IyvmtiHtAfDoVUmUFoJHoq3yU=
Date: Tue, 26 May 2020 21:21:57 +0100
From: Will Deacon <will@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: arm64/acpi: NULL dereference reports from UBSAN at boot
Message-ID: <20200526202157.GE2206@willie-the-truck>
References: <20200521100952.GA5360@willie-the-truck>
 <20200521173738.GA29590@e121166-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521173738.GA29590@e121166-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_132202_458096_EC5E88EB 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Hi Lorenzo, Hanjun, [+Nick]

On Thu, May 21, 2020 at 06:37:38PM +0100, Lorenzo Pieralisi wrote:
> On Thu, May 21, 2020 at 11:09:53AM +0100, Will Deacon wrote:
> > Hi folks,
> > 
> > I just tried booting the arm64 for-kernelci branch under QEMU (version
> > 4.2.50 (v4.2.0-779-g4354edb6dcc7)) with UBSAN enabled, and I see a
> > couple of NULL pointer dereferences reported at boot. I think they're
> > both GIC related (log below). I don't see a panic with UBSAN disabled,
> > so something's fishy here.
> 
> May I ask you the QEMU command line please - just to make sure I can
> replicate it.

As it turns out, I'm only able to reproduce this when building with Clang,
but I don't know whether that's because GCC is missing something of Clang
is signalling a false positive. You also don't need all of those whacky
fuzzing options enabled.

Anyway, to reproduce:

 $ git checkout for-next/kernelci
 $ make ARCH=arm64  CC=clang CROSS_COMPILE=aarch64-linux-gnu- defconfig
 <then do a menuconfig and enable UBSAN>
 $ make ARCH=arm64  CC=clang CROSS_COMPILE=aarch64-linux-gnu- Image

I throw that at QEMU using:

qemu-system-aarch64 -M virt -machine virtualization=true \
	-machine virt,gic-version=3 \
	-cpu max,sve=off -smp 2 -m 4096 \
	-drive if=pflash,format=raw,file=efi.img,readonly \
	-drive if=pflash,format=raw,file=varstore.img \
	-drive if=virtio,format=raw,file=disk.img \
	-device virtio-scsi-pci,id=scsi0 \
	-device virtio-rng-pci \
	-device virtio-net-pci,netdev=net0 \
	-netdev user,id=net0,hostfwd=tcp::8222-:22 \
	-nographic \
	-kernel ~/work/linux/arch/arm64/boot/Image \
	-append "earlycon root=/dev/vda2"

I built QEMU a while ago according to:

https://mirrors.edge.kernel.org/pub/linux/kernel/people/will/docs/qemu/qemu-arm64-howto.html

and its version 4.2.50 (v4.2.0-779-g4354edb6dcc7).

My clang is version 11.0.1.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
