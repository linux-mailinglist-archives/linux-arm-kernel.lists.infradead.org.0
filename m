Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78ABB1F359F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 09:59:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQ6pXoI4OJs5q9hDFThqDp+9mYhQWMx8RpjiSttq0+Q=; b=DpNxBgF31laeMJ
	ZeRnRvlD0uQpUy+aJVp1sHok35rM+FcJ4UJK0WJnUJyTA5Gj4Ep8KSOyiB1cKwEB1Sl+kmKMRP9Io
	uQpffYrK89dWTJRJvdbvJIsMfqol9a98HlmELippvNjddvdS4u5AIKuwZg3VHY5yGM5OGLocLBP5M
	lsgzykQ4fLs3n8uZz9IPcyLcJwGof7bvzhyk0i0A8ZJN9bn961oc63jGIR5quxNsAevCiW/yA3++4
	YryVOTNIPvj2W6rpZXN9/jYHkBninQoKbwqUIqGk8HKB6MLOeJP7STLg59GM6gvqKxneO+7+DFq1k
	K3AvLu8bEZbsIwchgqMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiZA1-0002FA-5L; Tue, 09 Jun 2020 07:59:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiZ9q-0002Dz-JX
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 07:58:56 +0000
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DFF992081A
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  9 Jun 2020 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591689534;
 bh=gLxLpnDha3syMmZIalD47Kf4pqdSrEtHsNSdFF36XKQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=pwvrAAMBm8cxhfpWaRwbtpz0K4cXXsJO2j2T9K0XctngwcfRrLnK9XAm0fQ4aG5FD
 2BCFiXbr8vghBI4Q40ywmrNIAiODrPCrV5aQ029+7dKGJjkWFChSu9nsyxTD+dWKJp
 hARqWn0qt7Y5WEATT1m2GunfEupOMiKVEI6v6OXA=
Received: by mail-oi1-f178.google.com with SMTP id i74so17924615oib.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 00:58:53 -0700 (PDT)
X-Gm-Message-State: AOAM5316tn3Dp9Q1Azmw69kQ2Hx0gPaxrDIFHUMP8L2x/sK+OADLKW2J
 P5/kXOjAK/zIQ1v3DbRThh88DH2u4KF+e2hi4l8=
X-Google-Smtp-Source: ABdhPJxSAcEceqG5g/vpQvYjPkEZ4Ons5owNEr0NEq+uvtSqIOw8DQ2g65p90uK6jStiN5nEqzjKPJJp8/RQcbTZ654=
X-Received: by 2002:aca:b887:: with SMTP id i129mr2264784oif.47.1591689533242; 
 Tue, 09 Jun 2020 00:58:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200607135834.898294-1-ardb@kernel.org>
 <20200607135834.898294-2-ardb@kernel.org>
 <96a36110-68e1-89e3-2d59-b16f01abae21@gmx.de>
 <CAMj1kXG9XTtsyLQ=njM8LPCYCE2tOrrYQtctU_acNAxLfe=5oQ@mail.gmail.com>
 <f8a485d2-1e00-1d02-58a4-2e1684bfbfb4@gmx.de>
In-Reply-To: <f8a485d2-1e00-1d02-58a4-2e1684bfbfb4@gmx.de>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 9 Jun 2020 09:58:41 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGLoKDLJAihThkkcYwNpr12inneEB3dMOqvcZFm9oR5_w@mail.gmail.com>
Message-ID: <CAMj1kXGLoKDLJAihThkkcYwNpr12inneEB3dMOqvcZFm9oR5_w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] efi/arm: decompressor: deal with HYP mode boot
 gracefully
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_005854_688336_F2EEFCE3 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marc Zyngier <maz@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-efi <linux-efi@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 8 Jun 2020 at 12:46, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
>
> On 6/8/20 1:08 AM, Ard Biesheuvel wrote:
> > On Sun, 7 Jun 2020 at 19:24, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
> >>
> >> On 6/7/20 3:58 PM, Ard Biesheuvel wrote:
> >>> EFI on ARM only supports short descriptors, and given that it mandates
> >>> that the MMU and caches are on, it is implied that booting in HYP mode
> >>> is not supported.
> >>>
> >>> However, implementations of EFI exist (i.e., U-Boot) that ignore this
> >>> requirement, which is not entirely unreasonable, given that it makes
> >>> HYP mode inaccessible to the operating system.
> >>>
> >>> So let's make sure that we can deal with this condition gracefully.
> >>> We already tolerate booting the EFI stub with the caches off (even
> >>> though this violates the EFI spec as well), and so we should deal
> >>> with HYP mode boot with MMU and caches either on or off.
> >>>
> >>> - When the MMU and caches are on, we can ignore the HYP stub altogether,
> >>>   since we can carry on executing at HYP. We do need to ensure that we
> >>>   disable the MMU at HYP before entering the kernel proper.
> >>>
> >>> - When the MMU and caches are off, we have to drop to SVC mode so that
> >>>   we can set up the page tables using short descriptors. In this case,
> >>>   we need to install the HYP stub as usual, so that we can return to HYP
> >>>   mode before handing over to the kernel proper.
...
>
> Hello Ard,
>
> thanks for supplying a branch for testing:
> https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/log/?h=efi-arm-hyp-mode
>
> The OrangePi PC boots fine with this branch. PSCI is enabled. Rebooting
> the system works fine. See log below.
>
> With the patch 2/2 you add an output line for the exceptions level and
> the MMU status. Above you state "We already tolerate booting the EFI
> stub with the caches off." This relates to a workaround in U-Boot
> accomodating old GRUB versions (CONFIG_EFI_GRUB_ARM32_WORKAROUND=y).
>
> Would a further diagnostic line showing if D-cache and I-cache is
> enabled make sense?
>
> Tested-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
>
> Loading Linux 5.7.0-armmp-lpae+ ...
> Loading initial ramdisk ...
> EFI stub: Running in HYP mode with MMU enabled

BTW is this with or without the GRUB hack?


> EFI stub: Booting Linux Kernel...
> EFI stub: ERROR: Could not determine UEFI Secure Boot status.
> EFI stub: Using DTB from configuration table
> EFI stub: Exiting boot services and installing virtual address map...
> EHCI failed to shut down host controller.
> [    0.000000] Booting Linux on physical CPU 0x0
> [    0.000000] Linux version 5.7.0-armmp-lpae+ (user@node)
> (arm-linux-gnueabihf-gcc (Debian 9.3.0-13) 9.3.0, GNU ld (GNU Binutils
> for Debian) 2.34) #10 SMP Mon Jun 8 03:44:37 CEST 2020
> [    0.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7),
> cr=30c5387d
> [    0.000000] CPU: div instructions available: patching division code
> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing
> instruction cache
> [    0.000000] OF: fdt: Machine model: Xunlong Orange Pi PC
> [    0.000000] Memory policy: Data cache writealloc
> [    0.000000] efi: EFI v2.80 by Das U-Boot
> [    0.000000] efi: RTPROP=0x78f30040 SMBIOS=0x78f2a000
> MEMRESERVE=0x6a1fa040
> [    0.000000] cma: Reserved 16 MiB at 0x000000007f000000
> [    0.000000] Zone ranges:
> [    0.000000]   DMA      [mem 0x0000000040000000-0x000000006fffffff]
> [    0.000000]   Normal   empty
> [    0.000000]   HighMem  [mem 0x0000000070000000-0x000000007fffffff]
> [    0.000000] Movable zone start for each node
> [    0.000000] Early memory node ranges
> [    0.000000]   node   0: [mem 0x0000000040000000-0x0000000078f07fff]
> [    0.000000]   node   0: [mem 0x0000000078f08000-0x0000000078f09fff]
> [    0.000000]   node   0: [mem 0x0000000078f0a000-0x0000000078f24fff]
> [    0.000000]   node   0: [mem 0x0000000078f25000-0x0000000078f28fff]
> [    0.000000]   node   0: [mem 0x0000000078f29000-0x0000000078f29fff]
> [    0.000000]   node   0: [mem 0x0000000078f2a000-0x0000000078f2afff]
> [    0.000000]   node   0: [mem 0x0000000078f2b000-0x0000000078f2cfff]
> [    0.000000]   node   0: [mem 0x0000000078f2d000-0x0000000078f2dfff]
> [    0.000000]   node   0: [mem 0x0000000078f2e000-0x0000000078f2ffff]
> [    0.000000]   node   0: [mem 0x0000000078f30000-0x0000000078f32fff]
> [    0.000000]   node   0: [mem 0x0000000078f33000-0x0000000078f33fff]
> [    0.000000]   node   0: [mem 0x0000000078f34000-0x0000000078f34fff]
> [    0.000000]   node   0: [mem 0x0000000078f35000-0x0000000078f35fff]
> [    0.000000]   node   0: [mem 0x0000000078f36000-0x0000000078f36fff]
> [    0.000000]   node   0: [mem 0x0000000078f37000-0x0000000078f38fff]
> [    0.000000]   node   0: [mem 0x0000000078f39000-0x0000000078f3efff]
> [    0.000000]   node   0: [mem 0x0000000078f3f000-0x000000007df65fff]
> [    0.000000]   node   0: [mem 0x000000007df66000-0x000000007df66fff]
> [    0.000000]   node   0: [mem 0x000000007df67000-0x000000007dfb9fff]
> [    0.000000]   node   0: [mem 0x000000007dfba000-0x000000007dfbcfff]
> [    0.000000]   node   0: [mem 0x000000007dfbd000-0x000000007fffffff]
> [    0.000000] Initmem setup node 0 [mem
> 0x0000000040000000-0x000000007fffffff]
> [    0.000000] psci: probing for conduit method from DT.
> [    0.000000] psci: Using PSCI v0.1 Function IDs from DT

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
