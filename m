Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D330494BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 00:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9ZSicO55vzTR21LTDuuQWt++JAadzQ9XN8/q7f07qQ=; b=GD4iqHztt9y/WZ
	TYom+xG1Hu8/4uIRIOx8f7zC85sPo5q6KM9b9bAWJCE6cAXK2sAgvZxRY21bDBEgepdcw7HTXFyXq
	Jcuhar7kwwiGIQH2xitKn/ikXi1pGg81m5Ix4SNtSctgcZKItoS7W6NZds/6toMhMe2EljOiK927e
	oWjsvLnFo+/Lyyfwg6RBITzGZ7ysVCEQkfg5KY94rt9SNyXiPzofdF8/nixuFD1sl+mOCHiAbWsJa
	4wdhIRBocuzV+jyGBmof7USNJiKgp1AiT6SsvkTlEVCl7d8dDsBXOgk1a4wPpwepbIy2QsmQ43mVy
	/60rSFUVzdEtmAI+Ts/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hczmC-0008Fr-Kp; Mon, 17 Jun 2019 22:06:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hczm1-0008FU-9f
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 22:06:46 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD2282073F
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 22:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560809204;
 bh=1JsNZwhNkO0kTZcSPtRFxPGFWoSJ54GPBuKfdAJwxrc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZUTmevJ6tL/g+/RFMAphBIpHgG6pPxCOpnpryx2BmPwfKsHAg1w9C6Tk3vzcR/WBv
 bqAy4XjRX56vANJcuGABufyQKSV96dYyqEF7UUVIrD2jdeN7W2xyRzvvX200DQgTfu
 k2gkUOC9Z/cBVpsS2USRh/GFplpOK6VggtryOFN0=
Received: by mail-qt1-f169.google.com with SMTP id m29so12837761qtu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 15:06:44 -0700 (PDT)
X-Gm-Message-State: APjAAAXFAHOalIyOwJQmA3veVuPvua8Prq9HjXp+BIPuj3qH0iv4ct83
 hr6R+i7PRzFeTFGzX28k0nh/XFHRuv4eKz7EHw==
X-Google-Smtp-Source: APXvYqxlH9tPhbZNNJkrT85aR9svIHlNTL+sG99zdJoKOt8Ty1YrE3qm/ShFbczH/rR++XU8qWfC4jV3flp5vTydqXs=
X-Received: by 2002:a05:6214:248:: with SMTP id
 k8mr23820532qvt.200.1560809204093; 
 Mon, 17 Jun 2019 15:06:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190614203144.3850-1-joseph.kogut@gmail.com>
 <20190616081557.GA3826@kozik-lap>
In-Reply-To: <20190616081557.GA3826@kozik-lap>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 17 Jun 2019 16:06:31 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+bq2PXA5LSjCmsy=hJq=+S4XK2JrvHct+xM+1HT+=-SQ@mail.gmail.com>
Message-ID: <CAL_Jsq+bq2PXA5LSjCmsy=hJq=+S4XK2JrvHct+xM+1HT+=-SQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpu: add Exynos Mali vendor specifics
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_150645_356563_EDE8DE49 
X-CRM114-Status: GOOD (  15.62  )
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

On Sun, Jun 16, 2019 at 2:16 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Fri, Jun 14, 2019 at 01:31:43PM -0700, Joseph Kogut wrote:
> > Document vendor specific compatible string for Mali gpus on Exynos SoCs.
> >
> > Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> > index 1b1a74129141..a9704c736d07 100644
> > --- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> > +++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> > @@ -18,6 +18,7 @@ Required properties:
> >      + "amlogic,meson-gxm-mali"
> >      + "rockchip,rk3288-mali"
> >      + "rockchip,rk3399-mali"
> > +    + "samsung,exynos-mali"
>
> Are there any driver differences for Exynos? If not then why adding
> another compatible?

Wrong question. Are there any hardware differences? (Trick question
because difference compared to what?)

Really, this shouldn't be 'exynos', but per SoC. But I'll leave it to
the Samsung folks to decide how specific it should be.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
