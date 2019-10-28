Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64116E77B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 18:36:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rmQwJaL8J8/czTor0pHZNkDzBhb3YPkNRpJI5kcDxP8=; b=a9cw7ErAgWdlk9
	DVSLOn+psdrCSwz8r67L8e9pMG1vBWOghmIMl5sGUst98yYokw2DYbecAmTZr6t4LHv6lir7jn9wl
	rpBP/i/a/k+hJIvb4L4F6JtFDCfbNq2DsLdpOAsEuESL0R7F5AvzbUUFlXfLQVNbQ6ts+0k3/a24S
	ODlnShnhE0PR0AT7T/SlH/iRD4BS9hLrmGHqC3C1frScudRkqlydLDx/37oY/HAT+vgnJnUxMrdiN
	NQOyj0mweRYWK3KrGCrSC+0NHy/u6M0Bk2lSFNuD6XHCzww37l5wq3I8JJFz43J5DdaGptqNwE4f6
	5Tl2bT25NmlkeoWOOu7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8wB-0000cS-Tl; Mon, 28 Oct 2019 17:36:16 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8vv-0000aX-EZ
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 17:36:01 +0000
Received: by mail-ed1-f67.google.com with SMTP id k2so8548492edx.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 10:35:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5Q/O2+63vyfOOc8TciZScYae9QvHO/ZsisH+/bPe/bY=;
 b=C4P7Nwf+uBrIWZoYN9FhOmerj4DjF9XzzbYJn+pxRrhas2p4exS7W/duf/318xVTX5
 ivGIYAsDhxLbQG0q1fkkaBzFN9ztJdvkbPBXe5oe6BILndK3OJ2KGECu9zmz5uQ++9cM
 2RfWF/hmC8nTbmaMnhd85zyqcCEoh8aMzl0xdPUzsPM7rcaxl4LXkCYbA9GpmboD8gLm
 wfvSW/jIoZMDszk5esp429pIfcwAn2fr1/TLt9cklxMbZ0nwzxyaix6NhsxII9nuNsjw
 12hc9+NskYxMnkhElw3b34ru8gMC3L38RekYdrkoG4GnVq5rfVJCC2pGkMcXQYHaWSCA
 b9/A==
X-Gm-Message-State: APjAAAVmqMC7dpI8ukUaMe8GON8Z9BkQZbqcZzCn+gHsLZfJ6VEfSEn6
 CJmjAEhu5LlMwE9XoHeUolo=
X-Google-Smtp-Source: APXvYqzoUJl7QMBZQoYR89SoTXUdW/ohGM8/IS7x6+XbBSVHr6HcscdiM7+fVXuN3VrPgkEN0cQ0OA==
X-Received: by 2002:aa7:d3c4:: with SMTP id o4mr21407071edr.194.1572284157625; 
 Mon, 28 Oct 2019 10:35:57 -0700 (PDT)
Received: from kozik-lap ([194.230.155.180])
 by smtp.googlemail.com with ESMTPSA id f19sm565060edx.48.2019.10.28.10.35.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 28 Oct 2019 10:35:56 -0700 (PDT)
Date: Mon, 28 Oct 2019 18:35:55 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v6 1/2] soc: samsung: Add Exynos Adaptive Supply Voltage
 driver
Message-ID: <20191028173555.GB14395@kozik-lap>
References: <CGME20191028151546eucas1p120f516f70114027d99724a40ea163af0@eucas1p1.samsung.com>
 <20191028151534.9920-1-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028151534.9920-1-s.nawrocki@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_103559_489282_665D6C72 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.180 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 vireshk@kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 04:15:33PM +0100, Sylwester Nawrocki wrote:
> The Adaptive Supply Voltage (ASV) driver adjusts CPU cluster operating
> points depending on exact revision of an SoC retrieved from the CHIPID
> block or the OTP memory.  This allows for some power saving as for some
> CPU clock frequencies we can lower CPU cluster's supply voltage comparing
> to safe values common to all the SoC revisions.
> 
> This patch adds support for Exynos5422/5800 SoC, it is partially based
> on code from https://github.com/hardkernel/linux repository,
> branch odroidxu4-4.14.y, files: arch/arm/mach-exynos/exynos5422-asv.[ch].
> 
> Tested on Odroid XU3, XU4, XU3 Lite.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v5:
>  - "syscon" compatible in the chipid node is not required any more,
>    use device_node_to_regmap() instead of syscon_node_to_regmap(),
>  - dropped "Unsupported product ID" log,
>  - EXYNOS_ASV_SYSBSYS* enumeration simplified and moved to exynos5422
>    specific header,
>  - dropped unnecessary headers inclusion,
>  - dropped unused argument from exynos5422_asv_parse* helpers,
>  - added const qualifier to some function arguments.
> 
> Changes since v4:
>  - Fixed include guard in drivers/soc/samsung/exynos5422-asv.h
> 
> Changes since v3:
>  - instead of removing/adding OPP use dedicated API to adjust OPP's
>    voltage, only exynos_asv_update_cpu_opps() function has changed,
>  - added a comment describing ASV tables at beginning of
>    exynos5422-asv.c file.
> 
> Changes since v2:
>  - use devm_kzalloc() in probe() to avoid memory leak,
>  - removed leading spaces in exynos-chipid.h,
>  - removed unneeded <linux/init.h> header inclusion,
>  - dropped parentheses from exynos542_asv_parse_sg(),
>  - updated Kconfig entry,
>  - added const attribute to struct exynos_asv_susbsys::cpu_dt_compat.
> 
> Changes since v1 (RFC):
>  - removed code for parsing the ASV OPP tables from DT, the ASV OPP tables
>    moved to the driver,
>  - converted to use the regmap API,
>  - converted to normal platform driver.
> 
> ---
>  drivers/soc/samsung/Kconfig          |  10 +
>  drivers/soc/samsung/Makefile         |   3 +
>  drivers/soc/samsung/exynos-asv.c     | 177 ++++++++++
>  drivers/soc/samsung/exynos-asv.h     |  71 ++++
>  drivers/soc/samsung/exynos5422-asv.c | 505 +++++++++++++++++++++++++++
>  drivers/soc/samsung/exynos5422-asv.h |  31 ++
>  6 files changed, 797 insertions(+)
>  create mode 100644 drivers/soc/samsung/exynos-asv.c
>  create mode 100644 drivers/soc/samsung/exynos-asv.h
>  create mode 100644 drivers/soc/samsung/exynos5422-asv.c

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
