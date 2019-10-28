Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B522CE7C66
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 23:34:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTsHg1TzRIbaXZdfI268hkR62fEHkyOiLbwhbmjyBW4=; b=Ss7VMvXWDH/Wm1
	ixqHzqFaUYRQyclCGZE+jGscijlr/V7Z2JcU1ITQ4J6st+Lnh7A+rzEh2vyPcEXkHvcGrEzjXjHfj
	6yX54lHuYZhNWnkYdleVx4iYBPte5HFHLY0KNk9vvo4JEN5kMXQuFG4UaX07slsOiS1K0+nwG3K4k
	jnxHyqWVhqDNrgvxEop2n47VCny3RDOgdv28rI/rn6SFaUMFyrVvig1Y3fPOPPqtkED+AiwblhY7h
	GKPMvSfcQqtFs7hFBwgRb5fvRW/iiCA8PdC2zP0XJj6WswrJbiQsA9mj9ENGkPBF/lBhSMPR6dEy3
	NK22V04fPRQhGGhus/BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPDae-0008Uc-Nl; Mon, 28 Oct 2019 22:34:20 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPDaU-0008Tg-Rs
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 22:34:13 +0000
Received: by mail-il1-x142.google.com with SMTP id o16so9621910ilq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 15:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c2XX2oa9okl2tfpust4RUifahZHp7tb1+MoPm2u47Wc=;
 b=n4p86JogluIaUwX8lpVfKCl315ggHShPT/3PG9nmdvv6A+WmkcxoXlJ1p500UHclpZ
 V7orIaazLLn5Miq8ZaNeWiihu1+79cg9oAg+i/LcaIdcqZQ5iG4T4aVCMjo26c+Cdn97
 r3IOx7w0Y6kNlL3cRfnacuWuUmSw1xh6YKtgE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c2XX2oa9okl2tfpust4RUifahZHp7tb1+MoPm2u47Wc=;
 b=aeKR2YV9PjLNAlcl4KczQRJBFRJ81ZoX9c/o4cf+XzrfoqTHtNXsa4MU8L22dXIrOD
 x3fedELLSeQy33hpyo1syvmqraqg4y4io22IJ6YMyokqYNC+V2YMInJaBB3A9rMARf+q
 idDSTOwdf0i9i16YZf/5eA/W636AbuTX7p+I3PGVWTGdTlELHQvF6f6vt+TZ9+Fj9g59
 qHZpt8SR06cAgIVTwarRNVBMiN4+bnNM6Fvjdi6QuP+SsOO/0uJX2H/FvTVZiikj2gyG
 du17j8V2NrhELXF6+FftuaL7mqt0tt4x3E4LDFPr12txy6aR97k4EQ29MBIOyWctge4+
 /Cjw==
X-Gm-Message-State: APjAAAWkz2cQr5xlHSZ/GpCl6zqJdkqZhnmaGQYYvXG1SbBflWkWdi9A
 aqNd+fgQDNuLHi5SnH1oNfVS6DI+McLDmcBRbZ+QVQ==
X-Google-Smtp-Source: APXvYqyCGJQl+HAm+sa8mYYJp4Wxr/m+y+g/6ntOZCrMubS4XyZUczCAk4EdzfbP8O6fyXYOHmttxwz3zGzyvqk0tc0=
X-Received: by 2002:a92:99ca:: with SMTP id t71mr8413794ilk.61.1572302047950; 
 Mon, 28 Oct 2019 15:34:07 -0700 (PDT)
MIME-Version: 1.0
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
 <20191025175625.8011-5-jagan@amarulasolutions.com>
 <20191028153427.pc3tnoz2d23filhx@hendrix>
In-Reply-To: <20191028153427.pc3tnoz2d23filhx@hendrix>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 29 Oct 2019 04:03:56 +0530
Message-ID: <CAMty3ZCisTrFGjzHyqSofqFAsKSLV1n2xP5Li3Lonhdi0WUZVA@mail.gmail.com>
Subject: Re: [PATCH v11 4/7] drm/sun4i: dsi: Handle bus clock explicitly 
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_153411_845789_9FE6B022 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

On Mon, Oct 28, 2019 at 9:06 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Fri, Oct 25, 2019 at 11:26:22PM +0530, Jagan Teki wrote:
> > Usage of clocks are varies between different Allwinner
> > DSI controllers. Clocking in A33 would need bus and
> > mod clocks where as A64 would need only bus clock.
> >
> > To support this kind of clocking structure variants
> > in the same dsi driver,
>
> There's no variance in the clock structure as far as the bus clock is
> concerned.
>
> > explicit handling of common clock would require since the A64
> > doesn't need to mention the clock-names explicitly in dts since it
> > support only one bus clock.
> >
> > Also pass clk_id NULL instead "bus" to regmap clock init function
> > since the single clock variants no need to mention clock-names
> > explicitly.
>
> You don't need explicit clock handling. Passing NULL as the argument
> in regmap_init_mmio_clk will make it use the first clock, which is the
> bus clock.

Indeed I tried that, since NULL clk_id wouldn't enable the bus clock
during regmap_mmio_gen_context code, passing NULL triggering vblank
timeout.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
