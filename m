Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C586F740C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 23:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ISE/YnkF75Z4TMlF1coV2xusMndWKZGBnnLsVN70zQ=; b=ZkYpDeFbloAXFi
	ZzQ9cdhCHiSuE3aPKE2t1Ner1mJ/GJaOeuQWY3v6vivz50SW99hVZFtbyZnQJpSHE7MzUad7HYMSy
	hVsKbWxs+2yjU2uOFETngcXNcjiVZVuIp0980IT2dO1cEU2u5uNbCa2zgikC6sP2q4A/uAe6Du2uM
	IvVRIGe9yjklanbxHYxOXihovO/VB2VdAw3L4ONnSW7xZBfbQJofgSOGyDeBB4yaXgBBIPJKGxFuf
	MlC1K2dLntJUQS7kQbZG/+lUpl32xtrL4D0n6kgKe64v5zYePxEoQKclJHO797zO43LgRr7KzRyZC
	Gf0FxEky+2REQC+iLCNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqOgU-0004EB-AU; Wed, 24 Jul 2019 21:20:26 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqOft-0004DP-Pm
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 21:19:51 +0000
Received: by mail-io1-xd44.google.com with SMTP id e20so62303647iob.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 14:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U42kawvbKkJEpel5zVan/ikF9rLZvUvs8OMQwcRg1UQ=;
 b=Hj+vv5UDzb40nMOp/TYlwPPAC+V4UscPzE4W3bfNlI7Qb97uhVRuGULd4B00296MSj
 EjBIE+XYJXv2DiYixI2xTEUG2Ph2XZ7Ubm85jxcyt/IVI4nCKYZpit8TBHwruNP9ATlo
 bQ8Up4xTuUPB8AJubgG7inQlixBfoprr1mWVM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U42kawvbKkJEpel5zVan/ikF9rLZvUvs8OMQwcRg1UQ=;
 b=osL2AmiEuXsieED/Se2NlM62TEcW5Ntyv82cUACU40gPtOOSGhG1D5Qr77ynUJ6zrz
 oRR9YVnIwvZPwD+cBpR8HmrKYQXXrr0o3atKd9jGRkJco0dKnKfIXpbXMdYA4+rC1Xq5
 7G3DXI5R9nu8E2MgmUZF0IDojwYo0LNDhdeXWOnSkhY8QpOd7XaMdY0918tZfinVAcRh
 Y5zhWZASGenuTihuwCbVWxa4v5LTuDb5dTN3/3c9S9cDqV9KWbU136vPpAfPQ9+5rnhk
 P6zNBIC3jp3FVmCf2dxp6wYsHMLbOkKqTjnngnVt7Vj37G8NIiWQgus/eRjz49vvncUd
 LD4g==
X-Gm-Message-State: APjAAAWwWLip9c/r8Q+ccFT/kWHZoHsO40bIV0jE9UMAPEcE7sGLhuEP
 TDUagnBgPJkRnE7XjOKXENfmvub2ZCQ=
X-Google-Smtp-Source: APXvYqzky9fWXybywwR/gB/Vrs07KZbBxpMFCkmFRHLUgwzIUZBnx0CW6eAKjDU24gObOxytFxUs9Q==
X-Received: by 2002:a5d:80cd:: with SMTP id h13mr37705798ior.259.1564003188736; 
 Wed, 24 Jul 2019 14:19:48 -0700 (PDT)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com.
 [209.85.166.43])
 by smtp.gmail.com with ESMTPSA id t19sm49227738iog.41.2019.07.24.14.19.47
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 14:19:48 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id g20so92668231ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 14:19:47 -0700 (PDT)
X-Received: by 2002:a5e:c241:: with SMTP id w1mr73854059iop.58.1564003187386; 
 Wed, 24 Jul 2019 14:19:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190711223455.12210-1-mka@chromium.org>
In-Reply-To: <20190711223455.12210-1-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 24 Jul 2019 14:19:35 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U5Z4QqyjzJpERwhvJFPATS+khVWBCStnaJKZR0hHBWNQ@mail.gmail.com>
Message-ID: <CAD=FV=U5Z4QqyjzJpERwhvJFPATS+khVWBCStnaJKZR0hHBWNQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] ARM: dts: rockchip: move rk3288-veryon display
 settings into a separate file
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_141949_884574_388696F5 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Jul 11, 2019 at 3:35 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> diff --git a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
> new file mode 100644
> index 000000000000..5d812e9e78aa
> --- /dev/null
> +++ b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
> @@ -0,0 +1,124 @@
> +// SPDX-License-Identifier: GPL-2.0

Please allow MIT license:

// SPDX-License-Identifier: (GPL-2.0+ OR MIT)


> +&pinctrl {
> +       backlight {
> +               bl_en: bl-en {
> +                       rockchip,pins = <7 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
> +};

nit: convention on Rockchip device tree files is that all pinctrl
stuff is at the bottom.  Downstream I think I added comments about
this but those didn't make it upstream.

Also: why did you move "bl_en" here but not "edp_hpd"?

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
