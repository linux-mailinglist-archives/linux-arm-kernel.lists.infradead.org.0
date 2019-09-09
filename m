Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4639AD540
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 11:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LMy+kzG80FyD1d+aC4GTAjgNlaOlAtrB2oEjvs5iMAA=; b=Fpv1zfii/qcibV
	HzG+S7da91VbNs2hvt9fOZdSKD9DOJlrCC3i3inEWS475SuQjqysRuoXhMLwomW54V+ykm1ITDsli
	a0rXdopQWd11y9n4mqiHvIgjt9ol+y5JSLnwmDHQH7QsCiKmP/h9NpAoGXLBieEGraY0HxWhEKfRp
	GACVDvB0C1+MXTooMRbgwakeHoGOjMhIMo6fOJEA3NZQdIx+mekQD+LVQO1K5qbYWfRhT/uWAfSH8
	PseVlUjH3yY4BCEV2J5BSeQ6YW7EImWDnq9Zc/v4ShxmBjrPMS/3f/1sE9jBBCVgmnsMG3aC0gDIs
	gQ69prUz9VdmlWxu1xMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Fcj-0000DM-He; Mon, 09 Sep 2019 09:06:13 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FcK-0000Cu-Rl
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 09:05:52 +0000
Received: by mail-oi1-f196.google.com with SMTP id t84so9886151oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 02:05:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GuwxdIYgERe00cJb48+oERWi4smpDUo6ysgjSjR75xc=;
 b=fMOUyG8M/WXZXq6IJLfUhK8dwHVM+ENQg1qVj1NDUvJSD3Ce2ciNhFSrSAI7Idl4Of
 dvA3b0OlVTU66bcEriI66XDgZcQtmeXZoGdLmYBnqlOMS9NJrmEOKKlpo/3QlQhfYfvl
 ZZ+OQup2OTMB9+V53+gID8TLBtWGG8FLnDowI+0gWc67rWfxpUiRT5RWna0QxDpAV0Hk
 ymbSIguys1nQS6xvmVnDhQL7KUeUUU8cF7PXNP0oq6hqSxyE9AvC3/ETG/k1EbXtZjqy
 L/MljHqJ0PwZCwUUAisMOFFzW6kUNjLcCsPAgKKsFlZpbnzs3XrQQ27M0RedH40Klo4k
 8hTA==
X-Gm-Message-State: APjAAAVRQvxv03fuYIUZ5rLAVDkxRsKe4c6IpLbcspgq2dbA3s/g+2HH
 XtKZH1RR0IihCqF42pjKkxOlFXbLxK2uAamUS8k=
X-Google-Smtp-Source: APXvYqyNqjzQQ48P9vJ/ZJmagIY4iC68pr4EOSaw/ZLwaKDTWfXGs1XIUNNEOvWHY+Iws6/fIu4G/9cn5YzoHZsm8s8=
X-Received: by 2002:aca:f305:: with SMTP id r5mr15871653oih.131.1568019947623; 
 Mon, 09 Sep 2019 02:05:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190907161634.27378-1-marek.vasut@gmail.com>
 <CAMuHMdXkExZXeXnxuKkMC0J4m56cZUmJpcq2JCXuMv3PBzA0Dg@mail.gmail.com>
 <b77e6a66-be14-4f94-c116-788b8fa18b31@gmail.com>
In-Reply-To: <b77e6a66-be14-4f94-c116-788b8fa18b31@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Sep 2019 11:05:36 +0200
Message-ID: <CAMuHMdUWezNDVv+U=VeryssmSFm79zU-ptuKmMechcWBboV1=w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: Add /soc dma-ranges
To: Marek Vasut <marek.vasut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_020549_121571_AB5DA679 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Wolfram Sang <wsa@the-dreams.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Mon, Sep 9, 2019 at 10:42 AM Marek Vasut <marek.vasut@gmail.com> wrote:
> On 9/9/19 10:19 AM, Geert Uytterhoeven wrote:
> > On Sat, Sep 7, 2019 at 6:16 PM <marek.vasut@gmail.com> wrote:
> >> From: Marek Vasut <marek.vasut+renesas@gmail.com>
> >>
> >> Add dma-ranges property into /soc node to describe the DMA capabilities
> >> of the bus. This is currently needed to translate PCI DMA ranges, which
> >> are limited to 32bit addresses.
> >>
> >> Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>
> >
> > Thanks for your patch!
> >
> >> NOTE: This is needed for the following patches to work correctly:
> >>       https://patchwork.ozlabs.org/patch/1144870/
> >>       https://patchwork.ozlabs.org/patch/1144871/
> >
> > What happens with the above patches applied, and without this one?
>
> It triggers https://patchwork.kernel.org/patch/11087391/#22811745

Sure. But what does that mean?
PCI devices just not working?
Random memory corruption?
System lockup?
Anything else?

> > As PCI/OF driver patches go in through different trees, is it safe to apply
> > this patch now?
> > Should they go in together?
>
> I didn't get any feedback on the other two patches, but this one here is
> safe to go in either way.
>
> >>  arch/arm64/boot/dts/renesas/r8a7795.dtsi  | 1 +
> >>  arch/arm64/boot/dts/renesas/r8a7796.dtsi  | 1 +
> >>  arch/arm64/boot/dts/renesas/r8a77965.dtsi | 1 +
> >
> > Do we need similar patches for the other R-Car Gen3 and RZ/G2 DTS files?
> > What about R-Car Gen2 and RZ/G1?
> I suspect we need such patches for any ARM64 machine with PCIe with this
> 32bit limitation.

What about R-Car Gen2 and RZ/G1, which are ARM32, with LPAE?

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
