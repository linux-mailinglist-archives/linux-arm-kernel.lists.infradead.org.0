Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 948A82C089
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 09:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUpdafxqSSFHIX0FIl2CMtNXi96oVQ3cuCtcGTXIYPA=; b=MJe4vUEJ8SlVuv
	rClT6H1Phh/B9yTpYBUF5FczzHsHSLiMKd7VHR/XIJf3pzcbS8N0aVkWpJTLoLQme24xGwOmrjB8p
	1SR/TvCaSHqiJRnUV0Q1MoueoO5cMd/n+HfviGGDOJEFWTiNUNmvGYIUzyY65hGmEtREVqkPSsW8r
	gfMROvspf/SBNSfb/5Fc6KI9vgAqTWi5tpOfULvPoe3V0YiJuWi4+ZvOBpQ72RUyfQDfVTZI6jKYz
	RGNj9Pq0fuSAdV5n/93RyqFKhsUS1FttQeP6pyjsByRRly1GD0OcIFmymNXkeMG1uaBk/5AiiTYiS
	dLG/jsOfoVQSmKQq6t7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVWoC-0001uw-SD; Tue, 28 May 2019 07:46:08 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVWo3-0001u1-QY; Tue, 28 May 2019 07:46:01 +0000
Received: by mail-lj1-f196.google.com with SMTP id h19so8309976ljj.4;
 Tue, 28 May 2019 00:45:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AqCbj+PvdF23UrKqSJAv31hwd4U45LJaqwM+eNLDJ3M=;
 b=UXThA97BRW2VRqsKDiBubHuNSb/7TRlA/c7/IHTiYWE/gKvo1Tv6v88rbjbe2wH3MO
 bvcR5GmFPf/Vibt7Emhxe6oN8gqOlbsbWIY9841vHJSvCoeJbYaFlfOXNJqvCAvVNV/O
 v8nrfAxf6862mVeZoHK5JlJoAGxgM6QW8Qcvy5iMdH9yxn2sAdLkJy+Vb7Ked/xue+gb
 8LwsZvGOFRhRdwyejuqVjYcAjlm9Kl+io6OMjStTQMtZSXZyVRdL0dMDIjtI7j7XARIM
 vZCvIglcUCyZOJ6aaKomPkhPmtCOqn5H3bOUkfQg5urgvCzHU9z/QztKqzh9EoC3E9Zz
 7Iuw==
X-Gm-Message-State: APjAAAXPGO7pzZzeWI50loBDAS2jjzC5zVbBz/BWnuTwhe3dliGy/un+
 hKt/xXh2Ej2LZgehMs7O3z0UBEssbk1/BlAOqSQ=
X-Google-Smtp-Source: APXvYqwnoCo6SJTjNhrqM6Tn9L0kCkH7psfShIb3MEMqL6q3sprsI8Mw18tbRD01Q1Glqdb0OIELkMMx9S+RytEI1MM=
X-Received: by 2002:a2e:9185:: with SMTP id f5mr34080351ljg.51.1559029557096; 
 Tue, 28 May 2019 00:45:57 -0700 (PDT)
MIME-Version: 1.0
References: <5cec74e8.1c69fb81.37335.9d7b@mx.google.com>
 <0edab48f-06e5-9ed8-09be-7c9976ae1afb@collabora.com>
In-Reply-To: <0edab48f-06e5-9ed8-09be-7c9976ae1afb@collabora.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 28 May 2019 09:45:45 +0200
Message-ID: <CAMuHMdUF1Csi1ZMccOj=kurijMLcA6G+TP_spsE+fnMvZR71Vw@mail.gmail.com>
Subject: Re: linusw/for-next boot bisection: v5.2-rc1-8-g73a790c68d7e on
 rk3288-veyron-jaq
To: Guillaume Tucker <guillaume.tucker@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_004559_855988_272E92DA 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, Matt Hart <matthew.hart@linaro.org>,
 mgalka@collabora.com, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Zhang Rui <rui.zhang@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Guillaume,

On Tue, May 28, 2019 at 9:13 AM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
> On 28/05/2019 00:38, kernelci.org bot wrote:
> > * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> > * This automated bisection report was sent to you on the basis  *
> > * that you may be involved with the breaking commit it has      *
> > * found.  No manual investigation has been done to verify it,   *
> > * and the root cause of the problem may be somewhere else.      *
> > * Hope this helps!                                              *
> > * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> >
> > linusw/for-next boot bisection: v5.2-rc1-8-g73a790c68d7e on rk3288-veyron-jaq
> >
> > Summary:
> >   Start:      73a790c68d7e Merge branch 'devel' into for-next
> >   Details:    https://kernelci.org/boot/id/5cebf03d59b514dd627a3629
> >   Plain log:  https://storage.kernelci.org//linusw/for-next/v5.2-rc1-8-g73a790c68d7e/arm/multi_v7_defconfig/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.txt
> >   HTML log:   https://storage.kernelci.org//linusw/for-next/v5.2-rc1-8-g73a790c68d7e/arm/multi_v7_defconfig/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.html
> >   Result:     28694e009e51 thermal: rockchip: fix up the tsadc pinctrl setting error
> >
> > Checks:
> >   revert:     PASS
> >   verify:     PASS
> >
> > Parameters:
> >   Tree:       linusw
> >   URL:        https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git/
> >   Branch:     for-next
> >   Target:     rk3288-veyron-jaq
> >   CPU arch:   arm
> >   Lab:        lab-collabora
> >   Compiler:   gcc-8
> >   Config:     multi_v7_defconfig
> >   Test suite: boot
> >
> > Breaking commit found:
> >
> > -------------------------------------------------------------------------------
> > commit 28694e009e512451ead5519dd801f9869acb1f60
> > Author: Elaine Zhang <zhangqing@rock-chips.com>
> > Date:   Tue Apr 30 18:09:44 2019 +0800
> >
> >     thermal: rockchip: fix up the tsadc pinctrl setting error
>
> This commit has now been reverted in mainline.  Would it be OK
> for you to rebase your for-next branch on v5.2-rc2 or cherry-pick
> the revert to avoid recurring bisections?
>
> Ideally this should have been fixed or reverted in mainline
> before v5.2-rc1 was released, or even earlier when this was first
> found in -next on 13th May.  Unfortunately it was overlooked and
> then spread to other branches like yours.

I'm afraid it's gonna spread to even more for-next branches, as most
subsystem maintainers base their for-next branch on the previous rc1
release.  Typically maintainers do not rebase their for-next branches,
and do not cherry-pick fixes, unless they are critical for their
subsystem.  So you can expect this to show up in e.g. the m68k for-next
branch soon...

Can't you mark this as a known issue, to prevent spending cycles on the
same bisection, and sending out more bisection reports for the same
issue?

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
