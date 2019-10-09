Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61944D14C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 19:02:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3KlI8K/4FAXv+l8Vx2pKyeDVr+adv4WRV7fX14mwRY=; b=l2RCaFPAsmWaW5
	muiTa1MAif0PKTSZ8FPRn+3+97GGXpuMpWKA0NW6whJslQ4YnhjWC0HtePdQ4RGPn7LFZXKWNOr8m
	abnFf6ketO2IjbdLVp6xxCKfMKQWoHTQi9XetYNkNmQPubZlOc3ZJzIrfu/h7T4QntSD2w67wBNhH
	7GcGDmqis4DoJsOOBk6IPhwf8zcVa+48M8TLXI6uYPvGd7JTf+1SaZ4DrShD6/UQTYzCcRlFVQz/K
	/N++V9JiGnIbLjV6ChpknFtNMkasA3slph4q8WdXuF9aZ2szU1fduyZB5ymWXcCk6n0u4unEy1JIy
	uXoBfQKpZaHyPuEBIE6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIFLk-0008OF-3V; Wed, 09 Oct 2019 17:02:08 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIFLd-0008NR-MT
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 17:02:03 +0000
Received: by mail-wm1-f65.google.com with SMTP id 3so3378166wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 10:01:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1ntg9Cgk0VsZd8S7ttijlhlq6wPX6YWJRFJKhAxqY2s=;
 b=t+NxwO3tmt9nxeub/j4fiCd/YRm2rIbNbRbaCI/T2dryIRgw2m3DpG0loE/Zq/R5fn
 qUxrM5CaVt7/JeZd0jgo2Gku6zjXPF/1N0/8P7ImqeK8wPkmlGg/g08S4OHdQVJcwnsb
 LonSQd9CeHeD23A6HZh8Y4ruNlEiNsVcId7ZbW6y7MPu45KuGPj6EKvJUbIPx1yvdGAE
 U7DaoBsa2Cmhtww+KfQRGDjplqPTHcjE9TIkngaO51vbVZXvRQAYBijUGTmB/T9o5bf4
 VVozErv+djgEloCwvrrKI/w6HWQb/k8TdyDnRxY3vA5f+9j7k/bvVcjkRyudGQ+lIjUO
 RxkA==
X-Gm-Message-State: APjAAAVE7utdTvlAQQpGo3Anh6jClH1ynlEO7kpUAXCk1l6VEiMOBYNZ
 Xj6KcvbJScPAyP6PvdOjphU=
X-Google-Smtp-Source: APXvYqywRoqPo105V6/4gJ2UkRNcxVS4KHZ1uLjw16BuZ4XXdBsIl7s5m/bKvGnMs9P6wgRpjkKSJQ==
X-Received: by 2002:a1c:55c4:: with SMTP id j187mr3319915wmb.155.1570640515524; 
 Wed, 09 Oct 2019 10:01:55 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id v6sm5131269wma.24.2019.10.09.10.01.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 09 Oct 2019 10:01:54 -0700 (PDT)
Date: Wed, 9 Oct 2019 19:01:52 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Russell King <linux@armlinux.org.uk>, Kukjin Kim <kgene@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Olof Johansson <olof@lixom.net>, Simon Horman <horms+renesas@verge.net.au>,
 Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 1/2] ARM: multi_v7_defconfig: Enable options for
 boards with Exynos SoC
Message-ID: <20191009170152.GA28821@kozik-lap>
References: <20191008160234.3106-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008160234.3106-1-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_100201_735478_4C91B7E6 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 06:02:33PM +0200, Krzysztof Kozlowski wrote:
> Sync with exynos_defconfig and enable following options for Samsung
> Exynos SoC based boards:
> 1. NFC_S3FWRN5_I2C (with NFC stack): Samsung S3FWRN5 NCI NFC Controller,
>    used for example on Exynos5433 (if booted in 32-bit mode),
> 2. S3C2410_WATCHDOG: watchdog driver used on S3C, S5P and Exynos SoCs,
> 3. REGULATOR_S2MPA01: Samsung S2MPA01 regulators driver present on
>    Exynos5260 RexNos REX-RED board,
> 4. SND_SOC_ARNDALE: sound support on Arndale boards,
> 5. EXYNOS_IOMMU: IOMMU driver used on all Exynos SocS,,
> 6. EXTCON_MAX14577, EXTCON_MAX77693 and EXTCON_MAX8997: extcon drivers
>    for handling micro USB on mobile Samsung boards (Trats, Trats2,
>    Rinato),
> 7. PHY_EXYNOS5250_SATA: SATA phy for Exynos5250 present on Arndale and
>    SMDK5250 boards.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> SND_SOC_ARNDALE is in progress (patch introducing it was not yet applied)
> 
> Changes since v1:
> 1. Bring back REMOTEPROC.
> ---
>  arch/arm/configs/multi_v7_defconfig | 17 ++++++++++++++++-

Applied both.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
