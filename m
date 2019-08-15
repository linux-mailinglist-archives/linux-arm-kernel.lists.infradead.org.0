Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE8B8E624
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 10:23:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qa+03BEGAbA8upkjhupkjFNWspy6XuCt9oWLf7wXobc=; b=qDX9BglMV+2eWO
	CtEopd2rncoFrRJrBr3QzR58rQoMOcDPnxyQBW73sZjTNYbgyL0lCAKiZiAHjorFo8ubecIh9xOGM
	UxZ5/ffGH8dAdbQS4CeboQrVUhDe18Dgx/EK5Y8Dxue6Vb3iqKbsJC13g1/TpUHovd9yhK0KCBVD6
	cb0sO9Q2HjB8UvtJQaw4/ID2MGbiMqEzI3/ooHVW4DimwQ2I7J/UfczvQqkMzVReJhWs3UIUQp1BO
	GGByKUs/a+tFe026G8PHojraczmCvWblLWZmOPWtklIwhJRTcsRQ7/FEd1opIMTj7x7oLOyc/hyaD
	0t+7Lc8CIOvpZ1vliW6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyB2O-0003Kd-9C; Thu, 15 Aug 2019 08:23:12 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyB2A-0003KI-Tf
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 08:23:00 +0000
Received: by mail-lj1-x242.google.com with SMTP id l14so1527942ljj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 01:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rNifjZHy9qpEjr0GVjpJDJGNo3i2//VHyToq2Gi1I5o=;
 b=OlwYctZRlIMTjnglbFz8m9UPeYHKRsw+HS0cqHa/AZrP3rCVWXzJ5gTfiLfl40hRWX
 cX599NGltZt5oVIqpRPPhMuFrdyeOZm97dwPU+CAxT5l2Fmeh/ZSbFOCb/7nY3jY2z0d
 CIjrlvHSyzJD4VsaZOWNL8WGygu6Rqv8F2u1V5+5Vq2p/D6QfBUPCY82EgeyCZmGRItF
 sjGHEgbToBdt25gqu0ZmUeiwWbzQ33NvDXBHQd6ysLH7sZmeFJ9duV5eFYsKV7RiV72h
 eNWFtqLstPI4m/mvgNB4pqyITfo+BGeWUfVdKBuxzmRIaxr6JBuXwM1U7lK/HLoL9KU5
 xc1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rNifjZHy9qpEjr0GVjpJDJGNo3i2//VHyToq2Gi1I5o=;
 b=qy/YTxMe6OpYqoOIUuRKb+kqRHoMikJULwoGTEExGC4rzdCWZeIzX37ppA1QlP8Cp4
 ZcQaVH8fxHZMZHvrRPymlXGAmlt25xkrq4wT3tb0jPDfqGkLPHekfeq9hs5AhkVMmots
 HLuePNl8B6tTaDIu8rpw+Xx0AGeeBG/V3gGbZc7dcJA7G8rG4nP9vBLx+xAciehCAG9O
 JioJC2Ibz6NZLKjEa4RhRApjfBQb9mqOxXYQFEJ9t2Hpzu9P1rtFhQiQ/5eGodkfKXKV
 DhXDMlD8jE1MIySNVJKMg1TKeleKgSIm+Cpd3didaAXDqrjX94FhU3Xapnmq6x/7w7XU
 47/A==
X-Gm-Message-State: APjAAAVI3nydwLlhbZNtHEdz5+Qr9Javd+kGdsQO/ggFJ7ubnqN1nKLh
 uMLNYD7VBGvNFzd/Xq1kd34WsVHQEXdMHMhKO2FZzQ==
X-Google-Smtp-Source: APXvYqzSKpPdJ2jsFgd1uIci3/V28JBr33UJghFYLTf8pCPXob33LzLWLieV3eJDVU3sY3EnTwoxgKPof5pySOFlK/A=
X-Received: by 2002:a2e:781a:: with SMTP id t26mr2027257ljc.28.1565857377246; 
 Thu, 15 Aug 2019 01:22:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190815004854.19860-1-masneyb@onstation.org>
 <20190815004854.19860-7-masneyb@onstation.org>
In-Reply-To: <20190815004854.19860-7-masneyb@onstation.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 15 Aug 2019 10:22:45 +0200
Message-ID: <CACRpkdYdQa+FVfpSjLi0SsBMDT4QC667z1P1dnapz7PXgRoB5Q@mail.gmail.com>
Subject: Re: [PATCH RFC 06/11] drm/bridge: analogix-anx78xx: add support for
 avdd33 regulator
To: Brian Masney <masneyb@onstation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_012258_970167_53668632 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Neil Armstrong <narmstrong@baylibre.com>, Dave Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>, Andy Gross <agross@kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Clark <robdclark@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, MSM <linux-arm-msm@vger.kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 freedreno <freedreno@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 2:49 AM Brian Masney <masneyb@onstation.org> wrote:

> Add support for the avdd33 regulator to the analogix-anx78xx driver.
> Note that the regulator is currently enabled during driver probe and
> disabled when the driver is removed. This is currently how the
> downstream MSM kernel sources do this.
>
> Let's not merge this upstream for the mean time until I get the external
> display fully working on the Nexus 5 and then I can submit proper
> support then that powers down this regulator in the power off function.
>
> Signed-off-by: Brian Masney <masneyb@onstation.org>

> +static void anx78xx_disable_regulator_action(void *_data)
> +{
> +       struct anx78xx_platform_data *pdata = _data;
> +
> +       regulator_disable(pdata->avdd33);
> +}
(...)
> +       err = devm_add_action(dev, anx78xx_disable_regulator_action,
> +                             pdata);

Clever idea. Good for initial support, probably later on it would
need to be reworked using runtime PM so it's not constantly
powered up.

See for example how I try to push down power dissipation
of sensors in 3d838118c6aa.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
