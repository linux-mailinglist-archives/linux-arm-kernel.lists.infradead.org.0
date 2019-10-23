Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CA8E1AED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bjJrI3FbJ5VTnjRJcBD+r9Gb9cGAUzjC+FWrQFYTcnQ=; b=APMcNHHXYWgyiD
	Go3Tp6buVUGan0JY9zcAXp28cVHvH9Ky58yQOBzIIBdR9r7kA3KOfdhL/dOYf6sw6GF7wikLUhG7F
	sWkjGoUgIlQYN/FolFoaBjb5cCIhk2dZ7oz7iSApxjN5+8zJpLwoKs5DcBiSYstvCfy8LYyw5jVwy
	9bunWkI7+N1rGtbMbzRSXxnZeD6KjckGpTAZ9RR/QOknzHLMN8Dh0/PX1qRSXQrvvfDxyO9qD/Rhu
	nN7s64EzYOU0SdsM/hn4hgcWGf2CfOWZiGTZ2UJRjpKqCYQNhRQnIIbCf5heZuPXK/tbIBV7qmRaB
	e/KxB9qBtpIyHY98+d4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFwx-0006OI-Id; Wed, 23 Oct 2019 12:41:15 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFtx-0002tm-56
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:38:11 +0000
Received: from mail-qt1-f169.google.com ([209.85.160.169]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mxm7U-1i5Bqt2a9m-00zIuI for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 14:38:05 +0200
Received: by mail-qt1-f169.google.com with SMTP id r5so32056150qtd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 05:38:05 -0700 (PDT)
X-Gm-Message-State: APjAAAWVwdRga4Lq1G5+b3cYX1tQwFE62sAGpXmQj9o1iFgZM+gVqB2q
 D2VFKM6kPgSELFSX/2TC7sH1WB5G5taI81X0mSE=
X-Google-Smtp-Source: APXvYqwrU0Hm/ARLCRvhVBlRdvPlDJSDNuHcJN6+Uj7yxLvAwd8RMgOaHRybpcUhDTeeF+G9vHKE5/Q8Jj1UKOdkvPU=
X-Received: by 2002:ac8:33d4:: with SMTP id d20mr8762581qtb.204.1571834284536; 
 Wed, 23 Oct 2019 05:38:04 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-7-arnd@arndb.de> <20191023105443.GE10630@pi3>
In-Reply-To: <20191023105443.GE10630@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 14:37:47 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3wxaUR4Nx9a6JBu3DjtJ90ZRH6+-V8-g=6mcEih34Qnw@mail.gmail.com>
Message-ID: <CAK8P3a3wxaUR4Nx9a6JBu3DjtJ90ZRH6+-V8-g=6mcEih34Qnw@mail.gmail.com>
Subject: Re: [PATCH 07/36] ARM: exynos: use private samsung_cpu_id copy
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:oKyW0ifUShTbgQUnff3o/cd+BFXDt1EiUHoGsoolpOunvvtmgnj
 5IA0Rc10qAvs5T15f6DpeSMpI47QGQsDN+8cbzmnvws3kT+V0gKB/kezSMvWC3xLS8J+Uiu
 6uP8yi8jeX43Pw9QaAAJhhC9SYt3oFMUBvcwumvUBxvX9rYQs4AAd1Tt1jOKZ/y0II5/7zu
 mmByGflQU3ji6ejRHGhHg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RCYDj+tPvEU=:9oA26dmXoU91wdZoS72eQo
 0eqJs9fQrH+UXBisN+Ur+PHn5SIzOoN9QCkNR2V+7tvyNsHtlmi5FvGhmgYaKZQDszI6x2EMC
 98hOC+fh/UemFWQyWaTaq4t/ZKKpre02iidijFEHcWtMQI14oFPYNuRv8RvcftQCyutYvIB40
 X3hO8RjP6ibziYib4EfOi+MqCx6VzSU25FQDU78hrdXmSQ5VgPYbWY4sxoF6y/D6NkR97Y6Q3
 Ry2IDeb2j8mGllNId1u6PYP+8I+J+kVwZR5ABouWs7a79iGlDqRjZYA1CGUruQZ4dUPR1cYdj
 GSrbPK4HfJ91PbpKWn1d6Kxcrooq3aauZetRfv0HeCzBKXeBmHTT0ahNm0yOzWkeClc4KCKgL
 76ufLOAGnz5TH1b3FuffZTLOgeMGMWoKodSw13aTGJv2Web6v6J+A833lG8MJ+jdoySXeN0Eg
 0raqGFn0Ou5pj+Q6VjmDWE3cnIWXGfDrD45TE2pWSZUqgdgPv8iJ9+P5S/4+An874kAJ6mRnz
 n8kTkNQqB7n7V15KltodZIdEetKLzWAZFhpWe3onzuLtXMMgPF2cPlzxrUB4TZFmBHydh9mFM
 huHkW8fDXX9+YWT9IaczajZiEcrtHdSMrt4xpx3OV2yxgQo73fkifKdo4fUPAZ0WWtlwAv5kL
 YOemCfyi57WmRuzh8vyg/VdJLW+tcFuGiJPUEVCjj3R8jy7g1yeqQKcTb5ejrP6hCtIs4La+n
 Az/nZMXnGaj3Vk6kBdPcvK4Wdla/lxdojoW3HttX8WQYdXxEmApfhQPdnVGlpfQPosfHLUxHX
 HbIqiuGkzcn6jbiTK9nEoeu+fKRo5XP8Scqc6e5ofBuCppcSKPnt5onNb6QkyY0U5+/63OXYt
 7mA9G6ETly7DvS04BJCA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_053809_518286_0F542C1D 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pankaj Dubey <pankaj.dubey@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Tomasz Figa <tomasz.figa@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 12:56 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Thu, Oct 10, 2019 at 10:29:51PM +0200, Arnd Bergmann wrote:
> > diff --git a/arch/arm/mach-exynos/exynos.c b/arch/arm/mach-exynos/exynos.c
> > index 9aa483366ebc..da9300d655c6 100644
> > --- a/arch/arm/mach-exynos/exynos.c
> > +++ b/arch/arm/mach-exynos/exynos.c
> >
> > +#define S5P_VA_CHIPID        ((void __iomem __force *)0xF8000000)
>
> How about keeping the S3C_VA and S3C_ADDR_BASE macros/defines and using
> them?

Ok, done now.

> They still appear in arch/arm/include/debug/exynos.S so they could
> be integrated into one header, unless you plan to remove it in further
> patches.

I don't think it actually helps, but it doesn't hurt either:

arch/arm/include/debug/exynos.S cannot #include any mach/*.h header files,
so the definition has to remain duplicated, unless I'm missing something.

Also, the addresses should be completely independent, as long as the virtual
address for the uart does not overlap with the virtual address for the chipid.

One possible cleanup here would be to completely remove the S5P_VA_CHIPID
static map and use ioremap(), but doing that requires that the first call to
soc_is_exynosXXXX() happens after the ioremap.

> > diff --git a/arch/arm/plat-samsung/include/plat/cpu.h b/arch/arm/plat-samsung/include/plat/cpu.h
> > index fadcddbea064..02d7f991d5a3 100644
> > --- a/arch/arm/plat-samsung/include/plat/cpu.h
> > +++ b/arch/arm/plat-samsung/include/plat/cpu.h
> > @@ -111,8 +111,6 @@ extern void s3c24xx_init_io(struct map_desc *mach_desc, int size);
> >  extern void s3c64xx_init_cpu(void);
> >  extern void s5p_init_cpu(const void __iomem *cpuid_addr);
>
> You can remove it as well.

Ok, removed.

        Thanks,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
