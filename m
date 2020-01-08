Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5A4134FA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 23:53:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BoGCDDwwDXxn2nLuKWjcVR3Y6QDlP1Y2fBTdIu7AToc=; b=suSv+j0EC8eqbS
	mpmEXR6OnfbtoLQ20vkNk1a+5enil4L6rBeX1nH4jqyBGe7DVwpcjJuypUHvktmSX696aVu/ooiqN
	7cIBsujmSMjVxbonxUgm+WuRBaB6O87lnGJYllX6DMZ90+YeCN2tf+21OBbEMt69rFw6xyeiH9EJd
	ua42k9dGeTFYmIt5S59DsJRrOOD9Z4ZA+7lk8Y8rw+8W+xPK3EX1EUimEXOlx04qcFfQvIorHVjS0
	l+wOc9U+Q/XpCwBbK+yBx6MNk0KZVnuHImAUniBCF72tIMNssgwMczBsGhYV3bGMIra6Y6n91JEf/
	kt7Z3u25xV3Yp82jlffw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipKC4-000226-7i; Wed, 08 Jan 2020 22:52:52 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipKBw-0001xD-HU
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 22:52:46 +0000
Received: by mail-qk1-x742.google.com with SMTP id t129so4250653qke.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 14:52:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bQ8sePp1UB/buB3CQpsdDQjSw45clnU/8Z5dyE7MCUQ=;
 b=XY5GOnFn0zgYevPRNgkVz3RQithuZHY98uxSsiNEuf6vWLkXUGm9VbUWdjyqnbrO0p
 hSlRJ/xH3cUk/dTtQws1Y2BllgiV24bBnUj3yqD6jDFghwhecYRGqhwHtvzQlLjYIres
 pmL7s49IWRxqVAkNWYGTMoSy/oHAsP79XvpSw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bQ8sePp1UB/buB3CQpsdDQjSw45clnU/8Z5dyE7MCUQ=;
 b=NBVjkQrydZ4y9ltCPm9erUPYla3dSsGc++jI+nGQ16uwo8+X+KIFEnJBuDOahwvADd
 LwhbAIN+zTR8cBYmWqUX+kdZ0DMQlFq4Iimo4mevlQewXobBBDyyEmIZd+8xSUwcs6Tc
 LoQs85XXh2/0IW4r8invUcEaRR1zzLpYCyLXSRaKX9L5PvfU3E6LpVmc+xBu86BZXGUi
 gY+mYub17H4ywVFUdiQF6J2C8YERKYf9VERrFbKdXle1UH662JYwT/Vrx/hCbbgChTTB
 XQX46DQOoZtFmxFi54oWiMk3XR1kusj7hvLBcCz/UsnsnmkXKWuhknK2jQqzh4dW8NCb
 8akw==
X-Gm-Message-State: APjAAAXf4cPfQYHXd3wYYWZAoex9/ggO45cOT++lCtf08e07iGrnZ9di
 mG7P5wdG2JLD5E4bk7cA0XGDBKEX3j0ONHHxBH8qVD4Sdlo=
X-Google-Smtp-Source: APXvYqw2JjwDeqMh2CT5SlyR30QLXuZPvZ+1N9eFdrRhTkkWcwjICSQnRUvYtFyz4OeBrSGR4GBFkA8sANeEtDRg/YU=
X-Received: by 2002:a37:6551:: with SMTP id z78mr7090523qkb.144.1578523963679; 
 Wed, 08 Jan 2020 14:52:43 -0800 (PST)
MIME-Version: 1.0
References: <20200108052337.65916-1-drinkcat@chromium.org>
 <20200108052337.65916-5-drinkcat@chromium.org>
 <20200108132302.GA3817@sirena.org.uk>
In-Reply-To: <20200108132302.GA3817@sirena.org.uk>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 9 Jan 2020 06:52:32 +0800
Message-ID: <CANMq1KBo8ND+YDHaCw3yZZ0RUr69-NSUcVbqu38DuZvHUB-LFw@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] drm/panfrost: Add support for a second regulator
 for the GPU
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_145244_619664_52C26CEB 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel@lists.freedesktop.org, Steven Price <steven.price@arm.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 8, 2020 at 9:23 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Wed, Jan 08, 2020 at 01:23:34PM +0800, Nicolas Boichat wrote:
>
> > Some GPUs, namely, the bifrost/g72 part on MT8183, have a second
> > regulator for their SRAM, let's add support for that.
>
> > +     pfdev->regulator_sram = devm_regulator_get_optional(pfdev->dev, "sram");
> > +     if (IS_ERR(pfdev->regulator_sram)) {
>
> This supply is required for the devices that need it so I'd therefore
> expect the driver to request the supply non-optionally based on the
> compatible string rather than just hoping that a missing regulator isn't
> important.

That'd be a bit awkward to match, though... Currently all bifrost
share the same compatible "arm,mali-bifrost", and it'd seem
weird/wrong to match "mediatek,mt8183-mali" in this driver? I have no
idea if any other Mali implementation will require a second regulator,
but with the MT8183 we do need it, see below.

> Though I do have to wonder given the lack of any active
> management of the supply if this is *really* part of the GPU or if it's
> more of a SoC thing, it's not clear what exactly adding this code is
> achieving.

Well if devfreq was working (see patch 7
https://patchwork.kernel.org/patch/11322851/ for a partial
implementation), it would adjust both mali and sram regulators, see
the OPP table in patch 2
(https://patchwork.kernel.org/patch/11322825/): SRAM voltage needs to
be increased for frequencies >=698Mhz.

Now if you have some better idea how to implement this, I'm all ears!

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
