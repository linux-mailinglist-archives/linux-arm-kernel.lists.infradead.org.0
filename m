Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 930F3EF313
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 02:58:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXWcm3htn7nl3vlLkYht9ladmX6FdG8UYGsaenHqQUE=; b=rsCfncZrG3bE6C
	li747dxx+rwUn05eCIdQS938IUyOvZ7yBe/2qSW4GX3/YHgsI6Ozh0uFUqXilBBM2HnSZYhzOw+Mk
	pNcHTSZfZqI7QdEGTz8jelLqqvlzhhWjQV9N/isnFqU4477ErMxCYEjG2aJ7wOOsERK6CMO+HGM5d
	TcOrMt2eRNPW8OfaZcMqK3bW3Kyzfxrm8mYkEg2r5oWJl6DhBWJHGUH717hRj6zswb9iTbQXAdJEB
	fMqeT+++1eiqYPCMKm5+R5HLtBgNDX/OK/u/QZYyULqtwB+HCa8OT/UeHOl7oNTJJMsIEnfML4iSH
	hVnp1+CYVokyBcxNYfHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRo6q-0000vH-Mk; Tue, 05 Nov 2019 01:58:16 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRo6h-0000uv-M8
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 01:58:09 +0000
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com
 [209.85.217.45]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id xA51veaX029975
 for <linux-arm-kernel@lists.infradead.org>; Tue, 5 Nov 2019 10:57:41 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com xA51veaX029975
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1572919061;
 bh=wnNLKDcLbY3/yKFW6RfxoG2eNTucv+kYwn7VETE2Ss4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=EGNHG3Gf56RamlIbWHuLeOWObCMMRhDJbFCPltyeSCQ/fp+jBIyW3Xg51a8GBioJZ
 g25/G6GhcdmEtPCM6HCU12tEGZsN2umDShfxqwkY736okcSEXatODaIJdZhMyBgKbC
 Q8Ybjy0U+nJUSnzkUebOZtlBXMQzDmOQgBi6uSRWk8xQMpjaVE76zinEzUox7rGa5/
 Zepr/Ao266Co8YxuqDdssK9rByY9cenRyhQdK5ySrztrK9YjPt3ieoiwKcmsjAyt/L
 tSaIqgMHmLY36NOASFPaFv6NIKpxpNvE1AiZa0NGsdv2S0SevI1sZAlU+B47x8UMmB
 eJ4tklhr2l5zQ==
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id 190so7855603vss.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 17:57:41 -0800 (PST)
X-Gm-Message-State: APjAAAWfYbYqZ52Kj7Bl2RrRUYPX9zWWkruVmCOwMESxKz7jwA1KcMqX
 wqD4Yq0vdndd7IoCvc+aYIYWdXuowKCoSFL8zWQ=
X-Google-Smtp-Source: APXvYqzFNajTAhIs/fw26OaE2g+A5ZLDCiX8mkE1P9UMTg1Ch/QNPc3yAz63Ebx/DZ4nOX6a4pcbQNdTpnUu7q5CLMU=
X-Received: by 2002:a67:2d08:: with SMTP id t8mr14547734vst.155.1572919059960; 
 Mon, 04 Nov 2019 17:57:39 -0800 (PST)
MIME-Version: 1.0
References: <20191101081148.23274-1-yamada.masahiro@socionext.com>
 <20191101081148.23274-3-yamada.masahiro@socionext.com>
 <CAL_Jsq+_vKmhVacTnt7fXJFsFGkg0AopdiZ4XaQ3V4M=zhn_CA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+_vKmhVacTnt7fXJFsFGkg0AopdiZ4XaQ3V4M=zhn_CA@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 5 Nov 2019 10:57:04 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ-rd6FsBY4CUk3yFzRgEE4mZyytQG6OCBb9Ww2f7bwcg@mail.gmail.com>
Message-ID: <CAK7LNAQ-rd6FsBY4CUk3yFzRgEE4mZyytQG6OCBb9Ww2f7bwcg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: decompressor: simplify libfdt builds
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_175807_970897_BE871B00 
X-CRM114-Status: GOOD (  22.48  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Russell King <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 David Gibson <david@gibson.dropbear.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 5, 2019 at 10:04 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Fri, Nov 1, 2019 at 3:12 AM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> >
> > Copying source files during the build time may not end up with
> > as clean code as you expect.
> >
> > lib/fdt*.c simply wrap scripts/dtc/libfdt/fdt*.c, and it works
> > nicely. Let's follow that approach for the arm decompressor, too.
> >
> > Add four wrappers, arch/arm/boot/compressed/fdt*.c and remove the
> > Makefile messes.
> >
> > Another nice thing is we no longer need to maintain the separate
> > libfdt_env.h since we can include <linux/libfdt_env.h>, and the
> > diff stat also looks nice.
> >
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > ---
> >
> > Changes in v2: None
> >
> >  arch/arm/boot/compressed/.gitignore     |  9 -------
> >  arch/arm/boot/compressed/Makefile       | 33 +++++++------------------
> >  arch/arm/boot/compressed/atags_to_fdt.c |  1 +
> >  arch/arm/boot/compressed/fdt.c          |  2 ++
> >  arch/arm/boot/compressed/fdt_ro.c       |  2 ++
> >  arch/arm/boot/compressed/fdt_rw.c       |  2 ++
> >  arch/arm/boot/compressed/fdt_wip.c      |  2 ++
> >  arch/arm/boot/compressed/libfdt_env.h   | 22 -----------------
> >  8 files changed, 18 insertions(+), 55 deletions(-)
> >  create mode 100644 arch/arm/boot/compressed/fdt.c
> >  create mode 100644 arch/arm/boot/compressed/fdt_ro.c
> >  create mode 100644 arch/arm/boot/compressed/fdt_rw.c
> >  create mode 100644 arch/arm/boot/compressed/fdt_wip.c
> >  delete mode 100644 arch/arm/boot/compressed/libfdt_env.h
>
> Looks fine to me other than my question on licensing on patch 1.
>
> Who did you want to take the series? I can take it with Russell's ack.

Rob,
I'd like you to take the whole of this patch set
if there is no objection.

Russell,
Is this patch OK with you?



> >
> > -$(addprefix $(obj)/,$(libfdt_objs) atags_to_fdt.o): \
> > -       $(addprefix $(obj)/,$(libfdt_hdrs))
> > +OBJS   += $(libfdt_objs)
>
> Seems like this file could benefit from doing 'OBJS-$(CONFIG_*)' style
> variables.

I agree, but this kind of refactoring is
not the main interest of this series.

It should be done by a separate patch if it is desired.



> > diff --git a/arch/arm/boot/compressed/fdt.c b/arch/arm/boot/compressed/fdt.c
> > new file mode 100644
> > index 000000000000..f8ea7a201ab1
> > --- /dev/null
> > +++ b/arch/arm/boot/compressed/fdt.c
> > @@ -0,0 +1,2 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +#include "../../../../lib/fdt.c"
> > diff --git a/arch/arm/boot/compressed/fdt_ro.c b/arch/arm/boot/compressed/fdt_ro.c
> > new file mode 100644
> > index 000000000000..93970a4ad5ae
> > --- /dev/null
> > +++ b/arch/arm/boot/compressed/fdt_ro.c
> > @@ -0,0 +1,2 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +#include "../../../../lib/fdt_ro.c"
> > diff --git a/arch/arm/boot/compressed/fdt_rw.c b/arch/arm/boot/compressed/fdt_rw.c
> > new file mode 100644
> > index 000000000000..f7c6b8b7e01c
> > --- /dev/null
> > +++ b/arch/arm/boot/compressed/fdt_rw.c
> > @@ -0,0 +1,2 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +#include "../../../../lib/fdt_rw.c"
> > diff --git a/arch/arm/boot/compressed/fdt_wip.c b/arch/arm/boot/compressed/fdt_wip.c
> > new file mode 100644
> > index 000000000000..048d2c7a088d
> > --- /dev/null
> > +++ b/arch/arm/boot/compressed/fdt_wip.c
> > @@ -0,0 +1,2 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +#include "../../../../lib/fdt_wip.c"


I gave GPL-2.0-only to this,
but it should be the same as lib/fdt*.c,
which is now being discussed in 1/3.



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
