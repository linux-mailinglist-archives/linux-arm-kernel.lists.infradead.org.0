Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFB518677
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 10:01:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4jHbiDTYCVzCBcnRGi8CPalSt3tFvU5bm0kLRoDtxaQ=; b=GJ5u3LB7w9qoMU
	ndRdK0RlHGsn9H7qtCWvNTxYtNuruCmmK5TDncLsKLdl4XyTKe4pjQUUTvkmM+VdFP1FaJ+yv1WRc
	hOqeVXnomaH7JE9d9zek1JQ6BgOw0QGjPUYKZkKWz4mUKF/C4FvzYmnKUVBy7/vBZ2Iy8bosF9N/p
	XnTlnIG72DY/qMl8bfYROInJBRYhiG0AnW6wcAkC/OfWtcoVTccZ1i1wiKh9UytCp0/ShUlArOuq7
	HMhGrnZ0vcJZMGd5qcJo14YNJPF39zcepL4QTq7kbVKc6E6MUBpzX2Hs/6muDmp8BdhHtZplhMZDJ
	o97ShEx6Mcq/l8h4JA2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOdzK-0003oX-VU; Thu, 09 May 2019 08:01:11 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOdz7-0003mn-4x
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 08:00:58 +0000
Received: by mail-qk1-x741.google.com with SMTP id d4so892414qkc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 01:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4Yfl2JJ8Wn2/T573PJ0NvYGGpvDvMiL4vlmbgNIxfp4=;
 b=CWYl/x5UL40d94Oa8gVCUv/I2aAp1OovkFD17YdVGABypWn0AH/V6kjMJ7+wFnlVc+
 brs2CMTFtG6qjBXmTZDdm28V0J+huSkPL4v8gmZUuvRZliSQLje9XY+rZbqgfMpyJvu6
 zNS2xmfjsHajyBAWZpVveuGDBxmdOwFXcXJec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4Yfl2JJ8Wn2/T573PJ0NvYGGpvDvMiL4vlmbgNIxfp4=;
 b=F35YkEu5H4C+ZQUd9RdMubfv6HaTU+VhhMj1a676ZKEV9ZBgpb63DvomhGYKY9LR+H
 ke5Kl1qr5rcsMArDWCCNCEppb9LvqYMF+y50iAvVrAvU4E7f+kzO2TU1M3tFl2jxTrDi
 KKzUft6c9DtKIgrw72DcXbb0EiPXNY6iDFYUHkocemHIn40CrnK1MrYWEvlSJ2d5r7+c
 DyMHPFO6PRPVXEQ0QMyTAmDC2JMj2DxKHkva6eB9ilRHck/pDX9U7L9GA8+dzhU08MDc
 4LUycEnhmRpWC2fiWVXokAGr2y5nu3lGF66IC4vcL9dX/0CIPutxIJeDDLkhfAXZwB9p
 PcuQ==
X-Gm-Message-State: APjAAAWSGppboJolLB+us1444rrLpZudu4ZqjWwoVrkXI9LJ+vv+HzDE
 kOixkBaGFYH1noOd721M7HF1QfnVPtTqz54yM0tuzA==
X-Google-Smtp-Source: APXvYqxjxbR1lG/Lv1vNcdHx4E6JwsFVIcRuQF8t8SFWRJIWbsM6ZTpykGFyxwxBIJu84GVb7cWMgthX2m9vRSWGngo=
X-Received: by 2002:a37:8106:: with SMTP id c6mr2116533qkd.113.1557388852549; 
 Thu, 09 May 2019 01:00:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190507045433.542-1-hsinyi@chromium.org>
 <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
 <CAJMQK-iVhScf0ybZ85kqP0B5_QPoYZ9PZt35jHRUh8FNHKvu7w@mail.gmail.com>
 <CAL_JsqJZ+mOnrLWt0Cpo_Ybr_ohxwWom1qiyV8_EFocULde7=Q@mail.gmail.com>
 <CAJMQK-jjzYwX3NZAKJ-8ypjcN75o-ZX4iOVD=84JecEd4qV1bA@mail.gmail.com>
 <CAL_JsqLnmedF5cJYH+91U2Q_WX755O8TQs6Ue9mqtEiFKcjGWQ@mail.gmail.com>
In-Reply-To: <CAL_JsqLnmedF5cJYH+91U2Q_WX755O8TQs6Ue9mqtEiFKcjGWQ@mail.gmail.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 9 May 2019 16:00:26 +0800
Message-ID: <CAJMQK-hJUG855+TqX=droOjUfb-MKnU0n0FYtr_SW2KByKAW1w@mail.gmail.com>
Subject: Re: [PATCH] arm64: add support for rng-seed
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_010057_213919_75D02A67 
X-CRM114-Status: GOOD (  37.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Michal Hocko <mhocko@suse.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
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

On Thu, May 9, 2019 at 12:07 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Wed, May 8, 2019 at 10:06 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > On Wed, May 8, 2019 at 10:04 PM Rob Herring <robh+dt@kernel.org> wrote:
> > >
> > > On Tue, May 7, 2019 at 11:08 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> > > >
> > > > On Wed, May 8, 2019 at 3:47 AM Rob Herring <robh+dt@kernel.org> wrote:
> > > > >
> > > > > +boot-architecture list as there was some discussion about this IIRC.
> > > > >
> > > > > On Mon, May 6, 2019 at 11:54 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> > > > > >
> > > > > > Introducing a chosen node, rng-seed, which is an 64 bytes entropy
> > > > > > that can be passed to kernel called very early to increase device
> > > > > > randomness. Bootloader should provide this entropy and the value is
> > > > > > read from /chosen/rng-seed in DT.
> > > > > >
> > > > > > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > > > > >
> > > > > > ---
> > > > > >  Documentation/devicetree/bindings/chosen.txt | 14 +++++++++
> > > > >
> > > > > Actually, this file has been converted to json-schema and lives
> > > > > here[1]. I need to remove this one (or leave it with a reference to
> > > > > the new one).
> > > > >
> > > > > >  arch/arm64/kernel/setup.c                    |  2 ++
> > > > > >  drivers/of/fdt.c                             | 33 ++++++++++++++++++++
> > > > > >  include/linux/of_fdt.h                       |  1 +
> > > > > >  4 files changed, 50 insertions(+)
> > > > > >
> > > > > > diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
> > > > > > index 45e79172a646..bfd360691650 100644
> > > > > > --- a/Documentation/devicetree/bindings/chosen.txt
> > > > > > +++ b/Documentation/devicetree/bindings/chosen.txt
> > > > > > @@ -28,6 +28,20 @@ mode) when EFI_RNG_PROTOCOL is supported, it will be overwritten by
> > > > > >  the Linux EFI stub (which will populate the property itself, using
> > > > > >  EFI_RNG_PROTOCOL).
> > > > > >
> > > > > > +rng-seed
> > > > > > +-----------
> > > > > > +
> > > > > > +This property served as an entropy to add device randomness. It is parsed
> > > > > > +as a 64 byte value, e.g.
> > > > >
> > > > > Why only 64-bytes?
> > > > We can also not specify size and read what bootloader can provide.
> > > > >
> > > > > > +
> > > > > > +/ {
> > > > > > +       chosen {
> > > > > > +               rng-seed = <0x31951b3c 0xc9fab3a5 0xffdf1660 ...>
> > > > > > +       };
> > > > > > +};
> > > > > > +
> > > > > > +This random value should be provided by bootloader.
> > > > > > +
> > > > > >  stdout-path
> > > > > >  -----------
> > > > > >
> > > > > > diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> > > > > > index 413d566405d1..ade4261516dd 100644
> > > > > > --- a/arch/arm64/kernel/setup.c
> > > > > > +++ b/arch/arm64/kernel/setup.c
> > > > > > @@ -292,6 +292,8 @@ void __init setup_arch(char **cmdline_p)
> > > > > >         early_fixmap_init();
> > > > > >         early_ioremap_init();
> > > > > >
> > > > > > +       early_init_dt_rng_seed(__fdt_pointer);
> > > > > > +
> > > > >
> > > > > I'm trying to reduce or eliminate all these early_init_dt_* calls.
> > > > >
> > > > > Why is this arch specific and why can't this be done after
> > > > > unflattening? It doesn't look like add_device_randomness() needs
> > > > > anything early.
> > > > Currently unflattening is called after setup_machine_fdt(), which
> > > > called fixmap_remap_fdt() //__fixmap_remap_fdt(dt_phys, &size,
> > > > PAGE_KERNEL_RO), and we can't modify DT after that since it's read
> > > > only. But we need to clear (eg. write 0 to it) the rng-seed after
> > > > reading from DT.
> > >
> > > Why do you need to clear it? That wasn't necessary for kaslr-seed.
> > I think it's for security purpose. If we know the random seed, it's
> > more likely we can predict randomness.
> > Currently on arm64, kaslr-seed will be wiped out (in
> > arch/arm64/kernel/kaslr.c#get_kaslr_seed(), it's set to 0) so we can't
> > read from sysfs (eg. /sys/firmware/devicetree/.../kaslr-seed)
> > I'm not sure on other arch if it will be wiped out.
>
> The difference is if I have the kaslr seed, I can calculate the kernel
> base address.
>
> In your case, you are feeding an RNG which continually has entropy
> added to it. I can't see that knowing one piece of the entropy data is
> a security hole. It looks more like you've just copied what what done
> for kaslr-seed.
+Kees who can probably explain this better.

This early added entropy is also going to be used for stack canary. At
the time it's created there's not be much entropy (before
boot_init_stack_canary(), there's only add_latent_entropy() and
command_line).
On arm64, there is a single canary for all tasks. If RNG is weak or
the seed can be read, it might be easier to figure out the canary.

>
> > > Why not change the mapping to RW? It would be nice if this worked on
> > > more than one arch.
>
> Still wondering on this question. Mapping it R/W would mean rng-seed
> could be handled later and completely out of the arch code and so
> could the zeroing of the kaslr-seed. Also, we generally assume the FDT
> is modifiable for any fixups. This happens on arm32 and powerpc, but I
> guess we haven't needed that yet on arm64.
We can try to map it to RW and map back to RO later if needed on
arm64, like Stephen's suggestion.
>
> Rob

Thanks for the comments and suggestions.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
