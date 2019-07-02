Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 432665D7B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 23:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nA2C3DjZkbBgLjfoorQnQbInTxE/AipZwzhVK2z3Z7Q=; b=Ck4UeQt3VURH/D
	+aCyCerlaI4IJuJlgtIuMWOa6S+Ut0lllqeyGZwIjDda39MbjaFNG1TG0V1KHn0NC48zK0CQjZji/
	qREbma3QKq+xx8kSmSTqe273IgLXVG9paOcMOQglOw9EmpjfruyyVdJkXqzaI/nh+75+CzH4EPmT/
	XGjeNxA39Dw7RZHFhtAgEFkU+QU+Bxh+unDh7sxay3XeJRTYKBzXUUMdywx1zp9pno5uWxwa8aE99
	YDv+r3lSR7lk4ofiOsw3xx87sp/om7t2x03bsuYY9gQdEGYJ5j0lJFF4Epzq/yp6zTVrj4qmODWKZ
	lYhXK4lalVD7VJRtPWAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiPx0-0000bE-86; Tue, 02 Jul 2019 21:04:30 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiPwa-0000aZ-FX
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 21:04:05 +0000
Received: by mail-lf1-x141.google.com with SMTP id b29so144903lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 14:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BWuzzOxwUVGbMCvFD/kQRaZgbqg2U0ttqAGoU0tIxDc=;
 b=WU9xE1VaEDXdGOfDOaQ8eCNlTBcxHe1uPjWOXfL0akhUDkfR9pYxvy2vkEDfni+c8h
 WMVK/5ptG9BAQJtthbU9xhXp41aX/dRI7O6DGRbzSic+KQYV4r79fr3F33IPwBk4A9/w
 GB0kyYoceOYaI2Zwrbm6QbIM8AP0naUmdNCuQ2tAPmooOIqjVKYIIcMIkgONM7r947bm
 Rcb/3dBlykiu3KSgumMs5axcfx87QLCZKcPVy2M8OzJauDqJh5Z1Bo7FTS75GRY0iu0+
 IdLBkAJI8wJkTgpnoj96Ri0vBe8IfwgD2+EBl9ikgM/r7w39QRdydkoW0ChmAqm5YMzc
 LsVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BWuzzOxwUVGbMCvFD/kQRaZgbqg2U0ttqAGoU0tIxDc=;
 b=Bfk/fdDQmsJb6ieox1dKAV0SzOMsP57b8zaldpCjfCAW2qqtEMlsWKpANFFvrdAm14
 j6Ow3oZ5ncOOVTgsfncA7SDgbkh+AH8kpgf0HbiffjkZ40VWC1V8juTdRrDNBNRBaACJ
 AlKkxvDVp08CdmScaCQJOP1hyTMEG628hNL33MpHwD905xFNwj0YSUXP8+5pqSh8MGKh
 LVqw5SPpYv2tfzAcUN1t/FosXBZy2mTKFfP3o06ovEMeYHlJkxtTFGwghCBp5W75lJlD
 pi/FpaPAd68eg806xWZS8RbdlZ1VzMhD9R+Cw0xR73a1ghZjHdvdEmdC2YoVj6aVmxzw
 OXsQ==
X-Gm-Message-State: APjAAAVWcQ278+0/ZPb4E1oCOHhoFhWsY1pfGr12k1jXYTuIxo71YDEM
 kBGGfTnU3G51oCaxx0gmDQh4YAlN9pHD4wlxIfYdnQ==
X-Google-Smtp-Source: APXvYqxPy3MzRImB1p5uGBTXdcSHdB32SVAS4jpsrlLbMd+boV/5IuiNLeQxCDIw30/585vq93owljYh5YviaC4jL+c=
X-Received: by 2002:a19:dc0d:: with SMTP id t13mr1324771lfg.152.1562101441838; 
 Tue, 02 Jul 2019 14:04:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190617221134.9930-1-f.fainelli@gmail.com>
 <20190617221134.9930-2-f.fainelli@gmail.com>
In-Reply-To: <20190617221134.9930-2-f.fainelli@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 2 Jul 2019 23:03:50 +0200
Message-ID: <CACRpkdZGqiiax2m5L1y3=Enw0Q5cLc-idAQNae34uenf-drHDw@mail.gmail.com>
Subject: Re: [PATCH v6 1/6] ARM: Add TTBR operator for kasan_init
To: Florian Fainelli <f.fainelli@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_140404_531562_6D40D914 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>, mhocko@suse.com,
 julien.thierry@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andrey Ryabinin <ryabinin.a.a@gmail.com>,
 Alexander Potapenko <glider@google.com>, kvmarm@lists.cs.columbia.edu,
 Jonathan Corbet <corbet@lwn.net>, Abbott Liu <liuwenliang@huawei.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, kasan-dev@googlegroups.com,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Dmitry Vyukov <dvyukov@google.com>, Andrey Ryabinin <aryabinin@virtuozzo.com>,
 drjones@redhat.com, Vladimir Murzin <vladimir.murzin@arm.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Andre Przywara <andre.przywara@arm.com>,
 philip@cog.systems, jinb.park7@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Nicolas Pitre <nico@fluxnic.net>, Greg KH <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, christoffer.dall@arm.com,
 Geert Uytterhoeven <geert@linux-m68k.org>, Rob Landley <rob@landley.net>,
 Philippe Ombredanne <pombredanne@nexb.com>,
 Andrew Morton <akpm@linux-foundation.org>, thgarnie@google.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian!

thanks for your patch!

On Tue, Jun 18, 2019 at 12:11 AM Florian Fainelli <f.fainelli@gmail.com> wrote:

> From: Abbott Liu <liuwenliang@huawei.com>
>
> The purpose of this patch is to provide set_ttbr0/get_ttbr0 to
> kasan_init function. The definitions of cp15 registers should be in
> arch/arm/include/asm/cp15.h rather than arch/arm/include/asm/kvm_hyp.h,
> so move them.
>
> Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> Reported-by: Marc Zyngier <marc.zyngier@arm.com>
> Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

> +#include <linux/stringify.h>

What is this for? I think it can be dropped.

This stuff adding a whole bunch of accessors:

> +static inline void set_par(u64 val)
> +{
> +       if (IS_ENABLED(CONFIG_ARM_LPAE))
> +               write_sysreg(val, PAR_64);
> +       else
> +               write_sysreg(val, PAR_32);
> +}

Can we put that in a separate patch since it is not
adding any users, so this is a pure refactoring patch for
the current code?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
