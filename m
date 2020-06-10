Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD521F4FDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 10:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iY3QyG0KW2pkqR88eKV0bo6aHXoIgL0VMQ9HeRmShw0=; b=K54ztpNm/ZwypS
	VT4IONm7IJHFbfpSQK4IsBrToCNlVB2kLZKpPtWewH6o5BVJzgmvwAAH/J8iTa5zDqaO6UdXqEVJm
	14b2qxMlxl+6U3+wL1oz8xrkvI+nLD95TnNQzlDyRvqUDeWuLwUzCIjn0G0RCHf2lN9/KHh9ssxwB
	LZ15nT44q0MIpOMQR9S7YOOigIV9tL/3QkRgV37pdqKTmZTb+EDgNO+ciA6eoqNTDhJMwLbt4AF5c
	pO1QQDQsdM2telLB8DNJZVlgIZMlZPLV5l0uAZNWRIqwA+eA+3HjYlHcyXpxXmOuHNKRKroo1boS1
	z4Cmm9A9VgKH6T+WAdnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivf8-0006Il-Sc; Wed, 10 Jun 2020 08:00:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivex-0006IE-Uv
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 08:00:33 +0000
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
 [209.85.210.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58BE5206C3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 08:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591776031;
 bh=FAdHFQnLWqU7V/CLKqgnX3eMb4dwLD/XeGpKGuwa0Ps=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Mzt43DLjx5j4+eQ0b2AuM54n3o6R+cV89y0VsTHH5oFYD0v2ytzXfsanp5EvOffVE
 N8EJhnlmfUFAb0QiZecr5m/KO6unAsS2eFxEHX6pHkFoMDip6ZNIy3MqvrmBPweL2x
 w8vt6zT4dZ6QN5Nv0wRPmVe2fe1V8Ab6DiLV2344=
Received: by mail-ot1-f45.google.com with SMTP id e5so991648ote.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 01:00:31 -0700 (PDT)
X-Gm-Message-State: AOAM5336Bw/2VmRcpwmh11rVzTqZ+TXykPNMt/CdzNfhYF/x7B2+M6qq
 jlt3jXN29yxtT1fgXjsl/9tY1QYK2e3o+vom3BU=
X-Google-Smtp-Source: ABdhPJxuQWr84gMacb/a6f9SzUwi1kqC15NFZ4y1j2X2hWUD8YkhBaBpuZ66t8CNgxHKeOSwAFP/ChjObyX+SAwt+2c=
X-Received: by 2002:a9d:2de4:: with SMTP id g91mr1622120otb.90.1591776030720; 
 Wed, 10 Jun 2020 01:00:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200604022031.164207-1-masahiroy@kernel.org>
 <20200610075837.GD15939@willie-the-truck>
In-Reply-To: <20200610075837.GD15939@willie-the-truck>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 10 Jun 2020 10:00:19 +0200
X-Gmail-Original-Message-ID: <CAMj1kXES7MoxWDQeO=D-88fit4H_Qh9SEQmikcJA39d8czPCBQ@mail.gmail.com>
Message-ID: <CAMj1kXES7MoxWDQeO=D-88fit4H_Qh9SEQmikcJA39d8czPCBQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] efi/libstub/arm64: link stub lib.a conditionally
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_010032_017042_4A5F77F5 
X-CRM114-Status: GOOD (  17.73  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, linux-efi <linux-efi@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 10 Jun 2020 at 09:58, Will Deacon <will@kernel.org> wrote:
>
> On Thu, Jun 04, 2020 at 11:20:30AM +0900, Masahiro Yamada wrote:
> > Since commit 799c43415442 ("kbuild: thin archives make default for
> > all archs"), core-y is passed to the linker with --whole-archive.
> > Hence, the whole of stub library is linked to vmlinux.
> >
> > Use libs-y so that lib.a is passed after --no-whole-archive for
> > conditional linking.
> >
> > The unused drivers/firmware/efi/libstub/relocate.o will be dropped
> > for ARCH=arm64.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> > This patch touches under arch/arm64/, but
> > this is more related to efi.
> > I am sending this to Ard.
>
> Ok, I'll ignore this then. Ard -- please yell if you want me to do anything
> else with it.
>

I am going to send a batch of EFI fixes early next week, so I can take
this as well, or alternatively, you can apply it directly.

>
> > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > index 650e1185c190..48a6afa774fc 100644
> > --- a/arch/arm64/Makefile
> > +++ b/arch/arm64/Makefile
> > @@ -145,7 +145,7 @@ export    TEXT_OFFSET
> >
> >  core-y               += arch/arm64/
> >  libs-y               := arch/arm64/lib/ $(libs-y)
> > -core-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
> > +libs-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
> >
> >  # Default target when executing plain make
> >  boot         := arch/arm64/boot
> > --
> > 2.25.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
