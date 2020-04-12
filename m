Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C39691A5BAB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 02:34:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRC2Cn9rWk9lA4nNsTNX8FRyyplabgM646g29hfrXc4=; b=IeEaN716vFOjAL
	yPagea00MTCZm83JKK529b64thGw/dkLrac+ICJVJiPxnNg3bVnZnbzInWdvpMdvwTnS6Nglf74yg
	6iSh81lIlBGUvaMbLKtSsZQh9Dxl6Z41Trsv5C9+l2tHEMIh19EB3kqp01iSBgcci9SL3JJAUgG7q
	ammR0hxxinPdtqonwyIEMDYSGiLolx/7VQcgFpcEIUTeWhuVR0tmwN8L39h0dbFsvayy/S7Qjhxgz
	estjPvpwvqBexP+mE1HRZeNuBGO7KLiKaKO08HuOn9N/3tzIEt3hsGaLIxi9PNrUJNzXRNO2jhiGD
	SDPgg6FAE1j4WjTL7shA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNQZV-0007hd-6S; Sun, 12 Apr 2020 00:34:01 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNQZL-0007hF-74
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 00:33:52 +0000
Received: by mail-lf1-x144.google.com with SMTP id h6so3970350lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Apr 2020 17:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zsyaQJSTyWtQU6SNb3d/B5KGEXk22uVClxXXTgsbd6E=;
 b=kV/LeCGT51tDEQA6jixYwmFJMhwu+sfWPjZdgnLCFvMfPYUoeMciBwTxKz8slhIA9Q
 QWA2SQ0DoEF4KcBJ2ugrGlY6oybNlOP3mTjUj02Wr0RrkcNl2xtc81cOXyImM4uRmfCh
 qHFe6s3jbXCLQZHpY1gfAD4pb0z7WUFQaZtVlYfD3husYMs4QPBsa7IqM7dVgNiBcm0j
 l+CqzwLgWhQyQ6lYBMOXmRaHGTqL3jxOCcQSriocgol9p2VvpZTL7/pWWZWy4UhhPTI8
 w07GlQOHtAFmejubyEhftiSAWmxQa3xOjY0uZlHCLUd6DBp11BdB5BddyZZUhdfxf268
 Yyrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zsyaQJSTyWtQU6SNb3d/B5KGEXk22uVClxXXTgsbd6E=;
 b=WRdtomGtpbFWMuGRzRn2373k1g0dWjG3KsK5OgXSS9/ZfTJnwMee2/YAKTvT5imd9l
 XrV5YE6s2XOiiIp8hmdxN5JVrHs4WnpapaijjHfDihyZrTpmJUsE4uV8t2fgwDyyFvmd
 yi6RQyFh2kNHljRtp278WQPRGEheX5phkJ7has+ZmRncZrnelgtOi2fgaK2Z6LZgjasg
 S7OUHMl3jotH+W4sVYajn290C6G7bi4iW2Yz2eblmdvQGU34N+U+AqIlEm9uydIBuRPK
 NhFweOTXuz27SrgdVYNijXI1M97BA8idwuAhU46r6mFeSvpkxklSZ3YkzpbODkE5fgFi
 pVug==
X-Gm-Message-State: AGi0PuYZXqKzKnVTTvvr4i+8F5U8NoN2KZA2p/AKbU4uCqBrU04Lf+rO
 FpxvDeXpQbXZYG1a5sTMVkssi0dgrX7mRW0Sj0x2Tyqh
X-Google-Smtp-Source: APiQypL4dP3s3w7dYreIWE/U9Pw7ftEq+ZzcH56ILtKHt9LXITsoPKEt+dyrtZrmqSv0ag9Tqx6r+iOrde8l3AYonrY=
X-Received: by 2002:a19:48c3:: with SMTP id v186mr6282470lfa.194.1586651629741; 
 Sat, 11 Apr 2020 17:33:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200117224839.23531-1-f.fainelli@gmail.com>
 <20200117224839.23531-8-f.fainelli@gmail.com>
 <CAKv+Gu_6wWhi418=GpMjfMpE2E+XHbL-DYKT8MJ1jE3+VybrAg@mail.gmail.com>
In-Reply-To: <CAKv+Gu_6wWhi418=GpMjfMpE2E+XHbL-DYKT8MJ1jE3+VybrAg@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 12 Apr 2020 02:33:38 +0200
Message-ID: <CACRpkdbR2VG422X0-nhOeWtS3Mhm7M1+RKMozBZbg0Jv5c_TTQ@mail.gmail.com>
Subject: Re: [PATCH v7 7/7] ARM: Enable KASan for ARM
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_173351_269013_24B4A5B5 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Michal Hocko <mhocko@suse.com>, Julien Thierry <julien.thierry@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andrey Ryabinin <ryabinin.a.a@gmail.com>,
 Alexander Potapenko <glider@google.com>, kvmarm <kvmarm@lists.cs.columbia.edu>,
 Florian Fainelli <f.fainelli@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Abbott Liu <liuwenliang@huawei.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, kasan-dev <kasan-dev@googlegroups.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Andrew Jones <drjones@redhat.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, Philip Derrin <philip@cog.systems>,
 Jinbum Park <jinb.park7@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Dmitry Vyukov <dvyukov@google.com>, Nicolas Pitre <nico@fluxnic.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Thomas Garnier <thgarnie@google.com>, Rob Landley <rob@landley.net>,
 Philippe Ombredanne <pombredanne@nexb.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andrey Ryabinin <ryabinin@virtuozzo.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 12:45 PM Ard Biesheuvel <ardb@kernel.org> wrote:

> > +CFLAGS_KERNEL          += -D__SANITIZE_ADDRESS__
(...)
> > -                                  $(call cc-option,-mno-single-pic-base)
> > +                                  $(call cc-option,-mno-single-pic-base) \
> > +                                  -D__SANITIZE_ADDRESS__
>
> I am not too crazy about this need to unconditionally 'enable' KASAN
> on the command line like this, in order to be able to disable it again
> when CONFIG_KASAN=y.
>
> Could we instead add something like this at the top of
> arch/arm/boot/compressed/string.c?
>
> #ifdef CONFIG_KASAN
> #undef memcpy
> #undef memmove
> #undef memset
> void *__memcpy(void *__dest, __const void *__src, size_t __n) __alias(memcpy);
> void *__memmove(void *__dest, __const void *__src, size_t count)
> __alias(memmove);
> void *__memset(void *s, int c, size_t count) __alias(memset);
> #endif

I obviously missed this before I sent out my new version of the series.
It bothers me too.

I will try this approach when I prepare the next iteration.

Thanks a lot!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
