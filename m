Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC4B4AAF3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 21:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8IP5fLk3ow8zzui4r/38BItfVJRQF3ovEiRcJ9CjwQ=; b=ZmZJqpnVqR2bW3
	o9yAxnDnqsjNYwMY8CPHntLoLNYkcAom8wNtuDLNk2DdMvqJLpFYfmU4Ltl+4G7lHTFNjiCroUiH8
	5E23Gnjytlds+ukwxCAM5Q2cPcZw/5ftMWX8E/ygbF1MqAAvzBruNziNDv65nEy7QnxPF/pes5sN+
	IRKWA8/GJ0iVpdCCd8jGIM+y7ooQXrBN7CVSlOY5Sgp4PYsMsUBlLqWuAd9hGCRxPryCP6TdU+2O+
	yOfEyuwutXpnrw33YeCPTnyDWWtu4fOIbBCNU+l47EMNyEslCvo88oGC2B+r1aS3qiQjttuPeYxRs
	Nf9GzplxSbcXcs0LFhOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdJcJ-0001Te-LU; Tue, 18 Jun 2019 19:18:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdJc8-0001TL-5z
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 19:17:53 +0000
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7897E20679
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 19:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560885471;
 bh=ZWSK86V7NI7b40wV2ulvMwUX6gfBoaYFIEZv+jaBbAQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=N3cQP/TQIfiQCkE4SosugroCeeMv81f7VN+IJUTKMSRSZMMv3XrX1pMK+oXUXAN1N
 6CeFt24hrYcRNSlnvsHwxnAjf2tvrQtodqrDzONLzIGY/M3lXRra5QYKzpLDUiIwPA
 nXWGebBJV66EJxreKLS8y/V4S+qnQAnFUKrV3UuA=
Received: by mail-lf1-f52.google.com with SMTP id j29so10146049lfk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 12:17:51 -0700 (PDT)
X-Gm-Message-State: APjAAAV5/eIujbnnT75gnIN8OaYJQiOITeTTsbZlShvDMO3d9JzTbsGl
 dOKKg6MN1qMbWnMEhHS7qY6qCnovyGky9j8g5gc=
X-Google-Smtp-Source: APXvYqzPJjXzgwHiYzzytAPPYZZVCa+SGp9n9sKYmF0r/LKdiMln5BTA1yn7nIrb6RGQBDcCjSOtkT5IHe2Wvc8o4Es=
X-Received: by 2002:a19:e308:: with SMTP id a8mr1782969lfh.69.1560885469745;
 Tue, 18 Jun 2019 12:17:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190614203144.3850-2-joseph.kogut@gmail.com>
 <20190614235719.8134-1-joseph.kogut@gmail.com>
 <20190616085928.GB3826@kozik-lap>
 <CAMWSM7j8dtsS4d-hOc3Sk6OJHs+SiGC9tEaZBEmO0VKmtJguKw@mail.gmail.com>
 <20190617163634.GA16941@kozik-lap>
 <CAMWSM7ibdtSGJfNwsYXGXMEkWJTG9Gd-PCd6nPS0bLPd5v+4rA@mail.gmail.com>
In-Reply-To: <CAMWSM7ibdtSGJfNwsYXGXMEkWJTG9Gd-PCd6nPS0bLPd5v+4rA@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 18 Jun 2019 21:17:38 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeODKo+nNTfmk9z1DaULrJMyNzuspBbFXXEkFqJ2hHYuw@mail.gmail.com>
Message-ID: <CAJKOXPeODKo+nNTfmk9z1DaULrJMyNzuspBbFXXEkFqJ2hHYuw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm: dts: add ARM Mali GPU node for Odroid XU3
To: Joseph Kogut <joseph.kogut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_121752_257162_13819C21 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 airlied@linux.ie, dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
 kgene@kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 18 Jun 2019 at 19:42, Joseph Kogut <joseph.kogut@gmail.com> wrote:
> > >
> > > > > +             reg = <0x11800000 0x5000>;
> > > > > +             interrupts = <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>,
> > > > > +                          <GIC_SPI 74  IRQ_TYPE_LEVEL_HIGH>,
> > > > > +                          <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> > > > > +             interrupt-names = "job", "mmu", "gpu";
> > > > > +             clocks = <&clock CLK_G3D>;
> > > > > +             mali-supply = <&buck4_reg>;
> > > >
> > > > Please check if always-on property could be removed from buck4.
> > >
> > > I've checked, and this property can be removed safely.
> > >
> > > > Also, what about LDO27? It should be used as well (maybe through
> > > > vendor-specific properties which would justify the need of new vendor
> > > > compatible).
> > > >
> > >
> > > I'm unsure how LDO27 is used, can you elaborate?
> >
> > It is supplying the VDD_G3DS (with a note "SRAM power"). I do not have
> > any more data on it. However I did not check in vendor kernel for it.
> >
>
> After checking (a fork of) the vendor sources [1], it seems to me that
> this regulator is used for memory voltage related to Samsung's
> Adaptive Supply Voltage, for which there is a pending patchset [2].
>
> This seems to me to be out of the scope of this patchset, could you confirm?
>
> [1] https://github.com/kumajaya/android_kernel_samsung_universal5422/blob/ad41104d43e6470f8d4880d65b259dc7b903cc0d/arch/arm/mach-exynos/asv-exynos5422.c#L1052
> [2] https://lwn.net/Articles/784958/

Hi,

Indeed the vendor sources suggest that voltage scaling of this
regulator depends on ASV, not on frequency. However still the
regulator is there in the hardware so it should be in the bindings as
well (specific to Exynos). I guess the driver should also enable it
but this is separate topic (adding per-platform quirks to Panfrost
driver). Putting it to bindings also follows advice from line 12:
https://elixir.bootlin.com/linux/v5.2-rc5/source/Documentation/devicetree/bindings/writing-bindings.txt#L12

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
