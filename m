Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF4A4F467
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 10:39:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEzQhV4y3DT3cTynD876BDPmL9Wmt1vyEuORJ4HDuPs=; b=d0Bhnw3ZPjB0Xx
	8cIIQ9V2uwFRW9gysdiR6GLHz8y2L/bdwAhIond1dT30YPrSV+PhdNaB2hPatGT2a4HG2kbheqA4b
	AZZWD7Ow4nPugkjD0u5Lrjb9uPyOpdvhGwnQHQKirAZrZxJRqAC/CQrzoufCc9gq/PNKm7fccPtE7
	4sBru0A1dZpvcPUnBLQNldZ4WXd2hptcNSMPrBmdxTHOSU68NYRfJH+rHjp2T7IZRyCY8ruNkXhMn
	S3B8Czj85xnCeNyKMp03RABTsfLmxVJNAqwAkAVcpkG2NVyxhIVIbe8He3UXIs/8nGkliW+x3yB+H
	gVdMUzOFPZuFLSP9bCJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hebYb-00010i-7G; Sat, 22 Jun 2019 08:39:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hebYQ-00010G-4c
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 08:39:23 +0000
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A711521537
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Jun 2019 08:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561192761;
 bh=qAXXbtnQBFmUgmRyzc4VkIcs13YQ55kQtiIfHKdMQAM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=nAiN3KHHuh3GDHGSYzoKQ0szWAcLEKSJR8fj6S3Puih9WsIT+QnfcZDq5/yl+I0Zb
 TvVPIQYXNyxtSLhya0XjYCjcjb611p7Sc97ZU7oZtE2AkYFQH0TZ1gFUub9Eqic/Ty
 BfdpaFciV4AdK/dyKmpoAR24cWyCdvkq9q16UJu0=
Received: by mail-lj1-f179.google.com with SMTP id x25so8050611ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Jun 2019 01:39:20 -0700 (PDT)
X-Gm-Message-State: APjAAAU014J7wJCArPjO7EE31kNlI5U3fJKSCfnAuMxaTsoAgDiSmkaH
 EmMGohA7KpSDJ5sr3vDKD2ZKUjpOlKMmyXoAA4o=
X-Google-Smtp-Source: APXvYqxyRGkjOqMwnY3GOZOxtp7YuotqZNdcuHXzNI9tdgx7yO5ll/x9xEcbo852e3cgrZMCREphrlRE46xebyBF2zI=
X-Received: by 2002:a2e:50e:: with SMTP id 14mr56971315ljf.5.1561192759012;
 Sat, 22 Jun 2019 01:39:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190621180208.25361-1-krzk@kernel.org>
 <20190621180208.25361-7-krzk@kernel.org>
 <CA+E=qVe45NVCfpSHRF6=0aYRpURZA4DVz8W-XkSaNDB=1mX2kA@mail.gmail.com>
In-Reply-To: <CA+E=qVe45NVCfpSHRF6=0aYRpURZA4DVz8W-XkSaNDB=1mX2kA@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Sat, 22 Jun 2019 10:39:07 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdk2MmBHjiDU4M6PA6O4ifVe_sDifejUPJiGPCQ7MR1sQ@mail.gmail.com>
Message-ID: <CAJKOXPdk2MmBHjiDU4M6PA6O4ifVe_sDifejUPJiGPCQ7MR1sQ@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] arm64: defconfig: Enable Panfrost driver
To: Vasily Khoruzhick <anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_013922_201072_D8D4CB34 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 Joseph Kogut <joseph.kogut@gmail.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 21 Jun 2019 at 22:15, Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> On Fri, Jun 21, 2019 at 11:04 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > Enable support for Mali GPU with Panfrost driver, e.g. for Exynos5433
> > and Exynos7 (having Mali T760).
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> >  arch/arm64/configs/defconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index 6b4f5cf23324..972b17239f13 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -517,6 +517,7 @@ CONFIG_DRM_HISI_HIBMC=m
> >  CONFIG_DRM_HISI_KIRIN=m
> >  CONFIG_DRM_MESON=m
> >  CONFIG_DRM_PL111=m
> > +CONFIG_DRM_PANFROST=m
>
> It makes sense to enable lima for arm64 defconfig as well since it's
> used on number of 64-bit Allwinner SoCs.

I wasn't aware that some of ARMv8 SoCs still use Utgard. In such case
it makes sense indeed, I will send a follow up.

Thanks for feedback!

Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
