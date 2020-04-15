Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 825211A976D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:49:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3uLAK+vXMBgEaBc/fAni8pxTwVhwe9sWzEQb3QksgOU=; b=BBPOUI24q7yrXe
	gv3WW2hViFCS69a3Y6HE4Wbg+Uhzmjd7IPK4Vf+05wVLax5w4XJSiN469KCdazg0UUhyvs0RHdkYp
	e3Wof8be1d7O2pDQnvUcdB5bnBOhxcmT5Uz0jEIsjiG5nPBrkajxjk+5VIdHoPOzr7zfzCyuILcs5
	QCVmmrzW3gf8UfJNl3LZtBjUS+SGAtmDxXMI2sZyny2sUMk3z2x9qRoCnTyK5z00J1yI2QeOT70RM
	F8Ws0RU8i8ZWqOxCSTzRISPO6qWUro3aMa91vb4Xls9o7rV4PfH0KzxF1cn1TiwaSyyAKUaszF+ac
	curqUolDxSYXoOdcWhYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdjP-0004YP-9X; Wed, 15 Apr 2020 08:49:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdjH-0004Xp-9w
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:49:08 +0000
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com
 [209.85.166.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D3ACA206F9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 08:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586940546;
 bh=g3jTsiWBobdlG3cJ8P59mnujtAll5NXQFUNf1n/x9ZY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=16gJHz+Zrvg/zy5t+FBHPqwly2Optx5V141i1iuq1qe4aVnhy+WmAlxdh6OeOAHZ6
 LsESvLMB5ANWAbaanWmQzMm5uH8Zjce1cQYySExcYBOMA+ie/7olftdSGjbX3IFxHI
 8/emRhtDiQVhSP7+P677FQWZXQWTaU0F8EfyPvSU=
Received: by mail-il1-f171.google.com with SMTP id u5so2570770ilb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 01:49:06 -0700 (PDT)
X-Gm-Message-State: AGi0Pub1JYNOzZ8vuAfXUcPxX1FW6Er5VQ0cZpGC3/PX1ctTbqPN0L/4
 Gh/b87oT4AgXFRxr1OICJfgwDqqux1JI6Cjr230=
X-Google-Smtp-Source: APiQypIl6XDIIsvh0DSw7s8W7m3Lg+gaTreM42U+yS33W93ZT4Vkt442ev4DOPotrgCYquC8uUwMkTaZxKsXypkK7LQ=
X-Received: by 2002:a92:aa0f:: with SMTP id j15mr4358177ili.211.1586940546276; 
 Wed, 15 Apr 2020 01:49:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200415082922.32709-1-ardb@kernel.org>
 <20200415083900.GA12621@willie-the-truck>
In-Reply-To: <20200415083900.GA12621@willie-the-truck>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 15 Apr 2020 10:48:55 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFLte7R2zXRLRBxetS1WTYaGTonOC0nvyzK+be8EsfDrA@mail.gmail.com>
Message-ID: <CAMj1kXFLte7R2zXRLRBxetS1WTYaGTonOC0nvyzK+be8EsfDrA@mail.gmail.com>
Subject: Re: [PATCH] arm64: set TEXT_OFFSET to 0x0 in preparation for removing
 it entirely
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_014907_382390_1445B9D5 
X-CRM114-Status: GOOD (  24.39  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, james.morse@arm.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 at 10:39, Will Deacon <will@kernel.org> wrote:
>
> On Wed, Apr 15, 2020 at 10:29:22AM +0200, Ard Biesheuvel wrote:
> > TEXT_OFFSET on arm64 is a historical artifact from the early days of
> > the arm64 port where the boot protocol was basically 'copy this image
> > to the base of memory + 512k', giving us 512 KB of guaranteed BSS space
> > to put the swapper page tables. When the arm64 port was merged for
> > v3.10, the Image header already carried the actual value of TEXT_OFFSET,
> > to allow the bootloader to discover it dynamically rather than hardcode
> > it to 512 KB.
>
> Hey, we're older than that! (3.7)
>

Ah right. But the header field was added in v3.10 - I'll fix that in
v2. All way before my time anyway :-)


> > Today, this memory window is not used for any particular purpose, and
> > it is simply handed to the page allocator at boot. The only reason it
> > still exists is because of the 512k misalignment it causes with respect
> > to the 2 MB aligned virtual base address of the kernel, which affects
> > the virtual addresses of all statically allocated objects in the kernel
> > image.
> >
> > However, with the introduction of KASLR in v4.6, we added the concept of
> > relocatable kernels, which rewrite all absolute symbol references at
> > boot anyway, and so the placement of such kernels in the physical address
> > space is irrelevant, provided that the minimum segment alignment is
> > honoured (64 KB in most cases, 128 KB for 64k pages kernels with vmap'ed
> > stacks enabled). This makes 0x0 and 512 KB equally suitable values for
> > TEXT_OFFSET on the off chance that we are dealing with boot loaders that
> > ignore the value passed via the header entirely.
> >
> > Considering that the distros as well as Android ship KASLR-capable
> > kernels today, and the fact that TEXT_OFFSET was discoverable from the
> > Image header from the very beginning, let's change this value to 0x0, in
> > preparation for removing it entirely at a later date.
>
> Can we kill CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET at the same time please?
> It seems less useful now than ever and it would move us closer to removing
> the TEXT_OFFSET definition entirely (but maybe we should wait a couple of
> cycles before doing that... what do you reckon?).
>

The idea was to start with this patch, which can be reverted very
easily if it causes any issues. Then, once we're confident that it is
safe, we just rip it all out in one go.

In the mean time, if we do find issues with other projects,
CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET may be useful for validation, and
it is off by default anyway.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
