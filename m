Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3A9133074
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 21:15:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNHedYZx1d/4a4jEN7bUGmPG/ID+KsOdQb1O7FcP7Qs=; b=jaSnFloSofr1E/
	NyOmubAQJk6hU112GVQA67+uJIbVo6CvDSCItXGpzYOR4vrfaKt5VDM+ypC/Oob+mYmHgYTXtKDiY
	D30crEPnMKZ7fCoUB0j2dKOC6MrCbjNcQyhby25HnE1abwudROH/dH13VNFBRpz8DS3TqCHN0lzxQ
	e/M8KjCm5hEXrexrPEGjwjPUIHfb9ks9suBlSElJPQrgPVhlRoCG7TkKiT1J3V+t1ncKi/FXq3hes
	gUfPayvCJYoMW+lmsxmFtz/WF6FgPPjJUGjLRpR3t6OUZvDODzyuEqEmjZOtKnbAE2ZX67iecSj7C
	eOAKoe3Q2YKPm4s3BPyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iovFz-0001QO-Pr; Tue, 07 Jan 2020 20:15:15 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iovFT-0001H3-TY
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 20:14:45 +0000
Received: by mail-ed1-f67.google.com with SMTP id i16so669683edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 12:14:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=shdUU23K0IEf7ZFJ8JLqr2RIvpPkSrbg6xdebmpUuBk=;
 b=r52kaId2zMHWtz8NEPn9aX2xI7wVUQM3VMCkwNy0th4nT1B+d+7qX0fJyrIceTmmTl
 SYQc2NjzY4O9HxTFbHelEHYQuhJlIMkfq3bSdLCc2ffJm4fFvSRT53Wf+mP8hL/k2FHo
 W/Rxgwjq0NXpkQzDaJU486rfMFmmzwbE+VqM58vpJyeAb3oauYShFF14RTzyjtgMldX+
 7hKqAUTzp7TfUoVCUY7DWfzY6PSC1G0mR2rA8lEqIvNdAIHfGKXkbR6zWXn2klU+lwmU
 piULR8fm6OjuP9vwPWYVUUchWSwQ3rLtW43G1O7wb28GTzwQbECXimrv84HpTt4liN82
 k91A==
X-Gm-Message-State: APjAAAX5rRwJKmrFn9OJtJdloIrkA3lndBB6JzvW96FmPYrGDsOdqFx0
 FLXsPtWAzSHuffQmcG+coIw=
X-Google-Smtp-Source: APXvYqxvhO+xtcJuzGv5TR4UrQN67+VzGE8I0ZqMCIB4xGEAsxpokcN4a/8SFQaVXLRtd6nc5VnFtg==
X-Received: by 2002:a17:906:1181:: with SMTP id
 n1mr1218322eja.218.1578428081904; 
 Tue, 07 Jan 2020 12:14:41 -0800 (PST)
Received: from kozik-book ([194.230.155.149])
 by smtp.googlemail.com with ESMTPSA id h5sm12464ejt.91.2020.01.07.12.14.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 Jan 2020 12:14:41 -0800 (PST)
Date: Tue, 7 Jan 2020 21:14:39 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 04/20] ARM: samsung: Rename Samsung and Exynos to
 lowercase
Message-ID: <20200107201439.GC8636@kozik-book>
References: <20200104152107.11407-1-krzk@kernel.org>
 <20200104152107.11407-5-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200104152107.11407-5-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_121443_986444_FE77B3C7 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 04, 2020 at 04:20:51PM +0100, Krzysztof Kozlowski wrote:
> Fix up inconsistent usage of upper and lowercase letters in "Samsung"
> and "Exynos" names.
> 
> "SAMSUNG" and "EXYNOS" are not abbreviations but regular trademarked
> names.  Therefore they should be written with lowercase letters starting
> with capital letter.
> 
> The lowercase "Exynos" name is promoted by its manufacturer Samsung
> Electronics Co., Ltd., in advertisement materials and on website.
> 
> Although advertisement materials usually use uppercase "SAMSUNG", the
> lowercase version is used in all legal aspects (e.g. on Wikipedia and in
> privacy/legal statements on
> https://www.samsung.com/semiconductor/privacy-global/).
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  arch/arm/mach-exynos/Kconfig                  | 36 +++++++++----------
>  arch/arm/mach-exynos/common.h                 |  2 +-
>  arch/arm/mach-exynos/exynos.c                 |  4 +--
>  arch/arm/mach-exynos/include/mach/map.h       |  2 +-
>  arch/arm/mach-exynos/pm.c                     |  2 +-
>  arch/arm/mach-exynos/smc.h                    |  2 +-
>  arch/arm/mach-exynos/suspend.c                |  2 +-
>  arch/arm/mach-s3c24xx/Kconfig                 | 16 ++++-----
>  arch/arm/plat-samsung/adc.c                   |  2 +-
>  arch/arm/plat-samsung/devs.c                  |  2 +-
>  arch/arm/plat-samsung/gpio-samsung.c          |  2 +-
>  .../plat-samsung/include/plat/samsung-time.h  |  2 +-

Applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
