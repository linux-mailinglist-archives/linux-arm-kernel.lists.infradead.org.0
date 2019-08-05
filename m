Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CC9824E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 20:32:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gCoiwlsFqN9pjjCHzPoL7G47cM5cNRiXKoT03vylSWY=; b=rFxQlHl0gZxcVH
	Fgzsx9/EFEv3YFnDfl8HXEDr76IVnYt+HS//s0qGNCbHjXLkkz0kssM+MQK0UDZONxfa0BXcwfQyi
	3q4NLZu3fniRxZaomWa3eOFWgzMwGXg8D+e+xHIeER+9MCzG9eMaHHJpzVgktAydBUfcP3LOo8iZo
	PMQJazh+vCVuORnlqBnVkIIS6dlio+6vw4QBHk51mcXPYb7jar2Pr8VvNT2pMzG0HYnetRahOBGii
	GrGHrJyTsGNRN2/WwvfW2mKxLCsIquh1zr3KjZkmWDiuUqNYyXa0TcKHDSkdJUOtjC0z5e20XfY9n
	xgpjIWs/OhEWTg6CYH3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huhmF-0008KU-9v; Mon, 05 Aug 2019 18:32:11 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huhm4-0008Jf-Oq
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 18:32:02 +0000
Received: by mail-pf1-x444.google.com with SMTP id g2so40072087pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 11:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=GAZtoqMTbDsSEkTKLvtg+7SDqJDueQbXtR/WE8SM+Mc=;
 b=eLCpJfoh/+Lkf3U5Jq1Gw1cvSEsPrPw2J+Jj1cKEaDJJOhXr0kqg4nEbozdiW9YyZW
 MxwXt8S6yghOSjDY3p0XzVPZkQ9IDX8wNCa+Qv6vXmaUTiEb+PublVJvS7pSWJGp8KEx
 w9HQXI6qhlsTEtJk/CdDPSdHkxIWQIH6hjn96/vYSQJ8y01/RqngcS6Oq2O9DA5M5rVN
 fvxg1/cP+66yiU9OGP3cgIMltSY6quBi6snXE8Lh6SdljDPnXzTsPpnLyTbyUbk8aWam
 aCjEgEpKTEI7REjqoFE/WpbKcnCBuJMhe6vk5dAdvMc2bGkn8nFYuZ1PobjwNlCPV9X1
 L22A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=GAZtoqMTbDsSEkTKLvtg+7SDqJDueQbXtR/WE8SM+Mc=;
 b=e4SidhewBkPAQffPrxNRUlmJg1PL6YfjTt/to/M1iVjbZqEx8WKtCvoouuY3isYoZc
 Axm0/H7AJEkoeVJRrMGLlMe0h7bSGfu20cKt9sfNOVC+dNw1WmPdWE7ZOFyk/kej8/aB
 kX9tGB+Eqhiy6NSG7YG8Uce7Onwi2F8sysv9WWtFcr1ghHv7nsoyLPvzwniRUKRXeaPM
 UBUgDvmwZmY+DccuyvMpBHsuiSPRJvxfnWMUFq2S/aNpmqJV8rcAkFP1llmqFurPn7UF
 YGHr2/aZZzo00DpcnikByamde4qexJLY/WFGtIvaUayJKkmHI8UWYy7fVujPVAGsiz3S
 Wo1Q==
X-Gm-Message-State: APjAAAWXtMz9EU6IOz53peFNEdgY281NFNF21VPu64K3V4wEI8jboB7G
 Q38MP0BPDvLRS+wOuGfiONqkBw==
X-Google-Smtp-Source: APXvYqy5L3JR07HcEnA00M1CL8VNhKg77fHOWXFhUU5EGpQJP/FGGVXDbvKX2iSPUCmowPs/39oslw==
X-Received: by 2002:a63:c118:: with SMTP id
 w24mr136487259pgf.347.1565029919532; 
 Mon, 05 Aug 2019 11:31:59 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:7483:80d6:7f67:2672])
 by smtp.googlemail.com with ESMTPSA id a1sm51592199pgh.61.2019.08.05.11.31.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 05 Aug 2019 11:31:58 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH] ARM: Replace strncmp with str_has_prefix
In-Reply-To: <20190730024426.17262-1-hslester96@gmail.com>
References: <20190730024426.17262-1-hslester96@gmail.com>
Date: Mon, 05 Aug 2019 11:31:57 -0700
Message-ID: <7hzhknh3aa.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_113200_859023_F0FB39D4 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-omap@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Kevin Hilman <khilman@kernel.org>,
 Tony Lindgren <tony@atomide.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Chuhong Yuan <hslester96@gmail.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Alexander Clouter <alex@digriz.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Chuhong Yuan <hslester96@gmail.com> writes:

> In commit b6b2735514bc
> ("tracing: Use str_has_prefix() instead of using fixed sizes")
> the newly introduced str_has_prefix() was used
> to replace error-prone strncmp(str, const, len).
> Here fix codes with the same pattern.
>
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
>  arch/arm/kernel/module-plts.c        | 2 +-
>  arch/arm/mach-omap2/omap_device.c    | 4 ++--
>  arch/arm/mach-omap2/pm-debug.c       | 8 ++++----
>  arch/arm/mach-omap2/pm.c             | 2 +-
>  arch/arm/mach-omap2/pm44xx.c         | 2 +-
>  arch/arm/mach-omap2/sr_device.c      | 8 ++++----
>  arch/arm/mach-orion5x/ts78xx-setup.c | 4 ++--

For the OMAP stuff:

Reviewed-by: Kevin Hilman <khilman@baylibre.com>  # arch/arm/mach-omap2/*

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
