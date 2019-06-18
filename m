Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 944864A8B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 19:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5KFewNsJndUmXzI+TeVJDouNG+FhwQwaGNSycGUiOEU=; b=LlKq/q2APlGtxR
	De6sfM6hpPpFQkMagZBqNqFqJDjj6CuvuA6FxL2b3SxSbuTmdbjTqS5bCO5RuYRZGvj8PupvNvtwC
	/ydImctJ1hROffEJz44P8R3n20cJeiW6lHuqM5oJ0Gs8FJMDMiUocl5Pd4az79Of0jCk7otAXjVu/
	UHasoskxjcuNQQgxkKW2csMqtGonjciU6hRKBbdVTvMtIJ1TrCEM55oZCnzq9K+UcaqQ3sZXDpq3T
	zotEFJ952gMf++g8wxngxK8li/EofR/rPUQQueskjTyFfjHWN8AjLqiHDugSJSDZRsl1j2Qr1+YAF
	Po4ETB50GXEBlWIOz7dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdI81-0000jZ-BQ; Tue, 18 Jun 2019 17:42:41 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdI7j-0000iU-7T
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 17:42:25 +0000
Received: by mail-ua1-x944.google.com with SMTP id s4so6887711uad.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 10:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nIlhxSJsICJWoP5wubMZz79sEFNcBWjpKtMJBr5laEU=;
 b=cPLXP2Z8PB/3LQ8+iFmRMJH7QH3h6p8I3OWwo5GObI+Gwoafa0UGtF9xlWLqFHQEDY
 XDV0lKvVApc0L6elCQJBDo/vrffQbyPJt828Tick6dQZD2z+4nT/vTsAxgTrCy2AYskZ
 bup+0m65zYHDuSKHzF3OHLerxTMZPH/Gb2p6Dzk7Cl247y5Ig/URppV/5DJl5B4mdLsC
 JOaeCRQDoz7LNI4aplVs0OwTQLgRXQeh1eJsiLGTEnZYomG5bCsUI0z+d9b8/o20cOpM
 11itH8XYABN1CXQeQzbc4P8QkVDIZi0dkNERvm4Ski+m04HsqWA9Wr0442YdodriJd+v
 U9ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nIlhxSJsICJWoP5wubMZz79sEFNcBWjpKtMJBr5laEU=;
 b=Ha6+WYTG7WgWD5X+Nlk78keSYk8OVkSzN7Qo5uaaVzgX/3luA+DdZqxG3UZOqb8IPr
 aNxTf/8SgfFzKI/qHM6gzJlVi2epKvnPlUHKs7FVzkV9YDAoMWnBzpoqxWURsjQkAlVA
 0tIRQp049erI/0FGdZSWOzEc7fUe1t+xNmG5k+4mpR9AuCXld/Pp7XB8pIGPoKZRg2dH
 nVTcww7NekIlp9sNMHftsPhXaehAZ7xCmxk/yx9NBPg+/iSOZ+bcu2OuwIhgWuEKiQGW
 iU65k6JpYqLLoeCXdV4WtyjxYc5nqnOU4qXPwvKEK/C1P8xSKsWPcfNWbEy/sMUEEPAT
 HORg==
X-Gm-Message-State: APjAAAWyqTyyziV7jlKCWsSh7R9QXlomRywarit4cEPMK0Es2AcS53My
 uH2ywa3yGLpJ2JYzqtmeqP+TK8e+Vt/yBJdOWos=
X-Google-Smtp-Source: APXvYqxqliQ4cJH5WUQ8rBfkKuCcdaQXorhmxA+QCpvEgqzX9rgQNf20t2CaSN/i5BDJ2M8zF9yjT+vsifnR5DK5sSM=
X-Received: by 2002:ab0:5928:: with SMTP id n37mr2564486uad.24.1560879740607; 
 Tue, 18 Jun 2019 10:42:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190614203144.3850-2-joseph.kogut@gmail.com>
 <20190614235719.8134-1-joseph.kogut@gmail.com>
 <20190616085928.GB3826@kozik-lap>
 <CAMWSM7j8dtsS4d-hOc3Sk6OJHs+SiGC9tEaZBEmO0VKmtJguKw@mail.gmail.com>
 <20190617163634.GA16941@kozik-lap>
In-Reply-To: <20190617163634.GA16941@kozik-lap>
From: Joseph Kogut <joseph.kogut@gmail.com>
Date: Tue, 18 Jun 2019 10:41:44 -0700
Message-ID: <CAMWSM7ibdtSGJfNwsYXGXMEkWJTG9Gd-PCd6nPS0bLPd5v+4rA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm: dts: add ARM Mali GPU node for Odroid XU3
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_104223_315272_BE14D506 
X-CRM114-Status: GOOD (  32.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joseph.kogut[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-samsung-soc@vger.kernel.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org, kgene@kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 9:36 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Mon, Jun 17, 2019 at 09:15:23AM -0700, Joseph Kogut wrote:
> > Hi Krzysztof,
> >
> > Thanks for the review.
> >
> > On Sun, Jun 16, 2019 at 1:59 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > >
> > > On Fri, Jun 14, 2019 at 04:57:19PM -0700, Joseph Kogut wrote:
> > > > Add device tree node for mali gpu on Odroid XU3 SoCs.
> > > >
> > > > Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> > > > ---
> > > >
> > > > Changes v1 -> v2:
> > > > - Use interrupt name ordering from binding doc
> > > > - Specify a single clock for GPU node
> > > > - Add gpu opp table
> > > > - Fix warnings from IRQ_TYPE_NONE
> > > >
> > > >  .../boot/dts/exynos5422-odroidxu3-common.dtsi | 26 +++++++++++++++++++
> > >
> > > This should go to exynos5422-odroid-core.dtsi instead, because it is
> > > common to entire Odroid Exynos5422 family (not only XU3 family).
> > >
> > > >  1 file changed, 26 insertions(+)
> > > >
> > > > diff --git a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> > > > index 93a48f2dda49..b8a4246e3b37 100644
> > > > --- a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> > > > +++ b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> > > > @@ -48,6 +48,32 @@
> > > >               cooling-levels = <0 130 170 230>;
> > > >       };
> > > >
> > > > +     gpu: gpu@11800000 {
> > > > +             compatible = "samsung,exynos-mali", "arm,mali-t628";
> > >
> > > This is common to all Exynos542x chips so it should go to
> > > exynos5420.dtsi. Here you would need to only enable it and provide
> > > regulator.
> > >
> >
> > To clarify, which pieces are specific to the Odroid Exynos 5422
> > family, and which are common to the entire Exynos 542x family? I'm
> > thinking the gpu node is common to the 542x family, including the
> > interrupts and clock, and the regulator and opp table are specific to
> > the Odroid 5422?
>
> Opp table depends - it might common to Exynos542x (as all use the same
> Mali) or specific to boards (because there is Odroid XU3 Lite with
> Exynos5422 working on lower frequencies).
>
> So far the CPU and all bus OPP tables were put in exynos5420.dtsi so I
> guess this can go there as well.
>
> For the rest of properties you were correct.
>
> >
> > > Probably this should be also associated with tmu_gpu as a cooling device
> > > (if Mali registers a cooling device...). Otherwise the tmu_gpu is not
> > > really used for it.
> > >
> >
> > We have two operating performance points for the GPU, but I'm not sure
> > at what temperature we should trip the lower opp. Looking at the trip
> > temperatures for the CPU, we have four alerts, and one critical trip.
> > The highest alert is 85 C, would it be reasonable to trigger the lower
> > GPU opp at this temperature? Should it trigger sooner?
>
> The highest trip point is 120 C and it is critical. In general I would
> follow the CPU trip points (so fan should start working at 50 degrees).
> Unless you have some other data about recommended trip points. Useful is
> vendor kernel (from Samsung, from Hard Kernel).
>
> >
> > > > +             reg = <0x11800000 0x5000>;
> > > > +             interrupts = <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>,
> > > > +                          <GIC_SPI 74  IRQ_TYPE_LEVEL_HIGH>,
> > > > +                          <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> > > > +             interrupt-names = "job", "mmu", "gpu";
> > > > +             clocks = <&clock CLK_G3D>;
> > > > +             mali-supply = <&buck4_reg>;
> > >
> > > Please check if always-on property could be removed from buck4.
> >
> > I've checked, and this property can be removed safely.
> >
> > > Also, what about LDO27? It should be used as well (maybe through
> > > vendor-specific properties which would justify the need of new vendor
> > > compatible).
> > >
> >
> > I'm unsure how LDO27 is used, can you elaborate?
>
> It is supplying the VDD_G3DS (with a note "SRAM power"). I do not have
> any more data on it. However I did not check in vendor kernel for it.
>

After checking (a fork of) the vendor sources [1], it seems to me that
this regulator is used for memory voltage related to Samsung's
Adaptive Supply Voltage, for which there is a pending patchset [2].

This seems to me to be out of the scope of this patchset, could you confirm?

[1] https://github.com/kumajaya/android_kernel_samsung_universal5422/blob/ad41104d43e6470f8d4880d65b259dc7b903cc0d/arch/arm/mach-exynos/asv-exynos5422.c#L1052
[2] https://lwn.net/Articles/784958/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
