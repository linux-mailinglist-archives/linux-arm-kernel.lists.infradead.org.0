Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A67D31EE801
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 17:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jhyuHsQeQl9QwgXz7wpEULbtk+CU061QCXLcIZi93Uc=; b=qh0kulMD+xZC0M
	hsfuZi2MVmsIdAozUAaU5pva4iaLtLisWGLRgZQMpZJbAlXPy7OrH8aqhRc6RZ+TRgNA22ayJ7CPX
	EdU9hLQ7KGJnohd9nWlSlafmuw3TXGgyRES1DYN2jgUKVOmLAIwL0VIFi8OgJJC7GWbJaU4HXykFb
	Vme48FxUeIFq8TKOPJ3k/aNqlHnSEcZTUAq71D3bVGdATrJ7rc4RzgBQaWNkOH5OhONmuC94UdXDY
	ooZRSSqmTPohmxb0tqS5LfRxUidRiXXZ6muxZ3ISqWTMBypv4Kmm6NY29NEx47mHIPjgBpjyeWU5R
	WgqoRLwhej7lYSOaTe+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgs6R-0000vq-6f; Thu, 04 Jun 2020 15:48:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgs6H-0000v7-Kc
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 15:48:15 +0000
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
 [209.85.167.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B5DA2065C
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  4 Jun 2020 15:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591285693;
 bh=Fp7pnwwDl+f13F1WigkOl1kkJSNRLBp+Hz32k00S3wI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZeKMLYfGy8aev7GjJ9Radq5vrkMCm60EVY7w4drmzmaPWWDLBMlu6zqzOMpQsIhfX
 kOaq1XYZAY3HpGqol7d7+nIURBUjMoA6CGQ6ZLyK+V021dlAm5dIc4wwmsBOjwCAaZ
 wFVX4R5lVjy5sL05W+9TqjFRu+kf9eX16qffcFx0=
Received: by mail-oi1-f182.google.com with SMTP id i74so5503192oib.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 08:48:13 -0700 (PDT)
X-Gm-Message-State: AOAM532LSDWDSw7X3KaGdAD+VT+HLeu01wbGUh3tN+lvBC02XSrRBPn1
 XEK1tHFTrCNvkLwNt33wZHsVcCtiTlit5NU4FEs=
X-Google-Smtp-Source: ABdhPJxu7uWRjoI3/mOTHWHdEHr1iCP/WrAVVRLKzWXjBQFAQLxor6HDrMK2Z45aeTGVZwUNtNuXTFX5dxgAygJCmZ0=
X-Received: by 2002:aca:6144:: with SMTP id v65mr3522144oib.33.1591285692604; 
 Thu, 04 Jun 2020 08:48:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200415082922.32709-1-ardb@kernel.org>
 <158808120907.217905.4632288691847383619.b4-ty@kernel.org>
 <20200604154141.4983aeaa@why> <20200604150122.GA3650@willie-the-truck>
 <fab4fb9e66fe48d82c9856a7d5839335@kernel.org>
 <CAMj1kXFS8Vvjfpb8HYzRvsaB0j7bs+2V4rXE8DzfNMJxsV3r0g@mail.gmail.com>
In-Reply-To: <CAMj1kXFS8Vvjfpb8HYzRvsaB0j7bs+2V4rXE8DzfNMJxsV3r0g@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 4 Jun 2020 17:48:01 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEnJOUSWZTMGCn6cS3OiM9_DpJUj-MekENySf1x6Y1W5g@mail.gmail.com>
Message-ID: <CAMj1kXEnJOUSWZTMGCn6cS3OiM9_DpJUj-MekENySf1x6Y1W5g@mail.gmail.com>
Subject: Re: [PATCH] arm64: set TEXT_OFFSET to 0x0 in preparation for removing
 it entirely
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_084813_719666_608C4E0E 
X-CRM114-Status: GOOD (  22.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, suzuki.poulose@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 4 Jun 2020 at 17:41, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Thu, 4 Jun 2020 at 17:25, Marc Zyngier <maz@kernel.org> wrote:
> >
> > On 2020-06-04 16:01, Will Deacon wrote:
> > > On Thu, Jun 04, 2020 at 03:41:41PM +0100, Marc Zyngier wrote:
> > >> Hi all,
> > >>
> > >> On Tue, 28 Apr 2020 15:49:35 +0100
> > >> Will Deacon <will@kernel.org> wrote:
> > >>
> > >> > On Wed, 15 Apr 2020 10:29:22 +0200, Ard Biesheuvel wrote:
> > >> > > TEXT_OFFSET on arm64 is a historical artifact from the early days of
> > >> > > the arm64 port where the boot protocol was basically 'copy this image
> > >> > > to the base of memory + 512k', giving us 512 KB of guaranteed BSS space
> > >> > > to put the swapper page tables. When the arm64 port was merged for
> > >> > > v3.10, the Image header already carried the actual value of TEXT_OFFSET,
> > >> > > to allow the bootloader to discover it dynamically rather than hardcode
> > >> > > it to 512 KB.
> > >> > >
> > >> > > [...]
> > >> >
> > >> > Applied to arm64 (for-next/misc), thanks!
> > >> >
> > >> > [1/1] arm64: set TEXT_OFFSET to 0x0 in preparation for removing it entirely
> > >> >       https://git.kernel.org/arm64/c/cfa7ede20f13
> > >>
> > >> This breaks a guest kernel booted with kvmtool (tested on my d05).
> > >> Reverting it on top of 6929f71e46bd makes it work again. I haven't yet
> > >> investigated what is happening here though.
> > >
> > > Weird, that's a combination I test, just not on d05. Are you using
> > > defconfig? Can you share your full kvmtool invication please?
> >
> > Ah, good point. Not defconfig, but one that allows me to run the same
> > kernel on my whole zoo[1]. As for the kvmtool invocation, it is pretty
> > basic:
> >
> > lkvm run -m 512 -c 4 -p earlycon -k arch/arm64/boot/Image
> >
>
> OK, so my suspicions is that your config does not enable
> CONFIG_RANDOMIZE_BASE, and that kvmtool ignores the text offset value
> in the header altogether.

arm/aarch64/include/kvm/kvm-arch.h:#define ARM_KERN_OFFSET(kvm)
((kvm)->cfg.arch.aarch32_guest  ?       \
arm/aarch64/include/kvm/kvm-arch.h-                             0x8000
                         :       \
arm/aarch64/include/kvm/kvm-arch.h-                             0x80000)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
