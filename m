Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DED349A78
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 09:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3IqAziJV2tvrwNDkHXg6ZmY3QxcuLgOMf4+xwJXevM=; b=ttTEkeKNN3SBNx
	rvU9vQP5ceXg7njV4vots3Tp3hWjXri9CxNfVtw8yr+X7gTipms83W2VaOBOzxn4+FEw2/vKG+oL9
	Hu5B2fk2yRqhMg95dU3strz5C3EHAJQarWwiYjPXu93+yaSpLfnR05v6OiqPoctM1jTBIryYxHQ9x
	+ZkH3aF33aiSxfjFg/YSe+/mdMgA5EzbnV9NWbsSKE+4W47/earOHW5Ske8thsC4buKxUuTiIAp5X
	gPqFsxcqcfT4PtsLCfaDPRu9oSMOwAVaHA5E6sfyEHZRp8hVXlI5Dax+O2UnTOOP3mYPrQs1IkUhz
	d/zJROmQ0etvu9JDHR5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8TE-0001XK-Ff; Tue, 18 Jun 2019 07:23:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8Sx-0001Ua-1I
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 07:23:40 +0000
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1AAAB2085A
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 07:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560842618;
 bh=aIcK8giJ/WbrE61iXtjfzXPTL4lG0NbWO6c7oX7UYyQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1i/nQ36nfQpP8jYB5z5Y4aveCxKAwge+ERqpI2t6oqDpgTpNwbVl25N3t3OciY6yf
 jSYa0nm2i4BKwHTCtEnqgf1g2BWDcGp2w6tyWnDwDHIeKmS7HfCMfLk30WP6OO3aUf
 2UijoB7tC0K15pQiXuKZC3YokFRTXriMA6JSC2sA=
Received: by mail-lf1-f46.google.com with SMTP id a9so8434179lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 00:23:38 -0700 (PDT)
X-Gm-Message-State: APjAAAVTKN9exwisxVofqWbtRQYvlS1xo3wfw1EBKJqjRKsMLcyPdnBF
 qjg2TMiQRDEwiof3ugGonndzGbGwpIZoA4txD5E=
X-Google-Smtp-Source: APXvYqyRHNQDL07p1uJ2f/qXQt0uHz3gs1RKOM3JMH7WeEFFTiqYcEscviwS2gclVEBGNFIJl+wI4FH934Nmw0KMC5A=
X-Received: by 2002:a19:e308:: with SMTP id a8mr55812523lfh.69.1560842616344; 
 Tue, 18 Jun 2019 00:23:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190614203144.3850-1-joseph.kogut@gmail.com>
 <20190616081557.GA3826@kozik-lap>
 <CAL_Jsq+bq2PXA5LSjCmsy=hJq=+S4XK2JrvHct+xM+1HT+=-SQ@mail.gmail.com>
In-Reply-To: <CAL_Jsq+bq2PXA5LSjCmsy=hJq=+S4XK2JrvHct+xM+1HT+=-SQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 18 Jun 2019 09:23:25 +0200
X-Gmail-Original-Message-ID: <CAJKOXPd6OqHohswSzj7UEWJi1E7H53M_gvv4fkYC5kE5ZfN_Aw@mail.gmail.com>
Message-ID: <CAJKOXPd6OqHohswSzj7UEWJi1E7H53M_gvv4fkYC5kE5ZfN_Aw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpu: add Exynos Mali vendor specifics
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_002339_115933_C93DF37A 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel <dri-devel@lists.freedesktop.org>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 18 Jun 2019 at 00:06, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Sun, Jun 16, 2019 at 2:16 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Fri, Jun 14, 2019 at 01:31:43PM -0700, Joseph Kogut wrote:
> > > Document vendor specific compatible string for Mali gpus on Exynos SoCs.
> > >
> > > Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> > > ---
> > >  Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> > > index 1b1a74129141..a9704c736d07 100644
> > > --- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> > > +++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> > > @@ -18,6 +18,7 @@ Required properties:
> > >      + "amlogic,meson-gxm-mali"
> > >      + "rockchip,rk3288-mali"
> > >      + "rockchip,rk3399-mali"
> > > +    + "samsung,exynos-mali"
> >
> > Are there any driver differences for Exynos? If not then why adding
> > another compatible?
>
> Wrong question. Are there any hardware differences? (Trick question
> because difference compared to what?)
>
> Really, this shouldn't be 'exynos', but per SoC. But I'll leave it to
> the Samsung folks to decide how specific it should be.

If vendor compatible is expected, then let's go with per-soc
(Exynos5420) because other SoCs use different Midgard chipsets so they
might come with own differences.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
