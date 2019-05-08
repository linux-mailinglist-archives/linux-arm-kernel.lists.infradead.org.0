Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C4217CCD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 17:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IbUH5iiYgqPQWFoZ9esRKA6V7rWvd+GoJXVEguL4BSo=; b=qFfEcci3R5sxRa
	nd7KHUas9/zSSoJ5+DNIKgyHNw1j7AYBmiHvgrVOSmIjyCz6DEXKHku/NpyIWmZnnPhveZa2jr+/m
	UVi22E/44B3Qnpm6Gy06baOXbF+M0c+mAR7f4U0nZifdBA2vyK9y9igch7rAJ4itaSa8+4m8gjjxC
	Jo/OZIc/02JHrtYDIpkjVRcGFLAAiy0oxN9fAyNfL47l3dpN8sIenNvq/73uy0rfhlGH0yKqFj2Ow
	2MsnSlluV3cKLAOnwph2rmVvR+ohrr27bSzXR1vCPIvYlI02K7WAZZ6z88ykguX059uKGOZOuJEEc
	F/4BGvtPbk626E2s4Wlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOO9H-0005y0-Cs; Wed, 08 May 2019 15:06:23 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOO9A-0005xT-6d
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 15:06:17 +0000
Received: by mail-qk1-x743.google.com with SMTP id c1so3313014qkk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 08:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oDzDsVMU+LJr7Vip7FUWGFjPTFwrPecpVC+p71dwHL0=;
 b=YyvjUF7kcpOEi0nE6dzVsg/gcQTmv5N8+kMHVneU2YA724wvUKi6bG88nc2ddw8bwh
 xQWEOtv1wgEx0039HHBmyRo0mYya6XFQesGUURR537siA2xMVgsISqv6MqgcHvOE01gZ
 WUTtn0x8U7/FWPvWp3kHk1dWp4H/CicnYmdTA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oDzDsVMU+LJr7Vip7FUWGFjPTFwrPecpVC+p71dwHL0=;
 b=DePRynVLavihBBB2tSZPElHoDvhCcyAITDwfqH8FUiOyFYbIZYt4gqBDvX50VD9WWw
 jRwv0zYHlUZEAXygdwryOMLsaLPwjgpHyzeAET0UlFUEYSyQTWH7Y/zx4t+w/N8Be2OF
 gB+hbX62EbFUDKFhPLCQajrQHpX92xsIUi7MQaxFnxY0c1/uH3XeJZi6XxE/lBMyVsNw
 oBbOSev5tUmMjhfvGnCVXbSCCkmexRBQGwA+ZL2eCxCGsZzMeVKrxB8uTRS75HaS/Aqe
 9B4aItT6vv3Wi6S+WF0bhMOVz+ufgwd7/l7TfCKoIcAdMV5P67evkSX1ipPRLVmdtbec
 v7kg==
X-Gm-Message-State: APjAAAViI1s0N203i807fb8mTurpyN79AII194Esw/uioDZ46Yb6Hxo8
 5HKpCLIEy5oB8UryI6BTEBaKmtIp2v25BuYnkSw/7Q==
X-Google-Smtp-Source: APXvYqzKF9hpiQ7++7G8HoeOWq1DqYNKoDcAsjHDKXSfNfIFkZYm1Ylb5eOULOWWNB0JjrIWx70mQF4jn2aNPXQtqnc=
X-Received: by 2002:a05:620a:16c3:: with SMTP id
 a3mr6908351qkn.222.1557327974036; 
 Wed, 08 May 2019 08:06:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190507045433.542-1-hsinyi@chromium.org>
 <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
 <CAJMQK-iVhScf0ybZ85kqP0B5_QPoYZ9PZt35jHRUh8FNHKvu7w@mail.gmail.com>
 <CAL_JsqJZ+mOnrLWt0Cpo_Ybr_ohxwWom1qiyV8_EFocULde7=Q@mail.gmail.com>
In-Reply-To: <CAL_JsqJZ+mOnrLWt0Cpo_Ybr_ohxwWom1qiyV8_EFocULde7=Q@mail.gmail.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 8 May 2019 23:05:47 +0800
Message-ID: <CAJMQK-jjzYwX3NZAKJ-8ypjcN75o-ZX4iOVD=84JecEd4qV1bA@mail.gmail.com>
Subject: Re: [PATCH] arm64: add support for rng-seed
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_080616_269088_BB674516 
X-CRM114-Status: GOOD (  30.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
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

On Wed, May 8, 2019 at 10:04 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Tue, May 7, 2019 at 11:08 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > On Wed, May 8, 2019 at 3:47 AM Rob Herring <robh+dt@kernel.org> wrote:
> > >
> > > +boot-architecture list as there was some discussion about this IIRC.
> > >
> > > On Mon, May 6, 2019 at 11:54 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> > > >
> > > > Introducing a chosen node, rng-seed, which is an 64 bytes entropy
> > > > that can be passed to kernel called very early to increase device
> > > > randomness. Bootloader should provide this entropy and the value is
> > > > read from /chosen/rng-seed in DT.
> > > >
> > > > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > > >
> > > > ---
> > > >  Documentation/devicetree/bindings/chosen.txt | 14 +++++++++
> > >
> > > Actually, this file has been converted to json-schema and lives
> > > here[1]. I need to remove this one (or leave it with a reference to
> > > the new one).
> > >
> > > >  arch/arm64/kernel/setup.c                    |  2 ++
> > > >  drivers/of/fdt.c                             | 33 ++++++++++++++++++++
> > > >  include/linux/of_fdt.h                       |  1 +
> > > >  4 files changed, 50 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
> > > > index 45e79172a646..bfd360691650 100644
> > > > --- a/Documentation/devicetree/bindings/chosen.txt
> > > > +++ b/Documentation/devicetree/bindings/chosen.txt
> > > > @@ -28,6 +28,20 @@ mode) when EFI_RNG_PROTOCOL is supported, it will be overwritten by
> > > >  the Linux EFI stub (which will populate the property itself, using
> > > >  EFI_RNG_PROTOCOL).
> > > >
> > > > +rng-seed
> > > > +-----------
> > > > +
> > > > +This property served as an entropy to add device randomness. It is parsed
> > > > +as a 64 byte value, e.g.
> > >
> > > Why only 64-bytes?
> > We can also not specify size and read what bootloader can provide.
> > >
> > > > +
> > > > +/ {
> > > > +       chosen {
> > > > +               rng-seed = <0x31951b3c 0xc9fab3a5 0xffdf1660 ...>
> > > > +       };
> > > > +};
> > > > +
> > > > +This random value should be provided by bootloader.
> > > > +
> > > >  stdout-path
> > > >  -----------
> > > >
> > > > diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> > > > index 413d566405d1..ade4261516dd 100644
> > > > --- a/arch/arm64/kernel/setup.c
> > > > +++ b/arch/arm64/kernel/setup.c
> > > > @@ -292,6 +292,8 @@ void __init setup_arch(char **cmdline_p)
> > > >         early_fixmap_init();
> > > >         early_ioremap_init();
> > > >
> > > > +       early_init_dt_rng_seed(__fdt_pointer);
> > > > +
> > >
> > > I'm trying to reduce or eliminate all these early_init_dt_* calls.
> > >
> > > Why is this arch specific and why can't this be done after
> > > unflattening? It doesn't look like add_device_randomness() needs
> > > anything early.
> > Currently unflattening is called after setup_machine_fdt(), which
> > called fixmap_remap_fdt() //__fixmap_remap_fdt(dt_phys, &size,
> > PAGE_KERNEL_RO), and we can't modify DT after that since it's read
> > only. But we need to clear (eg. write 0 to it) the rng-seed after
> > reading from DT.
>
> Why do you need to clear it? That wasn't necessary for kaslr-seed.
I think it's for security purpose. If we know the random seed, it's
more likely we can predict randomness.
Currently on arm64, kaslr-seed will be wiped out (in
arch/arm64/kernel/kaslr.c#get_kaslr_seed(), it's set to 0) so we can't
read from sysfs (eg. /sys/firmware/devicetree/.../kaslr-seed)
I'm not sure on other arch if it will be wiped out.
>
> Why not change the mapping to RW? It would be nice if this worked on
> more than one arch.
>
> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
