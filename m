Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A30ADA2A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 15:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4rIg4gdoyZViZNbmjp1H9VzS4PNczHESfrIpJRmiOY=; b=KIqn3VqXZunjAM
	+6FHVyPY17uppEN8z/bQsPF8v7Ah7wjC/AzsX/BX3Yk5loAfra/1OdzUaJ/BdX5Nt46oUBNnGGq/g
	ctJSeiVENIIHMfSfWh2Afn+mKpWPyNTnhd/8i4JUIkMkCggux9/de/okyujdoOD70nrVWPNXBGQq4
	jV/D4a6xRBxvnaKm/sEtOKIicJ0CKuYbETqvnFblvUpbRwT4Cn23QmalDNxHzLShz/hfeKZmXzaVR
	YZhF5Nh9Xm/S31/PXMoxsQ4gY+buaCTQ+wCYfEwFWwHhVqbsgBkBBjEwRhE4BvuW/f0JfzqEIKuY3
	ybT5mVgFJaldrltVIiPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7JvZ-00089D-9A; Mon, 09 Sep 2019 13:41:57 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7JvM-00088A-BY
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 13:41:45 +0000
Received: by mail-qt1-f195.google.com with SMTP id o12so16205231qtf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 06:41:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SDsZ3GvRAcyIUFZLokzUq7LE+Tk9DdpyOBzKvaT0DcA=;
 b=UXbm8yZvB0FuKt+hvdbdFS9GnqLgIU3MHUYgiLZhqdvRZQwPOYflBHFPVYKoQYEtJ4
 O1PF0RkxnZchzRAzlsYaPWJRBeNVGHm0bnJ0/gZxGl7Ba7B6IVEeZ/Ix/qsc9qizaKJe
 P0RNGVoFNt3RNxocvuyBjWc7m3wiSqDtqHLEdHPlts6/niCDQDAWZsi1GtYl6cgC1ukV
 brCcc02+v8YAk+CjUew9wpjv5IZyIkJZmO54rJjhz7Kl4Dj9/usAmPBVkIDpTJvweU+W
 G0WLqzQqGW09rKq+eKdPRjDdbKil2hYyzleAXc14cBW7Z9kB1s915AN9KXd0wi0iaYDj
 ENSw==
X-Gm-Message-State: APjAAAWQ9O2juHCVupNX2hKw9MJj46jzy3jxXaHqmTuwrH8K4SyEZ/1x
 OkRRdEA+3mgQSmvw8ROI/9XM3D8AkrPGzlc4RRU=
X-Google-Smtp-Source: APXvYqztw9yoFAktq4haAyRINAdunmh3DTRwfofdC/M2KAxhks4YcE64COGxATxqzbpKKrAUk9IYt0L30m58EvYBVs0=
X-Received: by 2002:ac8:5306:: with SMTP id t6mr23047010qtn.204.1568036501922; 
 Mon, 09 Sep 2019 06:41:41 -0700 (PDT)
MIME-Version: 1.0
References: <1568020220-7758-1-git-send-email-talel@amazon.com>
 <1568020220-7758-3-git-send-email-talel@amazon.com>
 <CAK8P3a3UF7xPV1U3eW6Jdu754P1bzG208UxD9KUxEm1JjZudww@mail.gmail.com>
 <98f0028e-5653-3116-fdaa-1385ecdf0289@amazon.com>
In-Reply-To: <98f0028e-5653-3116-fdaa-1385ecdf0289@amazon.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 9 Sep 2019 15:41:25 +0200
Message-ID: <CAK8P3a1NVGwYa1bw_vjBatd1xe-i875X1Vq1M+2G_Zxd2Oqusg@mail.gmail.com>
Subject: Re: [PATCH 2/3] soc: amazon: al-pos: Introduce Amazon's Annapurna
 Labs POS driver
To: "Shenhar, Talel" <talel@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_064144_391227_B61C685B 
X-CRM114-Status: GOOD (  22.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, mjourdan@baylibre.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 jonnyc@amazon.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 ronenk@amazon.com, Will Deacon <will@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 DTML <devicetree@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, hanochu@amazon.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, barakw@amazon.com,
 hhhawa@amazon.com, gregkh <gregkh@linuxfoundation.org>,
 paul.kocialkowski@bootlin.com, Patrick Venture <venture@google.com>,
 Olof Johansson <olof@lixom.net>, David Miller <davem@davemloft.net>,
 David Woodhouse <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 9, 2019 at 1:13 PM Shenhar, Talel <talel@amazon.com> wrote:
> On 9/9/2019 12:44 PM, Arnd Bergmann wrote:
> > On Mon, Sep 9, 2019 at 11:14 AM Talel Shenhar <talel@amazon.com> wrote:

> >> +       writel_relaxed(0, pos->mmio_base + AL_POS_ERROR_LOG_1);
> > Why do you require _relaxed() accessors here? Please add a comment
> > explaining that, or use the regular readl()/writel().
>
> I don't think commenting is needed here as there is nothing special in
> this type of access.
>
> I don't see this is common to comment the use of the _relaxed accessors.

I usually mention it in driver reviews, but most authors revert back
to the normal accessors when there is no difference.

> This driver is for SoC using arm64 cpu.
>
> If one uses the non-relaxed version of readl while running on arm64, he
> shall cause read barrier, which is then doing dsm(ld).. This barrier is
> not needed here, so we spare the use of the more heavy readl in favor of
> the less "harmful" one.
>
> Let me know what you think.

If the barrier causes no harm, just leave it in to keep the code more
readable. Most developers don't need to know the difference between
the two, so using the less common interface just makes the reader
curious about why it was picked.

Avoiding the barrier can make a huge performance difference in a
hot code path, but the downside is that it can behave in unexpected
ways if the same code is run on a different CPU architecture that
does not have the exact same rules about what _relaxed() means.

In fact, replacing a 'readl()' with 'readl_relaxed() + rmb()' can lead
to slower rather than faster code when the explicit barrier is heavier
than the implied one (e.g. on x86), or readl_relaxed() does not skip
the barrier.

The general rule with kernel interfaces when you have two versions
that both do what you want is to pick the one with the shorter name.
See spin_lock()/spin_lock_irqsave(),  ioremap()/ioremap_nocache(),
or ktime_get()/ktime_get_clocktai_ts64(). (yes, there are also
exceptions)

    Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
