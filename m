Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 973B0A7F71
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 11:32:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5jzbzCklQiWsdIcjkwxkKDrP7eR6Ux2jjkirjoXpv0=; b=IgrgKthCGqvlrW
	W3PsaBCcitqFYtnDKN2dy4pA5Y7m7p7V0cgG0R/kxarvszhGvDjSNAE8fA8Nkqoj1ENWVWPhclxX0
	QxeoAQKh/pmOmti8u87hyACvW3pxJj1mhjgL3vaEcCg6txiQ/1XjumJ4Oa3y+oiYnq0ohest/0Gum
	c+qurGrHUDvOFNmcG7Zuibt1CjeioOKWvuiM8KaDx4mp253VO+GB+mWSqVuWRW/a5AK8qRs1ZKHCs
	GqbTiSt3XuukwBVb+vpNYBV3d9F2zBq5Ez52o20k06H5gF3Tf22JU4aZk+LhSfnIA2ERUJd91H9b1
	kuCLJK1u7lMLTd3yaVZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ReK-0006TC-NV; Wed, 04 Sep 2019 09:32:24 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Re7-0006SW-Lm
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 09:32:13 +0000
Received: by mail-qt1-f195.google.com with SMTP id b2so20097037qtq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 02:32:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UHxSEahLKpYZl+gQl13hSzG6JV/+EQf24IFbG+fM+74=;
 b=txS++4suAyYe/eAIVlnBSSe7tJXMn+GS1EqwCIKrJ6pgdxGHGTN9vKnz8V3TnylM+S
 gnE/18zWYFJ4BLmI4eMxjqy0CBNbOS1jLnd4ybFUUJeAnKahZMlJq7gVEQKVtk0Bxxvq
 wg9xdFaAIX8havWh98suwgpr3yn+rsDYK7P/v9O8zQEOkRraNeuxv8nqJPjAgcnB/yxo
 tbN5Lc9ZQd8b3A8kVxR4iGYYsprGNGZH9BwxiZnNC2zZkOUoaOLv9haoah98FuaolQEn
 V9+2H/XZ2EcFVHCLk9fWR/V3n6QOA+1axD/hjXwcHFCk6fk9ggtgGFvfIQs4a19K7MAA
 lPKA==
X-Gm-Message-State: APjAAAV+s0hPn8wUmF/soaWgrUYnpH6Ra/CA9QhQzufBzf/EeFHPzwIn
 UR2oLQQG3BL/Vl/WbVo36gRhZkZlttI9rRBJAb4=
X-Google-Smtp-Source: APXvYqyROzVp8NdMUxBQN9T5fX/ExDvgw/NQj8JGADtVQ7H8Be+Kls547ULRLSLpK/YQ3XTPDmVl3Tk9bz7DYzm3A48=
X-Received: by 2002:ac8:32ec:: with SMTP id a41mr7276548qtb.18.1567589529989; 
 Wed, 04 Sep 2019 02:32:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190816163042.6604-1-krzk@kernel.org>
 <CAJKOXPcgZ2_ofZyAeTSxALkALaP-SFNfvNmNPYSPyLzuhpGZ0w@mail.gmail.com>
 <20190822183519.GA23735@kozik-lap>
 <CAK8P3a1_Qw=OB31yOCrpPs8Ys+=9tt4Pnyd=3+2JGzRXJV1KAw@mail.gmail.com>
 <CAJKOXPfRMXkm_pT560Ry5k-zFWpkRDmFHSs2Fb3RL7d4h=ka9g@mail.gmail.com>
In-Reply-To: <CAJKOXPfRMXkm_pT560Ry5k-zFWpkRDmFHSs2Fb3RL7d4h=ka9g@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 11:31:53 +0200
Message-ID: <CAK8P3a35Cm5=QOz3O3hhczRzkT54vyeka3iJBcknFB4cVgN5-A@mail.gmail.com>
Subject: Re: [GIT PULL 1/3] soc: samsung: Exynos for v5.4
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_023211_716233_B88922AB 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 10:37 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Tue, 3 Sep 2019 at 19:21, Arnd Bergmann <arnd@arndb.de> wrote:
> > On Thu, Aug 22, 2019 at 8:35 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > I have drafted a related patch recently, regarding the related
> > arch/arm/plat-samsung/cpu.c file. This is part of a longer series
> > I'm working on, see https://pastebin.com/ZqeU3Mth for the
> > current version of this patch.
>
> You can then also adjust the include path in arch/arm/mach-exynos/Makefile.

Yes, that is part of the following patch, along with replacing all the
'depends on PLAT_SAMSUNG' in Kconfig with 'depends on PLAT_SAMSUNG ||
ARCH_EXYNOS'.

> > The observation is that mach-exynos
> > is almost completely independent of plat-samsung these days, and my
> > patch removes the last obstacle from separating the two. I have
> > another set of patches to do the same for mach-s5pv210 (which shares
> > half of its pm.c with plat-samsung, but nothing else).
>
> Great!

FYI, the other parts of the series include:

- Changing all s3c24xx drivers to no longer use mach/*.h or plat/*.h header
  files, as preparation for multiplatform support. This is work in progress,
  but mostly done, with cpufreq and ASoC as the notable exceptions.
- Merging mach-s3c24xx, mach-s3c64xx and plat-samsung into a common
  mach-s3c directory. This seems to work fine and looks nicer than having
  three tightly connected directories, but the downside is that all path
  names change and the directory becomes fairly large.
  I think we can actually do the same thing for all remaining plat-*
directories.
- eventually making all ARMv5 platforms link into a single kernel, like we do
  with ARMv6 and ARMv7 (more to be done there, but s3c24xx and pxa are
  the harder bits here).

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
