Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B51F17DB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 18:07:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+tWRzNMtuc0GpWVwqobjimN+nsdvXnZUnPWqjs4EdbU=; b=ArzKx6/h5qjGTT
	QtWXWwleb4fSMpneTcCbFPj4pGcEONxChYxUDtG0tzc5/Orw1qlNATDMgu2PiFPiH8FYqRMOq4Vxs
	scX7gTlE6Mir9TBYS8jC6KoHeqr8Cp7qkoQqQ0e7ghPxRy8N7QT1fHeR5vKZZAi7HHlt9RldX4j5a
	eXMWXFM4INwKjhBs6ebV2G18gsuM9Ei7om08i3haxDMZAInEqKHlDz3nF3W+OWCjhx0HCPd0FW1PZ
	2d3gBdTQjzyZWSP0YLNTs69T64ERcNecUYk+zDaAbkpyg59WCZn/hyut/rCcaxsihN0P2wjOeAb74
	Y26b3AldAw3TUsQZ8OHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOP6R-0000UD-Vm; Wed, 08 May 2019 16:07:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOP6K-0000Ti-Ba
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 16:07:25 +0000
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8F1E6216B7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  8 May 2019 16:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557331643;
 bh=te54V3NhPkNW+a43eelFgW7lbyLaibO+I4GVSEk3qXw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Q+o+ivGOYKnJ6b9ykMfgbS4vzA3BGLl54ww2Xofcm0UOV9TJSpmuz5F9D3Va8ADqc
 csApdokkVNkGQ2FL4NZXGAqKizZZW74HoBvJ9kxmVsGFAzM9suNf1IYrZH0x+/2xBl
 B57SZ8QwTMsU1/WC+f4/5t4RKXpohO4l0bKdkDS4=
Received: by mail-qk1-f177.google.com with SMTP id w20so1170552qka.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 09:07:23 -0700 (PDT)
X-Gm-Message-State: APjAAAVMHKZmEDzUY1V4dupxQX4lQca3BkI6FLeg663iarR5vnQX/PZv
 3IT6PxrB6sNhzCLyojfPxJzgh+JL6PrTMFzdHA==
X-Google-Smtp-Source: APXvYqwEF0OtcZ6zJJFdozw4W+iSEB9XlfGbMQuQNP+kKQQ/TIN/ccVX5EntxaCaQHOQ+VPuQmHdYBurhou8rFCVTgc=
X-Received: by 2002:a37:4a12:: with SMTP id x18mr29573795qka.184.1557331642793; 
 Wed, 08 May 2019 09:07:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190507045433.542-1-hsinyi@chromium.org>
 <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
 <CAJMQK-iVhScf0ybZ85kqP0B5_QPoYZ9PZt35jHRUh8FNHKvu7w@mail.gmail.com>
 <CAL_JsqJZ+mOnrLWt0Cpo_Ybr_ohxwWom1qiyV8_EFocULde7=Q@mail.gmail.com>
 <CAJMQK-jjzYwX3NZAKJ-8ypjcN75o-ZX4iOVD=84JecEd4qV1bA@mail.gmail.com>
In-Reply-To: <CAJMQK-jjzYwX3NZAKJ-8ypjcN75o-ZX4iOVD=84JecEd4qV1bA@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 8 May 2019 11:07:11 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLnmedF5cJYH+91U2Q_WX755O8TQs6Ue9mqtEiFKcjGWQ@mail.gmail.com>
Message-ID: <CAL_JsqLnmedF5cJYH+91U2Q_WX755O8TQs6Ue9mqtEiFKcjGWQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: add support for rng-seed
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_090724_430996_394604E7 
X-CRM114-Status: GOOD (  36.04  )
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

On Wed, May 8, 2019 at 10:06 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> On Wed, May 8, 2019 at 10:04 PM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Tue, May 7, 2019 at 11:08 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> > >
> > > On Wed, May 8, 2019 at 3:47 AM Rob Herring <robh+dt@kernel.org> wrote:
> > > >
> > > > +boot-architecture list as there was some discussion about this IIRC.
> > > >
> > > > On Mon, May 6, 2019 at 11:54 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> > > > >
> > > > > Introducing a chosen node, rng-seed, which is an 64 bytes entropy
> > > > > that can be passed to kernel called very early to increase device
> > > > > randomness. Bootloader should provide this entropy and the value is
> > > > > read from /chosen/rng-seed in DT.
> > > > >
> > > > > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > > > >
> > > > > ---
> > > > >  Documentation/devicetree/bindings/chosen.txt | 14 +++++++++
> > > >
> > > > Actually, this file has been converted to json-schema and lives
> > > > here[1]. I need to remove this one (or leave it with a reference to
> > > > the new one).
> > > >
> > > > >  arch/arm64/kernel/setup.c                    |  2 ++
> > > > >  drivers/of/fdt.c                             | 33 ++++++++++++++++++++
> > > > >  include/linux/of_fdt.h                       |  1 +
> > > > >  4 files changed, 50 insertions(+)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
> > > > > index 45e79172a646..bfd360691650 100644
> > > > > --- a/Documentation/devicetree/bindings/chosen.txt
> > > > > +++ b/Documentation/devicetree/bindings/chosen.txt
> > > > > @@ -28,6 +28,20 @@ mode) when EFI_RNG_PROTOCOL is supported, it will be overwritten by
> > > > >  the Linux EFI stub (which will populate the property itself, using
> > > > >  EFI_RNG_PROTOCOL).
> > > > >
> > > > > +rng-seed
> > > > > +-----------
> > > > > +
> > > > > +This property served as an entropy to add device randomness. It is parsed
> > > > > +as a 64 byte value, e.g.
> > > >
> > > > Why only 64-bytes?
> > > We can also not specify size and read what bootloader can provide.
> > > >
> > > > > +
> > > > > +/ {
> > > > > +       chosen {
> > > > > +               rng-seed = <0x31951b3c 0xc9fab3a5 0xffdf1660 ...>
> > > > > +       };
> > > > > +};
> > > > > +
> > > > > +This random value should be provided by bootloader.
> > > > > +
> > > > >  stdout-path
> > > > >  -----------
> > > > >
> > > > > diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> > > > > index 413d566405d1..ade4261516dd 100644
> > > > > --- a/arch/arm64/kernel/setup.c
> > > > > +++ b/arch/arm64/kernel/setup.c
> > > > > @@ -292,6 +292,8 @@ void __init setup_arch(char **cmdline_p)
> > > > >         early_fixmap_init();
> > > > >         early_ioremap_init();
> > > > >
> > > > > +       early_init_dt_rng_seed(__fdt_pointer);
> > > > > +
> > > >
> > > > I'm trying to reduce or eliminate all these early_init_dt_* calls.
> > > >
> > > > Why is this arch specific and why can't this be done after
> > > > unflattening? It doesn't look like add_device_randomness() needs
> > > > anything early.
> > > Currently unflattening is called after setup_machine_fdt(), which
> > > called fixmap_remap_fdt() //__fixmap_remap_fdt(dt_phys, &size,
> > > PAGE_KERNEL_RO), and we can't modify DT after that since it's read
> > > only. But we need to clear (eg. write 0 to it) the rng-seed after
> > > reading from DT.
> >
> > Why do you need to clear it? That wasn't necessary for kaslr-seed.
> I think it's for security purpose. If we know the random seed, it's
> more likely we can predict randomness.
> Currently on arm64, kaslr-seed will be wiped out (in
> arch/arm64/kernel/kaslr.c#get_kaslr_seed(), it's set to 0) so we can't
> read from sysfs (eg. /sys/firmware/devicetree/.../kaslr-seed)
> I'm not sure on other arch if it will be wiped out.

The difference is if I have the kaslr seed, I can calculate the kernel
base address.

In your case, you are feeding an RNG which continually has entropy
added to it. I can't see that knowing one piece of the entropy data is
a security hole. It looks more like you've just copied what what done
for kaslr-seed.

> > Why not change the mapping to RW? It would be nice if this worked on
> > more than one arch.

Still wondering on this question. Mapping it R/W would mean rng-seed
could be handled later and completely out of the arch code and so
could the zeroing of the kaslr-seed. Also, we generally assume the FDT
is modifiable for any fixups. This happens on arm32 and powerpc, but I
guess we haven't needed that yet on arm64.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
