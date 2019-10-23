Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D85EE1B08
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3YKUS80pa9jW4FnlrpPDDddIUylBf6itrNcYk7hm5A4=; b=Lc2btwiWSKgUeD
	WVGsRvDaIyqRDXHKWw6mcbsHpTFsdabQqVV89eXeFrdj2VS12WQcSN58XwjHF7gUXNVFb6EQaAnwL
	KP02fc5RBpcgb9FkRY5pt2IsCouu7748lt009RpI/Ia+QnrPwdtxomNkK2m43Hq86Q7bWshzSStft
	ra+f040FU7KNFP0HSafR+mqOSRqR+gAKfVPV6pGgWv7q1GL68AtxjiwFT9TJ9E9ZJghxNwTPeTHN2
	TMnO0QSmcetPOf2FAHkilzLmZIXvf8B5rLiZnzEkSAbrk1tdhn7zqT4UUAR4OHbelRm4lJ+H9kyC4
	lN7lflHEsQuhTJ3zZLLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFzo-0007yu-8v; Wed, 23 Oct 2019 12:44:12 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFzY-0007yB-3i
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:43:57 +0000
Received: from mail-qt1-f180.google.com ([209.85.160.180]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MFbmS-1iDx8Z2KKc-00H5oB for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 14:43:53 +0200
Received: by mail-qt1-f180.google.com with SMTP id t8so14483088qtc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 05:43:53 -0700 (PDT)
X-Gm-Message-State: APjAAAV652n5eWDC7s6N05nYtCfgRe8GW3ler4UTFUA5vM+rfDS4SMtn
 t5daVcRR+QCdvb49BFuHwitW9pRIiqT+EN0uOEs=
X-Google-Smtp-Source: APXvYqwNvhXDrr6AHjcTLNQwmEbDOVOaCUMULb04vjXb82DPGWeMlJtUjbZ9hzvBPBa+1tZw0f1o0rKNFQGqQEfhgWY=
X-Received: by 2002:ac8:6956:: with SMTP id n22mr8785341qtr.7.1571834632511;
 Wed, 23 Oct 2019 05:43:52 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-8-arnd@arndb.de> <20191023105717.GF10630@pi3>
In-Reply-To: <20191023105717.GF10630@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 14:43:36 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2k0nZCJu-DCC7unMM_rOU7edmBOnb7dTKw_mAsi5sUuA@mail.gmail.com>
Message-ID: <CAK8P3a2k0nZCJu-DCC7unMM_rOU7edmBOnb7dTKw_mAsi5sUuA@mail.gmail.com>
Subject: Re: [PATCH 08/36] ARM: exynos: stop selecting PLAT_SAMSUNG
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:gBoVS9zQ55hqYqilVRwfrd4aa8kcIPAL4GqcgI3dq9aqiesF7mo
 zmYUOvWbTQYZBIkV0FxCBvEreplgXG7nfE7wSRj/YlSIN8ni24/K+pooproEwvFEmysNT7g
 cq2TrvGeZEdM6zZDxtslfQ1GPZM0YVIgRQALar15fB9u9wL6SI3xJoErdRwkpgPjjGNaQtX
 /OHx/+o6azx2mISBEUp4A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yIOZpUrQyu0=:Qhha/QO2eqogwiPsX/yWoh
 vWUQwD7F+Uvrd/oN+a98Xn+/PQ7vKptFymfGxN19eBf0Ie90fN/kacEd/69uO2zESuZY2K5dP
 11igk6kS0C1pKlRPrSdU+DBv8Lyz/Mq41E+dUYz95sgVxw83P5hqUAj21//ty4xtgh9dsn1Rm
 uKK0xXOD2kMR7KRAkdNN2CVOOv+wJSS/azV1aM4AMISndzESnKsoQfPNPcOcfh7/B+IROJwYp
 W5Im2azKwA04jYGlDzd/m0LpaMFn87Ke1tK0fkAOfUXFAAKadJcQV4Q3uYjUr95hZa4mYHm3g
 jheZspvrRBaO/+nVFh2mlNOQrOtERKTOVAxXZXlurktP6YO7KH4QMJfpm5tX6YD/BkM7sLlEe
 lxWJ0sIGjsj1PY/miKAslGx7NNjIG7eor/NLxVQ5e0ad/Fr1KOn24iK9i7E7oHDytWpiWjpzt
 doe+J3ey0p0Bw7JGR/cJ6Opks0TVUAnWxncYNJykxlG/tYX3tMtHq6gXEvHE7BlD0Gn+ZSjfm
 5kDzyN5PAk17i8ZKwdCgPo3aNXWkLOLHpi7ktxVB/HL4YHFqnV7RfW6g6KNN0aK0W3LZjUm0/
 hG7kSK0cfpuukwgRURYlSQcoCbi+6phTXOYjPNKvGIUI0zRaHl6g97ACaTP2emzuicvApggd9
 FrdyINz2kmLz3dCxKYiz2XHqMU0qb1AhsfpgUg3vHbcIYTayBKEuL8FadL/Hhxp70Py6yNGqJ
 QHkRjLMxHct8khkIPVr6g3ZXBYVbdi7jVHfXSv7jJ54UByzb1hAH7F180YQqhbF6evo35RtpM
 C0aMv+T/QRKOVWW47zRtoNZOI30uIb6anPULbwQpZCaDBt2RlzAvhQW9cTwaOh2ZcJSauOZnV
 6nvAgn9oURcCxSrfis5g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_054356_446649_A369E052 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 "Enrico Weigelt, metux IT consult" <info@metux.net>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 12:57 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Thu, Oct 10, 2019 at 10:29:52PM +0200, Arnd Bergmann wrote:
> > @@ -1022,7 +1022,7 @@ choice
> >                 by the boot-loader before use.
> >
> >       config DEBUG_S3C_UART2
> > -             depends on PLAT_SAMSUNG
> > +             depends on PLAT_SAMSUNG || ARCH_EXYNOS
> >               select DEBUG_EXYNOS_UART if ARCH_EXYNOS
> >               select DEBUG_S3C24XX_UART if ARCH_S3C24XX
> >               select DEBUG_S3C64XX_UART if ARCH_S3C64XX
> > @@ -1034,7 +1034,7 @@ choice
> >                 by the boot-loader before use.
> >
> >       config DEBUG_S3C_UART3
> > -             depends on PLAT_SAMSUNG && (ARCH_EXYNOS || ARCH_S5PV210)
> > +             depends on ARCH_EXYNOS || ARCH_S5PV210
>
> You need to keep PLAT_SAMSUNG because of additional architectures, so
> follow pattern from DEBUG_S3C_UART2.

Are you sure? I think my version is correct: for UART2, the
"PLAT_SAMSUNG || ARCH_EXYNOS" is equivalent to "s3c24xx || s3c64xx ||
s5pv210 || exynos", which keeps the existing behavior unchanged.

For UART3, the "PLAT_SAMSUNG && ..." is redundant, this is already
limited to "s5pv210 || exynos", which my patch keeps. Changing it to
"PLAT_SAMSUNG || ..." would allow selecting the symbol on s3c24xx
and s3c64xx, which presumably is not valid.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
