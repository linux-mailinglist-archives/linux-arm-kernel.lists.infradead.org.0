Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EDE4891A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIzmufBuwMT6fSVA2yEwMVVqKifvlxSoGhpsn4O4NQk=; b=gFpf8nMtbsMydQ
	IQQ8iDyenKpy6r92dYQm3QMqr5PWE34iKhC+JJ0Md4SR9LRrpKua3wzIpaiCcek67p+mPeievuAdY
	HIdegwJpwawAhlfhkXeWSh5r36Rgwcgu0+6Lz5ppJrviOQmAMjTAMr1Rf4a3dKQC5A3WHgbkYRax/
	y6ptbE3tBB46E3SK8sNHKDYMA6KePXo4+OwYb/1EhwM1A07f5FYiRqfoh21h9nq0/Us5xSZpnroEL
	Vx+1EeDVNoPsk0hU/iEgTsjHN9iR8ogc3XEqmMgkjDYWWxO5GzaEyQ6tM3LuMiCaJFlJq30bVwmRD
	f82jJ5RmAslbxhVi2q0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcud3-0008C6-93; Mon, 17 Jun 2019 16:37:09 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuca-0007y3-Bc
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:36:41 +0000
Received: by mail-wr1-f68.google.com with SMTP id n4so2622633wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 09:36:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8Oy70J7E+pU3L/OYvURWRN5oF2aMwufMYC8uJSROz60=;
 b=DlaA52o9nHISWq1cj3FDQhAADTE120lO9hhtHA5wyDO5Yk/lF2wF7OMk9B/N51XOP7
 SlbR5eK8qbhHVEbZ6oL9q0aPxlOU9IbneZXKr97OVy4yZb1mXsu34p82SCddfYUJ/Zgg
 L57iU6atBaRfeJs8X46+w1Y1j9V9L38vtjMV5U3rkIBkO4SXUAvagOEDYFjsjBwPg5fO
 OdTwb0e8o4QZ5MQmXIpcNJ/DhD6buHtkYNfMn0NinP0/qrM5b0EjxOEB9cb05NuZJYIs
 zoFoCFSH8wp90LcPYGR6bFwnRkJGRimwWQ5sUHRa41eU2A/bRdoyySAjdTfLt1P7gT0w
 757w==
X-Gm-Message-State: APjAAAXgYmHDK9u5bFbkeWxGc8mI9W3CmSBcTcOmXfmuWIwmzoiCLFCr
 wRoNjm1Lrb0Rkbx/MYFIzDI=
X-Google-Smtp-Source: APXvYqydGfrS7r/3YJw8wv4J3mDqQdGECHHJ0dsY/h1rw5+NOYNtFdSPKiuX989ub5GjygD6pPlUhg==
X-Received: by 2002:adf:e3cc:: with SMTP id k12mr20423649wrm.159.1560789397834; 
 Mon, 17 Jun 2019 09:36:37 -0700 (PDT)
Received: from kozik-lap ([194.230.155.186])
 by smtp.googlemail.com with ESMTPSA id e11sm12061602wrc.9.2019.06.17.09.36.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 09:36:37 -0700 (PDT)
Date: Mon, 17 Jun 2019 18:36:34 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Joseph Kogut <joseph.kogut@gmail.com>
Subject: Re: [PATCH v2 2/2] arm: dts: add ARM Mali GPU node for Odroid XU3
Message-ID: <20190617163634.GA16941@kozik-lap>
References: <20190614203144.3850-2-joseph.kogut@gmail.com>
 <20190614235719.8134-1-joseph.kogut@gmail.com>
 <20190616085928.GB3826@kozik-lap>
 <CAMWSM7j8dtsS4d-hOc3Sk6OJHs+SiGC9tEaZBEmO0VKmtJguKw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMWSM7j8dtsS4d-hOc3Sk6OJHs+SiGC9tEaZBEmO0VKmtJguKw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_093640_410320_2F94CAC2 
X-CRM114-Status: GOOD (  30.12  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org, kgene@kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 09:15:23AM -0700, Joseph Kogut wrote:
> Hi Krzysztof,
> 
> Thanks for the review.
> 
> On Sun, Jun 16, 2019 at 1:59 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Fri, Jun 14, 2019 at 04:57:19PM -0700, Joseph Kogut wrote:
> > > Add device tree node for mali gpu on Odroid XU3 SoCs.
> > >
> > > Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> > > ---
> > >
> > > Changes v1 -> v2:
> > > - Use interrupt name ordering from binding doc
> > > - Specify a single clock for GPU node
> > > - Add gpu opp table
> > > - Fix warnings from IRQ_TYPE_NONE
> > >
> > >  .../boot/dts/exynos5422-odroidxu3-common.dtsi | 26 +++++++++++++++++++
> >
> > This should go to exynos5422-odroid-core.dtsi instead, because it is
> > common to entire Odroid Exynos5422 family (not only XU3 family).
> >
> > >  1 file changed, 26 insertions(+)
> > >
> > > diff --git a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> > > index 93a48f2dda49..b8a4246e3b37 100644
> > > --- a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> > > +++ b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> > > @@ -48,6 +48,32 @@
> > >               cooling-levels = <0 130 170 230>;
> > >       };
> > >
> > > +     gpu: gpu@11800000 {
> > > +             compatible = "samsung,exynos-mali", "arm,mali-t628";
> >
> > This is common to all Exynos542x chips so it should go to
> > exynos5420.dtsi. Here you would need to only enable it and provide
> > regulator.
> >
> 
> To clarify, which pieces are specific to the Odroid Exynos 5422
> family, and which are common to the entire Exynos 542x family? I'm
> thinking the gpu node is common to the 542x family, including the
> interrupts and clock, and the regulator and opp table are specific to
> the Odroid 5422?

Opp table depends - it might common to Exynos542x (as all use the same
Mali) or specific to boards (because there is Odroid XU3 Lite with
Exynos5422 working on lower frequencies).

So far the CPU and all bus OPP tables were put in exynos5420.dtsi so I
guess this can go there as well.

For the rest of properties you were correct.

> 
> > Probably this should be also associated with tmu_gpu as a cooling device
> > (if Mali registers a cooling device...). Otherwise the tmu_gpu is not
> > really used for it.
> >
> 
> We have two operating performance points for the GPU, but I'm not sure
> at what temperature we should trip the lower opp. Looking at the trip
> temperatures for the CPU, we have four alerts, and one critical trip.
> The highest alert is 85 C, would it be reasonable to trigger the lower
> GPU opp at this temperature? Should it trigger sooner?

The highest trip point is 120 C and it is critical. In general I would
follow the CPU trip points (so fan should start working at 50 degrees).
Unless you have some other data about recommended trip points. Useful is
vendor kernel (from Samsung, from Hard Kernel).

> 
> > > +             reg = <0x11800000 0x5000>;
> > > +             interrupts = <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>,
> > > +                          <GIC_SPI 74  IRQ_TYPE_LEVEL_HIGH>,
> > > +                          <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> > > +             interrupt-names = "job", "mmu", "gpu";
> > > +             clocks = <&clock CLK_G3D>;
> > > +             mali-supply = <&buck4_reg>;
> >
> > Please check if always-on property could be removed from buck4.
> 
> I've checked, and this property can be removed safely.
> 
> > Also, what about LDO27? It should be used as well (maybe through
> > vendor-specific properties which would justify the need of new vendor
> > compatible).
> >
> 
> I'm unsure how LDO27 is used, can you elaborate?

It is supplying the VDD_G3DS (with a note "SRAM power"). I do not have
any more data on it. However I did not check in vendor kernel for it.

Best regards,
Krzysztof


> 
> Best,
> Joseph

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
