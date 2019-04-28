Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA6CB6A9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:31:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEBm+U2NAepPftGjDWdsvB9GzICwBEQoh2EA9vD/JsM=; b=LvnA8j3MQnc+1B
	M6EXJZZJeIVmBmFP7826jSUEXWvUPq3jv75u0WS8vX0YTRP7OcTqctJ/90/HmidBh8kW4NKdb9HP1
	oCjGfGP6FpTUezFPY2bY4g7jEV4EyVy6IPYxOtNh3O5waYJGhaxN7CCtXMTiCYs+vUh7oSsQbZg4b
	HSNe2YtIteOPD/TH8cGHS0PPqj55BlUK560CCjFbP2kEujnF6KAuQEBh1MK8wNLiPPMAqDIosR8e6
	XstDCyjzz88yfQclu7/BW44pz8m+C/utSg22Hy+64RjaKadC/+w3XtI1iItx3vnZQDF1jnWVYThDp
	y07lgu4uAmEGsoWQEmBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqSb-0004NA-FA; Sun, 28 Apr 2019 20:31:41 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqIw-0002Or-ID
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:22:00 +0000
Received: by mail-lf1-x142.google.com with SMTP id u17so6363977lfi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1RMmN8Y3ry5e3+uRd+v8T6sP4ZvK8Q6n5eXBmv0zFUE=;
 b=Dz/yhrcF0xmHCpk4NPQZbLGDADEoCKV8xHcmH2YSjWMk+T2nHqYxrx4WGAQdh+r9aZ
 58E6HoXG8Z7+4jydAPpA87K3IjjuxOI/urgTMYfopm1tIhh8spOeh59cIXHAbe/JYR+G
 dbn8gzrTTWwh6Iu9wf9J40P/EvbHAlH7YNLtQW/B0paZxru0mmqXQWJT/Fb95Bk6t6E/
 002VApExigCbUEASIFP8wMozt38gp9HRhlsxzPHZ7rw9zt8pEWfLf4DhPe1aPqRWd1Pb
 WBGm4B8tdmeB5b89LtylvKvcTckJ+tULF7wiDYOMxcUOUBhAHgbqSn+USoqS1b0+A4u+
 8UZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1RMmN8Y3ry5e3+uRd+v8T6sP4ZvK8Q6n5eXBmv0zFUE=;
 b=uU12coer1ySePjlQEAyCljMz67tEITUq8/MWu6LXZjb2OIQRWgnMt+ySwfOYa0RECF
 TbvhX6H5pfXoTewMODsXs6zjW6SB7fRzbrZVQZv8Heec3Pmi6nPtNU8rttgTLfwkvWS/
 km/VzstcEOL+Vxn54L9jZsoJCir3Zo1OPWX+mR4zkHj/RqDfVl4TCp2D8JhHLPvt5pn2
 EYC2gbyA/4ELu8YPNsyuNpGZzUfM7xBie8wWOngxu7+O9LE0vUP5WnnOy9HydRBUMCqg
 4gqVjlFtIN3roxGeNjIQ9TPvb8Nr8paRZnigfprA9N2MPzvBUZDipf6htPAjk+Es682P
 eM2w==
X-Gm-Message-State: APjAAAV2EpZcqVPwuCLhqDQyNZV+raiwUFQhrfwGofjVUNq/2aXEEfi4
 awd2NILth17vwz+I8kuQlgPGGA==
X-Google-Smtp-Source: APXvYqxYi/RG8uhH2nZfU1IlGKyKemJEiczvROU8a7HSe7ukspcmyiyzkNdf5fT2qiuZAUULsPuU7w==
X-Received: by 2002:a19:ec01:: with SMTP id b1mr9975862lfa.128.1556482900944; 
 Sun, 28 Apr 2019 13:21:40 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id a17sm6967240lfg.88.2019.04.28.13.21.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:21:39 -0700 (PDT)
Date: Sun, 28 Apr 2019 13:00:18 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [GIT PULL 1/5] Rockchip dts32 updates for 5.2 - round 2
Message-ID: <20190428200018.yi3k6lqz7xbpcte3@localhost>
References: <3379363.gjmLGbHmEH@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3379363.gjmLGbHmEH@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132143_000104_B867B754 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 07:57:03PM +0200, Heiko Stuebner wrote:
> Hi Arnd, Kevin Olof,
> 
> please find below and in the replies round2 of Rockchip devicetree updates
> targetted at 5.2. Again nothing major but a lot of attention for the rk3288
> and a lot of general updates - Please pull.
> 
> The devicetree updates (32+64 bit) go on top of the previous tags from
> round 1, while the other just go on top of 5.1-rc1 (or later of course).
> 
> Thanks
> Heiko
> 
> The following changes since commit 4b028ebd4e3d86c61161b3a937b746043006dcbe:
> 
>   ARM: dts: rockchip: enable vop0 and hdmi nodes to rk3066a-mk808 (2019-03-31 17:28:05 +0200)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-dts32-2
> 
> for you to fetch changes up to 356150e86d75653d1f679c6ef583144b26d0a686:
> 
>   ARM: dts: rockchip: vdd_gpu off in suspend for rk3288-veyron (2019-04-12 22:28:38 +0200)
> 
> ----------------------------------------------------------------
> Much love for rk3288 in general (power coefficients for the scheduler)
> and veyron chromeos devices in particular (regulators, suspend, cleanups)
> and bulk conversion of the remaining gpios to the helper constants denoting
> the iomux.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
