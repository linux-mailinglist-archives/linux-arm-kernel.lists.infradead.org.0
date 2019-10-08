Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D84CFA12
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptgOHZDWIDMqt977fr0CH7600gB25lWtshI8AL6poz4=; b=HQe5IHoNFwcVoo
	VSxKoPsbBl4uY7O/PwIuCtYyWWRN5IR8gpa9aD39nPlECrIhKUTz69DnVChY966zZIBIesjSzShJW
	qteBS73XD1e12PrzThB3hycqsL3GNjFKdodfSjNUVxahdtTxM5SxSciM7hKWmQyIH9kyQVkjoNe6U
	EjdSgAdWGv5jd3YVr4v1RWWTyLN4ZzyyzRtgj+SBthRXLCHfQC/AwQ94HLZNYpxCSnj/fPar+8Y5k
	pEv/Z1sELM4WJxnWUjlZgVOdd01x8AvMSf1cYW7XsLpKgF/55alMgbybQGgMcSdJTyQJXDiHhmo5Z
	Wy3jRsS46Sy9Zzo6to8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHolZ-0004Bk-F0; Tue, 08 Oct 2019 12:39:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHol2-0003xk-FS
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:38:32 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F18E206B6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  8 Oct 2019 12:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570538307;
 bh=0172FbZMwE+uHkpHQaDTjmrpy7r6UVMZViKRxp2jAkE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Fj0cjOYfJqhfG7IwXrmsg43ZvERQ73aD0HiD62uK8K0QAnuFy4VbETrnvYSymrBqN
 xM7+aR53XRnXLF/IMVEBQZral9XGk3sgp1dp0oYVgvM71fmByrgK0ow2kcUo6seEJK
 WtzTvf6j2ztu57+zCR9T41ITyxFFnOHtYtMF77Dg=
Received: by mail-qt1-f182.google.com with SMTP id u40so24975621qth.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 05:38:27 -0700 (PDT)
X-Gm-Message-State: APjAAAUTdedCo53CyBUun5wXn+f/lN50UcXMGwu7HhKF3egHQvLEZCpV
 6W3p6QgxT5edmNSBzuqdHhdVt6UfGOf0yZdCfw==
X-Google-Smtp-Source: APXvYqzxC6rl6FMV1ScqL2fgXOVZv3hYhSzySpUPq3nsKaUzT0TVTrLa+50ZC/gUauiPJFRY9Nd2MNSIBGFt1IYYeV8=
X-Received: by 2002:ac8:6982:: with SMTP id o2mr35571093qtq.143.1570538306332; 
 Tue, 08 Oct 2019 05:38:26 -0700 (PDT)
MIME-Version: 1.0
References: <20191004151414.8458-1-krzk@kernel.org>
In-Reply-To: <20191004151414.8458-1-krzk@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 8 Oct 2019 07:38:14 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJDTcHu5oXG6zszGHCBhTE6EW94AANUjyMV78SkKcn5yA@mail.gmail.com>
Message-ID: <CAL_JsqJDTcHu5oXG6zszGHCBhTE6EW94AANUjyMV78SkKcn5yA@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: samsung: Force clkoutN names to be
 unique in PMU
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_053828_563084_4CD1197F 
X-CRM114-Status: GOOD (  15.87  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Maciej Falkowski <m.falkowski@samsung.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee.jones@linaro.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 4, 2019 at 10:14 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> The clkoutN names of clocks must be unique because they represent
> unique inputs of clock multiplexer.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/samsung/pmu.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/samsung/pmu.yaml b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> index 73b56fc5bf58..d8e03716f5d2 100644
> --- a/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> +++ b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> @@ -53,8 +53,10 @@ properties:
>        List of clock names for particular CLKOUT mux inputs
>      minItems: 1
>      maxItems: 32
> -    items:
> -      pattern: '^clkout([0-9]|[12][0-9]|3[0-1])$'
> +    allOf:
> +      - items:
> +          pattern: '^clkout([0-9]|[12][0-9]|3[0-1])$'
> +      - uniqueItems: true

You shouldn't need the 'allOf', just add uniqueItems at the same level as items.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
