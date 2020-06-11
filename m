Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DEC1F6FCA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 00:19:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0uOBtOj+8sf9KDP/Z4lllmPGiCWpqiOdeZW3LCKdcis=; b=Dq9NCH30Vxl5Md
	fmBA4mH2L9BmenRRhYjDRk89BAPh6e20bgZetZveGFMfol15ygr6n3gMReZF4aTctrKhPczSKaXo5
	h3PFpncRUYW9ojegO+fvaQ02cp3JBpc59KGbm6vKwOmjtz200YKhwtCpiKCh+T83/qpXlmH+5cFZi
	gVA50OJHRN1f8qMlOC+qyrRhr4TLrqITV/Gcw0qZ3ckHNudBYLi3Ok6pAInwND2bi6qW7Y7RzfJi1
	7JtmYCMRAky6BWmoanas2zf1Tu0tGlNpZA6mbFq+i/apwEpoLe9ZWrlfCTBNi5dQ3KP0ZANj7MWQG
	l7gWyDAyvt4ZodOVLBfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjVXM-00054d-9i; Thu, 11 Jun 2020 22:19:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjVXE-000545-Eb
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 22:18:58 +0000
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
 [209.85.167.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E3A7B20656
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 22:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591913936;
 bh=imyi61X0ra1DJYkPhcb95DNLqe+3YOzR5B5jEd+A14Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ILAXCAH8ByjFrgwxHmf7A5T1Dk/6ll22nmOWPbu7/O10zoU3xPqJuExMfjQTEojG3
 kBJBOap0aPC7TO1TTsNyoNrj635D95vidS2WwvT66W6LVMdWkKLxHeAI2B9EY0raEH
 JmqEVK/I1XKVz7MHQmFNAv8cH1bsnYhKzJr0+o1M=
Received: by mail-oi1-f182.google.com with SMTP id k4so6934096oik.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 15:18:55 -0700 (PDT)
X-Gm-Message-State: AOAM531nTyBFpA4BwbOR7pxdMdayAy9IPuDq/x9bFxIPSreqD/+nRH3N
 GTvpPYc/EktCFKLS/yF/fBqsaNBmxbS/50pI5Yg=
X-Google-Smtp-Source: ABdhPJwrDgwDHsUaFQb+w39G3rWIBANhwcpBILA0tSL2g1bjnKgBiBTM5X1nPV1nywiH2Q5nDslPNwror7sRI/FVjXI=
X-Received: by 2002:aca:b241:: with SMTP id b62mr125033oif.47.1591913935327;
 Thu, 11 Jun 2020 15:18:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200607135834.898294-1-ardb@kernel.org>
 <20200607135834.898294-2-ardb@kernel.org>
 <96a36110-68e1-89e3-2d59-b16f01abae21@gmx.de>
 <CAMj1kXG9XTtsyLQ=njM8LPCYCE2tOrrYQtctU_acNAxLfe=5oQ@mail.gmail.com>
 <f8a485d2-1e00-1d02-58a4-2e1684bfbfb4@gmx.de>
 <CAMj1kXGLoKDLJAihThkkcYwNpr12inneEB3dMOqvcZFm9oR5_w@mail.gmail.com>
In-Reply-To: <CAMj1kXGLoKDLJAihThkkcYwNpr12inneEB3dMOqvcZFm9oR5_w@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 12 Jun 2020 00:18:43 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFjuMy6+amsMmmepkNATCec4vsxeiVVFq9CFZ64wbmGaA@mail.gmail.com>
Message-ID: <CAMj1kXFjuMy6+amsMmmepkNATCec4vsxeiVVFq9CFZ64wbmGaA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] efi/arm: decompressor: deal with HYP mode boot
 gracefully
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_151856_526650_5D2F2503 
X-CRM114-Status: GOOD (  22.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Tue, 9 Jun 2020 at 09:58, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Mon, 8 Jun 2020 at 12:46, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
> >
> > On 6/8/20 1:08 AM, Ard Biesheuvel wrote:
> > > On Sun, 7 Jun 2020 at 19:24, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
> > >>
> > >> On 6/7/20 3:58 PM, Ard Biesheuvel wrote:
> > >>> EFI on ARM only supports short descriptors, and given that it mandates
> > >>> that the MMU and caches are on, it is implied that booting in HYP mode
> > >>> is not supported.
> > >>>
> > >>> However, implementations of EFI exist (i.e., U-Boot) that ignore this
> > >>> requirement, which is not entirely unreasonable, given that it makes
> > >>> HYP mode inaccessible to the operating system.
> > >>>
> > >>> So let's make sure that we can deal with this condition gracefully.
> > >>> We already tolerate booting the EFI stub with the caches off (even
> > >>> though this violates the EFI spec as well), and so we should deal
> > >>> with HYP mode boot with MMU and caches either on or off.
> > >>>
> > >>> - When the MMU and caches are on, we can ignore the HYP stub altogether,
> > >>>   since we can carry on executing at HYP. We do need to ensure that we
> > >>>   disable the MMU at HYP before entering the kernel proper.
> > >>>
> > >>> - When the MMU and caches are off, we have to drop to SVC mode so that
> > >>>   we can set up the page tables using short descriptors. In this case,
> > >>>   we need to install the HYP stub as usual, so that we can return to HYP
> > >>>   mode before handing over to the kernel proper.
> ...
> >
> > Hello Ard,
> >
> > thanks for supplying a branch for testing:
> > https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/log/?h=efi-arm-hyp-mode
> >
> > The OrangePi PC boots fine with this branch. PSCI is enabled. Rebooting
> > the system works fine. See log below.
> >
> > With the patch 2/2 you add an output line for the exceptions level and
> > the MMU status. Above you state "We already tolerate booting the EFI
> > stub with the caches off." This relates to a workaround in U-Boot
> > accomodating old GRUB versions (CONFIG_EFI_GRUB_ARM32_WORKAROUND=y).
> >
> > Would a further diagnostic line showing if D-cache and I-cache is
> > enabled make sense?
> >
> > Tested-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
> >
> > Loading Linux 5.7.0-armmp-lpae+ ...
> > Loading initial ramdisk ...
> > EFI stub: Running in HYP mode with MMU enabled
>
> BTW is this with or without the GRUB hack?
>

I've given this a spin myself on a RPi4 running 32-bit U-boot, and
everything works as expected, both with and without the GRUB hack
enabled.

Russell, given that this only affects code inside #ifdef
CONFIG_EFI_STUB, do you have any objections to me taking this as a fix
via the EFI tree? I have a set of fixes I need to queue up and send
out anyway, and I intend to do so early next week.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
