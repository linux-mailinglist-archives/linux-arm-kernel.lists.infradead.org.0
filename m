Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0067B5D7F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 23:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0OHjBxYlG337+6PWG7RcqvxL+C/oVk57V1qPEGED9Bo=; b=jO9llAw6BtVSy7
	VDbMRH77LFwo6A7Npm8ps1xa7AQYRCr/3ka5b0sOqpOkppGq75gCP69JMizGhbJcP3I2vm341ePen
	t9uMRjZH/ryMInHzMRncKhmWXBde3i5wLG0ytnWSmXu/UAaWWs0I4PdgvUDmtLdPvYOM+pk50J8Cb
	fXfHkv3jGQoEiavAjpi5StEEtn2pYeyjIuJEmZuhWvAFSwdvzf3yyTNF5XDAO+yeoht9Pm2w9q0Gz
	BwIXhyKlcoTALCn92CMc1/9q6OM6/v5pbZXsCSQNnPWV2Y2ujdpXHNcShqrmuBC6nQ3WFu1dUThrC
	g+Ud/05dn4NgNsfTd2Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiQlr-0000C0-VU; Tue, 02 Jul 2019 21:57:04 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiQlf-0000BV-Or
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 21:56:53 +0000
Received: by mail-lj1-x243.google.com with SMTP id m23so119193lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 14:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uy9P4Bv7MoU15f1hxa9HUk41ddeWB4vxhHhX7nu5AF8=;
 b=chfL2Y+vcu0HLio56W5yCpYcO12fzccTTuvBbkGhkNe/aF5ZgcfKOE24xS40HsFMlc
 Ut8Bz0uCuff4zpfBt474goph+OPSk+NhNQVgLSimuL3/Ah0v11JGh/8rGaKti0yddSiM
 q/0fOfoab+9/DUCSuDVGXRkPBEodmSnVOEGRZxSGePAp5QYIi/4446bzXKyWwa+Z9QVU
 JorSbzfYLEjhFTeRYS7/jv30gSLerU7/hW/VDodF7UL5D3eT6ZP0fWQXg/OaUFUv2/fn
 GcIo0P7LqaWgUcqGlOiipgnrK233+5QeGPJ94GG6q7nHRhDMqNxm2bzPhj2Qys7AxdxL
 UO4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uy9P4Bv7MoU15f1hxa9HUk41ddeWB4vxhHhX7nu5AF8=;
 b=oG7D9OCTsN7dXt4Ylq+knb4hN3jYb2EQXdglUuteYdXxEKrVIXWRPzHbw1EQVVT7DY
 H++28BHY6iw/NhSwuIVBGgURWqIJSC218w+UxmN8Mv9VSwF/ySERmeLl4UZm2P/ULp8u
 O/muU4lnrjfbIELQXkAz23H/zkagS6JdTETVs7NTPoyQMjxlZeX4n1vSugEgm5wLHWyz
 Dw7ewE2+u8dWKg3zqbDnGHVUTT804HJzUIMqPSudGoUKztXQDJ6fAFas1j87JzoySjO5
 2e1TnThY8u5AMa7RIU3wcLcxKy7Y2y9hZWIdX7LTMejN2ulsEj6S7gLiII8jhAT5fuAt
 glLg==
X-Gm-Message-State: APjAAAUApYLCttXUpZmLth4aauQOrTnT7pQQPVN+Zl8fS5l+KVbNteaE
 lMZORKqLavfRpsQ0/ggj59Q7nUjT6NJP6ujfdZRYJg==
X-Google-Smtp-Source: APXvYqybYGFXeKm3HudJJDld+RvqFOCnrMTby4Ii2vx9EH9qEyc7WekPspTFOFMLIfLcDmLdtXWyHbCAfNQSt4Z3QxE=
X-Received: by 2002:a2e:8195:: with SMTP id e21mr167967ljg.62.1562104610089;
 Tue, 02 Jul 2019 14:56:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190617221134.9930-1-f.fainelli@gmail.com>
 <20190617221134.9930-3-f.fainelli@gmail.com>
In-Reply-To: <20190617221134.9930-3-f.fainelli@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 2 Jul 2019 23:56:38 +0200
Message-ID: <CACRpkdb3P6oQTK9FGUkMj4kax8us3rKH6c36pX=HD1_wMqcoJQ@mail.gmail.com>
Subject: Re: [PATCH v6 2/6] ARM: Disable instrumentation for some code
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_145651_815232_E0B87F47 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

On Tue, Jun 18, 2019 at 12:11 AM Florian Fainelli <f.fainelli@gmail.com> wrote:

> @@ -236,7 +236,8 @@ static int unwind_pop_register(struct unwind_ctrl_block *ctrl,
>                 if (*vsp >= (unsigned long *)ctrl->sp_high)
>                         return -URC_FAILURE;
>
> -       ctrl->vrs[reg] = *(*vsp)++;
> +       ctrl->vrs[reg] = READ_ONCE_NOCHECK(*(*vsp));
> +       (*vsp)++;

I would probably even put in a comment here so it is clear why we
do this. Passers-by may not know that READ_ONCE_NOCHECK() is
even related to KASan.

Other than that,
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
