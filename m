Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F278E6AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 10:36:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sh1zpVqq9wTFxZTTGIHpOKHcodTVbuUNUJDW+9J9qHw=; b=QNWhQY0Wv3S0xc
	cMnsThD17qd+k9SGJ43z3Pn464ny0dRCoLoN2SL82w+ObZaa67S35g/Y7P67hr2YMHFDEZ8vljRPY
	4C6aOdKGrCHvAyv5Ec3sMu/C5Cxgqj6tjAUVbMkX+n/OCqhUKJ0Y6gOy9mkRSgq0pcq1axRboyp5C
	dysr7aiwYZ83V+kvaR3AmhiN0Q1wZhNW/K0qRkOsFuLiJLlSyKr8z5c2XAkD5jfkMgUB9j7tb5bAt
	Wrg0I52HYlnMt+yPjSyR5/vq2wGfReQ/wvTzsbWi6cE0RkUivOqYAz1ap9zI6o9B20saC+3Hxi/XP
	+rRgxO+s5y7EbXfx3/gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyBEm-00033L-Cn; Thu, 15 Aug 2019 08:36:00 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyBEX-00031h-4b
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 08:35:46 +0000
Received: by mail-lf1-x142.google.com with SMTP id j17so1161871lfp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 01:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LckeMEL++L98xkE6bRHUomn8itgtRqdrAYiiSW7aPt8=;
 b=jPedfFTQpgM6N16VFCMmcxfHRcTAvQLEVyl2L+pi2uNbG2bAZTYPJy6zsyYd/zsq75
 qLGM6kd/VOPA6/+zGy4f2K6XHTk26IBdEHY/QLWxecOs/9lvtdbmOJfZwKIQJ7DlE+sE
 YPADIXmnziNit+bcqcv1rMbb3OPAfelMCc27OtpaNVFdT2cms0GzvMd1b8R0vzNSkYZj
 89bhsFLRmjCXBeGnfb0+txiyL5JPTobZE1xPE4SJnCl4HZqvVhB6UcxWPwOK7DObetSQ
 fffSbk6TjILxq9Q88zUiRn1VeY8FagM25tADUr0X8nG874svkQvTRhpsxvLxr4M5G22L
 rQ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LckeMEL++L98xkE6bRHUomn8itgtRqdrAYiiSW7aPt8=;
 b=ZTZoZLCfgK9DnVeP42hpdgXrGlJGhInC8ab5n+aHaZkep2yRwDl/fIhRZLFmSsDX2R
 Z0NpF/Xr5u6a8USgu2ZjOM9MORiAc+zE7rh1D8jpOvcDeBk7XaBapiT6MwAsTNnBr9Xa
 55d/wWrDfcbUwXjbKYxQrGLmkGtucEEjiJiAmf7KgDcZCqZovuyy9PPGQFedWKELEDPr
 7wgG6o2txvZVGjINGHKJMmHKdSK8O7Llm94PFhe5XpPeMmL63cpff/ch+Mj3iMGCvAZG
 +4FKfvnrOFn54JrytvVkHkrCY2MOH9cPdbjFoh+dm7ay9Lp4YS3oO//UjCRLS2c7vBn6
 mOjw==
X-Gm-Message-State: APjAAAX8SmYsKSw2NJDnUBlnqW8Y2xQcjWID7ZxkzARGRet2VOtLENJR
 PnXLQemwQe18pKEstiWuCdHBl5WBSkaW6iUXpOdHGA==
X-Google-Smtp-Source: APXvYqwK1EXF1OlxOI1zDtBRCI1LlnDOnp15wcax8wzG7tnNStvRwTaXt1N5txPI2Ni93wI6DJH8/9XBc1qmOdGdFeU=
X-Received: by 2002:a19:ed11:: with SMTP id y17mr1783154lfy.141.1565858143676; 
 Thu, 15 Aug 2019 01:35:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190815004854.19860-1-masneyb@onstation.org>
 <20190815004854.19860-9-masneyb@onstation.org>
In-Reply-To: <20190815004854.19860-9-masneyb@onstation.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 15 Aug 2019 10:35:31 +0200
Message-ID: <CACRpkdavMPW1gv8jGUJb-48+=9XCmT=_bsMQFEx3Tk06aQNcAA@mail.gmail.com>
Subject: Re: [PATCH 08/11] drm/msm/hdmi: silence -EPROBE_DEFER warning
To: Brian Masney <masneyb@onstation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_013545_179063_87B1243B 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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

> Silence a warning message due to an -EPROBE_DEFER error to help cleanup
> the system boot log.
>
> Signed-off-by: Brian Masney <masneyb@onstation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
