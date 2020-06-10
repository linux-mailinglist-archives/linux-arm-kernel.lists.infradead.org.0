Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651001F515E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:44:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Utyun75O5IaLoY+FYDp0wgOIDzRj/N7Dnz1XsfYYVnY=; b=mDsSs7BWdlIlaT
	bsb2Adm1qTsKyskxv+eMeZ0lwjHyEn0EXXpl4CAP86Eal2Mw4yayqFZhvV9ykzRhstLQGGtN9fSMS
	Wk4L1B4b1dLeUjDpA/m+sUwP+KsYXEfyzel0m5h0JRAXVrxNJ/2Bqo0CJqsyhibO+5k04J2xs/8rT
	Aq4IJoCUIMMOrMiEC8svJwvvmjqXTkPU3+jGxNvINhJJGYAiygxlrP5t4qhRkoiFmohvpUSfG5yfu
	bgqEw15lwCEPfbXdENm5JDznRKkTN5J1j9ckgI7xb2AZbXHl+73DjP0nyJgihO9OK+B8ZJ4qbFFiK
	6ZamQrVQmit9nzkCrTIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixHR-0001AH-9f; Wed, 10 Jun 2020 09:44:21 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixHJ-00019N-1s
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:44:14 +0000
Received: from mail-qt1-f172.google.com ([209.85.160.172]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MpDVx-1j9JwN3SIB-00qgNF for <linux-arm-kernel@lists.infradead.org>; Wed,
 10 Jun 2020 11:44:09 +0200
Received: by mail-qt1-f172.google.com with SMTP id q14so1195060qtr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 02:44:08 -0700 (PDT)
X-Gm-Message-State: AOAM5313dg1kkeKB8gdEXFVUrml3h7HJU4CPLonG0iUvPzDbQ2h0xLTo
 SxwZqeR2vok7KUWM6I/erg1c7cT50ilMem3l02k=
X-Google-Smtp-Source: ABdhPJzRNYG5EcQw70snnJLT7htZUC81kIXI94+5koJrICYsQfuJmxhcIA3XJt2ckthClHUdy2fovJvPPBTOp1iz1uk=
X-Received: by 2002:a37:9401:: with SMTP id w1mr2110620qkd.286.1591782246851; 
 Wed, 10 Jun 2020 02:44:06 -0700 (PDT)
MIME-Version: 1.0
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-3-daniel@0x0f.com>
In-Reply-To: <20200610090421.3428945-3-daniel@0x0f.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 10 Jun 2020 11:43:50 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2JeH+-Naivo8B-JWxebB2ArkCLJw8_CN2Goy5bkSTBwg@mail.gmail.com>
Message-ID: <CAK8P3a2JeH+-Naivo8B-JWxebB2ArkCLJw8_CN2Goy5bkSTBwg@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] ARM: mstar: Add machine for MStar/Sigmastar
 infinity/mercury family ARMv7 SoCs
To: Daniel Palmer <daniel@0x0f.com>
X-Provags-ID: V03:K1:u1cWs/LwFUuUtTh2IsnNCn9a/Lr1oV0o5ZWTKJjSZ3kvtwn4VKc
 VVpnm6FNgavBYiurVA13xL2AE6pNLGgG35J0EV7cB/Hqhbk3qPdKb8E/Br1Uifk0bnr/Pm+
 EN6p8qcT63eQNh6QIBX+wGKjI21WrScfLsvvmSuyqlgaHtOwR5LGJFGjrLJh9rkmk2Q5K2a
 AIbynsESKIwk1zuGKwTFA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2yh2Cuz5sNw=:el+hDt3He7rbPBnHWEYRy1
 MMGLzsWR6c3PF5ZWEJKBlY0oKhmYoO+/fd5lgLvzbK3xtj0IsAONRaR2ytrxHzyk1X282q93C
 iXdDaj3k9flEvJzkrvd0tg+fgrX4LnMZVAQXBVKuCZj4ndcNNwO7TOUcv+8xktDiFhrqcdivC
 spQA+YbMcE5L9SafpApwKjgD2TxBHbCmXzFr2r1w2d7Myj5RFUQMc1+pZ2hSRtGl4U8yUhdKO
 vXv/HxHsNBio6KRlGavwUSmpTEkNkQBOiQOBpvdn0iGxJPWWXBnewzDmk8ktHCllZ8Hwit3ni
 29P3mlLZRGh42R5KAydBYKUJNkXbNPD6TsxvxhnNEKOAFB67sYbF1YUS77GDoJYAJn3mKtME5
 Ia0QdUYAb2qKvCb/XmBdV4myJmVjlzhjrUve4bQSFuxjNBw1nEz3+ASrh3H6YMqltHRW1SsPh
 /shuYeQDZ5D9/tQposGsMHjt96xAAHNg+FZQtixB4YvENpT/pIvjSpfwmdOD33EllDYYsA/FS
 NIJyPjLrSZ1UlOGruxk1mrJ2bLmagxbGSDTIoVlhD5pckiRFdINiZZQEQlKczOW6/FPiCG0CV
 odkuJwsH5dXefG3t8CuOqD02P2Ku8SfjbeDpQBcJsSAItV3KMCdLB9qRfVdTrcirfjBaQRmV1
 PYFcxzzv46zEWcvtaqsUIgWPDySzr9r6SN3XT5giHCSDyI0pJ2bYFRhJz5w9qxNqLxvJ8ge88
 H2Cj8Ljo6xfLVguh5jzVkdL/yUycpnJT/abB6s+pMVjyrKOAcuJplCMu8WpT7ZcUKjt5YqyFV
 J6gYxHWr/0e71PiYHQGQ3OUHrYXCO2VQcLta8pWY+avYXEFuFk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_024413_386981_7C4BE52A 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Ard Biesheuvel <ardb@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Nathan Huckleberry <nhuck15@gmail.com>, DTML <devicetree@vger.kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, allen <allen.chen@ite.com.tw>, "Bird,
 Timothy" <tim.bird@sony.com>, Maxime Ripard <mripard@kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, k@japko.eu,
 Christian Lamparter <chunkeey@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 11:08 AM Daniel Palmer <daniel@0x0f.com> wrote:

> +/*
> + * This may need locking to deal with situations where an interrupt
> + * happens while we are in here and mb() gets called by the interrupt handler.
> + */

I would suspect that you don't need locking here, and locking would likely
make it worse.

From what I can tell, an interrupt happening anywhere inside of mstarv7_mb()
would still result in the function completing (as miu_status still has the
MSTARV7_L3BRIDGE_STATUS_DONE bit set) and nothing that could
happen inside the irq would make the barrier weaker, only stronger.

> +static void mstarv7_mb(void)
> +{
> +       /* toggle the flush miu pipe fire bit */
> +       writel_relaxed(0, miu_flush);
> +       writel_relaxed(MSTARV7_L3BRIDGE_FLUSH_TRIGGER, miu_flush);
> +       while (!(readl_relaxed(miu_status) & MSTARV7_L3BRIDGE_STATUS_DONE)) {
> +               /* wait for flush to complete */
> +       }
> +}

This is a heavy memory barrier indeed.

The use of _relaxed() accessors is normally a bad idea and should be
avoided, but
this is one of the places where it is necessary because the normal
writel()/readl()
would recurse into arm_heavy_barrier(). Can you add a comment explaining this
for the next reviewer?

> +static void __init mstarv7_barriers_init(void)
> +{
> +       miu_flush = ioremap(MSTARV7_L3BRIDGE_FLUSH, sizeof(*miu_flush));
> +       miu_status = ioremap(MSTARV7_L3BRIDGE_STATUS, sizeof(*miu_status));
> +       soc_mb = mstarv7_mb;
> +}

Hardcoding physical addresses is generally considered bad style,
even if you know the address in advance. Can you change this to get
the address of the L3BRIDGE from DT instead and just hardcode the
offsets? Note that they are in the same physical page, so you only
need a single of_iomap().

> +static void __init mstarv7_init(void)
> +{
> +       mstarv7_barriers_init();
> +}

I think you can fold this into a single function.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
