Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FBC9724A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 08:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+gMogVHBu8DAMXcAJVNgAzfmYCc8fexFK5gGl8k6hUc=; b=BQdjTdQ5ZODGd8
	KQRi0wJwRfRMQmvBEEvz4kSa/QVNZ7UekuaoEHGUQZ1PxAzTvGu5SgmtxrfBiPdMzK40+Q91Kz44/
	sl3+pfiWfrK+siCsLYj1StlGH1NQ1rtXIJH0yEP5+y5J2EOQPp1I6BVRNHBjj9ttRUqNahxGE4wKc
	8wA5dDqpz3SndmFehBYBFfGea0IiF5X8O+uXnzsXRSAjbD+Ug5ORghLPfnDAz+2u1Mru+2WadYZHq
	NQDbHtajOMCmsN/Hcbd0vx2/ckQ56nHplCuhxIe9lziGJmZsIWvPu++pX2SBYF6OpyRqhD3t665eA
	uWFw7Y3H/i8FJGtQO85w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0KDb-0004UF-JP; Wed, 21 Aug 2019 06:35:39 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0KDQ-0004TS-Or
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 06:35:30 +0000
Received: by mail-wm1-x341.google.com with SMTP id k1so891709wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 23:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wwWUHZYts+drKn/xffO1pjxZ/7naUbutbTGCAceSvTc=;
 b=VgGxw/btw738XPHhp/L0bKvSoT3qPerWAMK1NEHDGjQsBH1c+GvVxVdG+ELKg0a7qw
 Ud1ki2X8s1J6JjgxwBIEYV2QWmXlco5HDzzUcTS82y8EuC7jpBFTPQJ69lu0+gGPnNkg
 NQGo/pF0YwogR6K3YpQamy/tl3ggi/3YpFwf4xcg+jBAIHK0O0Ytt1vcRZYAEWzeD4LS
 E9qAOrvqm7wTxiX1At6+lIRbZTjLB4kwXrBEejCnH6cscYesK60qJGwX1eo5d5LF1TYN
 23j+25p71iaRWc+oXZRpxrAA91j1sesOitH46KYLRalw6iyg8neOC42NukwlFkMe1Y25
 BV1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wwWUHZYts+drKn/xffO1pjxZ/7naUbutbTGCAceSvTc=;
 b=HDe5kOam8JyDpKTZ7PntkkcU1liEVm/+26SM3yYbkXAdk0fVtkFVubEWlFAdO4Tr+9
 VAJOf64CSu3LR0xYHNpFq7yv3EzqCseWZHMbqkCpndM7ndKkzu8j8L8qjK1bB1M2a7P5
 pg8YlP27/4czGwCKPTScn8Q+dReam6U5CdMVd0KD4/AW6PBUwc+5FzzFZBoog4PkT718
 0OASB2w3lQ2XJWzdQrLj98fo0VinHOKkhyxo8kGrkMY2qGmpi3GJPcS/OullajuhU22K
 j+XgXJKrIUw9h136SJ3OcsQw6vlyw5cg2nZcf7DkBvKGPA8ulUbrDBeQrZ8dxNfNjDX2
 rCFg==
X-Gm-Message-State: APjAAAWjpD/kJjPxSFHa4PE1aq413AbihZ8I0JvSsMM1uLEAwALEPfx2
 Q6KSKKVKRXWEJZgMSDJFn79+iBx04U5xsLERvj47UA==
X-Google-Smtp-Source: APXvYqxZ9x1njh2u7SKpOiYXOMgCfQHg0eDluyY/KqYAWC54RNdsCDYER6fXRouO6u+k0xWxMeAI98fN8jZY2TrtyN4=
X-Received: by 2002:a7b:c21a:: with SMTP id x26mr3651362wmi.61.1566369324021; 
 Tue, 20 Aug 2019 23:35:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190802053744.5519-1-clin@suse.com>
 <20190820115645.GP13294@shell.armlinux.org.uk>
 <CAKv+Gu_0wFw5Mjpdw7BEY7ewgetNgU=Ff1uvAsn0iHmJouyKqw@mail.gmail.com>
 <20190821061027.GA2828@linux-8mug>
In-Reply-To: <20190821061027.GA2828@linux-8mug>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 21 Aug 2019 09:35:16 +0300
Message-ID: <CAKv+Gu8Yny8cVPck3rPwCPvJBvcZKMHti_9bkCTM4H4cZ_43fg@mail.gmail.com>
Subject: Re: [PATCH] efi/arm: fix allocation failure when reserving the kernel
 base
To: Chester Lin <clin@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_233528_838566_1DAA2D49 
X-CRM114-Status: GOOD (  22.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Juergen Gross <JGross@suse.com>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "guillaume.gardet@arm.com" <guillaume.gardet@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Joey Lee <JLee@suse.com>, "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>, Gary Lin <GLin@suse.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019 at 09:11, Chester Lin <clin@suse.com> wrote:
>
> On Tue, Aug 20, 2019 at 03:28:25PM +0300, Ard Biesheuvel wrote:
> > On Tue, 20 Aug 2019 at 14:56, Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > >
> > > On Fri, Aug 02, 2019 at 05:38:54AM +0000, Chester Lin wrote:
> > > > diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> > > > index f3ce34113f89..909b11ba48d8 100644
> > > > --- a/arch/arm/mm/mmu.c
> > > > +++ b/arch/arm/mm/mmu.c
> > > > @@ -1184,6 +1184,9 @@ void __init adjust_lowmem_bounds(void)
> > > >               phys_addr_t block_start = reg->base;
> > > >               phys_addr_t block_end = reg->base + reg->size;
> > > >
> > > > +             if (memblock_is_nomap(reg))
> > > > +                     continue;
> > > > +
> > > >               if (reg->base < vmalloc_limit) {
> > > >                       if (block_end > lowmem_limit)
> > > >                               /*
> > >
> > > I think this hunk is sane - if the memory is marked nomap, then it isn't
> > > available for the kernel's use, so as far as calculating where the
> > > lowmem/highmem boundary is, it effectively doesn't exist and should be
> > > skipped.
> > >
> >
> > I agree.
> >
> > Chester, could you explain what you need beyond this change (and my
> > EFI stub change involving TEXT_OFFSET) to make things work on the
> > RPi2?
> >
>
> Hi Ard,
>
> In fact I am working with Guillaume to try booting zImage kernel and openSUSE
> from grub2.04 + arm32-efistub so that's why we get this issue on RPi2, which is
> one of the test machines we have. However we want a better solution for all
> cases but not just RPi2 since we don't want to affect other platforms as well.
>

Thanks Chester, but that doesn't answer my question.

Your fix is a single patch that changes various things that are only
vaguely related. We have already identified that we need to take
TEXT_OFFSET (minus some space used by the swapper page tables) into
account into the EFI stub if we want to ensure compatibility with many
different platforms, and as it turns out, this applies not only to
RPi2 but to other platforms as well, most notably the ones that
require a TEXT_OFFSET of 0x208000, since they also have reserved
regions at the base of RAM.

My question was what else we need beyond:
- the EFI stub TEXT_OFFSET fix [0]
- the change to disregard NOMAP memblocks in adjust_lowmem_bounds()
- what else???


[0] https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git/commit/?h=next&id=0eb7bad595e52666b642a02862ad996a0f9bfcc0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
