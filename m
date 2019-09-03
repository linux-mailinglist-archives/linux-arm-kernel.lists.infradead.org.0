Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 458AFA62A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 09:37:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTJyzsrIxxCxdyjFRLGpWcBSIiSgknCs7nMuq37qmyU=; b=BKt40Y5aP15nNN
	EAjRRub6czuzU3erkm25bIrY8j82BXF9fPixPAu0o9QRg8gYsdvjY1FG7BXnWe5E1elDhEEZpFBjG
	RSCMmOI7kVnix3vd5XVGVFWTdD/zvI4QDOIlRGkqtLGnutCm2fMN5WcUqYv1+pL3Wuoit0tjs+uxl
	z0755Nawd7PknGDWk+myWYJnn7etmHjWKVIqlmozqLrY/axc8QSWrT0bRwax1x2ZxdtZWrjyp0AnP
	FcCBBo8KkR0gCzn/KCsfHQ0lgJiyfLSar7WxOuWhFQkuSlC5wGxWzBU6zeB/34yt4voGgc6cu8/lA
	0O6HlsTclChVxJVG8t7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53N7-0001wJ-UA; Tue, 03 Sep 2019 07:37:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i53Mv-0001vi-IK
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 07:36:50 +0000
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D9E9230F2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Sep 2019 07:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567496206;
 bh=/ZTjJoXaezmKCvELPg5M13bzTRrjeyDRmEyX7PWast0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Q9EQAMAxdtvLI6I9H2zoZoXc9fuO41xG7lpAobknvVwlqRQBMNOLc7/EEUc8EccXs
 tHwZueTMsN7AHZA+8uP9KiYbu3oSOzC16EJ0FtFqYEXeILOCuusdX+vyyDywbySWnp
 EwU29NOF9eIabZFG38NKzMg0DZMBmInj9v0yYVTg=
Received: by mail-lf1-f47.google.com with SMTP id x80so941954lff.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 00:36:46 -0700 (PDT)
X-Gm-Message-State: APjAAAUrc0tBPlkazksno52LUto5hixEOLeGgzWtJvE4NjKWuACH8Iz1
 2T4fkpfn1fPBnTAiA+9NLBa9+UnJaN21CVkOLx8=
X-Google-Smtp-Source: APXvYqzifXzpzCKx3mvtPEOpu4CnO2M7IdhlcbgvKTRfifqBBb8mG9MGhPwuBRwMsOFeRE+/UJIfxT39ocxJMpA+LDU=
X-Received: by 2002:ac2:4853:: with SMTP id 19mr12886366lfy.69.1567496204476; 
 Tue, 03 Sep 2019 00:36:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190830104502.7128-2-guillaume.gardet@arm.com>
 <20190903073300.5927-1-guillaume.gardet@arm.com>
In-Reply-To: <20190903073300.5927-1-guillaume.gardet@arm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 3 Sep 2019 09:36:33 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcvAb=DLzaq-MPygWdviOpJ6KOu53R-6xkSsCFJW4xUKQ@mail.gmail.com>
Message-ID: <CAJKOXPcvAb=DLzaq-MPygWdviOpJ6KOu53R-6xkSsCFJW4xUKQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpu: mali-midgard: Add samsung exynos5250
 compatible
To: Guillaume Gardet <guillaume.gardet@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_003649_631409_752A4FD4 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 3 Sep 2019 at 09:33, Guillaume Gardet <guillaume.gardet@arm.com> wrote:
>
> Add "samsung,exynos5250-mali" binding.
>
> Signed-off-by: Guillaume Gardet <guillaume.gardet@arm.com>
>
> Cc: Kukjin Kim <kgene@kernel.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Marek Szyprowski <m.szyprowski@samsung.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
