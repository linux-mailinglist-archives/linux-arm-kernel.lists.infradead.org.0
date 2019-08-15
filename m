Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6978E61A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 10:19:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=huNk2PDs/BxFRm8ebGe4Q5xA0lB7tecKkFvpWyVWRE0=; b=WvZkXQgzuBXlSD
	bAvfuxdTNMiaWGDMUm+ACUqFCEqfUSIbZm/l/mMSZ8Tzy+hyVsclQO0utwBxyfJTipuPAx8AT2lBl
	79UZNC0h1RNjF9Twgh9BukyAJEwQ+iY21NLu4Bspl6NbNj37mbw+3/whlTaxWPSzoLQA6ncW1lqso
	kZM3Nu/B841t51Kh4qUsw7FKNGXA+SuT9+yz9RRNaQWWDnFeegswnQFJXIFl0kQZkAwewPoMznTwc
	j8U3FN7jF/qV2q4Eh7de0wfC3NNGXTKdn3/wkdClaksuV3Ts7MnpQ98pJQo5tIx2shKEmUTaLHJRI
	o2sNn43tMxmreIJqcW/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyAyI-0001qH-71; Thu, 15 Aug 2019 08:18:58 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyAy1-0001pq-Lp
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 08:18:42 +0000
Received: by mail-lf1-x141.google.com with SMTP id v16so1098474lfg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 01:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n93Dng/Ji8MdS4CMyB8lWHjceWaq72wrZdpqfUie2jw=;
 b=n917679wlyShUhrE5Ig3CFfBox9eY1vDh5kRoK7P3mDg7njrsuDaJ4qJSjP0n0hbvN
 6XifsLDIS3pWYVy7ZekSuZ95mPYr4uznZ084qrwwJW9GSUwY02fmoiMMGjcPWsPLiNYJ
 BJt4KywfKUnhrIVLnU600Uws2yZ9Et0XWqrlcCzH7U6LxN7OD1HNTr293DBvwy30Q1cs
 11+aPHS28sOkmSS/L2JI9Bmr2f3qQsIvSylZyRF9Pv2QANJ0oTZ7TKwfE6F/SM1L/Nyw
 XBCZnmBV99kF3Gb8iTlXZgSaY1JtoKpN45vN06DanE0j0nSsx191aIGKHyhj6a+FPHth
 etVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n93Dng/Ji8MdS4CMyB8lWHjceWaq72wrZdpqfUie2jw=;
 b=X4yXXcZxkt1dGNeuoPaxPEOBdbydIvovOgX+IxNh8jb3B6jYSEhWDEH52NVwAlE6IJ
 xwX62U05zm0C21y8yrDDu0qQdzYRK9fXZiI4+TjH7aP8hZAJPnFvZ6eAP+8TWvoQNLyc
 7TncaIFJYgTj5onXCsUzj7aB/uzjvAEWBtcLseZhb4RbJqYVIDMJn1ET/SthmPA7RUXn
 KL58NSbOrEL/YKcmIE2OGe59nXgRFO6IRXpDFbs7P9B+Goz9VRQeicOLzYnkQ3G16kR5
 /QAunQa3RPRaZSbeZ6MkbCNPyf8wXJFCEJ5X4H8C7M41ygXvZby8bFVknuZvCky7/bVS
 302A==
X-Gm-Message-State: APjAAAVK9U2g0vh3k/5lq9FvjfWigSMYjgC2wSSODeWNLAFuSLP9vdvV
 MCM7Otm3YxYnL912UOI7BhpaQ0hnNFbFEPgX2g8fCQ==
X-Google-Smtp-Source: APXvYqz+3m9CpHTiryHGgaHMtDawA41PP43UTCZWzylvPS7O0bar1RDoxUlI3ihahWRnC9SzzajOeS5xqZGxmVYZE8o=
X-Received: by 2002:ac2:59d0:: with SMTP id x16mr1883275lfn.60.1565857119990; 
 Thu, 15 Aug 2019 01:18:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190815004854.19860-1-masneyb@onstation.org>
 <20190815004854.19860-5-masneyb@onstation.org>
In-Reply-To: <20190815004854.19860-5-masneyb@onstation.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 15 Aug 2019 10:18:28 +0200
Message-ID: <CACRpkdbj10yneOP4JKFGXyiY4e1vS6-oB=W2vs6nj_X2uAY=pQ@mail.gmail.com>
Subject: Re: [PATCH 04/11] drm/bridge: analogix-anx78xx: convert to
 i2c_new_dummy_device
To: Brian Masney <masneyb@onstation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_011841_709569_5DF4BA97 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

> The i2c_new_dummy() function is deprecated since it returns NULL on
> error. Change this to use the recommended replacement
> i2c_new_dummy_device() that returns an error code that can be read with
> PTR_ERR() and friends.
>
> Signed-off-by: Brian Masney <masneyb@onstation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
