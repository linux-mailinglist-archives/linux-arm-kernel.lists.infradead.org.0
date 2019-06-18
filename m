Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A714A452
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5H+1U2bkpHEHWTmcxAWxKytFIaKIVUI2GwrNBoqIgzA=; b=stKKlGgIiaEpyL
	7cg0Rx76FtU6S+CZTK8o7MJ0Gdz4y7Vd1FQzeLZlc2zvaXehvpfrv7z8ybtDpyx6Je4b7t1G3MAak
	+lFAQ/mxd58pyw50B97WvwM1R1UAWBGrRQPAFRjGQScBv6VVxcXb0NAGUKfuXlTH7Emwc6h3GTYIc
	4Um9D2zmZPqKE2FYfKX90ejbPTYkAVEhBLl+1xwVJV9iyX8lINf7WyYMM9GtCpkXkijAdv+g0gywH
	+yyZGENDpmCTFQJpg0DRfjkFKCKgiLtIM/jVefGwk6g1LFC7MN3qYZUXqSlXz0V/AeI2wV7KS3URS
	JYmBynng9093QdxCDBmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFNu-0002ht-P2; Tue, 18 Jun 2019 14:46:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFND-0002O0-3A
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:46:12 +0000
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 61B7C21670
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 14:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560869170;
 bh=0FrwUmL29yHpDepBX+TXabzN3Z0vrRVEY5D8hJER/K0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vL1AF7HnzvWFqCUhenVSNzJEIyNvodIH9eNYtwiPdriqmsnJpyccjU1yw3vcymokz
 PdGon90W3WeIFPOTq4L+VZo/ONCCRPoGmYwWmko0iCWDOyi7M4JhEWsn6lizdfnAio
 oRS1McYyMo4PDZQ/zGAbSpSsJH/qQmaCYTUEOIJo=
Received: by mail-lj1-f169.google.com with SMTP id i21so13438919ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 07:46:10 -0700 (PDT)
X-Gm-Message-State: APjAAAVqC0hnh75yH0YYgW3+bPj5D+mWHk9HgvYXsCGfYS72JchxBDdZ
 op1vuE2+IEAhkaaql6ZSVhEiLM5B+Xvy5jAw7eg=
X-Google-Smtp-Source: APXvYqwV+4ngmR3BJWVxI1TlpBTw+CX8G2+LZ8Mr68e3mJyBfeQMh82MbjRoGpXZOfBMf/HkS2+FTEi0li/hsI6ERgI=
X-Received: by 2002:a2e:8155:: with SMTP id t21mr11407580ljg.80.1560869168635; 
 Tue, 18 Jun 2019 07:46:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190614203144.3850-2-joseph.kogut@gmail.com>
 <20190614235719.8134-1-joseph.kogut@gmail.com>
 <CAJKOXPc-Xztou+xyibb8YZtfz20q3kzr_gTBoE=R3q_CSk9kzQ@mail.gmail.com>
 <CAL_Jsq+8s3iNUy5ZCtWW5k-0sa51CR0xdv3Gh_sR=jsVtLmTdQ@mail.gmail.com>
In-Reply-To: <CAL_Jsq+8s3iNUy5ZCtWW5k-0sa51CR0xdv3Gh_sR=jsVtLmTdQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 18 Jun 2019 16:45:57 +0200
X-Gmail-Original-Message-ID: <CAJKOXPd0E1Zg_TOOM3s4haQJnq6hrHaLOPjDkeVz0Gjzp-qROw@mail.gmail.com>
Message-ID: <CAJKOXPd0E1Zg_TOOM3s4haQJnq6hrHaLOPjDkeVz0Gjzp-qROw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm: dts: add ARM Mali GPU node for Odroid XU3
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_074611_304290_575A6DC3 
X-CRM114-Status: GOOD (  17.29  )
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
Cc: Joseph Kogut <joseph.kogut@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel <dri-devel@lists.freedesktop.org>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 18 Jun 2019 at 16:18, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Tue, Jun 18, 2019 at 3:27 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Sat, 15 Jun 2019 at 01:57, Joseph Kogut <joseph.kogut@gmail.com> wrote:
> > >
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
> > >  1 file changed, 26 insertions(+)
> > >
> > > diff --git a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> > > index 93a48f2dda49..b8a4246e3b37 100644
> > > --- a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> > > +++ b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> > > @@ -48,6 +48,32 @@
> > >                 cooling-levels = <0 130 170 230>;
> > >         };
> > >
> > > +       gpu: gpu@11800000 {
> > > +               compatible = "samsung,exynos-mali", "arm,mali-t628";
> > > +               reg = <0x11800000 0x5000>;
> > > +               interrupts = <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>,
> > > +                            <GIC_SPI 74  IRQ_TYPE_LEVEL_HIGH>,
> > > +                            <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> > > +               interrupt-names = "job", "mmu", "gpu";
> > > +               clocks = <&clock CLK_G3D>;
> > > +               mali-supply = <&buck4_reg>;
> > > +               operating-points-v2 = <&gpu_opp_table>;
> > > +       };
> > > +
> > > +       gpu_opp_table: gpu-opp-table {
> >
> > One more thing - use "opp_table" as node name (generic class of node,
> > matches style with other tables).
>
> 'opp-table' as convention is using '-' rather than '_'.

OK, so rather consistency because most of opp-tables have '_',
including existing DTSes and examples in
Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt and
Documentation/devicetree/bindings/opp/opp.txt.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
