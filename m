Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CAE6CA52
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 09:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKWEFWCgh2mb0ACgEw4BpU8gXSBZdJKTA53bRiFVt0c=; b=rI+EVL5tIb8hq+
	nOMN7Bc97fiHIvWJr1+k3zHBDh9oWFAdaad7pH/D8hsXe7nhq5j3B1k5ejKRuRDoYQ3qZNHnY0WMF
	deQpAxqpwTE1lauuj+fNQn6hZZQWrpgvCztcO6p4O/16EfoZdnCjs8PWgwS8JUNKs7zr08K4WSsWQ
	CAhU7czfKXBWLvNfcsZKu5MNz7w94jXmUm6B+5nxYGYHQ/PqsphdYjWL1J7PUaYa/w8iZRZ7QVYBx
	oLO1G4AuofJyO4tIINNChRRWYtxiLj4UhfPRk71NqNzYdAKvkxOIu9BdtnC7cy0qGi4SMd2QjoOqM
	VyMkrCLszNxXf1IoY16Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho1CX-0005Go-8a; Thu, 18 Jul 2019 07:51:41 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho1CB-0005ES-AS
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 07:51:20 +0000
Received: by mail-qt1-f195.google.com with SMTP id y26so26204821qto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 00:51:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AMIbdcIyPjXgBsFnQdrxIvDXu584wusUv2Znj2VCflY=;
 b=j/nOc0KsOiTV7eYDnJCLDavxs1h52tiZZFzGNncgS7q3jiiQAAMW6J+DYL68Vi7Bf1
 nKBdYM4bUmpnWZwRf9l7hKvW6guqXl3BitAj8JZl2yxit0jXiTgYTh+wbQL4fXlGvodH
 EGMTL0+C4yIgl1Gsw1nA/To1tGxRWSviD0tS22jh00fTcoliZ2c/ZcZWaR3nvFmkX+F5
 E8xVSEj6t0I3qbKAUwFt6RkpSsRkwWtYGexpJMOs6nG7yXEHnjMMp+qQ1ndBvTEPA4de
 adPtmJE8+Gg55U75olZFO1watvQz/AlqPECIBcpZt/Th8UaQjdJzB/1ykDZqKahPwGzU
 2TFQ==
X-Gm-Message-State: APjAAAXXAFEo2S6vJYvNbX02qMLsPINoTXhr/whLJrr7n3tdz0X7rudM
 FcLy0tcx/y0SqCf1v4QdtiCLMPPCEQgoc1WlV6o=
X-Google-Smtp-Source: APXvYqyzjKBdgrNsfXbtaWuBwJsPbX/hOAYTtfb23UeIC61bLsX6rwes0aTlraCVeKg7z22IOXq9fA3u8pg4isBRck0=
X-Received: by 2002:ac8:5311:: with SMTP id t17mr30079223qtn.304.1563436278053; 
 Thu, 18 Jul 2019 00:51:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190617221134.9930-1-f.fainelli@gmail.com>
 <CACRpkdbqW2kJNdPi6JPupaHA_qRTWG-MsUxeCz0c38MRujOSSA@mail.gmail.com>
 <0ba50ae2-be09-f633-ab1f-860e8b053882@broadcom.com>
In-Reply-To: <0ba50ae2-be09-f633-ab1f-860e8b053882@broadcom.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 18 Jul 2019 09:51:01 +0200
Message-ID: <CAK8P3a2QBQrBU+bBBL20kR+qJfmspCNjiw05jHTa-q6EDfodMg@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] KASan for arm
To: Florian Fainelli <florian.fainelli@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_005119_361446_6183BEE7 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Michal Hocko <mhocko@suse.com>, Julien Thierry <julien.thierry@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Christoffer Dall <christoffer.dall@arm.com>,
 David Howells <dhowells@redhat.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andrey Ryabinin <ryabinin.a.a@gmail.com>,
 Alexander Potapenko <glider@google.com>, kvmarm@lists.cs.columbia.edu,
 Florian Fainelli <f.fainelli@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Abbott Liu <liuwenliang@huawei.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, kasan-dev <kasan-dev@googlegroups.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 drjones@redhat.com, Vladimir Murzin <vladimir.murzin@arm.com>,
 Kees Cook <keescook@chromium.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Philippe Ombredanne <pombredanne@nexb.com>, Jinbum Park <jinb.park7@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Dmitry Vyukov <dvyukov@google.com>,
 Nicolas Pitre <nico@fluxnic.net>, Greg KH <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Landley <rob@landley.net>, philip@cog.systems,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Garnier <thgarnie@google.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 7:00 PM Florian Fainelli
<florian.fainelli@broadcom.com> wrote:
> On 7/2/19 2:06 PM, Linus Walleij wrote:

>
> Great, thanks a lot for taking a look. FYI, I will be on holiday from
> July 19th till August 12th, if you think you have more feedback between
> now and then, I can try to pick it up and submit a v7 with that feedback
> addressed, or it will happen when I return, or you can pick it up if you
> refer, all options are possible!
>
> @Arnd, should we squash your patches in as well?

Yes, please do. I don't remember if I sent you all of them already,
here is the list of patches that I have applied locally on top of your
series to get a clean randconfig build:

123c3262f872 KASAN: push back KASAN_STACK to clang-10
d63dd9e2afd9 [HACK] ARM: disable KASAN+XIP_KERNEL
879eb3c22240 kasan: increase 32-bit stack frame warning limit
053555034bdf kasan: disable CONFIG_KASAN_STACK with clang on arm32
6c1a78a448c2 ARM: fix kasan link failures

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
