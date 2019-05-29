Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCA12D7F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 10:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XicWbT+ULI5nM/teVcKKK8v4893D5BP8lYOwhB22osg=; b=LX7NwTHk+vdacw
	iO1VzUbkDunQ9Icv4Vh3C6A5NRjNTXdYgj55+CrMukD6Z0DkLMcpT8BBv3No+wxY3Gpfqp2XWexnt
	yooifYcbUnTQFwwnJdZ41qi1jUht46XU58t7I+qazJkvA7Gw9sJ7QRWvBWX/zPrhhEIBSD09Lym2c
	hu+HOZwsWVdmkQlYlHNRMHIglH8F/GBgYPDJPCWAiLs5aHh1yRHmkuuj98Zuv7FeZ97zme9z3yt6z
	rgZEWqkvwPT8fJ6SbLYxTbZpw2kgy/tkLMwPMG2SHHyiWcq/92YVDo8e/SLc29jgldCLTf4IG6hNz
	wMKFtvfCQJtC4B7M/4Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVuA8-0001eN-V8; Wed, 29 May 2019 08:42:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVuA2-0001de-DO
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 08:42:15 +0000
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 921D121670
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 08:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559119332;
 bh=kLcWkuMUD1c9UKeh1Icn/by3J3KUqRiWwfXRFd6P5x8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=TpzDSS2RYXCTm80dxTw9lE8EUlXiI94NlWx9ro3r8TnxPR1QYZFdHgBvQgtL3AGoO
 8epxsYy9MpT3LjEr3evqQesj4oMRKkK/VIuSDK9u6y3OLQEtScwMDfNa/GnwXzM5F5
 +G9B5pr36kY5XqsaRKjnZBikURUEDj2GfLK6MAik=
Received: by mail-lj1-f175.google.com with SMTP id o13so1593567lji.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 01:42:12 -0700 (PDT)
X-Gm-Message-State: APjAAAV7h2lDIO7MQLNHWnlR5dA+EI6xUKrB6QljzL3HQ/iPnox44ZZC
 8NQUfuYQVZG3r710TPFz+Qx8G3at+69o+R1Y0Bk=
X-Google-Smtp-Source: APXvYqzUzMIm/yFZwUkBnd9PJV+6XSRK74Of5UYSuWnDEXSI3A+Id6tCaQkHsfE2heRDgEkW5hmncH1hvrpO/lvVcHY=
X-Received: by 2002:a2e:9a9a:: with SMTP id p26mr3098090lji.64.1559119330847; 
 Wed, 29 May 2019 01:42:10 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190528082903eucas1p1ef54fa6aee420bffa11be61d5efb4c46@eucas1p1.samsung.com>
 <20190528082846.21625-1-m.szyprowski@samsung.com>
In-Reply-To: <20190528082846.21625-1-m.szyprowski@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 29 May 2019 10:41:59 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcgbSHDAnRc+9dtiuLOQ2Ah9mVrYvEdd33M_AAuC5Z5xg@mail.gmail.com>
Message-ID: <CAJKOXPcgbSHDAnRc+9dtiuLOQ2Ah9mVrYvEdd33M_AAuC5Z5xg@mail.gmail.com>
Subject: Re: [PATCH] ARM: Add workaround for I-Cache line size mismatch
 between CPU cores
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_014214_470720_13568B30 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 at 10:29, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
>
> Some big.LITTLE systems have I-Cache line size mismatch between
> LITTLE and big cores. This patch adds a workaround for proper I-Cache
> support on such systems. Without it, some class of the userspace code
> (typically self-modifying) might suffer from random SIGILL failures.
>
> Similar workaround already exists for ARM64 architecture. I has been
> added by commit 116c81f427ff ("arm64: Work around systems with mismatched
> cache line sizes").
>
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
> This workaround is needed on all supported Exynos big.LITTLE SoCs: 5420,
> 5422 and 5800.
>
> Resend reason: removed RFC tag as there are no comments, I will upload
> this patch to the patch tracking system

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
