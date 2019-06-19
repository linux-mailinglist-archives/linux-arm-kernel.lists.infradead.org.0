Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCA34B5F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 12:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVGylzfbhiVJt/lI9dCs0b2vYhNMSAeDTN+T9KqgtCk=; b=TF6Hl39RXTQs/x
	hApKjPUw8135DVe7ucDxVagxlYS9xx6VVooXq3C7KddYOAxpYOPqeAH+rJ0dAWTHm22zlp410XPZ0
	Ao3LtiAn6geMpySLg3QEUrXaIZwnWK61KEVPSfvd23eQY0cO/V43ABKVfhUlUlf5LMLZVObqTghbk
	1E1XK0t3LqXIfG3wYtWT7wJyrlqnTIUOZDBgs9kC6tBf0m/yDWxiQhMKya+ik21jifEBD9TFtexoK
	F/53ZR69o2LmjDr78lPqmRdTUF/f4Yh74UWo5zJJzM/ean+ivzblAZgd7e1LOMxusqBKYhiIQE742
	QeWBV7FOF89KZ7nUMxvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdXWg-00088M-D5; Wed, 19 Jun 2019 10:09:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdXWW-00087y-2S
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 10:09:01 +0000
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A0AA2206E0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560938939;
 bh=KKvDwu+I2C1EkI77Psheqy+KG+PofgRIdUQS/TBoP64=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UyI997+YuS2xnVlzmo5wKGej2P2Ay4u//ydoLlc1kZ+fFsr7x3BNtk8A0JXPQUdwq
 4pAeNxELN5wdf1nLJ2k16enZ9Qqdvouqb+NrFeoPAcupz2NXKOVuidBk9XfNdANmvD
 dsWBqVIKvgVTu7uEGfO2DZbWBZVi572XTeuej3Do=
Received: by mail-lf1-f49.google.com with SMTP id y17so11674601lfe.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 03:08:58 -0700 (PDT)
X-Gm-Message-State: APjAAAXaRn5hhXQ3YZ2sQwrlPW1UTFQiQf+lrjLX3pOzApC540kloCkh
 ogI8OYK6p7h08fzuU7j/xAmYnYRs16SdeaiJIrI=
X-Google-Smtp-Source: APXvYqw8QzBck4su84jvxKMOq+3rh/piGZ7mbYb6bKW0wol+fphlsvgB8RGiXr8AGwrbQ/+jguHe0FrtMGU6s3ny/Uk=
X-Received: by 2002:a19:4f50:: with SMTP id a16mr253073lfk.24.1560938936806;
 Wed, 19 Jun 2019 03:08:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190618190534.4951-1-krzk@kernel.org>
 <CGME20190618190551epcas2p38f3c93da2a05117c7741468bb5a7784c@epcas2p3.samsung.com>
 <20190618190534.4951-2-krzk@kernel.org>
 <9d16d4f7-8353-e0f0-a005-1b04457d70f0@samsung.com>
In-Reply-To: <9d16d4f7-8353-e0f0-a005-1b04457d70f0@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 19 Jun 2019 12:08:45 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeBBXd2vhBPq6BMzvdRf1_f8d9Pd=_N1X0chHLVbhi0rQ@mail.gmail.com>
Message-ID: <CAJKOXPeBBXd2vhBPq6BMzvdRf1_f8d9Pd=_N1X0chHLVbhi0rQ@mail.gmail.com>
Subject: Re: [RFT 01/10] dt-bindings: gpu: mali: Add Samsung compatibles for
 Midgard and Utgard
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_030900_146383_0AA0EF2C 
X-CRM114-Status: GOOD (  18.78  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>, Will Deacon <will.deacon@arm.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, dri-devel@lists.freedesktop.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, linux-clk@vger.kernel.org,
 Joseph Kogut <joseph.kogut@gmail.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Inki Dae <inki.dae@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Jun 2019 at 12:01, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
>
> Hi Krzysztof,
>
> On 2019-06-18 21:05, Krzysztof Kozlowski wrote:
> > Add vendor compatibles for specific implementation of Mali Utgard
> > (Exynos3250, Exynos4-family) and Midgard (Exynos5433, Exynos7).
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> >   Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt | 1 +
> >   Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt  | 1 +
> >   2 files changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> > index e5ad3b2afe17..9b298edec5b2 100644
> > --- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> > +++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> > @@ -17,6 +17,7 @@ Required properties:
> >     * which must be preceded by one of the following vendor specifics:
> >       + "allwinner,sun50i-h6-mali"
> >       + "amlogic,meson-gxm-mali"
> > +    + "samsung,exynos5433-mali"
> >       + "rockchip,rk3288-mali"
> >       + "rockchip,rk3399-mali"
> >
> > diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt
> > index ae63f09fda7d..519018cb860b 100644
> > --- a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt
> > +++ b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt
> > @@ -17,6 +17,7 @@ Required properties:
> >         + amlogic,meson8b-mali
> >         + amlogic,meson-gxbb-mali
> >         + amlogic,meson-gxl-mali
> > +      + samsung,exynos3250-mali
> I would prefer 'samsung,exynos4-mali', because historically Exynos4 was
> the first SoC with Mali400 and such prefix is already used for many hw
> blocks.

Then maybe samsung,exynos4210-mali so it will not be confused with Exynos4415?

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
