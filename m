Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E4237B11
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 19:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDNFd0fS2eneHMmF2Scni3mV5hp39+7C2EJkElBBlUU=; b=MUub3Gxgfbdg8U
	9/+btPP/jEarQ8O1uT1DfdSGMRiVXmbSzQi1KUHWgeBs4mEx8VL+yACzA3QZcDmnPfYVbldFS6IMS
	xqyTyFiuRVYsVdO31sdEGBucUg3GC33W0xSv/H2pv3Fs1c/barZi+J5IXYFdZ/KB+0UiqT03EhgzI
	uwSlrOQrBIzX2sgh2+osTV5PeVYs+eD8K5WEpAxmKIGTySi70nfjLRBMa1kDLhri7dDVnASfWkp49
	x6B26n67W6qWA2CTiA9+crZXhag5ANMroNIVMNJmJ4MF3T0wqZ/XvgMcu9nf4H6F9dWyujoeZUENn
	K6omw4eLwG3eJ7WHyW0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYwDV-00047z-Py; Thu, 06 Jun 2019 17:30:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYwDO-00047Q-84
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 17:30:15 +0000
Received: by mail-pf1-x443.google.com with SMTP id i189so1909301pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 10:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Er5DZ+jmgl4pACBM9mSuCYlxA1ZXYVy+Ri46ksNsKNU=;
 b=wm/5HuCV6OCqFPMj5n7IL5mdjhSWRNBQjjf7DDWELSUHyHSEkxAJJUzCUh5K1Q/PrT
 1rU9XPLawCPwYK34YEcRmd16u3HynW0SaTlCWw1xW/8f0xJXLaJFv5Amj8aU+x3jBRGZ
 OirbFJ6smfoYmqM4vpdeGuUA2Diiozc28Ql/BUymxNlyCnF3U3NuNesy19sKjTxlBCZ9
 xYkQgCVNc212j+aq83vwctLQsFzBYDYeCb21vGVD1yCTxbTMQZP9cLHvVL8JSwKlQeP+
 HhhL48FMk2LjvcQQ5bdf6g41dqIbXtWQEnc9Q7xerefNu0gaXl87goSWT899hImcaaCN
 b4UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Er5DZ+jmgl4pACBM9mSuCYlxA1ZXYVy+Ri46ksNsKNU=;
 b=IsqqbbSkgJOB6qduoIGyn/f36ZxArWeTws1l48J/g+xM4+EO1MtPR4aVhjCZQaGIEy
 wh6htLPwfAwRfT1vLgPK5OZxL2C7/RU6clrCvGdq7UY8fkEFvgrYnhP08mJkHzLe6k+D
 ovRbhHk56of/88mvUaFMEvbMKa5exGT/B6idgxGZ5UB+HpWUyxJudExqkHrA2jhEKOfC
 EzuhKsarqmIrOxQHoolVUn4DseWqwr8CHqzjzpZEctIdbVxhpsLjlEcDMlHne3NixAML
 dX+KKwAGSw7+xJ7CjKDZwKsY//1h3/hXNw7KNwWjXeVWb8z0RaHg5qt0VtxkHs0gkYjc
 +55g==
X-Gm-Message-State: APjAAAWdIjkhw/UUwt4GuQYxQ1yDoux/BAPhWT76kAYuv9KiEA8OOtqM
 wd806rlpySVHvEKJQDoowDl+wQ==
X-Google-Smtp-Source: APXvYqxcHDkEaPOHT2K2CyUbipGrVEDze7r7eLCeuaNBURmbKlAo/gGUVa+qM337klyNBaUWwbt8aQ==
X-Received: by 2002:a17:90a:6505:: with SMTP id i5mr924412pjj.13.1559842213424; 
 Thu, 06 Jun 2019 10:30:13 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id o70sm2769938pfo.33.2019.06.06.10.30.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 10:30:12 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/meson: fix G12A primary plane disabling
In-Reply-To: <20190605141253.24165-3-narmstrong@baylibre.com>
References: <20190605141253.24165-1-narmstrong@baylibre.com>
 <20190605141253.24165-3-narmstrong@baylibre.com>
Date: Thu, 06 Jun 2019 10:30:11 -0700
Message-ID: <7h1s06ei58.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_103014_297670_CDC8E9BA 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> The G12A Primary plane was disabled by writing in the OSD1 configuration
> registers, but this caused the plane blender to stall instead of continuing
> blended only the overlay plane.

grammar nit: "...instead of continuing to blend only the overlay plane."

> Fix this by disabling the OSD1 plane in the blender registers, and also
> enabling it back using the same register.
>
> Fixes: 490f50c109d1 ("drm/meson: Add G12A support for OSD1 Plane")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

As noted elsewhere, this driver is also full of magic constants used in
register writes which makes reviewing this kind of change for
correctness that much more difficult, but since that's already been
pointed out elsewhere, and it's already on your TODO list, it should not
block this important fix.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
