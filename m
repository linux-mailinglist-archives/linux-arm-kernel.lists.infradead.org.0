Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF984A3B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:19:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HK7v4NJmqOiOEIwoDwVAmeZSxQWPhhMFnvJ69Fh+gMk=; b=jSN1rf9ueY2jfh
	N9aBIiWOh9VieTbSi8qtwNdUxkRDlHl8+upWF7dyoW16fg+tBzSvkXi76zemO18E7VCcIKbljBFD2
	34iZsaZbpiWUga8W2vC1NSyI5aXP8zx2sojXe3ZsVudr8hE+LXr1mt9ot+12HACrbsKockhtj8iIr
	7gAU+ducfNoti0piA951s2AvuHlEQxJA0QVfxJjU/kfSdq6zdGqBcu85+6j8e6A1ZGlkFQZ9D6bPt
	SuGmC5vrQzE9UTm8QZmnaHTYLXy23ffdegV/Zq5WtX2vMRi9AV7GpUIyUf6ujuSJfeRQ5azL71pSy
	sxrJHb5cf1WC98/qL9EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEwt-0001AB-ML; Tue, 18 Jun 2019 14:18:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdEwf-00019i-Bh
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:18:46 +0000
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED33C20B1F
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 14:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560867525;
 bh=fmH1HS1i21FXBrdGVVcYis11lRtY96O6Nq7hw7xpuXc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JoDrQk3MgbRvSeO+7rtnkhiCNb09N7doFTHOV7WnAsndUpzx+LxFKG5zn2RpjsgeQ
 E8wiAS1v58NskYQsv3sgTFHkFapWDgDYH7WE/SoMd4gryGJpNbrOGyIeLHGGkAnMwt
 FEOhMsVWLZ4cKFsLpkBHVVq21MDiyEMW+ocxBnLQ=
Received: by mail-qt1-f180.google.com with SMTP id d23so15513610qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 07:18:44 -0700 (PDT)
X-Gm-Message-State: APjAAAUtgwhJalNXBhjS2hdJu+FJU1/JRk3nO44uANH/VppevI/CJxUZ
 CiTAg+GmtmHg3ma7pSpcwoUGcZOk0g/3Z7ynNw==
X-Google-Smtp-Source: APXvYqxqXrhBkfwz+CkmpI6Dnza5Sqa7IVWFgp1FgSWrNioXxep7UkwWRLPmku5uTgQa9FsH0l163BNzQrHu5CpPAQs=
X-Received: by 2002:aed:3f10:: with SMTP id p16mr35442573qtf.110.1560867524199; 
 Tue, 18 Jun 2019 07:18:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190614203144.3850-2-joseph.kogut@gmail.com>
 <20190614235719.8134-1-joseph.kogut@gmail.com>
 <CAJKOXPc-Xztou+xyibb8YZtfz20q3kzr_gTBoE=R3q_CSk9kzQ@mail.gmail.com>
In-Reply-To: <CAJKOXPc-Xztou+xyibb8YZtfz20q3kzr_gTBoE=R3q_CSk9kzQ@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 18 Jun 2019 08:18:32 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+8s3iNUy5ZCtWW5k-0sa51CR0xdv3Gh_sR=jsVtLmTdQ@mail.gmail.com>
Message-ID: <CAL_Jsq+8s3iNUy5ZCtWW5k-0sa51CR0xdv3Gh_sR=jsVtLmTdQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm: dts: add ARM Mali GPU node for Odroid XU3
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Joseph Kogut <joseph.kogut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_071845_428174_5240EE30 
X-CRM114-Status: GOOD (  15.89  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, dri-devel <dri-devel@lists.freedesktop.org>,
 Kukjin Kim <kgene@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 3:27 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Sat, 15 Jun 2019 at 01:57, Joseph Kogut <joseph.kogut@gmail.com> wrote:
> >
> > Add device tree node for mali gpu on Odroid XU3 SoCs.
> >
> > Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> > ---
> >
> > Changes v1 -> v2:
> > - Use interrupt name ordering from binding doc
> > - Specify a single clock for GPU node
> > - Add gpu opp table
> > - Fix warnings from IRQ_TYPE_NONE
> >
> >  .../boot/dts/exynos5422-odroidxu3-common.dtsi | 26 +++++++++++++++++++
> >  1 file changed, 26 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> > index 93a48f2dda49..b8a4246e3b37 100644
> > --- a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> > +++ b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> > @@ -48,6 +48,32 @@
> >                 cooling-levels = <0 130 170 230>;
> >         };
> >
> > +       gpu: gpu@11800000 {
> > +               compatible = "samsung,exynos-mali", "arm,mali-t628";
> > +               reg = <0x11800000 0x5000>;
> > +               interrupts = <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>,
> > +                            <GIC_SPI 74  IRQ_TYPE_LEVEL_HIGH>,
> > +                            <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> > +               interrupt-names = "job", "mmu", "gpu";
> > +               clocks = <&clock CLK_G3D>;
> > +               mali-supply = <&buck4_reg>;
> > +               operating-points-v2 = <&gpu_opp_table>;
> > +       };
> > +
> > +       gpu_opp_table: gpu-opp-table {
>
> One more thing - use "opp_table" as node name (generic class of node,
> matches style with other tables).

'opp-table' as convention is using '-' rather than '_'.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
