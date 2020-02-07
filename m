Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B88155792
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 13:24:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1e1HXqpQsBFaF7lmnkSwcQRsCL+YoIW/zxCYxNTXNXU=; b=I1Rr9SVGLivxod
	X68+StJYtygXVNEy2I+DMIucoogOND3Mf9nm8fKHsGcS08lWW3uAMOso6vAJSOeucJTButOxv6cET
	qBcCYtNqvBRSV/BaKIULiNb7I9V9KFZuwzo+Eql6xr8c7XuTq/k2QBGxUJqzcKv3ZxOU31AISiHfn
	syfQfrd0DFKrerFItQOIGD+JhUXw5WjjdwtawWg8t/0EfeEr3e8o4UuOFEd6Avhn/QRYMrGpEMD+W
	j9fN15wQgfTaiArdpwj3y4u8PP6Je42Oeg3QWrUzQ6jTm5zOsWze1U5GTzMkMEsUcH/WOClLerQbv
	x/8K5CaAFKMw4B00YoYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j02fv-0000jK-7l; Fri, 07 Feb 2020 12:23:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j02fo-0000it-El
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 12:23:54 +0000
Received: by mail-wr1-x444.google.com with SMTP id y11so2454465wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 04:23:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s9mNwVu6UPwo3klOK1lw0yhyo/vVobSRmEvvb899H58=;
 b=L1cK9vbufGotk/HgkzB7S2+EQkpwMxchGem3wDs/FKK4BBbGBH0AvDxSHPDeb69cz8
 2GikMX23rqtud4Xk91boYi8tYBciFM4FcHNnksPW4Rin9u6yPGQc1353hawQ9a2YeWY3
 88g4eFBZXJyla2nJONjucsXysrqb4X9wyUEMSA1t8x+6eoH0dVgovf/qJlAvelp+s4Pm
 v8rPq4YXkfm4IMQ8sikhCgKXac27Yhs9SFftBC7qI95/aFAj+dL4Zrv8N05ZuuJFavxv
 8rZ59NWvA02nIS3iavAp8m5n7Bk1qfjp3v/5SsQDpDxq2pfmc95L3eahNK2XvV/qec2q
 Jpgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s9mNwVu6UPwo3klOK1lw0yhyo/vVobSRmEvvb899H58=;
 b=bYx2NNPKm2nu6VCteShmVXpUnqRYI+er6sgGitydHiGYmIQhXI2chDxtOPCOi/P63M
 va0wMXJhwE3gjdn+CPc+pDu/+9/5wyV6dewLuN2CrzAqSIyJtejfLSHr4yRgI3ErYUmV
 vCTiVKB51g6W455MpmH6hnXAWzbt+5EY9NvhRczs1MUir4ylf69xOXMle+8ziNBHIZw6
 fVm25ehEE+yUX9WzuPwW0zXaPUuOr8ClFjGmUoz+9bxELGoc03oqrH/wqmNgx60k0Yeq
 Aii6h3lfunuDrjOxtJ3yd+Tgqdym9xTVK/Zgs5q4LfZYR5Ta4WzogftOYeilXJ+SSl7F
 Pv/Q==
X-Gm-Message-State: APjAAAX8fPeD2F6EmisryrPGQo8oFtcg9qbwNWx4ZvofoWI5D9YH5GPL
 qN4qfk6jMfMmm0zgaXUjMJQxFyEZ2Ac1WY05zLdAwg==
X-Google-Smtp-Source: APXvYqy1aja7klc/f3krQcz8ds8Vg7AEMMftrJr2tmzUb7q+R0CRNxzD+d0Cx8d5MnI4Eker20sH0AJ0tE/1+0PUoJY=
X-Received: by 2002:adf:8564:: with SMTP id 91mr4649217wrh.252.1581078230421; 
 Fri, 07 Feb 2020 04:23:50 -0800 (PST)
MIME-Version: 1.0
References: <20200206140352.6300-1-ardb@kernel.org>
 <fa3b3103-e77d-571d-71a4-604fa48368e6@redhat.com>
 <cfb38b38-14f2-c61a-60a0-dfe14667b49c@redhat.com>
In-Reply-To: <cfb38b38-14f2-c61a-60a0-dfe14667b49c@redhat.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 7 Feb 2020 12:23:39 +0000
Message-ID: <CAKv+Gu__fUGyv4eu5oKcsVZYSbKRfYYd_VS8CGEV4jC+GuvqJA@mail.gmail.com>
Subject: Re: [PATCH 0/2] arch-agnostic initrd loading method for EFI systems
To: Laszlo Ersek <lersek@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_042352_527591_D3246CE5 
X-CRM114-Status: GOOD (  31.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Alexander Graf <agraf@csgraf.de>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Daniel Kiper <daniel.kiper@oracle.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Matthew Garrett <mjg59@google.com>, Peter Jones <pjones@redhat.com>,
 Leif Lindholm <leif@nuviainc.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 7 Feb 2020 at 09:22, Laszlo Ersek <lersek@redhat.com> wrote:
>
> On 02/07/20 10:09, Laszlo Ersek wrote:
> > On 02/06/20 15:03, Ard Biesheuvel wrote:
> >> This series introduces an arch agnostic way of loading the initrd into
> >> memory from the EFI stub. This addresses a number of shortcomings that
> >> affect the current implementations that exist across architectures:
> >>
> >> - The initrd=<file> command line option can only load files that reside
> >>   on the same file system that the kernel itself was loaded from, which
> >>   requires the bootloader or firmware to expose that file system via the
> >>   appropriate EFI protocol, which is not always feasible. From the kernel
> >>   side, this protocol is problematic since it is incompatible with mixed
> >>   mode on x86 (this is due to the fact that some of its methods have
> >>   prototypes that are difficult to marshall)
> >>
> >> - The approach that is ordinarily taken by GRUB is to load the initrd into
> >>   memory, and pass it to the kernel proper via the bootparams structure or
> >>   via the device tree. This requires the boot loader to have an understanding
> >>   of those structures, which are not always set in stone, and of the policies
> >>   around where the initrd may be loaded into memory. In the ARM case, it
> >>   requires GRUB to modify the hardware description provided by the firmware,
> >>   given that the initrd base and offset in memory are passed via the same
> >>   data structure. It also creates a time window where the initrd data sits
> >>   in memory, and can potentially be corrupted before the kernel is booted.
> >>
> >> Considering that we will soon have new users of these interfaces (EFI for
> >> kvmtool on ARM, RISC-V in u-boot, etc), it makes sense to add a generic
> >> interface now, before having another wave of bespoke arch specific code
> >> coming in.
> >>
> >> Another aspect to take into account is that support for UEFI secure boot
> >> and measured boot is being taken into the upstream, and being able to
> >> rely on the PE entry point for booting any architecture makes the GRUB
> >> vs shim story much cleaner, as we should be able to rely on LoadImage
> >> and StartImage on all architectures, while retaining the ability to
> >> load initrds from anywhere.
> >>
> >> Note that these patches depend on a fair amount of cleanup work that I
> >> am targetting for v5.7. Branch can be found at:
> >> https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/log/?h=efistub-unification2
> >>
> >> An implementation for ArmVirtQemu (OVMF for ARM aka AAVMF) can be found
> >> at https://github.com/ardbiesheuvel/edk2/commits/linux-efi-generic.
> >> The change is for ARM only, but the exact same code could be used on x86.
> >
> > I like this ArmVirtQemu feature, but I think it should be implemented as
> > an addition, rather than a replacement. Older kernels (older EFI stubs)
> > will try to fetch the initrd from the same fs where grub loaded the
> > kernel from (exactly as you describe in the blurb).
> >

Agreed. The ArmVirtQemu change is not intended for merging, but
primarily as a test rig for the kernel changes.

> > For example, virt-install's "--location" option "can recognize certain
> > distribution trees and fetches a bootable kernel/initrd pair to launch
> > the install". It would be nice to keep that working for older distros.
> >
> > I think LoadFile[2] can co-exist with SimpleFs.
> >
> > I also think that the "try SimpleFs first, fall back to LoadFile[2]
> > second" requirement applies only to the UEFI boot manager, and not to
> > the kernel's EFI stub. IOW in the new approach the kernel is free to
> > ignore (abandon) the old approach for good.
>
> ... But that might not be good for compatibility with grub and/or the
> platform firmware, from the kernel's own perspective, perhaps?...
>
> Who is supposed to produce LoadFile2 with the new VenMedia devpath?
>

What I am ultimately after is a generic GRUB that uses
LoadImage+Startimage for starting the kernel on all architectures, and
is able to load the initrd from anywhere in an arch agnostic manner.

Additionally, we might have
- an implementation for OVMF/AAVMF,
- a EDK2 UEFI Shell command that takes a shell file path to provide
the Linux initrd
- a uboot implementation that passes the initrd this way.

This series is the first step, to align between all the stakeholders
on the approach for this aspect, before taking it any further.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
