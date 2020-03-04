Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D35178C63
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 09:12:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XlHC4BjRAXjs3py/pApfNybughmCU0S932anH3VUx3Q=; b=mtHoIZctX3V4M/
	W5SIEO1S8LtvIzbrvYgqahgOj5kGmAP0H6QBJkyKwg5cxnf1gkGjQ+DX2NCu57WcO4GdgSATKG2a7
	EsZ1prRk+gwzOJGZygxnYOhZKfzkHbKEGE4TxohAg/m2xVH77hMhY/gpERx1W9d9dTvYyFSXgDjjy
	WkeGNb2lElFxt0t/2clcVIt/ZErEq668w322/DGKvPpS77IypwF+iEjf8hH8+BiQxxBfZrZviRiDN
	GL79xUedf0PxDaOtBR55D3gy182XSsESx65wkeNE25xKiIe3FaQAEUmi2IMInAvDv8XvudeAq8DJf
	vktT+BNz7PL19uk1jV+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9P8S-0007mP-AD; Wed, 04 Mar 2020 08:12:08 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9P8F-0007lt-OV
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 08:11:57 +0000
Received: by mail-ed1-f65.google.com with SMTP id m13so1223087edb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 00:11:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bc4qmKJt/lAzS0lpfRM9DbEOWoXovtwmwwXu2IbTRzo=;
 b=iLxTBs/CpO+0IdEg+3gMXtR6ZYMhe7qQFwBA8dmYbvhRGtKA8TvRn7fYj3V1m8sarv
 5lDY/DqKAxHycQfmwoEuEWgyu6l2i01GTFWM/YBQc9guH6YoVrvattr1q8VRWqxor9Ki
 qON+5InQmDyuoxfnyW+7pnYLQR8bm00DQU13mp4Q8Dbx8Baye+Hf709TG4T6vioWzIxO
 uUDMmcj6dRRlNul4GWzRVNRb4SLFr/K6xw1cclONZjenxASOa30OdWCtW/8yVi/jcdXo
 YiM1COYRNmcKRIp7h+FWfPz0QuYHaIsy9N/94tjpR2VhunlF+h9kRmwzvokGshRoxmNg
 UFMA==
X-Gm-Message-State: ANhLgQ1R0mDxJrZgwOWAJ5s0Igh4P5H1ChLj6bst4PxLMh+dlE0pyvmJ
 0uDYYHXsbxN8+oWrpbLjT4E=
X-Google-Smtp-Source: ADFU+vvW40T8j5meoZiNaJ/0F7CHytNOStLYgpJxQMZhhi7lUyOEErJ4auD/xDioBTEYC65TyLQkfQ==
X-Received: by 2002:a17:906:8254:: with SMTP id
 f20mr1508858ejx.43.1583309514196; 
 Wed, 04 Mar 2020 00:11:54 -0800 (PST)
Received: from pi3 ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id a10sm1467746edt.50.2020.03.04.00.11.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 00:11:53 -0800 (PST)
Date: Wed, 4 Mar 2020 09:11:51 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCHv2 0/3] Add support for suspend clk for Exynos5422 SoC
Message-ID: <20200304081151.GA17560@pi3>
References: <20200301212019.2248-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200301212019.2248-1-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_001155_796026_42CDB946 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -1.2 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 linux-samsung-soc@vger.kernel.org, Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 01, 2020 at 09:20:15PM +0000, Anand Moon wrote:
> Seried build and tested on linux next-20200228.
> 
> This patch series tries to enable suspend clk using
> exynos dwc3 driver, for this I have added new
> compatible string "samsung,exynos5420-dwusb3"
> so that we could add new suspend clk in addition
> to the core clk. exynos dwc3 driver will help
> enable/disable these clk.

That's not entirely correct. You enable there SCLK which is a "special
clock", not a "suspend clock". You use word "suspend: in multiple places
in commits making an impression that it is about some suspend clock...
no, there is no suspend clock.

There is however a clock which driver calls suspend_clk (but it is just
some name) and it is being enabled for entire lifetime of device (so
also during suspend). AFAIU, this is not needed for Exynos5422 but I am
not sure. So please convince me...

However I have still the same questions:
1. What problem are you trying to solve here?
2. Why this is needed?
3. What is fixed with this patch?

Best regards,
Krzysztof

> 
> This series PatchV2.
> --Added the clk names for exynos5420 compatible.
> --Added missing support for Exyno5410 SoC suspend clock.
> --Update the commit message to support suspend clk usages.
> 
> ---
> Long time ago I tried to add suspend clk for dwc3 phy
> which was wrong appoch, see below.
> 
> [0] https://lore.kernel.org/patchwork/patch/837635/
> [1] https://lore.kernel.org/patchwork/patch/837636/
> 
> Previous changes V3 (It was send with wrong Patch version)
> [2] https://patchwork.kernel.org/cover/11373043/
> 
> -Anand
> 
> Anand Moon (3):
>   devicetree: bindings: exynos: Add new compatible for Exynos5420 dwc3
>     clocks support
>   ARM: dts: exynos: Add missing usbdrd3 suspend clk
>   usb: dwc3: exynos: Add support for Exynos5422 suspend clk
> 
>  Documentation/devicetree/bindings/usb/exynos-usb.txt | 5 ++++-
>  arch/arm/boot/dts/exynos5410.dtsi                    | 8 ++++----
>  arch/arm/boot/dts/exynos5420.dtsi                    | 8 ++++----
>  arch/arm/boot/dts/exynos54xx.dtsi                    | 4 ++--
>  drivers/usb/dwc3/dwc3-exynos.c                       | 9 +++++++++
>  5 files changed, 23 insertions(+), 11 deletions(-)
> 
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
