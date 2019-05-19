Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B042296E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 01:55:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1jPt6cASstCUgxiEN+lg3pUTP2VxT+tTPUxSEDozLQ=; b=puCJR2WvgYq4sd
	iWZfhaMWAqG7s8VPMH1s1kxb5UfG69eNSI39tkkXn5sbreENbKCt1RY0h1hsJyPGlA3NU6E9PYxAe
	PO2J8ViFQ9s1NYcmoahHhKlbmcS4o8b2s8E1YdqZwpgQktvsaOfigBdOv2m78BHlGJnMzLw49AfxH
	r5PVQ43/dkrS/o180kwqJasieCfQU6Z+mQFgNXOLzHgf5oGd3zVmZknjy7aR0aM3Wsi41QFuY1AYk
	h4Fqrol5JznTylPMKmztZN5+FajIoFBCbuyGoyVO023KNuy646EDEukOXJc3znYhJ7EqGjTPCJmAi
	duoO2pBOwO7au4rhpfNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSVe3-0007hl-Uo; Sun, 19 May 2019 23:55:11 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSVdv-0006jf-Qn
 for linux-arm-kernel@lists.infradead.org; Sun, 19 May 2019 23:55:06 +0000
Received: by mail-qt1-x841.google.com with SMTP id h1so14405995qtp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 May 2019 16:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0al1JPf1p4k1Xk2X9+xnd+opR9sCtlA9+Q7CGf2wkdc=;
 b=T6NKMFeM174EdWJEdEKuDliPahKZ9qUMazWV6/jMf/XLDI7pD39ukI1sK8O2e85XBf
 RYmOIOG+XLoy0h+NvsmkaHjgqQudFNjBk9hLgPr4DUNG6sIXuHOUJzKZLbYApGEko7an
 wAzAzUXOS9ZogWkCbeW5ONopU7yGZXHpJl2lE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0al1JPf1p4k1Xk2X9+xnd+opR9sCtlA9+Q7CGf2wkdc=;
 b=rbShf8V3OBmf1Eps0Km0vrL7vJ1s8jBDqoiwZLfAu0ASDyuiKcclAEuiNs5Y4Yqdj8
 ZOcJfvsyA/MKP8bNSlQjl929fl/1PLvQ1+G8bJTy9+0li+dLN9alJMWLOZ0vcraJTfpH
 nOOizPinxPzEDS2E4ru4IEKGXbhOH1zv8LGthQ1El5Z5PRuBeBkwXvuPYEMzz03TBk6M
 VPIrLm7OYERT1gIuUDVO39JrU87mR5bmuOfJFLF7Y2glE6JyhIToKS4F+OgAWifUnaj3
 AoMGWKUTrUpEgFstse7tWSDxnwbIsJrc8k2d/95+0VsaKwldXAZ/WpFyER+2e+7Do/Ty
 To8A==
X-Gm-Message-State: APjAAAUIQBSontYffNQOAaa5w2gVZtYZ3Iznx43ngoSSkZl64SdwZ+sZ
 ARLjlk9dMXJ8iPoNrGH64rd6S8hu3xvFzTbPz6KPPg==
X-Google-Smtp-Source: APXvYqwuM2OlEjQTosUkdQ68MTbdvXpkAnX3zKDv4qbIHQN0OW9swG37cfTJhaHqVK/SMXwdbTye4hUKW1XJUQSuGbI=
X-Received: by 2002:ac8:3524:: with SMTP id y33mr59412515qtb.159.1558310098407; 
 Sun, 19 May 2019 16:54:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190519160446.320-1-hsinyi@chromium.org>
 <20190519160446.320-2-hsinyi@chromium.org>
In-Reply-To: <20190519160446.320-2-hsinyi@chromium.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 20 May 2019 07:54:47 +0800
Message-ID: <CANMq1KB7sh=UXaM4sMm_THjZ_wV3Thgr6_ona-TJFqA2QQHALA@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] fdt: add support for rng-seed
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_165503_899460_EE66366A 
X-CRM114-Status: GOOD (  22.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>, lkml <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 1:09 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Introducing a chosen node, rng-seed, which is an entropy that can be
> passed to kernel called very early to increase initial device
> randomness. Bootloader should provide this entropy and the value is
> read from /chosen/rng-seed in DT.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> change log v2->v4:
> * v3 abandoned
> * fix doc error
> ---
>  Documentation/devicetree/bindings/chosen.txt | 14 ++++++++++++++
>  drivers/of/fdt.c                             | 10 ++++++++++
>  2 files changed, 24 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
> index 45e79172a646..678e81bc4383 100644
> --- a/Documentation/devicetree/bindings/chosen.txt
> +++ b/Documentation/devicetree/bindings/chosen.txt
> @@ -28,6 +28,20 @@ mode) when EFI_RNG_PROTOCOL is supported, it will be overwritten by
>  the Linux EFI stub (which will populate the property itself, using
>  EFI_RNG_PROTOCOL).
>
> +rng-seed
> +-----------
> +
> +This property serves as an entropy to add device randomness. It is parsed
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
> index de893c9616a1..7f3d72921b23 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -24,6 +24,7 @@
>  #include <linux/debugfs.h>
>  #include <linux/serial_core.h>
>  #include <linux/sysfs.h>
> +#include <linux/random.h>

Alphabetical order.

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
> @@ -1113,6 +1115,14 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
>
>         pr_debug("Command line is: %s\n", (char*)data);
>
> +       rng_seed = of_get_flat_dt_prop(node, "rng-seed", &l);
> +       if (rng_seed && l > 0) {
> +               add_device_randomness(rng_seed, l);
> +
> +               /* try to clear seed so it won't be found. */
> +               fdt_delprop(initial_boot_params, node, "rng-seed");

I'm a little bit concerned about this, as we really want the rng-seed
value to be wiped, and not kept in memory (even if it's hard to
access).

IIUC, fdt_delprop splices the device tree, so it'll override
"rng-seed" property with whatever device tree entries follow it.
However, if rng-seed is the last property (or if the entries that
follow are smaller than rng-seed), the seed will stay in memory (or
part of it).

fdt_nop_property in v2 would erase it for sure. I don't know if there
is a way to make sure that rng-seed is removed for good while still
deleting the property (maybe modify fdt_splice_ to do a memset(.., 0)
of the moved chunk?).


> +       }
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
