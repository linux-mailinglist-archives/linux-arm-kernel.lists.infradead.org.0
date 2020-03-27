Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 643E6195B4E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 17:39:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FVR1a1/4POKo0N/6LbJbZVzfKuin5qwAKrNAsBHH1Q=; b=EfONqTFPOopPpi
	PrmWhJNWPE24RldRLrf98q11f0q4bUaz78otKcwqq/WHcmJFdZzFfQPeDBzTWm1cRwnF9ZB7wVayL
	qRcz6CL9L4784hYbKDn/Mda6zIk9AiWe+V8Wzc5Ru/PtIbjI2LE2gSsqTCjYaSfB/HZnZ2c8w7vBx
	pYddE9HtbXPxfJt4s/WoAxecgCZWxV/K+CbJ0PVfiUWGU3TwH6Y2sLmw0PvD8kBkRY1JNHKmOTFoe
	I6fbXVv+v74JwsBeRXWV76Rjq32jwEn6sljjeJhouj1aJ1BIVvSrpxIOjbQQApUK3f78wDIJ4kDAR
	OB+srsp/jkprGGo4oTVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHs1K-0007Cg-8F; Fri, 27 Mar 2020 16:39:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHs1C-0007CK-Ay
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 16:39:39 +0000
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com
 [209.85.166.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 957B12072F
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 16:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585327177;
 bh=ZEddlQQBVpZaj68WLHeCIllXn470qEYZsu7CXKIM1ME=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0JyndC3rN2BUpb325ijRrsPTzuQ8ygS2o+amG95PBOQvI6lG58PIddSXQl1WrRYrk
 Oeb/gCTBhqwNVgZ4/B19Xu8OJK8O9iMorFMcfTG/oe3ePB9mWrdImBLHeduhoICROT
 uVUWHxhWCMefsMfv2J9vxrUfcwJNJppCN+tobQrQ=
Received: by mail-il1-f177.google.com with SMTP id r5so9343212ilq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 09:39:37 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1VHAew1L0+dWgzifFI/OPyW7wzKe2pEqmguzvtzFrE/h8pZsJI
 2G6Si3cwOPjRPPQw9rm6pclyVl3rR3Cp/nHbwL4=
X-Google-Smtp-Source: ADFU+vuirgriVF5NaFjEEhDBaIwOsBfuw95HZvZrU2mT18aiPHSY2CISoFqvIX1qQZwRmH6GphbGbem1XLIcbGjresU=
X-Received: by 2002:a92:ddcb:: with SMTP id d11mr14616725ilr.211.1585327176978; 
 Fri, 27 Mar 2020 09:39:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200326165905.2240-1-ardb@kernel.org>
 <20200327131900.000068aa@Huawei.com>
In-Reply-To: <20200327131900.000068aa@Huawei.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 27 Mar 2020 17:39:26 +0100
X-Gmail-Original-Message-ID: <CAMj1kXHCs8N3AHjhToseAaLAE4VWi_yC=BF6nru9M3gASJz6Jw@mail.gmail.com>
Message-ID: <CAMj1kXHCs8N3AHjhToseAaLAE4VWi_yC=BF6nru9M3gASJz6Jw@mail.gmail.com>
Subject: Re: [PATCH 0/2] efi/arm64: execute the kernel in place if possible
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_093938_393744_DA35F277 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-efi <linux-efi@vger.kernel.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 27 Mar 2020 at 14:19, Jonathan Cameron
<Jonathan.Cameron@huawei.com> wrote:
>
> On Thu, 26 Mar 2020 17:59:03 +0100
> Ard Biesheuvel <ardb@kernel.org> wrote:
>
> > Update the relocation logic in the EFI stub for arm64 so it runs the
> > kernel in place if it was loaded by firmware at an address which allows
> > doing so. Then, update the PE/COFF header metadata and increase the
> > section alignment to force the UEFI image loader to honour the minimal
> > alignment requirement imposed by the kernel proper.
> >
> > Ard Biesheuvel (2):
> >   efi/libstub/arm64: avoid copying the kernel unnecessarily
> >   efi/arm64: increase the PE/COFF alignment so the kernel can run in
> >     place
> >
> >  arch/arm64/kernel/efi-header.S            | 2 +-
> >  arch/arm64/kernel/image-vars.h            | 7 +++++++
> >  drivers/firmware/efi/libstub/arm64-stub.c | 9 +++++++++
> >  3 files changed, 17 insertions(+), 1 deletion(-)
> >
> Hi Ard.
>
> Seems sensible to me so I decided to give it a quick test.
> As things stand RELOCATABLE is only selectable by selecting
> RANDOMIZE_BASE.   Probably want to be able to configure it
> separately (needs some help text, or a specific option to
> select CONFIG_RELOCATABLE).
>

The idea is really that KASLR kernels that were booted without a seed
(or with 'nokaslr' on the command line) take this path. But in fact, I
realized that the same logic applies to non-relocatable kernels, just
with an alignment of 2 MB rather than 64 KB or 128 KB. So I will be
sending a v2 that looks slightly different. (Another thing that I
realized is that /if/ the KASLR path fails for any reason, we could
still take this path instead of doing the allocation)

> Otherwise, superficially seems to work good for me doing a
> boot via pxe/grub on a Kunpeng 920 with some prints added to
> make sure it's taking the right paths.
>

Excellent! Thanks for testing, and I will be cc'ing you on v2.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
