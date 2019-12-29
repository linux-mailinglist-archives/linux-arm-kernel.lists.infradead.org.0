Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBCA12C37C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 17:33:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6w3jhfz3SpLuE96j3VLjQU2eDfcb7drWUxh/ZashBo=; b=KtDnOQjzyqxxX1
	F+Sx3z+JUtX9Ju3zfqTzhA6IXiR9EYNxLfX/DmqNTImTKcS1anIQQjkmjVNw6Vcyn0MHiUi+KmRqY
	XEAzvyp6QHWA2eCMIF2/pgYOFWi8sNBVTBKgVYltx9xBL4YBsVyTzN/1Svn8LB7CTIges+85jYkkw
	wPt+NqkWnoA6iwtw8velFnLAuR2qdi8LOoukbXj1lVqwuMfhtWLllDMYQUhdUjEdo7Wlofydt7NhP
	QcExQRPt51aX/0SzKBLKOXkrHQ9lWiO763CzfKB3KZz2gDBv6ELZqRNqCXUAApO9lIXD+umlmrqqZ
	AjGEWv9Ix/85vERa0RsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilbVB-0000Jl-Vn; Sun, 29 Dec 2019 16:33:13 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilbV1-0000JP-OK
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 16:33:05 +0000
Received: by mail-ed1-f68.google.com with SMTP id cy15so30307978edb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Dec 2019 08:33:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=w8219L+FFqUH9cjSnRUbblLwTHC5hsqSbYNReVBrhuc=;
 b=lqKQNViZU6opiA8Uhf58Keg0FNN0tEwgjpmNP3aMUtT3M4BuplE4ymL2JPQgGweCGV
 PHJMzdGE+69ONht8DFuvoLivfxU+/cJsapRIIDaUpdM79wq78kz0TTsHfqWvWfhQ6pOH
 fTpnDPtcxrEC1ZvHEc/13oPPaWpKhqOFishojG8XWz63LEQcTfVDqkvgRzawNtNsrOwo
 s1Ie8iihowdpQNTaV+T05idK8lqHaONiVfvcLIbgEtLCrV/50+ZX2LCjAqxgQTair1/R
 J8+Yb6b2bdGdRs944asrBDGxEGHrksUZ4TIqNkmEM/QIrr776X4xDsF5dBPXKEylyqk3
 /HQg==
X-Gm-Message-State: APjAAAU6nk1/ft4EWLcyU5xzTDyaxnK6bteBnbXedjy6OFMXuHskO/qH
 OBQDJvk6mVbBBOfc23vKpV0=
X-Google-Smtp-Source: APXvYqzRb6vwdUw8G86aJ7mHh+/AEBuqsi9vNpw708AECo/09tP3fogV3xvK3TJdPC/SJtQeQ+HDGA==
X-Received: by 2002:a05:6402:3c5:: with SMTP id
 t5mr65295462edw.217.1577637181592; 
 Sun, 29 Dec 2019 08:33:01 -0800 (PST)
Received: from kozik-lap ([194.230.155.138])
 by smtp.googlemail.com with ESMTPSA id pv11sm5178514ejb.75.2019.12.29.08.32.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 08:33:00 -0800 (PST)
Date: Sun, 29 Dec 2019 17:32:58 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hyunki Koo <hyunki00.koo@gmail.com>
Subject: Re: [PATCH] irqchip: define EXYNOS_IRQ_COMBINER
Message-ID: <20191229163258.GA32260@kozik-lap>
References: <20191224211108.7128-1-hyunki00.koo@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191224211108.7128-1-hyunki00.koo@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_083303_794547_D54A6C76 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-samsung-soc@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Hyunki Koo <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 25, 2019 at 06:11:07AM +0900, Hyunki Koo wrote:
> From: Hyunki Koo <hyunki00.koo@samsung.com>
> 
> This patch is written to clean up dependency of ARCH_EXYNOS
> Not all exynos device have IRQ_COMBINER, especially aarch64 EXYNOS
> but it is built for all exynos devices.
> Thus add the config for EXYNOS_IRQ_COMBINER
> remove direct dependency between ARCH_EXYNOS and exynos-combiner.c
> and only selected on the aarch32 devices
> 
> Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> ---
>  arch/arm/mach-exynos/Kconfig | 1 +
>  drivers/irqchip/Kconfig      | 7 +++++++
>  drivers/irqchip/Makefile     | 2 +-
>  3 files changed, 9 insertions(+), 1 deletion(-)

I assume it will go through irqchip tree:
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

If not, let me know, so I could take it via samsung-soc.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
