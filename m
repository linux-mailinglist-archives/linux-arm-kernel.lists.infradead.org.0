Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D372B57B73
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:30:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TeBSgdxZ/powNEPXm5oD8WmMp+kHeJMQIAGLG8EzPII=; b=tjpBvZxcrJKmcq
	Meulgta+wHxBKYkT6JL9nSTIIcIYiK+93j56m1CBMfF0cyumgHhLYUznzC0kzuXVZ5ljdg1bFcXUZ
	lGMfdJdhI+256uqXS1XVU4gdZOdOtPK/lvI44zHU3JDhtWcKnbFh9I7ucwcwYTyNP0OfKxxqRxPwV
	EqMNI+JrR4eAYU0rXNyErHOLM1EvctPbeOJKzBYLKc3WJ3Y6ZcytISoe+PKOjlIkb5OyS8QbztgEr
	CRzrBjlXuXnmODnaUWgbCKIR7Nb3hOQ+GKJn7LZEEE3+BYDjVyP1jFq0sLtMBOB4OMnsUyMhxVb68
	zBHdpk6r7ilnePzB5+tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMyv-0000es-Ad; Thu, 27 Jun 2019 05:30:01 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMsq-0002Wl-V0; Thu, 27 Jun 2019 05:23:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xLR2Xhn/TuCDiVYBhunomRz/3Ur13wFdNQa2EY49GyE=; b=LBS/G1fVl3hJrbP7ULWQdepx5m
 Ah4ht+PW7yywM9cvsZpaejJJa/Vnxg9m7sJjWyvV45uIfv0FqpQSdlmAMli2dUNLLyRY2AWJg2OIg
 nqOWwHe109rXk4aHw4iEvAR2rK95qAh2PvjNShxvXeMpiJIZyxOCz6+5jdbocrUgscpUd0XPjc5bU
 qWCaSd3M6Ow0Sy9ZI0wq+VsCiDDYQtyV8T6/Hf5G77kwgPAU9u5xtLP1aTNSBIFkJp8DGSxaAyyZr
 N+w6RfP1DIe99gkyzGNRoL8lAkbctJUOS55ECpImBwR0jDYUIR/fyXEhFVkRVuN+NN12Ovas7yvB8
 8COtOzCQ==;
Received: from gloria.sntech.de ([185.11.138.130])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgGIZ-0006oK-0m; Wed, 26 Jun 2019 22:21:52 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hgGGG-0004PZ-Dy; Thu, 27 Jun 2019 00:19:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: move rk3288-veryon display
 settings into a separate file
Date: Thu, 27 Jun 2019 00:19:27 +0200
Message-ID: <2418036.tTYI8lUvN5@phil>
In-Reply-To: <20190625222629.154619-1-mka@chromium.org>
References: <20190625222629.154619-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_232151_116391_BBC735FA 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, enric.balletbo@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthias,

Am Mittwoch, 26. Juni 2019, 00:26:28 CEST schrieb Matthias Kaehlcke:
> The chromebook .dtsi file contains common settings for veyron
> Chromebooks with eDP displays. Some veyron devices with a display
> aren't Chromebooks (e.g. 'tiger' aka 'AOpen Chromebase Mini'), move
> display related bits from the chromebook .dtsi into a separate file
> to avoid redundant DT settings.
> 
> The new file is included from the chromebook .dtsi and can be
> included by non-Chromebook devices with a display.
> 
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> This series is based on v5.3-armsoc/dts32 (f497ab6b4bb8 "ARM:
> dts: rockchip: Configure BT_HOST_WAKE as wake-up signal on
> veyron") plus the display timing patches from Doug:

the display-timing patches are still stuck on panel-review.

But while we wait for that to get resolved, you could also check if
the veyron panels could use Enric's fanzy new automatic calculation
of brightness-leves in the pwm-backlight driver, so that we possibly
could get rid of the long table of levels.


Heiko




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
