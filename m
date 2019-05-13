Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F03E1B6D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 15:15:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ry32VPVayiQl1DVxId3gMIcvVLLzMwkYeahv3gMwtEc=; b=MHKi6fH1YyUEpZ
	HU30GLCX5qJSpgE4/B3lcTP1yIBYULbngqaWh9Ja3j9XY7AUXmEGh5arxall9T5OQZiRa0rnPSP6h
	16GHyolaYJ7rBqdA45KKuSf54FZvZWGWXDD+xmjn4VxGIetGIAfkBGb2IlTQ9VZkdSfLoera71U34
	ulVLZeSWa5K0BKkT7n5f5Yb59/vTqMtyR5cUyDobHSBMBASBYtNPShUcCPDBN6DwKyDA4SYiglHD7
	yqO4fiK3tCnmkNnME885/B1PBxjcbdjwTKSCOYmg9370K4nkU9efjjyGBC+bu3cUBf8BgZWgrAyQl
	nTIzZncg1kLqI9Vh0kVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQAnE-0005dm-IN; Mon, 13 May 2019 13:15:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQAn7-0005dN-4h
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 13:14:54 +0000
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 68EBA21707
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 13:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557753292;
 bh=VwtWFe82NQyYvYoXS+dtxKyqgLhN647dFTgo27HN5Xc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xDuIGcF71WV/Z9zZp0QhkJLT6Bgs4okvzLFlGuN8BYqCGch6GiM1xFfeaPdZBuvAl
 D+AZg2hSeDNC0IwCdxFvbemaVMUzq657/Ky1SfIXw23lYiDIJW/6+RIToetGsF/vP+
 zTSLMeyFaEPr7lDtXW6FXajfBJvJwaZ5T5YSDb8k=
Received: by mail-qt1-f178.google.com with SMTP id o7so14608499qtp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 06:14:52 -0700 (PDT)
X-Gm-Message-State: APjAAAU8JnAhfgJsTGLDIjgHj/t1Gz+EW2ijLKA3h5Lz1fFG7WY35Oz9
 D7qP+IO+hUw6kec2B30i+loGc7TudNbk50K7Pg==
X-Google-Smtp-Source: APXvYqwWMO5obIjPRcGJzR/ig61QJkCy4isJj/MiEsKIL2bKQue6FTAFMYSeDH+zq9a10KCUY7nH5hpQRKtSkXpqVN0=
X-Received: by 2002:ac8:641:: with SMTP id e1mr23494317qth.76.1557753291566;
 Mon, 13 May 2019 06:14:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190513003819.356-1-hsinyi@chromium.org>
In-Reply-To: <20190513003819.356-1-hsinyi@chromium.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 13 May 2019 08:14:40 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+Z5+M7fYCrkRKqN1yKTu6uyMKRKh-R4b-cj46y18hXOw@mail.gmail.com>
Message-ID: <CAL_Jsq+Z5+M7fYCrkRKqN1yKTu6uyMKRKh-R4b-cj46y18hXOw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] fdt: add support for rng-seed
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_061453_217542_06255009 
X-CRM114-Status: GOOD (  24.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Miles Chen <miles.chen@mediatek.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 12, 2019 at 7:39 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Introducing a chosen node, rng-seed, which is an entropy that can be
> passed to kernel called very early to increase initial device
> randomness. Bootloader should provide this entropy and the value is
> read from /chosen/rng-seed in DT.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> change log:
> v1->v2:
> * call function in early_init_dt_scan_chosen
> * will add doc to devicetree-org/dt-schema on github if this is accepted
> ---
>  Documentation/devicetree/bindings/chosen.txt | 14 ++++++++++++++
>  drivers/of/fdt.c                             | 11 +++++++++++
>  2 files changed, 25 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
> index 45e79172a646..fef5c82672dc 100644
> --- a/Documentation/devicetree/bindings/chosen.txt
> +++ b/Documentation/devicetree/bindings/chosen.txt
> @@ -28,6 +28,20 @@ mode) when EFI_RNG_PROTOCOL is supported, it will be overwritten by
>  the Linux EFI stub (which will populate the property itself, using
>  EFI_RNG_PROTOCOL).
>
> +rng-seed
> +-----------
> +
> +This property served as an entropy to add device randomness. It is parsed
> +as a byte array, e.g.
> +
> +/ {
> +       chosen {
> +               rng-seed = <0x31 0x95 0x1b 0x3c 0xc9 0xfa 0xb3 ...>;
> +       };
> +};
> +
> +This random value should be provided by bootloader.
> +
>  stdout-path
>  -----------
>
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index de893c9616a1..96ea5eba9dd5 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -24,6 +24,7 @@
>  #include <linux/debugfs.h>
>  #include <linux/serial_core.h>
>  #include <linux/sysfs.h>
> +#include <linux/random.h>
>
>  #include <asm/setup.h>  /* for COMMAND_LINE_SIZE */
>  #include <asm/page.h>
> @@ -1079,6 +1080,7 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
>  {
>         int l;
>         const char *p;
> +       const void *rng_seed;
>
>         pr_debug("search \"chosen\", depth: %d, uname: %s\n", depth, uname);
>
> @@ -1113,6 +1115,15 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
>
>         pr_debug("Command line is: %s\n", (char*)data);
>
> +       rng_seed = of_get_flat_dt_prop(node, "rng-seed", &l);
> +       if (!rng_seed || l == 0)
> +               return 1;

This only works if this hunk stays at the end of the function. I'd
invert the if and move the next 2 functions under it.

> +
> +       /* try to clear seed so it won't be found. */
> +        fdt_nop_property(initial_boot_params, node, "rng-seed");

I'd just delete the property.

Also, what about kexec? Don't you need to add a new seed?

> +
> +        add_device_randomness(rng_seed, l);
> +
>         /* break now */
>         return 1;
>  }
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
