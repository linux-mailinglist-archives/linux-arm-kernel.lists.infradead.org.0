Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B0C8E695
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 10:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5d8w/n2mCoiCHVyYuFbGEbp60q8iZG/WRWyh5mm6Y8=; b=hHpe6dbGquD7Hf
	Ytgj1oqPw43QATt4ZZ3eI3y10TjWxgoQVdHv1HlyJ01ELx/Vg8AbVwpN9WSpe7CNShgtlkYy9+mUJ
	wv03BCcTtEKZv2sFldSHDgfmfqQ7tdU+fNRsmYZdPOYDpShKDDe9Rbhsxme0DrnW0RwakDO9SD2zc
	hCBmY/9mECSR2p6n8fuf3GUR/Tx42viOjnY+fsB1LCxSPN3wZdzWUjSvhKj90rNkCjC1CEpw+bUgT
	weW19bzxMJFHaQy2LkNnOb1Jx5jOTEKp7i6MNkvpmArQvBGkzYyBzah+h8QJwjM7g2lYQP58ojzxU
	ncYALZB3wmf0xK/91qlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyBEQ-0002nw-2L; Thu, 15 Aug 2019 08:35:38 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyBEC-0002nY-3o
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 08:35:25 +0000
Received: by mail-lf1-x144.google.com with SMTP id c19so1129914lfm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 01:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rIQuHahZHT61N3pBhyPaMSRx0lDKJTzgLeGkPUGpwnw=;
 b=Y+FH2yajTgKkaI7nsmE3WEZkZeDokd2RUNA2EldWJj3L3ayjASGWVw8k2Ij/OubaDA
 M5j0TR6ZH7t2zzUaVTqdINB8m5lZjQKpnPOSypEFo2alm8nos9NKEpcKFvMeG4r1uAGP
 8AaHAOiGbMsxK4DiqokN1Oe/6ULi7Td0OYQaU6PgDrUrliFei/NY6KsdXRXQTJ6grcA2
 +XXBHx1lgL1P0ofcfjauBj28vKllqp7gfVIDQ8OSvDzcvPiPEFztsRnRSqMrrh/2PyyG
 Dd0SqjtUzV6NYaebRMJOREUG+7ff7D1na1lXslQREjafp/2W4q53ICtF5IW5iS9XRfz6
 bsYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rIQuHahZHT61N3pBhyPaMSRx0lDKJTzgLeGkPUGpwnw=;
 b=JPT1gR59S8FIYYjv+X80FDLcL7ud9qyFy745XYt7/K5GS7wFj7YsdcSuEe2WwJ1IFz
 iX3nzkpOqy3B2QHVjTApvppr++Lh2EeYaf0kC9U0+OWCUisSER9HKDEFQd0l5NDJEywd
 bSMOFBi4TZJFdSnED+1yB34429IPWoAtZvb0l/vngutC4xKhXm7JRrFbojP88g8k2Pel
 d5pXsZcfCUvnN02qCN4JTSV2BY8wcwTTg6zTXKHljqUxPzJwNi+PNYW0SkDEJiUSWElu
 TcnaTQanghRURITFY5E1U9wQC+pCAI2YIqSSPsurGaWfNQ6mHv2ABVx8alQ+nFAzJvN1
 s3BA==
X-Gm-Message-State: APjAAAWktSTD47h8iBP8ANMv+OnQ8Eyy7czDC+0/cdypd/3yGmm5q/b7
 7/BEnm1eFKAOFiH9G1eA43gpodJFYCTewkEA1WXbjQ==
X-Google-Smtp-Source: APXvYqy4JWhaSExzEs8fNpyvhhFIffJYnQjxDmgWOFMcNEneP7xcjaUdbR6c+1Du9tQXJhhtHsvVS1Z3y4aDb+ws8Qs=
X-Received: by 2002:ac2:5939:: with SMTP id v25mr1829550lfi.115.1565858122600; 
 Thu, 15 Aug 2019 01:35:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190815004854.19860-1-masneyb@onstation.org>
 <20190815004854.19860-4-masneyb@onstation.org>
In-Reply-To: <20190815004854.19860-4-masneyb@onstation.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 15 Aug 2019 10:35:10 +0200
Message-ID: <CACRpkdbCwUbn68trGZTN8pe8rF8x6SeAW1gd7bwFTs3z-6vK=A@mail.gmail.com>
Subject: Re: [PATCH 03/11] drm/bridge: analogix-anx78xx: silence -EPROBE_DEFER
 warnings
To: Brian Masney <masneyb@onstation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_013524_150514_DF5B3101 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

> Silence two warning messages that occur due to -EPROBE_DEFER errors to
> help cleanup the system boot log.
>
> Signed-off-by: Brian Masney <masneyb@onstation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
