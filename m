Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543F917B45
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 16:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UUZWh5tBaOkLYJqY814pa1EIAf4+gglcOH7ujLMdoe4=; b=JQlp8Frf0qKhJY
	8KU2MC4SWJRK8rb+O1AwMFTrV5kcftd7/kfYY9wiOGSu3IHgyKDVVJXLCm1vSICUV0cyDDVUioImY
	lTWiULT0N1J7f6xEH3GN1t+rxJPcqyiEIhryVr581r+Ni4cXy0WGiLt0sLG2rsRyKMHZYLJATqU0d
	EuIEyouQ7TWsAxoPVqHcDtJLHVyg+ppd1uRLQitBkl2cCzSiPLCGQUUbXLG+4FtF7NuwpxSgryZTy
	RCmD/wPcUVpWiPS8wHARxq7qLZWMCSdVXs7+QQ65CoGBfe6yjhi0dECSo+MFiYRfreViAH8VVFTZ3
	bKSa+xkQS3OsHOVdeiKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hONBO-0003hy-4I; Wed, 08 May 2019 14:04:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hONBH-0003he-8H
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 14:04:24 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BF45C216F4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  8 May 2019 14:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557324262;
 bh=KlTf0lMaCe47EgBjCnPByj4hDErmqmcJfE6SdzLc12M=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2buYcneBmgQ5V4Iw6o/K3ZrNV0b77ofTlHXyAj0b4jQdn9AtpAzSTjEwoAqk1h+gT
 ueccm04t06vQFNAXTBQ+YbLu1GfVVzYoBQuoRJdtEiSMwzKRKD8Oe//WdpKM+50KYZ
 3ke6V30/bQeBnbleUiNNiV6w6lxABp63FSReE2gM=
Received: by mail-qk1-f173.google.com with SMTP id c15so3262360qkl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 07:04:22 -0700 (PDT)
X-Gm-Message-State: APjAAAWoRt+FUhDOyB5LeKjfVZw/yOeLbyzoXnLyZ1yHd/m40eWt+3RX
 JdxHf7jQ2YF0Z9F8T8JSJX1STua/RtwSHwA5pA==
X-Google-Smtp-Source: APXvYqwcHIVFkIoGCXVZq2f5fTsv1WzR50s06Zc88lHoMFN67drmKMqTiFVbYH/8xeLwoA2P5feUPfU7TuRdlEMoJ30=
X-Received: by 2002:a37:4711:: with SMTP id u17mr29663919qka.326.1557324261976; 
 Wed, 08 May 2019 07:04:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190507045433.542-1-hsinyi@chromium.org>
 <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
 <CAJMQK-iVhScf0ybZ85kqP0B5_QPoYZ9PZt35jHRUh8FNHKvu7w@mail.gmail.com>
In-Reply-To: <CAJMQK-iVhScf0ybZ85kqP0B5_QPoYZ9PZt35jHRUh8FNHKvu7w@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 8 May 2019 09:04:10 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJZ+mOnrLWt0Cpo_Ybr_ohxwWom1qiyV8_EFocULde7=Q@mail.gmail.com>
Message-ID: <CAL_JsqJZ+mOnrLWt0Cpo_Ybr_ohxwWom1qiyV8_EFocULde7=Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: add support for rng-seed
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_070423_330197_17EC74B7 
X-CRM114-Status: GOOD (  29.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Architecture Mailman List <boot-architecture@lists.linaro.org>,
 Michal Hocko <mhocko@suse.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Stephen Boyd <swboyd@chromium.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 11:08 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> On Wed, May 8, 2019 at 3:47 AM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > +boot-architecture list as there was some discussion about this IIRC.
> >
> > On Mon, May 6, 2019 at 11:54 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> > >
> > > Introducing a chosen node, rng-seed, which is an 64 bytes entropy
> > > that can be passed to kernel called very early to increase device
> > > randomness. Bootloader should provide this entropy and the value is
> > > read from /chosen/rng-seed in DT.
> > >
> > > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > >
> > > ---
> > >  Documentation/devicetree/bindings/chosen.txt | 14 +++++++++
> >
> > Actually, this file has been converted to json-schema and lives
> > here[1]. I need to remove this one (or leave it with a reference to
> > the new one).
> >
> > >  arch/arm64/kernel/setup.c                    |  2 ++
> > >  drivers/of/fdt.c                             | 33 ++++++++++++++++++++
> > >  include/linux/of_fdt.h                       |  1 +
> > >  4 files changed, 50 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
> > > index 45e79172a646..bfd360691650 100644
> > > --- a/Documentation/devicetree/bindings/chosen.txt
> > > +++ b/Documentation/devicetree/bindings/chosen.txt
> > > @@ -28,6 +28,20 @@ mode) when EFI_RNG_PROTOCOL is supported, it will be overwritten by
> > >  the Linux EFI stub (which will populate the property itself, using
> > >  EFI_RNG_PROTOCOL).
> > >
> > > +rng-seed
> > > +-----------
> > > +
> > > +This property served as an entropy to add device randomness. It is parsed
> > > +as a 64 byte value, e.g.
> >
> > Why only 64-bytes?
> We can also not specify size and read what bootloader can provide.
> >
> > > +
> > > +/ {
> > > +       chosen {
> > > +               rng-seed = <0x31951b3c 0xc9fab3a5 0xffdf1660 ...>
> > > +       };
> > > +};
> > > +
> > > +This random value should be provided by bootloader.
> > > +
> > >  stdout-path
> > >  -----------
> > >
> > > diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> > > index 413d566405d1..ade4261516dd 100644
> > > --- a/arch/arm64/kernel/setup.c
> > > +++ b/arch/arm64/kernel/setup.c
> > > @@ -292,6 +292,8 @@ void __init setup_arch(char **cmdline_p)
> > >         early_fixmap_init();
> > >         early_ioremap_init();
> > >
> > > +       early_init_dt_rng_seed(__fdt_pointer);
> > > +
> >
> > I'm trying to reduce or eliminate all these early_init_dt_* calls.
> >
> > Why is this arch specific and why can't this be done after
> > unflattening? It doesn't look like add_device_randomness() needs
> > anything early.
> Currently unflattening is called after setup_machine_fdt(), which
> called fixmap_remap_fdt() //__fixmap_remap_fdt(dt_phys, &size,
> PAGE_KERNEL_RO), and we can't modify DT after that since it's read
> only. But we need to clear (eg. write 0 to it) the rng-seed after
> reading from DT.

Why do you need to clear it? That wasn't necessary for kaslr-seed.

Why not change the mapping to RW? It would be nice if this worked on
more than one arch.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
