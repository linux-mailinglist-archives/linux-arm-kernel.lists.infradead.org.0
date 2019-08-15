Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8AA8E675
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 10:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2eHzTYG6ewjQoOc0xOUMHvbHHvDDedV+QG6uc9yzCo=; b=AG0LyXtcYXaQ0U
	rTkMkKKsFG3IQny29xNFXHNEWm35MndhWlUYEQmrQ2XnM+86vf4hZbYYjfvtlFMQpJvZdtbkrWGDq
	ZfAiZfqPimzMOpvwyW63wzmsNa7h1LQCGvee34b7cBWHd3aVFoq347SmiRIrOUWudTRwI1RY1kkQb
	QX6oFPwZfUDGnNpPErNPRbLuZdr0WtxPvgzVqdyJV/iDJ/s3prYI7FKAQX3lnrvVmS7E70uoPm4jS
	l1h0oBh8aBWNgeNQmwoVpQsBsvRVE62LBF6IJIvbGgeGacVd+S6bNpayQhag9d8HxAs/BDYnqr65s
	pmVi3AzNrncKr9YdEJYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyBDX-00017n-4H; Thu, 15 Aug 2019 08:34:43 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyBDK-00017U-1d
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 08:34:31 +0000
Received: by mail-lf1-x143.google.com with SMTP id c9so1153466lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 01:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7i16DpGe/WrEnWRFWrw6WDyR2YmJ49EsxY0UWyxcbfk=;
 b=TVUoUOIaS51Agv5l0PMa3o6r7lDWfkGGfAKJhDlNLIl7488xPFjP4Zc62E1GcUW1VV
 o0tMKL+wXnt1XdSF1KbK0Lt2NPVz37E6SBBibznbqskqTNxpsTEGO/IN8IWSuP8NEn+L
 YweJ7nuU+lmreFBFY/Jygo7zNIKriXEtK9XOLtxp1wnYaEzcfK6K91ZsV5tKqCLz0pji
 +j+VLUGXtDrQ6JvziL1YCvfd7+ThtaWoW8fly7i71IZV69lt92FEoue8vUkPf1PR+fIT
 BuuAkU61fn6Twlw0EMMwqgfTgHrOwgjtkdqRSq+SUTWsfkxUHCcsuL1aUGE1euu6qHxW
 QxwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7i16DpGe/WrEnWRFWrw6WDyR2YmJ49EsxY0UWyxcbfk=;
 b=aXV+9z723GkCp37XN5ldMUZIj9J8G3EPCGs6R48t/udLv/iPGQEpZ1F0hcUGIWy0q8
 Ms6W3vZ7jGU3eoVYBsBmMHm0APdnZBO45To39n6TUHi3vIRpIC6JAeBgqUl5BMKfMS8C
 sKPKqh+kwRTtE/OTx5TOsDm1yRw3RS8Qc/TBymvPR7Pit+v4boEOjLVVgXIPehwiA0jP
 NZoK94JwQYlO1RHcVjBfcBBYHTy57g1RfMU5GQncWWY++Qx/tMnoGxf4gduiLH4oYFGY
 uD+PmQZnr6Ay+zaEm2+y5dIH3SI5KZzwP5ACVXBfQyAU6b1g5nbT3pHxUy2DBavrsHK3
 36kA==
X-Gm-Message-State: APjAAAVOidCdGSGVdmbeClimvaZ3vHMepp76VhiO0//jBlJQICJp1ftQ
 6n4+e7GLnNrLw8NuRygOhNeshp45OWx8PiF5f9owoA==
X-Google-Smtp-Source: APXvYqxb0UB6/giI18HHjmcKPLqMYP0VUKp7BEJ9Az/O76XbGpUEV3T+utaGsTe3hzjxU1rcsCu+m7ocZF57FmoUKmk=
X-Received: by 2002:ac2:4c07:: with SMTP id t7mr1629302lfq.152.1565858068523; 
 Thu, 15 Aug 2019 01:34:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190815004854.19860-1-masneyb@onstation.org>
 <20190815004854.19860-10-masneyb@onstation.org>
In-Reply-To: <20190815004854.19860-10-masneyb@onstation.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 15 Aug 2019 10:34:17 +0200
Message-ID: <CACRpkdYU-6LvFKRkj0yMMCmAnX0XtGe7rMwbXbhf2GCp77Ciyw@mail.gmail.com>
Subject: Re: [PATCH 09/11] ARM: dts: qcom: pm8941: add 5vs2 regulator node
To: Brian Masney <masneyb@onstation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_013430_090119_C0263A39 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

> pm8941 is missing the 5vs2 regulator node so let's add it since its
> needed to get the external display working. This regulator was already
> configured in the interrupts property on the parent node.
>
> Note that this regulator is referred to as mvs2 in the downstream MSM
> kernel sources.

When I looked at it it seemed like this convention is used for power
supplies that appear on both the main PMIC and the "extra (boot? basic?
low power?) PMIC that the main 80xx PMIC has mvs1 and the
other 89xx PMIC has mvs2.

I suppose it is named "mvs" on both PMICs and this is just a rail
name so as not to confuse the schematic?

> Signed-off-by: Brian Masney <masneyb@onstation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
