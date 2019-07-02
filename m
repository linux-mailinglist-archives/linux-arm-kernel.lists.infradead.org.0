Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF19C5D7C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 23:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7nmRmewF3y4mM+bGseK4xgHdRjdNUMl2Dxsn+w8o19Y=; b=ZrLa2pT6OltSOa
	M7nSuQeJft8B4xD2eeOU63JOWCPbNGGAw49IwGBaZBy+hbbGBg5E9G4fyA/bEYFS6qCStTrS1Zhck
	+jPbm9ZMXlUWbHTrDKxq4O6n6n32VbHdzkW50LFUMPGyi2dF8+jdtNwt9qbCO3gYFXFx9lipcZ+AN
	lX0hhE5Lurvau13gv+bk+b4ny+kNUTnH2C6P1aH3mcuVwFPxhesrftIozKMZCHA9YcBabznxyhwWn
	sU68kXtADgtopDQcielXpkHRZnQNMeA3dtDABl+xf7Ngmzvi2xorE6s+ouDtDh+osHLacx5WgCsiN
	zsx6ey5F5mbK/2IfKQyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiPz9-0002Uv-8T; Tue, 02 Jul 2019 21:06:43 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiPyw-0002UN-1t
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 21:06:31 +0000
Received: by mail-lj1-x243.google.com with SMTP id v24so18416683ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 14:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=16juguPwtTD1vWpUNQpyIYEAEOADqNOzx5F+yEENpfM=;
 b=S/9wjNxzHSQ44lx7QK89mdaRsjoKX1ZHgfg3NuCejeCzRPPew2tWGQF+4K7vlloGvm
 tyN6KUOOcr3VvGxxqoNTkXQVxwWSdgw6rRxyFAtqS2wmE4uIzfvXER5NQaV0WvTgDSO/
 G7CftJYBPlUxgiiZGrDHr7XemlK99J37xqC6ZOicBwBXGmkzZiihRX4yIIpvZp2yFexg
 a7FQYsjQ7dRg4vmj1VZqWbV5+hptW5EvSKIt7hNJxWmqz6RxXpQcQrlL4oP+c+fXuPnm
 JcF2i68p+gi5kx0i/DM9PMGUD2oVxl7Rs4ZjGSg8mLnFJjXxbx6vHt20X8U5l6/jqpk/
 XrvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=16juguPwtTD1vWpUNQpyIYEAEOADqNOzx5F+yEENpfM=;
 b=P6jaiMVFYUedgolYcvrfSE5px86zF+X7DLQDVM5E+my4bdkLxq9jYVx8E/TG0Kzfpg
 g4XqJowC/x5qa98M11/IKSTyWQpqZrgOj/jhPAV2tj592Ijg9Jd8R3axIeTgSelTtF3h
 Qd4be6i+7YGkgPbMmYlaLc1EWX68fZOFx5qSz6eGbikMNVQLgBXR0NPqJ29k7a95zyCy
 VwX83FhnRb9GekzThZLXSbsnkfSFjnyBeP8TVeEA6HppGaMV8yOl7dIqPHo8znGSMQlx
 kzc3ei9ucOldwv55kpPHzc0FljWEy7nfZYCMSQTlvol3a3jAp36+ztaHt3H/m/l0NMl7
 OzHQ==
X-Gm-Message-State: APjAAAWVDTWME5WUHTiGZKu+OOdQNVexRIZ5eIA/DHmjpDk3QutHtMra
 7bXNAYlXiSp0U8WO+t3+V5QdoGC1rdE0aJhubL9ykA==
X-Google-Smtp-Source: APXvYqzqBXDeMKmpI7HFc6XkzadQ68osH+Li6FhgxXGtJx4NhJW7ZyaamzfpJOk299AcYNEfRxB1ATHZc5WRU8OT9jg=
X-Received: by 2002:a2e:a0cf:: with SMTP id f15mr18775412ljm.180.1562101588459; 
 Tue, 02 Jul 2019 14:06:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190617221134.9930-1-f.fainelli@gmail.com>
In-Reply-To: <20190617221134.9930-1-f.fainelli@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 2 Jul 2019 23:06:16 +0200
Message-ID: <CACRpkdbqW2kJNdPi6JPupaHA_qRTWG-MsUxeCz0c38MRujOSSA@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] KASan for arm
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_140630_100989_B268D77F 
X-CRM114-Status: GOOD (  16.10  )
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
 Jonathan Corbet <corbet@lwn.net>, liuwenliang@huawei.com,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, kasan-dev@googlegroups.com,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Dmitry Vyukov <dvyukov@google.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 drjones@redhat.com, Vladimir Murzin <vladimir.murzin@arm.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Andre Przywara <andre.przywara@arm.com>,
 philip@cog.systems, jinb.park7@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Nicolas Pitre <nico@fluxnic.net>, Greg KH <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, christoffer.dall@arm.com,
 Rob Landley <rob@landley.net>, Philippe Ombredanne <pombredanne@nexb.com>,
 Andrew Morton <akpm@linux-foundation.org>, thgarnie@google.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

On Tue, Jun 18, 2019 at 12:11 AM Florian Fainelli <f.fainelli@gmail.com> wrote:

> Abbott submitted a v5 about a year ago here:
>
> and the series was not picked up since then, so I rebased it against
> v5.2-rc4 and re-tested it on a Brahma-B53 (ARMv8 running AArch32 mode)
> and Brahma-B15, both LPAE and test-kasan is consistent with the ARM64
> counter part.
>
> We were in a fairly good shape last time with a few different people
> having tested it, so I am hoping we can get that included for 5.4 if
> everything goes well.

Thanks for picking this up. I was trying out KASan in the past,
got sidetracked and honestly lost interest a bit because it was
boring. But I do realize that it is really neat, so I will try to help
out with some review and test on a bunch of hardware I have.

At one point I even had this running on the ARMv4 SA1100
(no joke!) and if I recall correctly, I got stuck because of things
that might very well have been related to using a very fragile
Arm testchip that later broke down completely in the l2cache
when we added the spectre/meltdown fixes.

I start reviewing and testing.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
